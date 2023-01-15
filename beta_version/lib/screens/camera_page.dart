import 'dart:io';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:go_router/go_router.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

import 'package:custom_ui/custom_ui.dart';
import '../assets/custom_icons.dart';
import '../widgets/top_app_bar.dart';

// for file upload
import 'package:firebase_storage/firebase_storage.dart';

// for getting user id
import 'package:firebase_auth/firebase_auth.dart';

// image picker for testing
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> with TickerProviderStateMixin {
  // Declaración de variables

  late List<CameraDescription> _cameras; // Lista de cámaras disponibles
  CameraController? _controller; // Controlador de la cámara
  VideoPlayerController? videoController;
  XFile? imageFile;
  XFile? videoFile;
  VoidCallback? videoPlayerListener;

  // Índice de cámara actual
  int _cameraIndex = 0;

  // Bandera indicadora de grabación en proceso
  bool _isRecording = false;

  // Dirección del archivo grabado
  // Address of the recorded file
  late String _filePath;

  double _minAvailableExposureOffset = 0.0;
  double _maxAvailableExposureOffset = 0.0;
  double _currentExposureOffset = 0.0;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;

  // #docregion AppLifecycle
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = _controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCamera(cameraController.description);
    }
  }

  @override
  void initState() {
    super.initState();
    // Verificar la lista de cámaras disponibles al iniciar el Widget
    // Check the list of available cameras when launching the Widget
    availableCameras().then((cameras) {
      // Guardar la lista de cámaras
      // Save the camera list
      _cameras = cameras;

      // Inicializar la cámara solo si la lista de cámaras tiene cámaras disponibles
      // Initialize the camera only if the camera list has cameras available
      if (_cameras.length != 0) {
        // Inicializar el índice de cámara actual en 0 para obtener la primera
        // Initialize the current camera index to 0 to get the first
        _cameraIndex = 0;

        // Inicializar la cámara pasando el CameraDescription de la cámara seleccionada
        // Initialize the camera only if the camera list has cameras available
        _initCamera(_cameras[_cameraIndex]);
      }
    });
  }

  // Inicializar la cámara
  _initCamera(CameraDescription camera) async {
    final CameraController? oldController = _controller;
    if (oldController != null) {
      _controller = null;
      await oldController.dispose();
    }
    // Indicar al controlador la nueva cámara a utilizar
    final CameraController cameraController = CameraController(
      camera,
      ResolutionPreset.medium,
      enableAudio: true,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    _controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (cameraController.value.hasError) {
        showInSnackBar(
            'Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();
      await Future.wait(<Future<Object?>>[
        // The exposure mode is currently not supported on the web.
        cameraController
            .getMinExposureOffset()
            .then((double value) => _minAvailableExposureOffset = value),
        cameraController
            .getMaxExposureOffset()
            .then((double value) => _maxAvailableExposureOffset = value),
        cameraController
            .getMaxZoomLevel()
            .then((double value) => _maxAvailableZoom = value),
        cameraController
            .getMinZoomLevel()
            .then((double value) => _minAvailableZoom = value),
      ]);
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          showInSnackBar('You have denied camera access.');
          break;
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          showInSnackBar('Please go to Settings app to enable camera access.');
          break;
        case 'CameraAccessRestricted':
          // iOS only
          showInSnackBar('Camera access is restricted.');
          break;
        case 'AudioAccessDenied':
          showInSnackBar('You have denied audio access.');
          break;
        case 'AudioAccessDeniedWithoutPrompt':
          // iOS only
          showInSnackBar('Please go to Settings app to enable audio access.');
          break;
        case 'AudioAccessRestricted':
          // iOS only
          showInSnackBar('Audio access is restricted.');
          break;
        default:
          _showCameraException(e);
          break;
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  // Crear el Widget con la visualización del cámara
  // Create the Widget with the camera display
  Widget _buildCamera() {
    // Si el controlador es nulo o no está inicializado aún, desplegar un mensaje al usuario y evitar mostrar una cámara sin inicializar
    // If the driver is null or not yet initialized, display a message to the user and avoid displaying an uninitialized camera
    if (_controller == null || !_controller!.value.isInitialized)
      return Center(child: Text('Loading...'));
    // Utilizar un Widget de tipo AspectRatio para desplegar el alto y ancho correcto

    //  https://medium.com/lightsnap/making-a-full-screen-camera-application-in-flutter-65db7f5d717b
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;

    return AspectRatio(
      // Solicitar la relación alto/ancho al controlador
      // Request the height_width ratio from the controller
      aspectRatio: deviceRatio, // _controller!.value.aspectRatio,
      // Mostrar el contenido del controlador mediante el Widget CameraPreview
      // Display controller content with the Camera widget
      child: CameraPreview(_controller!),
    );
  }

  // Crear los controles que permiten la interacción del video
  // Create the controls that allow video interaction
  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Ícono para cambiar la cámara
        IconButton(
          icon: Icon(_getCameraIcon(_cameras[_cameraIndex].lensDirection)),
          onPressed: _onSwitchCamera,
        ),
        // Ícono para iniciar la grabación
        IconButton(
          icon: Icon(Icons.radio_button_checked),
          onPressed: _isRecording ? null : onVideoRecordButtonPressed,
        ),
        // Ícono para tener la grabación
        IconButton(
          icon: Icon(Icons.stop),
          onPressed: _isRecording ? onStopButtonPressed : null,
        ),
        // Ícono para reproducir el video grabado
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: _isRecording ? null : _onPlay,
        ),
      ],
    );
  }

  // Abrir el archivo último video grabado
  // open the archive
  void _onPlay() => OpenFile.open(_filePath);

  // Detener la grabación de video
  Future<XFile?> stopVideoRecording() async {
    final CameraController? cameraController = _controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return null;
    }

    try {
      return cameraController.stopVideoRecording();
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
  }

  FirebaseStorage storage = FirebaseStorage.instance;

  Future uploadFile(XFile? _video) async {
    if (_video == null) return;
    final fileName = p.basename(_video.path);
    final exerciseName = 'ex1';

    var currentUser = FirebaseAuth.instance.currentUser;
    var userID = currentUser?.uid;
    userID ??= 'userid';
    final destination = 'public/$userID/$exerciseName';

    try {
      final ref = FirebaseStorage.instance.ref(destination);
      await ref.putFile(File(_video.path));
    } catch (e) {
      print('error occured');
    }
  }

  void onStopButtonPressed() {
    stopVideoRecording().then((XFile? file) {
      if (mounted) {
        setState(() {});
      }
      if (file != null) {
        showInSnackBar('Video recorded to ${file.path}');
        videoFile = file;
        uploadFile(videoFile);
        // TODO redirect to exercise info page
        //_startVideoPlayer();
      }
    });
  }

  Future<void> _startVideoPlayer() async {
    if (videoFile == null) {
      return;
    }

    final VideoPlayerController vController =
        VideoPlayerController.file(File(videoFile!.path));

    videoPlayerListener = () {
      if (videoController != null && videoController!.value.size != null) {
        // Refreshing the state to update video player with the correct ratio.
        if (mounted) {
          setState(() {});
        }
        videoController!.removeListener(videoPlayerListener!);
      }
    };
    vController.addListener(videoPlayerListener!);
    await vController.setLooping(true);
    await vController.initialize();
    await videoController?.dispose();
    if (mounted) {
      setState(() {
        imageFile = null;
        videoController = vController;
      });
    }
    await vController.play();
  }

  Future<void> onVideoRecordButtonPressed() async {
    print('start video recording');

    var currentUser = FirebaseAuth.instance.currentUser;
    var uid = currentUser?.uid;
    print('The user id is: $uid');

    startVideoRecording().then((_) {
      _isRecording = true;
      if (mounted) {
        setState(() {});
      }
    });
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = _controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return;
    }

    if (cameraController.value.isRecordingVideo) {
      // A recording is already started, do nothing.
      return;
    }

    try {
      await cameraController.startVideoRecording();
    } on CameraException catch (e) {
      _showCameraException(e);
      return;
    }
  }

  // Retornar el ícono de la cámara
  IconData _getCameraIcon(CameraLensDirection lensDirection) {
    // Sí la cámara actual es la trasera,
    // mostrar el ícono de cámara delantera,
    // sino el ícono de cámara trasera
    return lensDirection == CameraLensDirection.back
        ? Icons.camera_front
        : Icons.camera_rear;
  }

  // Cambia la cámara actual
  void _onSwitchCamera() {
    // Si la cantidad de cámaras es 1 o inferior, no hacer el cambio
    // If the number of cameras is 1 or less, do not make the change
    if (_cameras.length < 2) return;
    // Cambiar 1 por 0 ó 0 por 1
    _cameraIndex = (_cameraIndex + 1) % 2;
    // Inicializar la cámara pasando el CameraDescription de la cámara seleccionada
    _initCamera(_cameras[_cameraIndex]);
  }

  Future<bool> saveVideoToAlbum(String path) async {
    //再用GallerySaver存到相簿
    bool? isSucceed = await GallerySaver.saveVideo(path);
    if (isSucceed != null) {
      if (isSucceed) {
        //最後再將暫存的檔案刪除
        deleteTemporaryFile(path);
        return true;
      }
    }
    return false;
  }

  deleteTemporaryFile(String filePath) async {
    try {
      await File(filePath).delete();
    } catch (error) {
      print('Delete TemporaryFile error');
      print(error);
    }
  }

  void _showCameraException(CameraException e) {
    _logError(e.code, e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }

  void _logError(String code, String? message) {
    // ignore: avoid_print
    print('Error: $code${message == null ? '' : '\nError Message: $message'}');
  }

  void showInSnackBar(String message) {
    // change
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorsData.regular().primaryTrueBlack,
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / _controller!.value.aspectRatio,
              child: Stack(
                children: [
                  _buildCamera(),
                  PreferredSize(
                    preferredSize: const Size.fromHeight(80),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
                      decoration: BoxDecoration(
                        color: AppColorsData.regular()
                            .greyShades_6
                            .withOpacity(0.75),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.goNamed('home');
                            },
                            icon: const Icon(CustomIcons.back),
                            color: AppColorsData.regular().primaryWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: PreferredSize(
                      preferredSize: const Size.fromHeight(80),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
                        color: AppColorsData.regular()
                            .greyShades_6
                            .withOpacity(0.75),
                        child: Center(
                          child: _buildControls(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
