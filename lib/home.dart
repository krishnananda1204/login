import 'package:flutter/material.dart';
import 'package:login_app/homescr.dart';
import 'package:login_app/editprofile.dart';


import 'profilescr.dart';
import 'login.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  int _currentTabIndex =0;
 final List _tabs=[
      Homescreen(title: '',),
      profilescreen(),
      MyHomePage(title: '',),
      editprofile(email: '', fname: '', sname: '', gender: '',password: '',),

  ];
  onTapped(int index){
    setState(() {
      _currentTabIndex= index;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Stack( children: [
                Positioned(
                  bottom: 8.0,
                  left: 4.0,
                  child: Text(
                    "KRISHNA",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                )
              ],

              ),
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.freecodecamp.org/news/content/images/size/w2000/2021/06/w-qjCHPZbeXCQ-unsplash.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen(title: '',)),);
              },
            ),
          
            // ListTile(
            //   leading: Icon(Icons.contact_mail),
            //   title: Text("Contacts"),
            //   onTap: () {},
            // ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage(title:'',),)
                );
              },
            ),
          ],
         ),
      ),
   body: _tabs[_currentTabIndex],

      bottomNavigationBar: BottomNavigationBar(
      
        onTap: onTapped,
        currentIndex: _currentTabIndex,
        items: const <BottomNavigationBarItem>[
          
        
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'PROFILE',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'HOME',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'LOGOUT',
            ),
            

        ],
      ),
     
    );
  }
}
