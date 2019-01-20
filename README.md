# Boner

**Boner** is a mobile application for dog owners.  

In our first integration we have a clean and simple interface which allows the user to upload a photo of them and their dog. We also have to ability to match with other people based on your preferences.
These prefrences at this moment include:  
* Dog park or general location
* Age
* Sex Preference
* Dog Size

One issue we foresee is individuals using the app just as another dating app without having a dog. 
We are preventing this issue by enforcing a picture upload for each profile, 
and using Google Cloud Vision to check if the profile picture contains a dog.  

Technology We Used:  
* Flutter/Dart
* Google Cloud Storage & Google Cloud Vision
* Android Studio
* Git

### Completed Tasks

- [x] Install flutter and dart 
- [ ] Create Landing Page
- [ ] Allow users to upload pictures
- [x] Send uploaded pictures to Google Cloud Vision
- [x] Use computer vision to detect if upload pictures contain a dog
- [ ] Create profile page
- [ ] Create recommendations/browsing page
- [ ] Allow user to like or dislike other profiles with buttons
- [ ] Create filters for the prefrences listed at the beginning
- [ ] Allow for swiping through matches
- [x] Ensure app runs on emulated software on Android Studio
- [ ] Test that app runs on a live IPhone


### Running the App

1. Download and install [Flutter](https://flutter.io/docs/get-started/install)
2. Download and install [Android Studio](https://developer.android.com/studio/)
3. Download Flutter and Dart [plugins](https://flutter.io/docs/get-started/editor?tab=androidstudio)
4. Create a Flutter project from version control in Android Studio
     * Select **File** > **New** > **Project from Version Control** > **Git**
     * Enter in our git repo which is: *https://github.com/smartdanny/vanguard*
     * Click **Clone**
5. Create [Virtual Device](https://developer.android.com/studio/run/managing-avds)
