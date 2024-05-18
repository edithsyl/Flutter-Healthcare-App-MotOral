# MotOral: Flutter App Prototype

This repository is for MotOral, a student team that aims to create a mobile app that encourages elderly at risk of swallowing disorders to exercise regularly, and provide a platform for users and speech therapists to exchange information conveniently.

## Objectives
1: Create a pleasant and intuitive user interface for users to navigate the app and complete their tasks with ease
Since our target users are elderly, a clean, easy-to-understand interface is crucial as they are generally non-tech savvy.

2: Engage users to learn more about their conditions and build up a habit of doing speech-therapy exercises regularly
As a lot of exercises used in speech therapy are not of high difficulty and that patients can practice by themselves, we hope this application could encourage users to do so by providing demonstration videos and instructions for them to follow at home.

 3: Create a community and an information exchange platform between therapists and patients
This app aims to assist them in understanding their conditions by providing light readings on speech disorders and therapy. Also, it helps collect information on patients’ health status and recovery progress, enabling therapists and caregivers to deliver timely treatment and care with a reduced workload.

## User Case Diagram
<img width="468" alt="image" src="https://user-images.githubusercontent.com/69338737/202073643-8cf21389-6095-40ee-af21-ea597111da87.png">
The pink square covers the most important features that we hope to achieve first

## UI Design
### Feature 1: Exercise

https://github.com/edithsyl/Flutter_MotOral/assets/69338737/b886fab6-4d74-4f3c-8ad3-f11c5bd291b5


### Feature 2: Speech Thearpist Consultation Booking

https://github.com/edithsyl/Flutter_MotOral/assets/69338737/77a844ae-0a18-4ade-822c-65411ae822cd



### Feature 3: News Feed

https://github.com/edithsyl/Flutter_MotOral/assets/69338737/332f41b1-52f0-47a3-8617-ba4e1856dc91


## Flutter Demo

https://github.com/edithsyl/Flutter_MotOral/assets/69338737/33b4c017-c064-4ca5-86c1-94dfb9b3a279



# Folders
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

# Completed
## Authentication
<img width="139" alt="image" src="https://user-images.githubusercontent.com/69338737/202074214-e1f66d40-54a2-44cd-b44b-72a8a6375db9.png">
<img width="139" alt="image" src="https://user-images.githubusercontent.com/69338737/202074220-32e55e1f-cf23-4da6-a120-05c381218ab9.png">
<img width="140" alt="image" src="https://user-images.githubusercontent.com/69338737/202074227-d5e51dc7-e826-475d-8dcc-3ba8dcdb1107.png">

## Home
<img width="109" alt="image" src="https://user-images.githubusercontent.com/69338737/202074258-153e2ff5-2c3f-481d-935f-6a762bd59479.png">
This is the application’s home page, which contains notifications and prompts users to do 3 different exercises every day(currently can't change what's the exercises shown on this page).

## Exercise
<img width="120" alt="image" src="https://user-images.githubusercontent.com/69338737/202074298-ea18acb9-8c00-4c86-98ca-1d0dbd4af585.png">
<img width="120" alt="image" src="https://user-images.githubusercontent.com/69338737/202074310-bb6326a8-4d2e-42cc-9828-ef39dbe9cdb1.png">
Exercises are categorized according to their target areas. When users click one of the exercise cards, they can watch that exercise’s demonstration video and text instructions.

## Profile
<img width="107" alt="image" src="https://user-images.githubusercontent.com/69338737/202074547-22467b88-2e47-42d1-9db2-4dccb63b7c83.png">
User information can be found on the profile page, where users can also navigate to the setting page or case history page.

## Setting

## Case History
<img width="107" alt="image" src="https://user-images.githubusercontent.com/69338737/202074729-09b4e0de-cca1-4920-99f0-947bb67e21ac.png">
Users can document their health status for future reviews.(Incomplete)

## Pages that're not important right now :/
### News
<img width="120" alt="image" src="https://user-images.githubusercontent.com/69338737/202074943-9d385966-73d6-4490-9cde-52450791c1ca.png">
<img width="120" alt="image" src="https://user-images.githubusercontent.com/69338737/202074947-7c67e63a-290e-4a78-9275-f4abbad12944.png">

### People
<img width="109" alt="image" src="https://user-images.githubusercontent.com/69338737/202074926-0b12417b-9aa1-4421-b677-17267cfd6ca6.png">


