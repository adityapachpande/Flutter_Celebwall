import 'dart:async';

import 'package:flutter/material.dart';



// CODE FOR THE SPLASH SCREEN
 //  THIS  CODE IS NOT DEPLOYED IN THE MAIN APP 


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
      //TOOD: Implement initstate
      super.initState();
      Timer(Duration(seconds: 5), ()=> null);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(   // more than 1 widget we are using here
        fit: StackFit.expand,
        children: <Widget>[
          
          Container(
        decoration: BoxDecoration(
          color: Colors.red
          
        ),
        
        
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                
                Expanded(
                  flex: 3 ,   //for covering the area 2 times
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                          Icon(Icons.cake,
                          color: Colors.yellow,
                          size: 120.0,
                      ),
                        
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                       ),
                       
                       Text(
                         "Let's Celebrate",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 25.0,
                           fontStyle: FontStyle.italic,
                           fontWeight: FontWeight.bold),
                       )//Text

                      ],       
                  )  
                ),
               
                  ),
                  Expanded(flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(backgroundColor: Colors.yellow),
                      Padding(padding: EdgeInsets.only(top: 30.0),
                      ),
                      Text(" \n Wait For a While...",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 15.0,
                           fontWeight: FontWeight.bold
                         )
                         ),

                    ],
                    
                 )
                    
               )
              ],
                ),
          ),
              ],
            ),
          
        
          );
          
        
  }    
  }