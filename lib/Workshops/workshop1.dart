import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:srijan_app/pages/signUp.dart';
class WorkShop1 extends StatelessWidget {
  static const RouteName ='\work';

  final FirebaseUser user;
  WorkShop1({
    @required this.user,
});

  Widget welcomeText(String s){
    var show = s;
    return Container(
      // margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      alignment: Alignment(0.0, 0.0),
      height: 60.0,
      width: 120.0,
      child: Text(
        show,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          /*fontStyle: 'Raleway-Medium',*/
          fontSize: 18.0,
          decoration: TextDecoration.none,
          color: Colors.white,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: <Widget>[

          //main background image
          Container(
            height: 700.0,
            width: double.infinity,
            decoration: BoxDecoration(
              //shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/main background.png'),
                  fit: BoxFit.fill,
                )),
          ),

          //back ground top image added
          Positioned(
            top: -80.0,
            width: 1000.0,
            left: -100.0,
            //Padding(
            //padding: EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                height: 300.0,
                //color: Colors.white,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('assets/background_top above main.png'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            //),
          ),

          // black part of the center of the screen added
          Positioned(
            bottom: MediaQuery.of(context).size.height / 25.0,
            child: Container(
              alignment: Alignment(0.0, 0.0),
              width: MediaQuery.of(context).size.width / 1.0,
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/black overlay_above bg.png',
                    ),
                  )),
            ),
          ),

          //social media sign deviders added
          Positioned(
            height: 1330.0,
            width: 200.0,
            left: MediaQuery.of(context).size.width / 4.0,
            child: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/dividers social media_bottom.png'),
                ),
              ),
            ),
          ),

          //middle circular logo added
          Positioned(
            left: -55.0,
            top: 125.0,
            right: -70.0,
            child: Center(
              child: Container(
                height: 470.0,
                width: 470.0,
                //color: Colors.white,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/circles_center bg.png'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ),

          //upper right circular image added
          Positioned(
            right: -40.0,
            top: -100.0,
            child: Container(
              height: 320.0,
              width: 320.0,
              // color: Colors.white,
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/circles_upper right.png'),
                ),
              ),
            ),
          ),


          // triangle behind srijan20 added
          Positioned(
            right: 12.0,
            top: -26.0,
            child: Container(
              height: 220.0,
              width: 220.0,
              // color: Colors.white,
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/triangle_top right behind srijan20.png'),
                ),
              ),
            ),
          ),


          //srijan20 writing added
          Positioned(
            right: 32.0,
            top: 0.0,
            child: Container(
              height: 170.0,
              width: 170.0,
              // color: Colors.white,
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/srijan20_upper right.png'),
                ),
              ),
            ),
          ),


          // upper left circle added
          Positioned(
            left: 30.0,
            top: 60.0,
            child: Container(
              height: 120.0,
              width: 120.0,
              // color: Colors.white,
              alignment: Alignment(-0.5, -1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/circle_top left.png'),
                ),
              ),
            ),
          ),

          //welcome dp added
          Positioned(
            left: 62.0,
            top: 106.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35.0),
              child: Container(
                height: 55.0,
                width: 55.0,
                // color: Colors.white,
                alignment: Alignment(-1.0, -1.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //fit: BoxFit.fill,
                    image: NetworkImage(
                      user.photoUrl,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //rounded rectangle added under dp***********
          Positioned(
            left: 10.0,
            top: 165.0,
            child: Container(
              height: 50.0,
              width: 160.0,
              // color: Colors.white,
              alignment: Alignment(-1.0, -1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                ),
              ),
            ),
          ),

          // welcome shubhrajyoti text added
//          Positioned(
//            left: 49.5,
//            top: 138.0,
//            child: Container(
//              height: 85.0,
//              width: 85.0,
//              // color: Colors.white,
//              alignment: Alignment(0.0, 0.0),
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  //fit: BoxFit.fill,
//                  image: AssetImage(
//                      'assets/Welcome Shubhrajyoti_top left.png'),
//                ),
//              ),
//            ),
//          ),


          Positioned(
            left: 49.5,
            top: 138.0,
            child: Container(
              height: 85.0,
              width: 85.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                maxLines: 1,
              ),
            ),
          ),

          Positioned(
            left: 49.5,
            top: 155.0,
            child: Container(
              height: 85.0,
              width: 85.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              child: Text(
                '${user.displayName.substring(0, user.displayName.indexOf(' '))}',
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w900),
                maxLines: 1,
              ),
            ),
          ),


          // boundary behind workshop
          Positioned(
            left: 8.0,
            top: 145.0,
            child: Container(
              height: 200.0,
              width: 400.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/bounding box_behind workshop.png'),
                ),
              ),
            ),
          ),

          //solid box behind workshop
          Positioned(
            left: 55.0,
            top: 146.5,
            child: Container(
              height: 200.0,
              width: 300.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/solid box_behind workshops.png'),
                ),
              ),
            ),
          ),

          //workshop text
          Positioned(
            left: 80.0,
            top: 146.5,
            child: Container(
              height: 200.0,
              width: 240.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/workshops text.png'),
                ),
              ),
            ),
          ),


          /*5 SOCIAL MEDIA ICONS*/
          Positioned(
            left: 152.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/youtube_icon.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 270.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/mail_icon.png'),
                ),
              ),
            ),
          ),

          Positioned(
            left: 115.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/facebook_icon.png'),
                ),
              ),
            ),
          ),

          Positioned(
            left: 235.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/phone_icon.png'),
                ),
              ),
            ),
          ),

          Positioned(
            left: 192.0,
            bottom: 5.6,
            child: Container(
              height: 28.0,
              width: 28.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                      'assets/instagram_icon.png'),
                ),
              ),
            ),
          ),


          Positioned(
            left:10.0,
            right: 10.0,
            top: 280.0,
            bottom: 340.0,
            child:Center(
              child: Container(
                height: 40.0,
                width: 150.0,
                //color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                  ),
                ),
                child: FlatButton(
                  onPressed: null ,
                  child: welcomeText('NIVT'),
                ),
              ),
            ),
          ),


          Positioned(
            left:10.0,
            right: 10.0,
            top: 350.0,

            child:Center(
              child: Container(
                height: 200.0,
                width: 300.0,
                //color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                child: SingleChildScrollView(
                  child: new ConstrainedBox(
                      constraints: new BoxConstraints(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          '''Modules for Workshop in Machine Learning
 1. Introduction to Data Science
 What is Data Science?
 What does Data Science involve?
 Era of Data Science
 Intelligence Vs Data Science
 Life cycle of Data Science
 Tools of Data Science
 
  2. Data Extraction, Wrangling, & Visualization
 Data Analysis Pipeline
 What is Data Extraction
 Types of Data
 Raw and Processed Data
 Data Wrangling
 Exploratory Data Analysis
 Visualization of Data
 
  3. Introduction to Machine Learning
 What is Machine Learning?
 Machine Learning Use-Cases
 Machine Learning Process Flow
 Machine Learning Categories
 
  4. Supervised Learning Algorithm
 Linear Regression, Multiple linear Regression, Logistic
 Regression
 
  5. Un-Supervised Learning Algorithm
 K-Means Clustering, Association Rule Mining
 ''', style: TextStyle(color:Colors.white,fontSize: 14.0),textAlign: TextAlign.justify
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          '''Case Study
                          
1.Market Basket Analysis
    We live in a fast changing digital world. In today’s age customers expect the sellers to tell what they might want to buy. We personally end up using Amazon’s recommendations almost in all my visits to their site.This creates an interesting threat / opportunity situation for the retailers.
  If you can tell the customers what they might want to buy – it not only improves your sales, but also the customer experience and ultimately life time value.
2.Credit Card Fraud detection
   We will use a variety of machine learning algorithms that will be able to discern fraudulent from non-fraudulent one. By the end of this machine learning project, you will learn how to implement machine learning algorithms to perform classification.''',style: TextStyle(fontSize: 14.0 , color: Colors.white),textAlign: TextAlign.justify
                        ),
                        SizedBox(height: 20.0),
                        Text('''Guidelines for NIVT workshop:
                        
• No pre-requisite knowledge needed.
• Laptop must be carried.
• Recommended laptop specifications: 2gb memory, 10gb hdd space, i3 3rd gen or higher.
• Required softwares will be provided.''',style: TextStyle(fontSize: 14.0, color: Colors.white),textAlign: TextAlign.justify,)

                      ],
                    ),
                  ),
                ),

              ),
            ),
          ),



          Positioned(
            left:10.0,
            right: 10.0,
            top: 450.0,
            bottom: 5.0,
            child:Center(
              child: Container(
                height: 40.0,
                width: 170.0,
                //color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                  ),
                ),

                //ADD CLICK TO REGISTER ROUTE HERE
                child: FlatButton(
                  onPressed: (){
                    register(context);
                  } ,
                  child: Container(
                    // margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    alignment: Alignment(0.0, 0.0),
                    height: 60.0,
                    width: 150.0,
                    child: Text(
                      'CLICK HERE TO REGISTER',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        /*fontStyle: 'Raleway-Medium',*/
                        fontSize: 10.5,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  void register(BuildContext context) {
    final FirebaseDatabase database = new FirebaseDatabase();
    var dname = 'srijan/profile/';
    var baseprofile = '/parentprofile';
    var ename = 'nivt';
    var eprofile = '/' + ename + '/status/summary';
    var cust = '/' + ename + '/support';
    var map = {'name': ename};
    var state = 0;
    database
        .reference()
        .child('$dname${user.uid}$baseprofile')
        .orderByValue()
        .once()
        .then((dataSnapshot) async {
      if (dataSnapshot.value['complete'] != 1) {
        _reg(context);
        // Make registration first dialog await
        Navigator.pushNamed(context, SignUp.RouteName, arguments: user);
      } else {


        await http.post(
            'https://us-central1-srijanju20.cloudfunctions.net/app/pay',
            body: map,
            headers: {
              'Authorization': 'Bearer${await user.getIdToken()}',
            }).then((response) async {
          var resp = await jsonDecode(response.toString());

          var postbody = {};
          resp.forEach((k, v) {
            if (k != 'URL') {
              postbody[k] = v;
            }
          });
          await http.post('${resp['URL']}', body: postbody);
          database.reference().child('$dname${user.uid}$eprofile').orderByValue().once().then((dataSnapshot){
            // show alert
            var ordId="";
            var cst="";
            var amt="";
            var email="";


            if ( dataSnapshot.value != null){
              if (dataSnapshot.value['status'] == 1){
                ordId = dataSnapshot.value['ORDER_ID'];
                cst = 'TRANSCATION SUCCESSFUL';
                email = dataSnapshot.value['email'];
                amt = dataSnapshot.value['amount'];
                AlertDialog(
                  title: Text('SUCCESSFUl'),
                  actions: <Widget>[
                    // usually buttons at the bottom of the dialog
                    new FlatButton(
                      child: new Text("Close"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                  content: Text(cst),
                );

              }
              else if ( dataSnapshot.value['status'] == 0){
                ordId = dataSnapshot.value['ORDER_ID'];
                cst = 'INCOMPLETE TRANSCATION';
                email = dataSnapshot.value['email'];
                amt = dataSnapshot.value['amount'];
                AlertDialog(
                  title: Text('Unsuccessful'),
                  actions: <Widget>[
                    // usually buttons at the bottom of the dialog
                    new FlatButton(
                      child: new Text("Close"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                  content: Text(cst),
                );
              }
              else if ( dataSnapshot.value['status'] == 2){
                ordId = dataSnapshot.value['ORDER_ID'];
                cst = 'PENDING Transcation';
                email = dataSnapshot.value['email'];
                amt = dataSnapshot.value['amount'];
                AlertDialog(
                  title: Text('Pending'),
                  actions: <Widget>[
                    // usually buttons at the bottom of the dialog
                    new FlatButton(
                      child: new Text("Close"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                  content: Text(cst),
                );
              }
            }

          }).catchError((error){
            _error(context);
          });




        }).catchError((error) {
          _error(context);
        });




      }
    });
  }



  Future<void> _error(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Error'),
          content: new Text('Sources may be weak internet connection or server is down , please try after some time'),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }





  Future<void> _reg(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Register first'),
          content: new Text('You must be registered to proceed'),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }



}