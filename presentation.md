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
