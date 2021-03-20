import 'package:flutter/material.dart';
import 'package:testasses/screen/Transfer.dart';
import 'package:testasses/screen/beneficiaries.dart';
import 'package:testasses/screen/dashboard.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        TransferScreen(),
        Dashboard(),
        Beneficiaries(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text('Transfer'), icon: Icon(Icons.money_off)),
          BottomNavigationBarItem(
              title: Text('DashBoard'), icon: (Icon(Icons.home))),
          BottomNavigationBarItem(
              title: Text('Beneficiaries'), icon: (Icon(Icons.star))),
        ],
        onTap: _onBarItemTap,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onBarItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
