import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(kkk());
}
MaterialApp kkk(){
  return MaterialApp(
    home: Myhome(),
  );
}
class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  var pass;
  void initState() {
  pass =true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(),
      body: Center(
        child: SizedBox(width: 200,
          height: 50,
          child: TextField(
            obscureText: pass,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
suffix: InkWell(
  onTap: (){
    setState(() {
          pass=!pass;
    });
  },
    child: Text(pass?"Show":"Hide",style: TextStyle(color: Colors.black),)),
            ),
          ),
        ),
      ),
    );
  }
}
