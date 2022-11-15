import 'package:beta_version/data/case_history_data.dart';
import 'package:beta_version/data/data_export.dart';
import 'package:beta_version/data/news_categories_data.dart';
import 'package:beta_version/logic/blocs/bloc_observer.dart';
import 'package:beta_version/logic/blocs/export_blocs.dart';
import 'package:beta_version/logic/cubits/login/login_cubit.dart';
import 'package:beta_version/logic/cubits/signup/signup_cubit.dart';
import 'package:beta_version/models/case_history_model.dart';
import 'package:beta_version/models/exercise_category_model.dart';
import 'package:beta_version/models/exercise_model.dart';
import 'package:beta_version/models/news_category_model.dart';
import 'package:beta_version/screens/auth/login_screen.dart';
import 'package:beta_version/screens/auth/registration_screen.dart';
import 'package:beta_version/screens/auth/welcome_page.dart';
import 'package:beta_version/screens/bookmark_page.dart';
import 'package:beta_version/screens/bottomnav/t_front_page.dart';
import 'package:beta_version/screens/casehistory/case_history_item_page.dart';
import 'package:beta_version/screens/setting/setting_pages.dart';
import 'package:beta_version/screens/casehistory/case_history_page.dart';
import 'package:beta_version/screens/exercise/exercise_info_page.dart';
import 'package:beta_version/screens/news/news_category_tab_list.dart';
import 'package:beta_version/screens/news/news_info_page.dart';
import 'package:beta_version/screens/people/therapist_profile_page.dart';
import 'package:beta_version/screens/people/user_profile_page.dart';
import 'package:beta_version/screens/setting_page.dart';
import 'package:beta_version/screens/signup_input/acc_setup_screen.dart';
import 'package:beta_version/widgets/login_widgets.dart';
import 'package:beta_version/widgets/signup_widgets.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:custom_ui/source/pages.dart';
//import 'package:custom_ui/custom_ui.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import 'models/news_model.dart';
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
    //return AppView(); // test route
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
        create: (_) => AuthBloc(authRepository: _authRepository),
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({
    Key? key,
  }) : super(key: key);

  final routes = [
    GoRoute(
        // test route
        path: '/',
        redirect: (_) =>
            '/login' // '/tfront/b3', //'/category/${t_Categories.data[0].id}', //'/front',
        ),
    GoRoute(
      name: 'welcome',
      path: '/welcome',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const WelcomePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const LoginScreen(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'signup',
      path: '/signup',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const RegistrationScreen(),
          time: AppDurationsData.regular().quick),
    ),
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
      name: 'security',
      path: '/security',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const SecurityPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'language',
      path: '/language',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const LanguagePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'fontsize',
      path: '/fontsize',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const FontSizePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'aboutus',
      path: '/aboutus',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const AboutUsPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'contactus',
      path: '/contactus',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const ContactUsPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'privatepolicy',
      path: '/privatepolicy',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const PrivatePolicyPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'termsandconditions',
      path: '/termsandconditions',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const TermsAndConditionsPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'deleteaccount',
      path: '/deleteaccount',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const DeleteAccountPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'bookmarked',
      path: '/bookmarked',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const BookmarkedPage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'casehistory',
      path: '/casehistory',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const CaseHistoryPage(),
          time: AppDurationsData.regular().quick),
      routes: <GoRoute>[
        GoRoute(
          path: 'item/:chid',
          pageBuilder: (BuildContext context, GoRouterState state) {
            // final ExerciseCategory category =
            //     ExerciseCategories.category(state.params['cid']!);
            final CaseHistoryItem caseHistoryItem =
                CaseHistoryItems.id(state.params['chid']!);
            return FadePage(
              key: state.pageKey,
              child: ThisCaseHistoryItemScreen(
                caseHistoryItem: caseHistoryItem,
              ),
              time: AppDurationsData.regular().quick,
            );
          },
        ),
      ],
    ),

    /// for showing exercise info page
    GoRoute(
      path: '/category/:cid',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: CategoryTabsScreen(
            parentContext: context,
            key: state.pageKey,
            selectedCategory: ExerciseCategories.category(state.params['cid']!),
          ),
          time: AppDurationsData.regular().quick),
      routes: <GoRoute>[
        GoRoute(
          path: 'exerciseinfo/:eid',
          pageBuilder: (BuildContext context, GoRouterState state) {
            final ExerciseCategory category =
                ExerciseCategories.category(state.params['cid']!);
            final Exercise exercise = category.exercise(state.params['eid']!);
            return FadePage(
              key: state.pageKey,
              child: ThisExerciseScreen(
                category: category,
                exercise: exercise,
              ),
              time: AppDurationsData.regular().quick,
            );
          },
        ),
      ],
    ),

    /// for showing news info page
    GoRoute(
      path: '/newscategory/:nid',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: NewsCategoryTabsScreen(
            parentContext: context,
            key: state.pageKey,
            selectedCategory: NewsCategories.category(state.params['nid']!),
          ),
          time: AppDurationsData.regular().quick),
      routes: <GoRoute>[
        GoRoute(
          path: 'newsinfo/:eid',
          pageBuilder: (BuildContext context, GoRouterState state) {
            final NewsCategory category =
                NewsCategories.category(state.params['nid']!);
            final News news = category.news(state.params['eid']!);
            return FadePage(
              key: state.pageKey,
              child: ThisNewsScreen(
                category: category,
                news: news,
              ),
              time: AppDurationsData.regular().quick,
            );
          },
        ),
      ],
    ),

    /// for showing bottom navigation pages
    GoRoute(
      path: '/tfront/:bid',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: BottomNavScreen(
            key: state.pageKey,
            selectedPage: BottomNavPages.bottomNavPage(state.params['bid']!),
          ),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'news',
      path: '/news',
      redirect: (_) => '/tfront/${BottomNavPages.data[0].id}',
    ),
    GoRoute(
      name: 'exercise',
      path: '/exercise',
      redirect: (_) => '/tfront/${BottomNavPages.data[1].id}',
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      redirect: (_) => '/tfront/${BottomNavPages.data[2].id}',
    ),
    GoRoute(
      name: 'people',
      path: '/people',
      redirect: (_) => '/tfront/${BottomNavPages.data[3].id}',
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      redirect: (_) => '/tfront/${BottomNavPages.data[4].id}',
    ),
    GoRoute(
      name: 'therapistProfile',
      path: '/therapistProfile',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: TherapistProfilePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'otherUserProfile',
      path: '/otherUserProfile',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const OtherUserProfilePage(),
          time: AppDurationsData.regular().quick),
    ),
    GoRoute(
      name: 'accSetup',
      path: '/accSetup',
      pageBuilder: (BuildContext context, GoRouterState state) => FadePage(
          key: state.pageKey,
          child: const AccSetupScreen(),
          time: AppDurationsData.regular().quick),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // AuthStatus authState =
    context.select((AuthBloc bloc) => bloc.state.status); // test
    final authBloc = context.read<AuthBloc>(); //test
    final appRouter = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/',
      redirect: (state) {
        AuthStatus authState = authBloc.state.status;
        final isLoggedIn = authState == AuthStatus.authenticated;
        final isLoggingIn = state.location == '/login' ||
            state.location == '/signup' ||
            state.location == '/welcome';
        // context.select((AuthBloc bloc) => bloc.state.status);
        // switch (authState) {
        //   case AuthStatus.authenticated:
        //     return '/front';
        //   case AuthStatus.unauthenticated:
        //     return '/login';
        //   // default:
        //   //   return '/login';
        // }
        // if the user is not logged in, they need to login
        if (!isLoggedIn && !isLoggingIn) {
          Fluttertoast.showToast(msg: '!isloggedIn and !isLoggingIn');
          return '/welcome';
        } else if (isLoggedIn && isLoggingIn) {
          Fluttertoast.showToast(msg: 'isloggedIn and isLoggingIn');
          return '/home';
        } else {
          return null;
        }
      },
      refreshListenable: GoRouterRefreshStream(authBloc.stream), // test
      routes: routes,
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
        BlocProvider<LoginCubit>(
          create: (_) => LoginCubit(context.read<AuthRepository>()),
          child: const LoginForm(),
        ),
        BlocProvider<SignupCubit>(
          create: (_) => SignupCubit(context.read<AuthRepository>()),
          child: const SignupForm(),
        ),
      ],
      child: MaterialApp.router(
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
