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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Text('Hello world'),
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.purple,
                border: Border.all(color: Colors.black87,width: 2),
                //borderRadius: BorderRadius.circular(20)
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                //shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){print('Sign into email button');},
              onLongPress: (){print('Sign out on email button');},
              child: Text('SEND EMAIL'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
              ),
            ),
            ///This programme is about text button and how work this text button
            SizedBox(height: 10,),
            TextButton(
              onPressed: (){print('Resend your email');},
              onLongPress: (){print('Not Resend your email');},
              child: Text('RESEND EMAIL'),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.deepOrange,
                  textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
              ),
            ),
            IconButton(onPressed:(){}, icon: Icon(Icons.add)),
            SizedBox(height: 10,),
            OutlinedButton(onPressed: (){}, child: Text('OUTLINED BUTTON')),
            SizedBox(height: 10,),
            SizedBox(
              width: 300,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.white60,
                    ),
                    suffixIcon: Icon(Icons.email),
                    suffixIconColor: Colors.white60,
                    label: Text('Enter your email'),
                    labelStyle: TextStyle(color: Colors.white60),
                    border:OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(///Same padding dara wrap kora jai and sizedbox er moto same kaj kore
              ///padding used korle left right teka width reduce kora jai
              ///Textfield ka padding dara wrap korea
              width: 300,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.white60,
                    ),
                    suffixIcon: Icon(Icons.password),
                    suffixIconColor: Colors.white60,
                    label: Text('Password'),
                    labelStyle: TextStyle(color: Colors.white60),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}