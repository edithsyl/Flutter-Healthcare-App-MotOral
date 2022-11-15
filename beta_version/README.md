# beta_version

A new Flutter project.

## Getting Started

`/assets` folder stores the icons, images and videos used in this app
`/lib/data` folder
`/lib/screen` folder is where all frontend codes are stored
eg. the login page can be found in `/lib/screen/auth` folder,
and all the pages that can be assessed with the bottom navigation bar are stored in `/lib/screen/bottomnav`

# navigation and routing

https://pub.dev/packages/go_router
this project uses go_router, a declarative rounting package
related codes can be founded in `\lib\main.dart`

```dart
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
    //e.t.c...

```

# bloc

https://bloclibrary.dev/#/flutterfirebaselogintutorial?id=home-page
