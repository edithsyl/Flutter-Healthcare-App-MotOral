import 'dart:ui';
import 'package:custom_ui/custom_ui.dart';
import 'package:go_router/go_router.dart';

// class TransparentPage<T> extends Page<T> {
//   const TransparentPage({
//     required this.child,
//     LocalKey? key,
//     String? name,
//     Object? arguments,
//     String? restorationId,
//   }) : super(
//             key: key,
//             name: name,
//             arguments: arguments,
//             restorationId: restorationId);

//   /// The content to be shown in the [Route] created by this page.
//   final Widget child;

//   @override
//   Route<T> createRoute(BuildContext context) {
//     final theme = AppTheme.of(context);
//     return PageRouteBuilder(
//       transitionDuration: theme.durations.regular,
//       opaque: false,
//       maintainState: true,
//       settings: this,
//       barrierColor: theme.colors.primaryTrueBlack.withOpacity(0.5),
//       pageBuilder: (BuildContext context, Animation<double> animation,
//           Animation<double> secondaryAnimation) {
//         return AnimatedBuilder(
//           animation: animation,
//           child: child,
//           builder: (context, child) => BackdropFilter(
//             filter: ImageFilter.blur(
//               sigmaX: 20 * animation.value,
//               sigmaY: 20 * animation.value,
//             ),
//             child: child,
//           ),
//         );
//       },
//     );
//   }
// }

class FadePage<T> extends CustomTransitionPage<T> {
  FadePage({
    required Widget child,
    required Duration time,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            child,
          ) =>
              FadeTransition(
            //slide
            opacity: animation,
            child: child,
          ),
          transitionDuration: time,
          key: key,
          name: name,
          arguments: arguments,
          restorationId: restorationId,
          child: child,
        );
}

class SlideUpPage<T> extends CustomTransitionPage<T> {
  SlideUpPage({
    required Widget child,
    required Duration time,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            child,
          ) =>
              SlideTransition(
            //slide
            position: animation.drive(
              Tween(
                begin: const Offset(0, 1),
                end: const Offset(0, 0),
              ).chain(CurveTween(curve: Curves.easeOutCubic)),
            ),
          ),
          transitionDuration: time,
          key: key,
          name: name,
          arguments: arguments,
          restorationId: restorationId,
          child: child,
        );
}

class SlideRightPage<T> extends CustomTransitionPage<T> {
  SlideRightPage({
    required Widget child,
    required Duration time,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            child,
          ) =>
              SlideTransition(
            //slide
            position: animation.drive(
              Tween(
                begin: const Offset(-1, 0),
                end: const Offset(0, 0),
              ).chain(CurveTween(curve: Curves.easeOutCubic)),
            ),
          ),
          transitionDuration: time,
          key: key,
          name: name,
          arguments: arguments,
          restorationId: restorationId,
          child: child,
        );
}

class SlideLeftPage<T> extends CustomTransitionPage<T> {
  SlideLeftPage({
    required Widget child,
    required Duration time,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            child,
          ) =>
              SlideTransition(
            //slide
            position: animation.drive(
              Tween(
                begin: const Offset(1, 0),
                end: const Offset(0, 0),
              ).chain(CurveTween(curve: Curves.easeOutCubic)),
            ),
          ),
          transitionDuration: time,
          key: key,
          name: name,
          arguments: arguments,
          restorationId: restorationId,
          child: child,
        );

  /// The content to be shown in the [Route] created by this page.
  // final Widget child;

  // @override
  // Route<T> createRoute(BuildContext context) {
  //   final theme = AppTheme.of(context);
  //   return PageRouteBuilder(
  //     transitionDuration: theme.durations.regular,
  //     opaque: false,
  //     maintainState: true,
  //     settings: this,
  //     barrierColor: theme.colors.primaryTrueBlack.withOpacity(0.5),
  //     pageBuilder: (BuildContext context, Animation<double> animation,
  //         Animation<double> secondaryAnimation) {
  //       return
  //     },
  //     transitionsBuilder: (BuildContext context, Animation<double> animation,
  //         Animation<double> secondaryAnimation, child){
  //           // return FadeTransition( //slide
  //           //   opacity: animation,
  //           //   child: child,
  //           // );
  //           return SlideTransition( //slide
  //             position: animation.drive(
  //               Tween(
  //                 begin: const Offset(1,0),
  //                 end: const Offset(0,0),)
  //                 .chain(
  //                   CurveTween(curve: Curves.easeOutCubic)
  //                 ),
  //             ),
  //             child: child,
  //           );
  //         }
  //   );
  // }
}
