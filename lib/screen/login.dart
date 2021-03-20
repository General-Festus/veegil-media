import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:testasses/color/color.dart';
import 'package:testasses/screen/datailpage.dart';

import 'package:testasses/screen/signp.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Veegil media",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(" John"),
            accountEmail: Text("mytest@gmail.com"),
            otherAccountsPictures: [
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Adding new account'),
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.home),
            title: Text('Login'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.paperPlane),
            title: Text('Sent'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.edit),
            title: Text('edit'),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trash),
            title: Text('Trash'),
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.userCog),
                title: Text('Sign Out'),
              ),
            ),
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x4400F580),
                        blurRadius: 30,
                        offset: Offset(10, 10),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Image(
                    image: AssetImage('assets/media.jpg'),
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                child: Text(
                  'Login *',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 15),
                child: TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                      hintText: 'Enter Phone Number'),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Password *',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Write Password Here'),
                  obscureText: true,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ));
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        primaryColor,
                        secondaryColor,
                      ]),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        primaryColor,
                        secondaryColor,
                      ]),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
