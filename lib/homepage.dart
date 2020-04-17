import 'package:celebui/post.dart';
import 'package:celebui/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




// OUR HOME SCREEN 
// DEFAULT SCREEN


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () {},
              color: Colors.black
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.live_tv),
                onPressed: () {},
                color: Colors.black),
            
          ],
          title: Text(
            '  Celebration Wall',
            style: TextStyle(
                fontFamily: 'Instagram', fontSize: 32, color: Colors.white),
          ),          
        ),
        body: CustomScrollView( // FOR POSTS AND STORIES
          slivers: <Widget>[   // IT DIRECT TO THE STORIES PAGE AND PAST PAGES
            Stories(),
            Post(),
          ],
        ),
    );
  }
}
