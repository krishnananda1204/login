import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  const editprofile({super.key,
  required this.fname,
  required this.sname,
  required this.email,
  required this.gender,
  required this.password,

  });

  final String fname;
  final String sname;
  final String email;
  final String? gender;
  final String password;

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  late TextEditingController _fnamecontroller;
  late TextEditingController _snamecontroller;
  late TextEditingController _emailcontroller;
  
  late TextEditingController _passcontroller;

  @override
  void initState(){
    super.initState();
    _fnamecontroller=TextEditingController(text: widget.fname);
    _snamecontroller=TextEditingController(text: widget.sname);
    _emailcontroller=TextEditingController(text: widget.email);
    
    _passcontroller=TextEditingController(text: widget.password);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:Column(
        children: [
          TextField(controller: _fnamecontroller),
          TextField(controller: _snamecontroller),
          
          RadioListTile(value: "male",
          title: Text('male'),
           groupValue: widget.gender,
           
            onChanged: (value){
            setState(() {
              
            });
          }),
          RadioListTile(value: "female",
          title: Text('female'),
           groupValue: widget.gender, 
           onChanged: (value){
            setState(() {
              
            });
          }),
          RadioListTile(value: "other",
          title: Text('other'),
           groupValue: widget.gender,
           
            onChanged: (value){
            setState(() {
              
            });
          }),
      
          TextField(controller: _emailcontroller),
          TextField(controller: _passcontroller),




        ],
      )
       ),
    );
  }
}