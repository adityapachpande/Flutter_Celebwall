import 'package:celebui/profile.dart';
import 'package:celebui/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'homepage.dart';

// BOTTOMBAR 

void main() {
  runApp(MaterialApp(
    home: BottomBar(),  
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
  }
}


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;  //  Homepage will be shown as the home screen as current index is 0

  final List<Widget> _children =  // navigation used for the pages
   [
     HomePage(),  // 0
     Search(),   // 1
     Profile(),  // 2
   ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _children[_currentIndex], // current index is passed here

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.pink,
        selectedFontSize: 15,
         
        // PASSING THE CURRENT INDEX
        onTap: (index){   // push and pop 
          
          setState(() {
      _currentIndex = index ;
      
    });


        },
        
        items: [   // icons showing on the bottombar
        
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Homepage"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
            
          ),
        ],
        
      ),
        
    
    );
  }
}


