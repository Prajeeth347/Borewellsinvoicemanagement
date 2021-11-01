import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/navigation_toolbar.dart';
import 'package:sanjay/main.dart';
import 'package:sanjay/viewbill.dart';
import 'package:shared_preferences/shared_preferences.dart';

class feetsmainbill extends StatelessWidget {
  static int zeroto100 = firstpage.zeroto100;
  final huncontroller = TextEditingController();
  static int oneto200 = firstpage.oneto200;
  final twocontroller = TextEditingController();
  static int twoto300 = firstpage.twoto300;
  final threecontroller = TextEditingController();
  static int threeto400 = firstpage.threeto400;
  final fourcontroller = TextEditingController();
  static int fourto500 = firstpage.fourto500;
  final fivecontroller = TextEditingController();
  static int fiveto600 = firstpage.fiveto600;
  final sixcontroller = TextEditingController();
  static int sixto700 = firstpage.sixto700;
  final sevencontroller = TextEditingController();
  static int sevento800 = firstpage.sevento800;
  final eightcontroller = TextEditingController();
  static int eightto900 = firstpage.eightto900;
  final ninecontroller = TextEditingController();
  static int nineto1000 = firstpage.nineto1000;
  final tencontroller = TextEditingController();
  static int tento1100 = firstpage.tento1100;
  final elevencontroller = TextEditingController();
  static int elevento1200 = firstpage.elevento1200;
  final twelvecontroller = TextEditingController();
  static int twelveto1300 = firstpage.twelveto1300;
  final thirteencontroller = TextEditingController();
  static int thirteento1400 = firstpage.thirteento1400;
  final fourteencontroller = TextEditingController();
  static int fourteento1500 = firstpage.fourteento1500;
  final fifteencontroller = TextEditingController();
  static int fifteento1600 = firstpage.fifteento1600;
  final sixteencontroller = TextEditingController();
  final extrafeetscontroller = TextEditingController();
  final extrafeetspricecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
            /*ListTile(
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => firstpage()));
              },
            )*/
          ],
        )),
        body: Form(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                child: Text(
                  'Enter Prices',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
              new TextField(
                controller: huncontroller,
                decoration: InputDecoration(labelText: "0-100 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: twocontroller,
                decoration: InputDecoration(labelText: "101-200 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: threecontroller,
                decoration: InputDecoration(labelText: "201-300 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: fourcontroller,
                decoration: InputDecoration(labelText: "301-400 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: fivecontroller,
                decoration: InputDecoration(labelText: "401-500 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: sixcontroller,
                decoration: InputDecoration(labelText: "501-600 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: sevencontroller,
                decoration: InputDecoration(labelText: "601-700 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: eightcontroller,
                decoration: InputDecoration(labelText: "701-800 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: ninecontroller,
                decoration: InputDecoration(labelText: "801-900 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: tencontroller,
                decoration: InputDecoration(labelText: "901-1000 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: elevencontroller,
                decoration: InputDecoration(labelText: "1001-1100 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: twelvecontroller,
                decoration: InputDecoration(labelText: "1101-1200 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: thirteencontroller,
                decoration: InputDecoration(labelText: "1201-1300 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: fourteencontroller,
                decoration: InputDecoration(labelText: "1301-1400 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: fifteencontroller,
                decoration: InputDecoration(labelText: "1401-1500 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: sixteencontroller,
                decoration: InputDecoration(labelText: "1501-1600 Feet"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: extrafeetscontroller,
                decoration: InputDecoration(labelText: "Extra Feets"),
                keyboardType: TextInputType.number,
              ),
              new TextField(
                controller: extrafeetspricecontroller,
                decoration: InputDecoration(labelText: "Price per feet"),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (huncontroller.text.isNotEmpty) {
                      firstpage.zeroto100 = int.parse(huncontroller.text);
                    }
                    if (twocontroller.text.isNotEmpty) {
                      firstpage.oneto200 = int.parse(twocontroller.text);
                    }
                    if (threecontroller.text.isNotEmpty) {
                      firstpage.twoto300 = int.parse(threecontroller.text);
                    }
                    if (fourcontroller.text.isNotEmpty) {
                      firstpage.threeto400 = int.parse(fourcontroller.text);
                    }
                    if (fivecontroller.text.isNotEmpty) {
                      firstpage.fourto500 = int.parse(fivecontroller.text);
                    }
                    if (sixcontroller.text.isNotEmpty) {
                      firstpage.fiveto600 = int.parse(sixcontroller.text);
                    }
                    if (sevencontroller.text.isNotEmpty) {
                      firstpage.sixto700 = int.parse(sevencontroller.text);
                    }
                    if (eightcontroller.text.isNotEmpty) {
                      firstpage.sevento800 = int.parse(eightcontroller.text);
                    }
                    if (ninecontroller.text.isNotEmpty) {
                      firstpage.eightto900 = int.parse(ninecontroller.text);
                    }
                    if (tencontroller.text.isNotEmpty) {
                      firstpage.nineto1000 = int.parse(tencontroller.text);
                    }
                    if (elevencontroller.text.isNotEmpty) {
                      firstpage.tento1100 = int.parse(elevencontroller.text);
                    }
                    if (twelvecontroller.text.isNotEmpty) {
                      firstpage.elevento1200 = int.parse(twelvecontroller.text);
                    }
                    if (thirteencontroller.text.isNotEmpty) {
                      firstpage.twelveto1300 = int.parse(twelvecontroller.text);
                    }
                    if (fourteencontroller.text.isNotEmpty) {
                      firstpage.thirteento1400 =
                          int.parse(fourteencontroller.text);
                    }
                    if (fifteencontroller.text.isNotEmpty) {
                      firstpage.fourteento1500 =
                          int.parse(fifteencontroller.text);
                    }
                    if (sixteencontroller.text.isNotEmpty) {
                      firstpage.fifteento1600 =
                          int.parse(sixteencontroller.text);
                    }
                    if (extrafeetscontroller.text.isNotEmpty) {
                      firstpage.extrafeets =
                          int.parse(extrafeetscontroller.text);
                      if (extrafeetspricecontroller.text.isNotEmpty) {
                        firstpage.extrafeetsprice =
                            int.parse(extrafeetspricecontroller.text);
                      }
                    }
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => viewbill()));
                  },
                  child: Text('Edit'))
            ],
          ),
        )),
      ),
    );
  }
}
