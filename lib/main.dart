/**
 *
 *
 *
 *    KOMAIYA KOTHA KOW MIA MOSTANI KORO NI AMAR LOGE MOSTANI KORIA O NAH AMARA CINO NI
 *    EKABARE DUKAI DIMU TUMARA JELHAZOTO MOJA BUJILAIBAI KHAHINI AMAR LOGE KORIO NAH
 *
 *
 *
 *
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:module_6_flutter/Fragment/babyFragment.dart';
import 'package:module_6_flutter/Fragment/homeFragment.dart';
import 'package:module_6_flutter/Fragment/messageFragment.dart';
import 'package:module_6_flutter/Fragment/personFragment.dart';

///My first programme is running now and how work my flutter project and what kind of benifit here
void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});
  var MyItems=[
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'Majedu'},
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'korimu'},
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'Rohimu'},
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'Shimu'},
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'Muhiminu'},
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'Labonnu'},
    {"img":"https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U","tittle":'Salmanu'},

  ];
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
   MyAlertDialog(context){
     return showDialog(

         context: context,
         builder: (BuildContext context) {
           return Expanded(
               child: AlertDialog(
                 title: Text('Alert  !'),
                 content: Text('Do you want to delet this account'),
                 actions: [
                   TextButton(onPressed: (){
                     MySnackBar('Delet Success', context);
                     Navigator.of(context).pop();
                   }, child: Text("Yes")),
                   TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No'))
                 ],
               )
           );
         }
     );
   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
      ),
    body: Center(
      child: LinearProgressIndicator(    ///Same to same work with  CircularProgressIndicator
        color: Colors.purple,
        minHeight: 5,
        backgroundColor: Colors.pink,
      ),
    ),
    /*
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Card(
            color: Colors.pink,
            shadowColor: Colors.green,
            elevation: 80,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
           child: SizedBox(
             height: 200,
             width: 200,
             child: Center(child: Text('Munzareen vs Ayman'),),
           ),
         ),

        ],
      ),
    ),
    DefaultTabController(
        length: 8,
        child: Scaffold(
      appBar: AppBar(
        title: Text('Home page', style: TextStyle(fontSize: 40),),
        backgroundColor: Colors.pink,
        centerTitle: true,
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(icon:Icon(Icons.home),text:'Home'),
            Tab(icon:Icon(Icons.person),text:'Person'),
            Tab(icon:Icon(Icons.message),text:'Message'),
            /*Tab(icon:Icon(Icons.email),text:'Email'),
            Tab(icon:Icon(Icons.android),text:'Android'),
            Tab(icon:Icon(Icons.apple),text:'Apple'),
            Tab(icon:Icon(Icons.headset_mic_outlined),text:'HeadPhone'),
            Tab(icon:Icon(Icons.baby_changing_station_outlined),text:'Baby'),*/
          ],
        ),
      ),
      body: TabBarView(
        children: [
         messageFragment(),
          personFragment(),
          homeFragment(),
        ],
      ),
      /*
      body:ListView.builder(
          itemCount:MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){MySnackBar(MyItems[index]['tittle'], context);},
              child: Container(
                margin: EdgeInsets.all(10),
                width:200,
                height:200,
                child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
              ),
            );
          },
      ),
      Center(
        child: ElevatedButton(
          child: Text('Click me'),
          onPressed: (){MyAlertDialog(context);},
        ),
      ),

      Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(height: 100,width: 100,child: Image.network('https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U'),),
      Container(height: 100,width: 100,child: Image.network('https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U'),),
      Container(height: 100,width: 100,child: Image.network('https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U'),),
    ],
    ),

    Container(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        margin: EdgeInsets.all(100),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(color: Colors.black87,width: 87)
        ),
        child: Image.network('https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U'),
        //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
       //margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      )
      Center(
        child: Image.network('https://media.licdn.com/dms/image/D5603AQEeifD0eSgOZA/profile-displayphoto-shrink_800_800/0/1688810978987?e=1700092800&v=beta&t=myADUny1Bxb_Mfu1ySIZ7hfzm7C_aZukzxaNVU2zi7U'),
      ),
      */
     */
    );
  }

}