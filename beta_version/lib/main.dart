import 'package:beta_version/app_router.dart';
import 'package:beta_version/blocs/export_blocs.dart';
import 'package:beta_version/cubits/bottomnav/navigation_cubit.dart';
import 'package:beta_version/cubits/login/login_cubit.dart';
import 'package:beta_version/cubits/signup/signup_cubit.dart';

import 'package:custom_ui/source/theme/data.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authRepository = AuthRepository();
  runApp(App(
    authRepository: authRepository,
  ));
}

class LoginInfo {
  static bool isLoggedIn = false;
}

class App extends StatelessWidget {
  final AuthRepository _authRepository;

  const App({
    Key? key,
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
        create: (_) => AuthBloc(authRepository: _authRepository),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthStatus status = context.select((AuthBloc bloc) => bloc.state.status);
    final app_router = appRouter(status);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CategoryBloc(
              categoryRepository:
                  CategoryRepository()), // create an instance of this bloc
        ),
        BlocProvider(
          create: (_) => AuthBloc(authRepository: AuthRepository()),
        ),
        BlocProvider<NavigationCubit>(
          create: ((context) => NavigationCubit()),
        ),
        BlocProvider<LoginCubit>(
          create: (_) => LoginCubit(context.read<AuthRepository>()),
        ),
        BlocProvider<SignupCubit>(
          create: (_) => SignupCubit(context.read<AuthRepository>()),
        ),
      ],
      child: MaterialApp.router(
          routeInformationProvider: app_router.routeInformationProvider,
          routeInformationParser: app_router.routeInformationParser,
          routerDelegate: app_router.routerDelegate,
          title: 'title',
          theme: ThemeData(
            primaryColor: AppColorsData.regular().primaryOrange,
            backgroundColor: AppColorsData.regular().primaryWhite,
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: AppTypographyData.greyShades_3().sourceSansProBody,
                hintStyle: AppTypographyData.greyShades_3().sourceSansProBody,
                contentPadding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColorsData.regular().greyTints_2,
                    width: 306.0,
                    style: BorderStyle.solid,
                  ),
                )),
          )),
    );
  }
}
