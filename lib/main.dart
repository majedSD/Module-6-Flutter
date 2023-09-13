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
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page',style: TextStyle(fontSize: 40),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
     /* body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                print('This is gestureDetector');
              },
              onLongPress: (){
                print('Long press on gestureDetecor');
              },
              onDoubleTap: (){
                print('Double press on gestureDetecor');
              },
            child: Text('HELLO WORLD',style: TextStyle(fontSize: 30),),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: (){
                print('This is gestureDetector');
              },
              onLongPress: (){
                print('Long press on gestureDetecor');
              },
              onDoubleTap: (){
                print('Double press on gestureDetecor');
              },
              child: Text('HELLO WORLD',style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
      */
      ///List view onek gula list element nia kaj korea and how to printig these list element how it work
     ///if the column widgets overflow the screen you use SingleChildScrollView
      body:Scrollbar(
        thickness: 20,
        radius: Radius.circular(10),
      child:ListView(
        //scrollDirection: Axis.vertical,
        children: [
          ListTile(
            ///List tyle is special property in list view it work it works with some special property
            title: Text('Majedul islam'),
            subtitle: Text('majedulislam117@gmail.com'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(
            height: 6,
            thickness: 1,
            color: Colors.black87,
            endIndent: 10,
            indent: 10,
          ),
          ListTile(
            ///List tyle is special property in list view it work it works with some special property
            title: Text('Majedul islam'),
            subtitle: Text('majedulislam117@gmail.com'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            ///List tyle is special property in list view it work it works with some special property
            title: Text('Majedul islam'),
            subtitle: Text('majedulislam117@gmail.com'),
            leading: Icon(Icons.person),
            trailing:Column(
              children: [
                 Icon(Icons.arrow_forward),
                 Icon(Icons.arrow_forward),
                 //Icon(Icons.arrow_forward),

              ],
            )
          ),
          ListTile(
            ///List tyle is special property in list view it work it works with some special property
            title: Text('Majedul islam'),
            subtitle: Text('majedulislam117@gmail.com'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward),
          ),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
          Text('My name is Majedul islam'),
        ],
      ),
      ),
    );
  }
}
/**GridView(gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,),
    children: [
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    Icon(Icons.access_alarm),
    ],
    ),*/