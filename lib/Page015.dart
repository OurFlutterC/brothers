import 'package:flutter/material.dart';

class Page015 extends StatefulWidget {
  @override
  _Page015State createState() => _Page015State();
}

class _Page015State extends State<Page015> {
  List check = [true,false,false];
  Widget btn(String txt,int index){

    return InkWell(
      onTap: (){
        setState(() {
          check = [false,false,false];
          check[index] = !check[index];
        });
      }, child: Text(txt,style: TextStyle(fontSize: 20.0,color: check[index] ?Colors.white:Colors.white38,),));
  }
  Widget conone(){
    return Container(
      height: 90,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                 height: 120,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://png.pngtree.com/thumb_back/fw800/back_our/20190621/ourmid/pngtree-cool-fluid-gradient-cosmetics-layered-master-image_180789.jpg"),),
            color:Colors.red,
            borderRadius:BorderRadius.circular(10),
          ),
              ),
              Positioned(
                top:15.0,
                left:15.0,
                child: Text("   The\n  world\n    of\nAbstract\n   Art",style: TextStyle(color: Colors.white),)),
                
            ],
          ),
        
        
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Text("The world\nof Abstract\nArt",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
                Row(
                
                  children: <Widget>[
                    Icon(Icons.star,size: 16,color:Colors.grey[500]),
                  Text("4,5",style:TextStyle(color:Colors.grey[500])),
                  ],
                ),
               
                SizedBox(width: 35.0,),
                  Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:BorderRadius.circular(20),
                    ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         Icon(Icons.remove_red_eye,color: Colors.grey[500],size: 16,),
                         Text("1,1k",style:TextStyle(color:Colors.grey[500],fontSize: 15)),
                      ],
                     
                   ),
                  ),
             ]
           )
          ],
          
        ),
        
      ],
      
                  
                  
                  
               
      ),
      
    );
  }
  conteu(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
       
        Container(
           height: 110,
        width: 95,
        decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTj8CT_BeqsaTjTNvhMyly3TdMbwul6VraR-v1KLJ8Tq8aXQA2D&usqp=CAU"),),
          color:Colors.red,
          borderRadius:BorderRadius.circular(10),
        ),
        ),
        Text("Seizing the\nDay World",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
         Container(
              width: 50,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius:BorderRadius.circular(20),
              ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Icon(Icons.attach_money,color: Colors.grey[500],size: 16,),
                   Text("4.54",style:TextStyle(color:Colors.grey[500],fontSize: 15)),
                ],
               
             ),
            )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            
            
            decoration: BoxDecoration(
              color:Colors.blue,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))
            ),
            height: MediaQuery.of(context).size.height/2,
            child: Column(
              children: <Widget>[
                SizedBox(height:25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.border_all,color: Colors.white70,),
                    Container(
                      height: 40,
                    width: 40,
                    
                    decoration: BoxDecoration(
                       boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            spreadRadius: 2.0),
                      ],
                      color:Colors.blue[800],
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child:Icon(Icons.search,color: Colors.white70,)),
                  ],
                ),
                
                Padding(
                  padding: EdgeInsets.only(right:148.0),
                  child: Text("What do\nyou want to Read ?",style: TextStyle(fontSize:20, fontWeight:FontWeight.w600,color: Colors.white),),
                ),
                 SizedBox(height:10),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      btn('For You',0),
                      btn('Popular',1),
                      btn('All Books',2)
                    ],
                  ),
                ),
                
                SizedBox(height:10),
                Container(height: 155.0,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: conone(),
                    );
                    
                  },),
                ),
                
              ],

            ),
            
          ),
         
          Padding(
          padding: const EdgeInsets.only(right:180.0,top: 10),
          child: Text("New Releases",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
        ),
         
          Container(
          
            height: 222.0,
             width: double.infinity,
            child: ListView.builder(
               
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: conteu(),
                      );
                      
                    },),
          ),
          Container(
            
            decoration: BoxDecoration(
              color: Colors.blue,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),bottomLeft: Radius.circular(2),bottomRight: Radius.circular(2)),
               
            ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                       Container(
                width: 90,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius:BorderRadius.circular(20),
                ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Icon(Icons.home,color: Colors.blue,size: 25,),
                     Text("Home",style:TextStyle(color:Colors.blue,fontSize: 15)),
                     
                  ],
                 
               ),
              ),
              Icon(Icons.panorama_horizontal,color: Colors.white60,size: 20,),
              Icon(Icons.notifications_none,color: Colors.white60,size: 20),
              Icon(Icons.payment,color: Colors.white60,size: 20),
              
                    ],
                  ),
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                ),
        ],
      ),
      
    );
  }
}