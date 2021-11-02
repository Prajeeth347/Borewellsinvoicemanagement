import 'package:flutter/material.dart';
import 'package:sanjay/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:sanjay/viewbillcasing.dart';

class casing extends StatefulWidget {
  @override
  State<casing> createState() => _casingState();
  static int casingprice = 0;
  static int casingfeet = 0;
  static String selectedValue = "6Kg";
}

class _casingState extends State<casing> {
  final casingcontroller = TextEditingController();
  final casingfeetcontroller = TextEditingController();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> mentItems = [
      DropdownMenuItem(
        child: Text('6Kg', style: TextStyle(fontSize: 20)),
        value: "6Kg",
      ),
      DropdownMenuItem(
        child: Text('8Kg', style: TextStyle(fontSize: 20)),
        value: "8Kg",
      ),
      DropdownMenuItem(
        child: Text('Jumbo', style: TextStyle(fontSize: 20)),
        value: "Jumbo",
      ),
      DropdownMenuItem(
        child: Text('5 Inch', style: TextStyle(fontSize: 20)),
        value: "5 Inch",
      ),
    ];
    return mentItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sri Lakshmi Narsimha Borewells',
            style: TextStyle(color: Colors.white, fontSize: 20.5),
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 120.0,
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    'Sri Lakshmi Narsimha Borewells',
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
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Select Casing',
                    style: TextStyle(fontSize: 20),
                  ),
                  DropdownButton(
                      value: casing.selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          casing.selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems)
                ],
              ),
              SizedBox(
                width: 275,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  controller: casingcontroller,
                  decoration: InputDecoration(hintText: "Feets"),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: 275,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  controller: casingfeetcontroller,
                  decoration:
                      InputDecoration(hintText: "Enter Casing Price per feet"),
                  keyboardType: TextInputType.number,
                ),
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    if (casingcontroller.text.isNotEmpty) {
                      casing.casingprice = int.parse(casingfeetcontroller.text);
                      casing.casingfeet = int.parse(casingcontroller.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => viewbillcasing()));
                    }
                  },
                  label: Text('View bill'))
            ],
          ),
        ));
  }
}
