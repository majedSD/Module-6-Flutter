import 'package:flutter/material.dart';

/// Navigation - one page -> another page
/// Navigator 1(Simple and Lengthy), 2 (complex)
/// Routers Package -> Getx, GoRouter, Auto Route

/// TODO : Stack, Queue, Navigator, Navigation

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

/// Route
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>students = [
      'majed',
      'maruf',
      'murshed',
      'mitu',
      'muhaimin',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(width: 1000,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>SettingScreen(),
                      ),
                  );
                },
                child: Text('Setting')
            )
          ],
        ),
      ),


      /*ListView.separated(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(students[index]),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider();
      },
      ),*/
    );
  }
}
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>students = [
      'majed',
      'maruf',
      'murshed',
      'mitu',
      'muhaimin',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(width: 1000,),
            Text('Please fill in your boidata',style: TextStyle(color: Colors.pink)),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>OrdersScreen(),
                    ),
                  );
                },
                child: Text('Orders')
            )
          ],
        ),
      ),


      /*ListView.separated(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(students[index]),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider();
      },
      ),*/
    );
  }
}
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>students = [
      'majed',
      'maruf',
      'murshed',
      'mitu',
      'muhaimin',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Orderse'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(width: 1000,),
            Text('Plesase order your needed thing',style: TextStyle(color: Colors.pink)),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Back to seeting')
            )
          ],
        ),
      ),


      /*ListView.separated(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(students[index]),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider();
      },
      ),*/
    );
  }
}

  /*Scrollbar(
        thickness: 20,
          radius: Radius.circular(10),
        child: ListView.builder(///if you add this divider you can show live class 3333333-----27 tomo second
             itemCount: 100,
            itemBuilder: (context,index) {
                return ListTile(
                  title: Text('Item: $index'),
                );
            }
        ),
        GridView.builder(
             itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder:(context,index){
               return Column(
                 children: [
                   Text(index.toString()),
                   Icon(Icons.drive_eta),
                 ],

              );
            }
        ),

      ),
    );
  }
}
 */
