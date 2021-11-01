import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sanjay/Casing.dart';
import 'package:sanjay/editcustomerdetails.dart';
import 'package:sanjay/feetsmainbill.dart';
import 'package:sanjay/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class viewbill extends StatelessWidget {
  static String formattedDate = DateFormat('dd-MM-yyyy').format(firstpage.now);
  static String formattedTime = DateFormat('kk:mm').format(firstpage.now);
  int totalwithout = firstpage.zeroto100 * 100 +
      firstpage.oneto200 * 100 +
      firstpage.twoto300 * 100 +
      firstpage.threeto400 * 100 +
      firstpage.fourto500 * 100 +
      firstpage.fiveto600 * 100 +
      firstpage.sixto700 * 100 +
      firstpage.sevento800 * 100 +
      firstpage.eightto900 * 100 +
      firstpage.nineto1000 * 100 +
      firstpage.tento1100 * 100 +
      firstpage.elevento1200 * 100 +
      firstpage.twelveto1300 * 100 +
      firstpage.thirteento1400 * 100 +
      firstpage.fourteento1500 * 100 +
      firstpage.fifteento1600 * 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sri Lakshmi Narsimha Borewells',
            style: TextStyle(fontSize: 20.5, color: Colors.white),
          ),
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
        body: Form(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Date:' + formattedDate,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Time:' + formattedTime,
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Text('Estimate\n',
                  style: TextStyle(
                      fontSize: 24, decoration: TextDecoration.underline)),
              Text(
                  '0-100 feet : 100 * ' +
                      "${firstpage.zeroto100}" +
                      ' = ' +
                      "${firstpage.zeroto100 * 100}",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              if (firstpage.oneto200 != 0) ...[
                Container(
                    child: Text(
                        '101-200 feet : 100 * ' +
                            "${firstpage.oneto200}" +
                            ' = ' +
                            "${firstpage.oneto200 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.twoto300 != 0) ...[
                Container(
                    child: Text(
                        '201-300 feet : 100 * ' +
                            "${firstpage.twoto300}" +
                            ' = ' +
                            "${firstpage.twoto300 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.threeto400 != 0) ...[
                Container(
                    child: Text(
                        '301-400 feet : 100 * ' +
                            "${firstpage.threeto400}" +
                            ' = ' +
                            "${firstpage.threeto400 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.fourto500 != 0) ...[
                Container(
                    child: Text(
                        '401-500 feet : 100 * ' +
                            "${firstpage.fourto500}" +
                            ' = ' +
                            "${firstpage.fourto500 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.fiveto600 != 0) ...[
                Container(
                    child: Text(
                        '501-600 feet : 100 * ' +
                            "${firstpage.fiveto600}" +
                            ' = ' +
                            "${firstpage.fiveto600 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.sixto700 != 0) ...[
                Container(
                    child: Text(
                        '601-700 feet : 100 * ' +
                            "${firstpage.sixto700}" +
                            ' = ' +
                            "${firstpage.sixto700 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.sevento800 != 0) ...[
                Container(
                    child: Text(
                        '701-800 feet : 100 * ' +
                            "${firstpage.sevento800}" +
                            ' = ' +
                            "${firstpage.sevento800 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.eightto900 != 0) ...[
                Container(
                    child: Text(
                        '801-900 feet : 100 * ' +
                            "${firstpage.eightto900}" +
                            ' = ' +
                            "${firstpage.eightto900 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.nineto1000 != 0) ...[
                Container(
                    child: Text(
                        '901-1000 feet : 100 * ' +
                            "${firstpage.nineto1000}" +
                            ' = ' +
                            "${firstpage.nineto1000 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.tento1100 != 0) ...[
                Container(
                    child: Text(
                        '1001-1100 feet : 100 * ' +
                            "${firstpage.tento1100}" +
                            ' = ' +
                            "${firstpage.tento1100 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.elevento1200 != 0) ...[
                Container(
                    child: Text(
                        '1101-1200 feet : 100 * ' +
                            "${firstpage.elevento1200}" +
                            ' = ' +
                            "${firstpage.elevento1200 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.twelveto1300 != 0) ...[
                Container(
                    child: Text(
                        '1201-1300 feet : 100 * ' +
                            "${firstpage.twelveto1300}" +
                            ' = ' +
                            "${firstpage.twelveto1300 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.thirteento1400 != 0) ...[
                Container(
                    child: Text(
                        '1301-1400 feet : 100 * ' +
                            "${firstpage.thirteento1400}" +
                            ' = ' +
                            "${firstpage.thirteento1400 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.fourteento1500 != 0) ...[
                Container(
                    child: Text(
                        '1401-1500 feet : 100 * ' +
                            "${firstpage.fourteento1500}" +
                            ' = ' +
                            "${firstpage.fourteento1500 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.fifteento1600 != 0) ...[
                Container(
                    child: Text(
                        '1501-1600 feet : 100 * ' +
                            "${firstpage.fifteento1600}" +
                            ' = ' +
                            "${firstpage.fifteento1600 * 100}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              if (firstpage.extrafeets != 0) ...[
                Container(
                    child: Text(
                        'extra feets(${firstpage.extrafeets} feets) ' +
                            "${firstpage.extrafeets}" +
                            (' * ') +
                            "${firstpage.extrafeetsprice}" +
                            ' = ' +
                            "${firstpage.extrafeets * firstpage.extrafeetsprice}",
                        style: TextStyle(
                          fontSize: 17,
                        )))
              ],
              Text('\n'),
              DottedLine(),
              Text(
                '\nTotal(Without Service charges and Casing) : ' +
                    "$totalwithout",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              Text('\nLabour and Transportation Charges : 4000',
                  style: TextStyle(
                    fontSize: 17,
                  )),
              Text('\n'),
              DottedLine(
                lineThickness: 3,
              ),
              Text(
                '\nTotal : ' + "${totalwithout + 4000}",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => feetsmainbill()));
                  },
                  child: Text('Edit Feet prices')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => casing()));
                  },
                  child: Text('Add Casing')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => editcustomerdetails()));
                  },
                  child: Text('Add Customer Details')),
              ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Please Add casing to generate pdf',
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        gravity: ToastGravity.BOTTOM);
                  },
                  child: Text('Save and Open')),
              ElevatedButton(
                  onPressed: () {
                    editcustomerdetails.customerName = '';
                    editcustomerdetails.customerNumber = '';
                    firstpage.zeroto100 = 0;
                    firstpage.oneto200 = 0;
                    firstpage.twoto300 = 0;
                    firstpage.threeto400 = 0;
                    firstpage.fourto500 = 0;
                    firstpage.fiveto600 = 0;
                    firstpage.sixto700 = 0;
                    firstpage.sevento800 = 0;
                    firstpage.eightto900 = 0;
                    firstpage.nineto1000 = 0;
                    firstpage.tento1100 = 0;
                    firstpage.elevento1200 = 0;
                    firstpage.twelveto1300 = 0;
                    firstpage.thirteento1400 = 0;
                    firstpage.fourteento1500 = 0;
                    firstpage.fifteento1600 = 0;
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => firstpage()));
                  },
                  child: Text('New Bill')),
            ],
          ),
        )));
  }
}
