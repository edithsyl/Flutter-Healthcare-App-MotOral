# A little intro

This repository is for MotOral, a student team that aims to create a mobile app that encourages elderly at risk of swallowing disorders to exercise regularly, and provide a platform for users and speech therapists to exchange information conveniently.

There are two main folders:

`/beta_version` is the flutter project folder for the app.

To transition efficiently from visual prototypes in Figma to Flutter widgets, `/custom_ui`, which is a custom design system library, is created to provide an API for theming data such as colours, typography, radius, backgrounds, page transitions effects e.t.c.

As for custom icons used in this app, they are imported into `/beta_version/assets/icons`.

# flutter

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# useful extension in VSCode

- Flutter, Dart
- Awesome Flutter snippet
- Bloc
- Todo Tree

# emulator

Go to Android studio->Virtual Device Manager and create device
(I use Pixel 4 XL to do the testing)
Open command palette in VScode, type emulator and click view Android Emulator. You should be able to find and open the device created in Android studio. After the emulator is running, type the command "flutter run" on terminal.

# login/signup

Right now you can either use your real google account, or use email: abcde@gmail.com and password: abcde12345 to login.
