import 'package:flutter/material.dart';

import 'package:transparent_image/transparent_image.dart';
import 'assets.dart';

class Post extends StatelessWidget {


 @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(

            color: Colors.black12,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvatar(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: profile[index],
                          ),
                          backgroundColor: Color(0xfff8faf8),
                          radius: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "${name[index]}",
                          style: TextStyle(fontWeight: FontWeight.bold),

                        ),
                      ),

                      Expanded(
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.more_vert),
                              color: Colors.black,
                              onPressed: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              
             
                
               Center(
                  child: FadeInImage.assetNetwork(                    
                    placeholder: 'assets/tenor.gif',  // it appears till the images are not loaded properly
                    image: background[index],
                  ),
                ),
                
                 
                 
                    Like(),                //class called

                Padding(                 // It appears below the images in the posts
                  padding: EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Liked by '),
                            Text(
                              "${likes[index]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(' and '),
                            Text(
                              "${numberlikes[index]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                            'Dont forget to comment here')
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        childCount: background.length,
      ),
    );
  }
}

class Like extends StatefulWidget {       // class created  to apply the like button
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool liked = false ;   // variable declared

   _pressed(){                   // function for the action after the button is pressed
     setState(() {
       liked = !liked;
     });
   }
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
       
       ListTile(
         leading: IconButton(
           icon: Icon( liked ? Icons.favorite : Icons.favorite_border,color: liked ? 
           
           Colors.red : Colors.black),
           iconSize: 32,
           onPressed: () => _pressed() ,    // function created 
           ),
           
           
           
   ) ,
      
        
    );
    
  }
}
  
  
