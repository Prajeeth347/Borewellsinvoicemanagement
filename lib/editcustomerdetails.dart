import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'package:sanjay/default_prices.dart';
import 'package:sanjay/main.dart';
import 'package:sanjay/viewbill.dart';
import 'package:sanjay/viewbillcustomerdetails.dart';

class editcustomerdetails extends StatelessWidget {
  static var customerName;
  static var customerNumber;
  final nameController = TextEditingController();
  final numberController = TextEditingController();
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
      body: Form(
          child: Column(
        children: [
          new TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Customer Name"),
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
          ),
          new TextField(
            controller: numberController,
            decoration: InputDecoration(hintText: "Contact Number"),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                customerNumber = numberController.text;
                customerName = nameController.text;
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => viewbillcustomerdetails()));
              },
              child: Text('Done'),
            ),
          )
        ],
      )),
    );
  }
}
