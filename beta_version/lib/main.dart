import 'package:beta_version/app_router.dart';
import 'package:beta_version/logic/blocs/bloc_observer.dart';
import 'package:beta_version/logic/blocs/export_blocs.dart';
import 'package:beta_version/logic/cubits/bottomnav/navigation_cubit.dart';
import 'package:beta_version/logic/cubits/login/login_cubit.dart';
import 'package:beta_version/logic/cubits/signup/signup_cubit.dart';
import 'package:beta_version/screens/bottomnav/t_front_page.dart';
import 'package:beta_version/screens/casehistory/case_history_page.dart';
import 'package:beta_version/screens/exercise/exercise_info_page.dart';
import 'package:beta_version/utils.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:beta_version/test_nest/t_data.dart';

import 'screens/exercise/category_tab_list.dart';
import 'screens/notification_page.dart';

Future<void> main() async {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      final authRepository = AuthRepository();
      await authRepository.user.first;
      runApp(App(
        authRepository: authRepository,
      ));
    },
    blocObserver: AppBlocObserver(),
  );
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

  /// App will provide an instance of the AuthenticationRepository to the application via RepositoryProvider
  /// it also creates and provides an instance of AuthenticationBloc
  /// AppView consumes the AuthenticationBloc and handles updating the current route based on the AuthenticationState
  @override
  Widget build(BuildContext context) {
    return AppView(); // test route
    // return RepositoryProvider.value(
    //   value: _authRepository,
    //   child: BlocProvider(
    //     create: (_) => AuthBloc(authRepository: _authRepository),
    //     child: AppView(),
    //   ),
    // );
  }
}

class AppView extends StatelessWidget {
  AppView({
    Key? key,
  }) : super(key: key);

  final List<GoRoute> _loggedOutRoutes = [
    GoRoute(
      // test route
      path: '/',
      redirect: (_) => '/category/${t_Categories.data[0].id}', //'/front',
    ),
    // GoRoute(
    //   name: 'login',
    //   path: '/',
    //   pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
    //       key: state.pageKey,
    //       child: const LoginScreen(),
    //       time: AppDurationsData.regular().quick),
    // ),
    // GoRoute(
    //   name: 'signup',
    //   path: '/signup',
    //   pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
    //       key: state.pageKey,
    //       child: const RegistrationScreen(),
    //       time: AppDurationsData.regular().quick),
    // ),
    // GoRoute(
    //   name: 'front',
    //   path: '/front',
    //   pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
    //       key: state.pageKey,
    //       child: const FrontPage(),
    //       time: AppDurationsData.regular().quick),
    // ),
    GoRoute(
      name: 'setting',
      path: '/setting',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const SettingPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'notification',
      path: '/notification',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const NotificationPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'casehistory',
      path: '/casehistory',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const CaseHistoryPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      path: '/category/:cid',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: CategoryTabsScreen(
            // passexerciseTap: () =>
            //     context.go('/category/${t_Categories.data[2].id}'), //FIXME
            parentContext: context,
            key: state.pageKey,
            selectedCategory: t_Categories.t_category(state.params['cid']!),
          ),
          time: AppDurationsData.regular().quick),
      routes: <GoRoute>[
        GoRoute(
          path: 'person/:eid',
          pageBuilder: (BuildContext context, GoRouterState state) {
            final t_Category t_category =
                t_Categories.t_category(state.params['cid']!);
            final t_Exercise exercise =
                t_category.t_exercise(state.params['eid']!);
            return FadePage(
              key: state.pageKey,
              child: ThisExerciseScreen(
                category: t_category,
                exercise: exercise,
              ),
              time: AppDurationsData.regular().quick,
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/tfront/:bid',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: BottomNavScreen(
            key: state.pageKey,
            selectedPage: BottomNavPages.bottomNavPage(state.params['bid']!),
          ),
          time: AppDurationsData.regular().quick),
      // routes: <GoRoute>[
      //   GoRoute(
      //     path: 'category/:cid',
      //     pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
      //         key: state.pageKey,
      //         child: CategoryTabsScreen(
      //           parentContext: context,
      //           key: state.pageKey,
      //           selectedCategory: t_Categories.t_category(state.params['cid']!),
      //         ),
      //         time: AppDurationsData.regular().quick),
      //     routes: <GoRoute>[
      //       GoRoute(
      //         path: 'person/:eid',
      //         pageBuilder: (BuildContext context, GoRouterState state) {
      //           final t_Category t_category =
      //               t_Categories.t_category(state.params['cid']!);
      //           final t_Exercise exercise =
      //               t_category.t_exercise(state.params['eid']!);
      //           return FadePage(
      //             key: state.pageKey,
      //             child: ThisExerciseScreen(
      //               category: t_category,
      //               exercise: exercise,
      //             ),
      //             time: AppDurationsData.regular().quick,
      //           );
      //         },
      //       ),
      //     ],
      // ),
      // ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // AuthStatus aStatus = context.select((AuthBloc bloc) => bloc.state.status); // test
    // final authBloc = context.read<AuthBloc>(); //test
    final appRouter = GoRouter(
      debugLogDiagnostics: true,
      initialLocation:
          '/category/${t_Categories.data[0].id}/person/${t_Categories.data[0].exercises[0].id}', // '/tfront/${BottomNavPages.data[0].id}', //'/front', //'/category/${t_Categories.data[0].id}',
      // redirect: (state) {
      //   // if the user is not logged in, they need to login
      //   final isloggedIn = authBloc.state.status == AuthStatus.authenticated;
      //   final isLoggingIn =
      //       state.location == '/' || state.location == '/signup';
      //   if (!isloggedIn && !isLoggingIn) {
      //     Fluttertoast.showToast(msg: '!isloggedIn and !isLoggingIn');
      //     return '/';
      //   }
      //   if (isloggedIn && isLoggingIn) {
      //     Fluttertoast.showToast(msg: 'isloggedIn and isLoggingIn');
      //     return '/front';
      //   }
      //   return null;
      // },
      // refreshListenable: GoRouterRefreshStream(authBloc.stream), // test
      routes: _loggedOutRoutes,
      errorPageBuilder: (context, state) => MaterialPage(
        child: Scaffold(
          body: Center(
            child: Text(state.error.toString()),
          ),
        ),
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CategoryBloc(
            categoryRepository: CategoryRepository(),
          )..add(LoadCategories()), // create an instance of this bloc
        ),
        // BlocProvider<NavigationCubit>(
        //   create: ((context) => NavigationCubit()),
        // ),
        // BlocProvider<LoginCubit>(
        //   create: (_) => LoginCubit(context.read<AuthRepository>()),
        // ),
        // BlocProvider<SignupCubit>(
        //   create: (_) => SignupCubit(context.read<AuthRepository>()),
        // ),
        BlocProvider(
          create: (_) => ExerciseBloc(
            exerciseRepository: ExerciseRepository(),
          )..add(LoadExercises()),
        ),
      ],
      child: MaterialApp.router(
        key: Utils.mainAppNav,
        routeInformationProvider: appRouter.routeInformationProvider,
        routeInformationParser: appRouter.routeInformationParser,
        routerDelegate: appRouter.routerDelegate,
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
        ),
      ),
    );
  }
}
