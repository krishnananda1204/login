import 'package:flutter/material.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<RegistrationPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RegistrationPage> {
  TextEditingController firtnmcontroller=new TextEditingController();
  TextEditingController secondnmcontroller=new TextEditingController();
  TextEditingController gencontroller=new TextEditingController();
  TextEditingController mailcontroller=new TextEditingController();

String? gender;
 

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("REGISTRATION FORM"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
           child: Text("REGISTRATION"),),
            
           Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextFormField(
            controller: firtnmcontroller,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'ENTER YOUR FIRST NAME:',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextFormField(
            controller: secondnmcontroller,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'ENTER YOUR SECOND NAME:',
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextFormField(
            controller: mailcontroller,
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              
              labelText: 'ENTER EMAIL ID:',
            ),
          ),
        ),
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              
              labelText: 'ENTER PASSWORD:',
            ),
          ),
        ),
        
        Container(
              //  color: Colors.green,
                height: 50,
                width: 400,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('REGISTER'),
                  onPressed: () {
                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                )
            ),
            
          ]
         
        ),
      ),
      
      
    );
  }
}