import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'package:sanjay/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class defaultPrices extends StatefulWidget {
  @override
  State<defaultPrices> createState() => _defaultPricesState();
}

class _defaultPricesState extends State<defaultPrices> {
  static var labour_charges = '2000';

  static var transport_charges = '2000';

  TextEditingController _labourchargescontroller = TextEditingController();

  TextEditingController _transportchargescontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sri Narsimha Borewells',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100.0,
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    'Sri Narsimha Borewells',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  )),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => firstpage()));
              },
            )
          ],
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Labour charges : ' + '$labour_charges',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Transport charges : ' + '$transport_charges',
              style: TextStyle(fontSize: 20),
            ),
            new TextField(
              controller: _labourchargescontroller,
              decoration: InputDecoration(hintText: "Labour Charges"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            new TextField(
              controller: _transportchargescontroller,
              decoration: InputDecoration(hintText: "Transportation Charges"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            ButtonTheme(
              minWidth: 10,
              child: ElevatedButton(
                  onPressed: () async {
                    if (_labourchargescontroller.text.isNotEmpty)
                      labour_charges = _labourchargescontroller.text;
                    if (_transportchargescontroller.text.isNotEmpty)
                      transport_charges = _transportchargescontroller.text;
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString('labour', labour_charges);
                    prefs.setString('transport', transport_charges);
                  },
                  child: Text('Submit')),
            )
          ],
        ),
      ),
    );
  }
}
