import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class profile_page extends StatelessWidget{

  void submit_image(){
    print('aye');
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Color(0xFF75CFD6),


      child: new Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.all(5.0),
            // nametag
            child: SafeArea(
              child: Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Text('AB'),
                ),
                label: Text('Aaron Burr'),
              ),
            )
          ),

          new Padding(
            padding: EdgeInsets.all(0.0),
            child:  CarouselSlider(
              items: [1,2,3,4,5].map((i) {
                return new Builder(
                  builder: (BuildContext context) {
                    return new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: new EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(20.0)),

                        image: new DecorationImage(
                          image: new AssetImage('images/img$i.jpg'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.red
                      ),
                      child: new Text('text $i', style: new TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
              height: 500.0,
              autoPlay: false
            ),
          ),

          new Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () => this.submit_image(),
              child: new Text("submit_image"),
            ),
          ),
        ],
      )
      
     


      // child: ,
    

    );
  }
}

// class LandingPage extends StatelessWidget {
//     @override
//     Widget build(BuildContext context) {
//         return new WillPopScope(
//             onWillPop: () async => false,
//             child: new Material(
//                 color: Color(0xFF75CFD6),
//                 // onTap:  () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage())),
//                 child:  new Column(
//                     mainAxisAlignment: MainAxisAlignment.center ,
//                     children:   <Widget>[
//                         new Padding(
//                             padding: EdgeInsets.only(bottom: 20.0),
//                             child: new Column(
//                                 mainAxisAlignment: MainAxisAlignment.center ,
//                                 children: <Widget>[
//                                     // new Text("HOT_BUDR", style: new TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width/5.5, fontWeight: FontWeight.bold)),
//                                     new Image.asset('./images/UI_images/stick_budr_720.png', width: MediaQuery.of(context).size.width*(0.9),),
//                                     new Text("OR", style: new TextStyle(color: Colors.white, fontSize: 80.0, fontWeight: FontWeight.bold, )),
//                                     new Image.asset('./images/UI_images/not_stick_budr_720.png', width: MediaQuery.of(context).size.width*(0.9),),
//                                     // new Text("NOT_BUDR", style: new TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width/5.5, fontWeight: FontWeight.bold)),
//                                 ],
//                             ),
//                         ),




//                         new Padding(
//                             padding: EdgeInsets.only(bottom: 40.0),
//                             child: new Center(
//                                 child: new Text("that is the question.", style: new TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
//                             ),

//                         ),



//                         // new Padding(
//                         //     padding: EdgeInsets.all(10.0),
//                         //     child: new Center(
//                         //         child: new Text("tap play to start, score icon to see the\nscoreboard and info for instructions", style: new TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold, )),
//                         //     ),
//                         //
//                         // ),

//                         // new RaisedButton(
//                         //   onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage())),
//                         //   child: new Text("PLAY"),
//                         // ),

//                         new Material(
//                             color: Colors.transparent,
//                             child: new Container(
//                                 width: 150.0,
//                                 child: new Ink.image(
//                                     image: new AssetImage('./images/UI_images/play.png'),
//                                     height: 60.0,
//                                     child: new InkWell(
//                                         splashColor: Colors.white54,
//                                         onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage())),
//                                     ),
//                                 ),
//                             ),
//                         ),

//                         new Padding(
//                             padding: EdgeInsets.all(8.0),
//                         ),

//                         new Material(
//                             color: Colors.transparent,
//                             child: new Container(
//                                 width: 150.0,
//                                 child: new Ink.image(
//                                     image: new AssetImage('./images/UI_images/scores.png'),
//                                     height: 60.0,
//                                     child: new InkWell(
//                                         splashColor: Colors.white54,
//                                         onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HighScoreBoard())),
//                                     ),
//                                 ),
//                             ),
//                         ),
//                     ]
//                 )
//             )
//         );
//     }
// }
