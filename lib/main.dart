

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'practice app',
     theme: ThemeData(
       useMaterial3: true,
       // colorScheme: ColorScheme.fromSwatch(
       //   primarySwatch: Colors.blueGrey,
       // ),
       appBarTheme: const AppBarTheme(
         color: Colors.green,
         elevation: 2,
       ),
     ),
     debugShowCheckedModeBanner: false,
     home: const HomeActivity()

   );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  showCustomSnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Hello',
             style: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.bold
             ),
        ),
        // centerTitle: true,
        titleSpacing: 10,
        toolbarHeight: 55,
        toolbarOpacity: 0.8,
        actions: [
               IconButton(
                   onPressed: (){
                     showCustomSnackBar("Hi! I'm listening", context);
                   },
                   icon: Icon(Icons.add)
               ),
        ],
      ),
      body: const Center(
        child: Text(
          'Hello flutter',
           style:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            backgroundColor: Colors.blue,
          ) ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        child: Icon(Icons.add),
        onPressed: (){
          showCustomSnackBar(
            "This is a floating action button",
            context,);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: "Home",
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.contacts),
             label: "Contacts",
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             label: "Person",
           )
         ],

        onTap: (value){
           switch(value){
             case 0:
               showCustomSnackBar('This is Home', context);
             case 1:
               showCustomSnackBar('This is contacts', context);
             case 2:
                showCustomSnackBar('This is parson tab', context);
             default:
               showCustomSnackBar('Nothing happend', context);
           }
        },

      ),
      drawer: Drawer(
        child: ListView(
          children: [
             DrawerHeader(child: Text('Inventory Management')),
             ListTile(
               title: Text('Home'),
             ) ,
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Home'),
            ),
          ],
        )
      ),
    );
  }
}T
