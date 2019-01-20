
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import '../pages/profile_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image_picker/image_picker.dart';

// import CustomIcons from '../lib/presentation/custom_icons_icons.dart';


import 'package:cloud_firestore/cloud_firestore.dart';

// const IconData(0xe9a9, fontFamily: ‘icomoon’);

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}


// File _image = File("files/img5.jpg");

// Future cameraImage() async {
//   print('BOIIII');
//   var image = await ImagePicker.pickImage(
//     source: ImageSource.camera,
//     maxHeight: 240.0,
//     maxWidth: 240.0,
//   );

//   setState(() {
//       _image = image;
//     });
//   }
  
//   void setState(Null Function() param0) {
// }

// submitForm() async {
//   final response = await http.post(
//     uri,
//     headers: {
//       AuthUtils.AUTH_HEADER: _authToken
//     },
//     body: {
//       'user_id': userId,
//       'photo': _image != null ? 'data:image/png;base64,' +
//           base64Encode(_image.readAsBytesSync()) : '',
//     },
//   );

  // final responseJson = json.decode(response.body);

//   print(responseJson);
// }

  void fetchPost() async {
    // File _image = File("b.txt");

    print('one');
    // final response =
    //     await http.get('https://jsonplaceholder.typicode.com/posts/1');
    final response =
        await http.post('https://vision.googleapis.com/v1/images:annotate?key=AIzaSyDwQ4jb_lR7boRw5vpN3LwI73_OgqqcZw8', 
          headers: {HttpHeaders.authorizationHeader: "104161238808375259389",
          HttpHeaders.acceptHeader: "application/json", HttpHeaders.contentTypeHeader: "application/json"},
          body: json.encode({
            "requests": [
              {
                // "image": _image != null ? 'data:image/profile.jpg,' +
                //         base64Encode(_image.readAsBytesSync()) : '',
                "image": {
                  "source": {
                    "imageUri": "https://i.imgur.com/G2BwwcA.jpg"
                  },
                },
                "features": [
                  {
                    "type": "LABEL_DETECTION"
                  }
                ]
              }
            ]
          }),
        );
    print('two');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      print('hi');
      print(response.body);
      // print(response.statusCode);
      // return Post.fromJson(json.decode(response.body));
      
    } else {
      // If that response was not OK, throw an error.
      print('not_ok');
      print(response.body);
      print(response.statusCode);
      throw Exception('Failed to load post');
    }
  }


// void main() => runApp(user_profile_page(post: fetchPost()));
class user_profile_page extends StatelessWidget{
  final Future<Post> post;


  user_profile_page({Key key, this.post}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Color(0xFF75CFD6),


      child: new Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.all(0.0),
            // bonr logo
            child: SafeArea(
              // child: Icon(Icons.account_circle)
              child: new Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset('images/boner2.png'),
              ), 
            )
          ),

          // profile picture
          new Padding(
            padding: EdgeInsets.all(0.0),
            child: new Container(

              // color: Colors.amber,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                          new BoxShadow(blurRadius: 30.0),
                        ],
              ),



              child: new Column(
                children: <Widget>[
                  new Container(
                    width: 300,
                    height: 300,
                    margin: new EdgeInsets.all(20.0),
                    decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                        
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage( "images/kodagreg.jpg")
                        )
                    )
                  ),

                  new Text("Greg, 23", style: new TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, )),
                  Padding(padding: EdgeInsets.all(3.0),),
                  new Text('Depot Park | Pomeranian', style: new TextStyle(color: Colors.black, fontSize: 15.0 )),
                  Padding(padding: EdgeInsets.all(10.0),),
                  // new Text('Pomeranian', style: new TextStyle(color: Colors.black, fontSize: 20.0 ))



                ],
              )
            )    
          ),
          new Center(
            child: new Padding(
            padding: EdgeInsets.only(top: 30.0, left: 10, right: 10, bottom: 0.0),
            child: Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: <Widget>[
                // Align(alignment: CrossAxisAlignment.center,)
                // return Container(
                //   decoration: BoxDecoration(borderRadius: 1.0),
                // ),

                // button 1
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.add_a_photo),
                      ],
                    ),
                    onPressed: () => fetchPost(),
                  ),
                ),
                
                // button 2
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    color: Colors.white,
                    
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(const IconData(0xe900, fontFamily: 'icomoon')),
                      ],
                    ),
                    onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new profile_page())),
                  ),
                ),

                // button 3
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.person),
                      ],
                    ),
                    onPressed: () => print('profile section'),
                  ),
                ),


              ],
            ),
            ),
            
            
            
            
            
             
          ),
          ),


          



          // new Padding(
          //   padding: EdgeInsets.all(5.0),
          //   child: FutureBuilder<Post>(
          //     future: fetchPost(),
          //     builder: (context, snapshot) {
          //       if (snapshot.hasData) {
          //         return Text(snapshot.data.title);
          //       } else if (snapshot.hasError) {
          //         return Text("${snapshot.error}");
          //       }

          //       // By default, show a loading spinner
          //       return CircularProgressIndicator();
          //     },
          //   ),
          // ),
        ],
      )
      
     


      // child: ,
    

    );
  }
}