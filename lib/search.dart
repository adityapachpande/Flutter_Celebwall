
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';






class Search  extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search>
 {
 

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      title: Text(
        "Search Page",style: TextStyle(fontWeight: FontWeight.bold,
         color:Colors.white,fontSize: 25
         ),
         ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search),onPressed: (){

          showSearch(context: context , delegate: DataSearch()); // IT DIRECTS TO THE CLASS DATASEARCH
          
           
        })

      ],
     ),
     body: Container(

       child: Image.asset('assets/bgiphy.gif',
       height:600,
       width: 500,
       fit: BoxFit.cover,),
      
       
     ),
     

    );
    
  }
}
  class DataSearch extends SearchDelegate<String>{
    // class created to pass the names to the search bar

    final friends =
    [
     
      "Shruti",
      "Rahul",
      "Abhijeet",
      "Shrushti",
      "Sehnaj",
      "Nima",
      "Aniruddha",
      "Apurva",
      "Ayushi",
      "Mayur",
      "Harshada",
      "Swapnil",
      "Aditya",
      "Suraj",
      "Saurabh",
      "Mansi",
      "Mrudula",
      "Shivam",
      "Yash",
      "Harshal",
      "Sandip",
      "Tushar",
      "Pallavi",
      "Harsh",
      "Vivek",
      "Adesh",
      "Omkar",
      "Kunal",
      "Sachin",
      "Nusrat",
      "Rutuja",
      "Shravani",
      "Apurv",
      "Suyog",
      "Girish",
      "Divyani",
      "Abhay",
      "Sujit"
      

    ];

    final recentFriends =  // it shows the names which are recently searched by default
    [
      "Aniruddha",
      "Rahul",
      "Abhijeet",
      "Shrushti",
      
    ];


  @override
  List<Widget> buildActions(BuildContext context) {
    // actions on app bar
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return 
      IconButton(icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
         progress: transitionAnimation ), 
      onPressed: (){
        close(context, null);
      });
    
  }

  @override
  Widget buildResults(BuildContext context) {
    //  it shows some results based on the selection
    return Scaffold(
       // IT DIRECTS ON THE NEW PAGE
       // PROFILE PAGE OF THE SEARCHED PERSON
      
       appBar: AppBar(
        backgroundColor: Colors.white,
        
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        
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
             height: 300,
             child: Column(
               children: <Widget>[
                 ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20),
                ),
                child: Image.asset('assets/qms.png',
                height:220,
                width: 200,
                fit: BoxFit.cover,
                ),

                ),
                 SizedBox(
                   height: 10,
                 ),
                 Text( this.query, style:  // this prints the name which is typed in the search bar
                 
                 TextStyle(fontWeight: FontWeight.bold,fontSize: 30,
                 color: Colors.pinkAccent) ),
                 Text("Member of 6 CS",style: TextStyle(fontSize:20)),
                 
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
                   "5",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20
                   ),
                 ),
                 SizedBox(height:3),
                 Text("Post"),

                   ],
                 ),
                 
                 Column(
                   children: <Widget>[
                 Text(
                   "1",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20
                   ),
                 ),
                 SizedBox(height:3),
                 Text("Groups"),

                   ],
                 ),
                 
                 Column(
                   children: <Widget>[
                 Text(
                   "2",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20
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
           child: Container(
             margin: EdgeInsets.only(left:50,right:50,top:30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Icon(Icons.grid_on,color: Colors.pinkAccent,),
                 Icon(Icons.list, color: Colors.pinkAccent,),
                 

               ]
             ),



           ),
           
         ),
          SliverStaggeredGrid.count(   // format of the tiles i.e images
           crossAxisCount: 2,
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
           staggeredTiles: [
             StaggeredTile.count(1, 1),  // it is used to adjust the images in the posts
             StaggeredTile.count(1, 1),
             StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
               StaggeredTile.count(1, 1),
           ],
           children: <Widget>[
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),  // images which are shown in the posts section
             ),
             child: Image.asset("assets/f4.jpg", fit: BoxFit.cover),
             ),
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),
             ),
             child: Image.asset("assets/f3.jpg", fit: BoxFit.cover),
             ),
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),
             ),
             child: Image.asset("assets/f2.jpg", fit: BoxFit.cover),
             ),
             ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(10),
             ),
             child: Image.asset("assets/f1.JPG", fit: BoxFit.cover),
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

    
  

  @override
  Widget buildSuggestions(BuildContext context) {    //this logic highlights the text which is typed in the search bar
                                                        // which matches with the text that u have typed
    final suggestionList = query.isEmpty ? 
    recentFriends :  friends.where((p) => p.startsWith(query)).toList();
    
   
    // show when someone searches for something
    
    return ListView.builder(                       // it displays the search text with highlighted text
      itemBuilder:(context , index) => ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.face),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0,query.length),  
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey)

                )

             ]
          ) 
          ),
      ),
      
           itemCount: suggestionList.length ,
      );
  }

  }