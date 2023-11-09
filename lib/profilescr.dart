import 'package:flutter/material.dart';
import 'package:login_app/editprofile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  

  @override
  State<Homescreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homescreen> {
  String ? gender;

  TextEditingController fnamecontroller=new TextEditingController();
  TextEditingController snamecontroller=new TextEditingController();
  TextEditingController gendercontroller=new TextEditingController();
  TextEditingController emailcontroller=new TextEditingController();
  TextEditingController passcontroller=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                    height: 200.0,
                    width: double.infinity,
                    //child: Center(

                    child: Image.asset(
                      "assets/background.jpg",
                      fit: BoxFit.fill,
                    )
                    //),
                    ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 10),
                      child: TextFormField(
                        controller: fnamecontroller,
                        decoration: const InputDecoration(
                          hintText: 'enter your first name',
                          border: UnderlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 16),
                      child: TextFormField(
                        
                        controller: snamecontroller,
                        decoration: const InputDecoration(
                          hintText: 'enter your second name',
                          border: UnderlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Row(
          
          children: [
            Expanded(
              
              
              child: RadioListTile(value: "male",
              title:Text("male") ,
               groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender=value.toString();
                  });
                })),
                Expanded(
                  child: RadioListTile(value: "female",
                  title: Text("female"),
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender=value.toString();
                      gendercontroller.text=gender!;
                    });
                  },
                  )),
                  Expanded(
              child: RadioListTile(value: "others",
              title:Text("others") ,
               groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender=value.toString();
                  });
                })),
          ],
        ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 16),
                      child: TextFormField(
                        
                        controller: emailcontroller,
                        decoration: const InputDecoration(
                          hintText: 'enter your email',
                          border: UnderlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 16),
                      child: TextFormField(
                        controller: passcontroller,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'enter password',
                          border: UnderlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                        //  color: Colors.green,
                        // height: 50,
                        // width: 400,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('UPDATE PROFILE'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    editprofile(fname: fnamecontroller.text,
                                    sname: snamecontroller.text,
                                    email: emailcontroller.text,
                                    gender: gendercontroller.text,
                                    password: passcontroller.text,),
                              ),
                            );
                            // print(nameController.text);
                            // print(passwordController.text);
                          },
                        )),
                  ]),
                ))
              ],
            ),
            // Profile image
            Positioned(
              top: 150.0, // (background container size) - (circle height / 2)
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/profile.jpg")),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      );
    
  }
}
