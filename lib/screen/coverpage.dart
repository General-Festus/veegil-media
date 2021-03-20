import 'package:flutter/material.dart';
import 'package:testasses/screen/login.dart';

class Coverpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veegil Media'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage('assets/media1.jpg'),
            fit: BoxFit.cover,
            //height: 250,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Login(),
          ));
        },
        child: Text('Naxt Page'),
      ),
    );
  }
}
