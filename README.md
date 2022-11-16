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

# Todo 
## Pages

### 1
<img width="131" alt="image" src="https://user-images.githubusercontent.com/69338737/202073115-47dd6822-8a32-41d9-84db-ad313c7f8c13.png">
For users to enter personal information when signing up for the first time.

### 2
<img width="135" alt="image" src="https://user-images.githubusercontent.com/69338737/202073196-12b52d00-5aa4-417e-b2fe-10dcabab25a1.png">
Top row Edit profile is missing

### 3
<img width="134" alt="image" src="https://user-images.githubusercontent.com/69338737/202073262-f03d20eb-5799-4457-b500-68b97c101a8e.png">
This page shows personal information & avatar stored in Firebase(if any). And user can alter their info by clicking the row they want to change.

### 4
<img width="195" alt="image" src="https://user-images.githubusercontent.com/69338737/202073343-6d861cbb-d5d8-43d7-9823-5924a4c379f5.png">
Users can input new info here and update data stored in Firebase

### 5
<img width="133" alt="image" src="https://user-images.githubusercontent.com/69338737/202073398-470b9c9a-d76d-4b42-86a8-b6e4d653f5f7.png">
Users have to answer this case history questionnaire once they open an account.


