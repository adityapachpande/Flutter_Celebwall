import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(" My Profile",
                           
        style: TextStyle(fontWeight: FontWeight.bold,
         color:Colors.white,fontSize: 25
         ),
        ),
        
        
         backgroundColor: Colors.pink,
         
         leading: IconButton(icon: Icon(Icons.edit), onPressed: (){

         },
         color: Colors.white),
        
        //iconTheme: IconThemeData(
          //color: Colors.black
        //),
        
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10 ),

          ),
          

        ],
      ),
      body: CustomScrollView(
       slivers: <Widget>[
         SliverToBoxAdapter(
           child: Container(
             margin: EdgeInsets.only(top: 20),
             height: 350,
             child: Column(
               children: <Widget>[
                 ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    ),
                   child: Image.asset('assets/prof.jpg',
                    height:220,
                    width: 200,
                    fit: BoxFit.cover,
                  ),

                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Text("Aditya Pachpande", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,
                 color: Colors.pinkAccent) ),
                 Text("Member of CS 6",style: TextStyle(fontSize:20)),
                 
               ],
             ),
           ),
         ),
         
         SliverToBoxAdapter(
           child: Container(
             margin: EdgeInsets.only(left:30, right:30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Column(
                   children: <Widget>[
                 Text(
                   "3",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20
                   ),
                 ),
                 SizedBox(height:3),
                 Text("Post"),

                   ],
                 ),
                 
                 Column(
                   children: <Widget>[
                 Text(
                   "5",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20
                   ),
                 ),
                 SizedBox(height:3),
                 Text("Groups"),

                   ],
                 ),
                 
                 Column(
                   children: <Widget>[
                 Text(
                   "7",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20
                   ),
                 ),
                 SizedBox(height:3),
                 Text("Events"),

                   ],
                 ),
                 
               ],
             ),
             
               
           ),

         ),
         SliverToBoxAdapter(
           
           child: Container(  // BUTTONS 
             margin: EdgeInsets.only(left:50,right:50,top:20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Icon(Icons.grid_on,color: Colors.pinkAccent,),
                 Icon(Icons.list, color: Colors.pinkAccent,),
                // Icon(Icons.tag_faces, color: Colors.blue,),
                 //Divider(
                  //  height: 30,
                  //  color: Colors.red,

                // ),
              
            
                  ],
                  
             ),
           
            
           
           ),
           
            
           
           
         
            
         ),
         SliverStaggeredGrid.count(   // FORMAT OF THE IMAGES CAN BE ADJUSTED FROM HERE
           crossAxisCount: 2,
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
           staggeredTiles: [
             StaggeredTile.count(1, 2),
             StaggeredTile.count(1, 1),
             StaggeredTile.count(1, 1),
           ],
           children: <Widget>[
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),
             ),
             child: Image.asset("assets/profile.jpg", fit: BoxFit.cover),
             ),
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),
             ),
             child: Image.asset("assets/w2.jpg", fit: BoxFit.cover),
             ),
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),
             ),
             child: Image.asset("assets/f4.jpg", fit: BoxFit.cover),
             ),
           ],
           )
         
       ],  
         
      ),
   );
  }
}