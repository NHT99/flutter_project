import 'package:flutter/material.dart';
import 'package:navigation/page/home_page.dart';
import 'package:navigation/page/profile_page.dart';
import 'package:navigation/page/setting_page.dart';

class FirstPage extends StatefulWidget {
   const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  
  //list page
  final List _page =const  [
    //home page
    HomePage(),
    //profile page
    ProfilePage(),
    //setting page
    SettingPage(),
  ];
  
   int _selectedIndex = 0 ; 

   void navigateBottomBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
   } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st page"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 220, 123, 33),
      ),
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          //settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        onTap: navigateBottomBar,
      ),

      // drawer: Drawer(
      //   backgroundColor: const Color.fromARGB(255, 233, 181, 132),
      //   child: Column(
      //     children: [
      //       //header
      //       const DrawerHeader(
      //           child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //       )),

      //       //home page
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('H O M E'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),
      //       //setting page
      //       ListTile(
      //         leading: const Icon(Icons.settings),
      //         title: const Text('S E T T I N G'),
      //         onTap: () {
      //           Navigator.pop(context);

      //           Navigator.pushNamed(context, '/settingpage');

      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
