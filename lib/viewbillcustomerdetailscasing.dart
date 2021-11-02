import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sanjay/Casing.dart';
import 'package:sanjay/editcustomerdetailscasing.dart';
import 'package:sanjay/feetscustomercasingbill.dart';
import 'package:sanjay/main.dart';
import 'package:sanjay/viewbill.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:sanjay/saveandopenpdf.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class viewbillcustomerdetailscasing extends StatelessWidget {
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
              Text(
                'Customer Name : ' + editcustomerdetailscasing.customerName,
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'Contact Number : ' + editcustomerdetailscasing.customerNumber,
                style: TextStyle(fontSize: 19),
              ),
              Text('\n'),
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
                '\nTotal(Without charges and Casing) : ' + "$totalwithout",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              Text('Labour and Transport Charges : 4000',
                  style: TextStyle(
                    fontSize: 17,
                  )),
              DottedLine(
                lineThickness: 2,
              ),
              Text(
                '\nTotal(Without Casing) : ' + "${totalwithout + 4000}",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              Text('\nCasing',
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade900)),
              Text(casing.selectedValue + ' : ' + "${casing.casingprice}",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              Text('\n'),
              DottedLine(
                lineThickness: 3,
              ),
              Text(
                '\nTotal : ' + "${totalwithout + 4000 + casing.casingprice}",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => feetscustomercasingbill()));
                    },
                    label: Text('Edit Feet prices')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => casing()));
                    },
                    label: Text('Edit Casing details')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  editcustomerdetailscasing()));
                    },
                    label: Text('Edit Customer Details')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    onPressed: () {
                      _generatebill();
                    },
                    label: Text('Save and Open')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    onPressed: () {
                      editcustomerdetailscasing.customerName = '';
                      editcustomerdetailscasing.customerNumber = '';
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
                    label: Text('New Bill')),
              ),
            ],
          ),
        )));
  }

  Future<void> _generatebill() async {
    PdfDocument bill = PdfDocument();
    PdfPage billpage = bill.pages.add();
    final PdfPageTemplateElement headerTemplate =
        PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 525, 75));
    headerTemplate.graphics.drawString(
        'Sri Lakshmi Narsimha Borewells                             $formattedDate\n Prop: Narsimha\n Contact: 9502515676',
        PdfStandardFont(PdfFontFamily.helvetica, 17));
    final PdfPageTemplateElement footterTemplate =
        PdfPageTemplateElement(Rect.fromLTWH(40, 0, 515, 50));
    footterTemplate.graphics.drawString(
        '*Transport and Labour charges applicable and are included in the bill',
        PdfStandardFont(PdfFontFamily.helvetica, 12));
    bill.template.top = headerTemplate;
    bill.template.bottom = footterTemplate;
    billpage.graphics.drawString(
        'Customer Name : ' + editcustomerdetailscasing.customerName.toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        bounds: const Rect.fromLTWH(0, 0, 500, 50),
        format: PdfStringFormat(lineAlignment: PdfVerticalAlignment.middle));
    billpage.graphics.drawString(
        'Contact Number : ' +
            editcustomerdetailscasing.customerNumber.toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        bounds: const Rect.fromLTWH(0, 30, 500, 50),
        format: PdfStringFormat(lineAlignment: PdfVerticalAlignment.middle));
    billpage.graphics.drawString('Invoice',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        bounds: const Rect.fromLTWH(230, 70, 120, 50),
        format: PdfStringFormat(lineAlignment: PdfVerticalAlignment.middle));
    final PdfGrid feetsbill = PdfGrid();
    feetsbill.columns.add(count: 3);
    final PdfGridRow headerRow = feetsbill.headers.add(1)[0];
    headerRow.cells[0].value = 'Feets';
    headerRow.cells[1].value = 'Price Per Feet';
    headerRow.cells[2].value = 'Total';
    headerRow.style.font =
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold);
    PdfGridRow row = feetsbill.rows.add();
    row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
    row.cells[0].value = '0-100 Feets';
    row.cells[1].value = firstpage.zeroto100.toString();
    row.cells[2].value = (firstpage.zeroto100 * 100).toString();
    feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    if (firstpage.oneto200 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '101-200 Feets';
      row.cells[1].value = firstpage.oneto200.toString();
      row.cells[2].value = (firstpage.oneto200 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.twoto300 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '201-300 Feets';
      row.cells[1].value = firstpage.twoto300.toString();
      row.cells[2].value = (firstpage.twoto300 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.threeto400 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '301-400 Feets';
      row.cells[1].value = firstpage.threeto400.toString();
      row.cells[2].value = (firstpage.threeto400 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.fourto500 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '401-500 Feets';
      row.cells[1].value = firstpage.fourto500.toString();
      row.cells[2].value = (firstpage.fourto500 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.fiveto600 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '501-600 Feets';
      row.cells[1].value = firstpage.fiveto600.toString();
      row.cells[2].value = (firstpage.fiveto600 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.sixto700 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '601-700 Feets';
      row.cells[1].value = firstpage.sixto700.toString();
      row.cells[2].value = (firstpage.sixto700 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.sevento800 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '701-800 Feets';
      row.cells[1].value = firstpage.sevento800.toString();
      row.cells[2].value = (firstpage.sevento800 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.eightto900 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '801-900 Feets';
      row.cells[1].value = firstpage.eightto900.toString();
      row.cells[2].value = (firstpage.eightto900 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.nineto1000 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '901-1000 Feets';
      row.cells[1].value = firstpage.nineto1000;
      row.cells[2].value = (firstpage.nineto1000 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.tento1100 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '1001-1100 Feets';
      row.cells[1].value = firstpage.tento1100;
      row.cells[2].value = (firstpage.tento1100 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.elevento1200 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '1101-1200 Feets';
      row.cells[1].value = firstpage.elevento1200.toString();
      row.cells[2].value = (firstpage.elevento1200 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.twelveto1300 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '1201-1300 Feets';
      row.cells[1].value = firstpage.twelveto1300.toString();
      row.cells[2].value = (firstpage.twelveto1300 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.thirteento1400 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '1301-1400 Feets';
      row.cells[1].value = firstpage.thirteento1400.toString();
      row.cells[2].value = (firstpage.thirteento1400 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.fourteento1500 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '1401-1500 Feets';
      row.cells[1].value = firstpage.fourteento1500.toString();
      row.cells[2].value = (firstpage.fourteento1500 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.fifteento1600 != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      row.cells[0].value = '1501-1600 Feets';
      row.cells[1].value = firstpage.fifteento1600.toString();
      row.cells[2].value = (firstpage.fifteento1600 * 100).toString();
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    if (firstpage.extrafeets != 0) {
      row = feetsbill.rows.add();
      row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
      if (firstpage.oneto200 == 0) {
        row.cells[0].value =
            '101 - 1' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.twoto300 == 0) {
        row.cells[0].value =
            '201 - 2' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.threeto400 == 0) {
        row.cells[0].value =
            '301 - 3' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.fourto500 == 0) {
        row.cells[0].value =
            '401 - 4' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.fiveto600 == 0) {
        row.cells[0].value =
            '501 - 5' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.sixto700 == 0) {
        row.cells[0].value =
            '601 - 6' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.sevento800 == 0) {
        row.cells[0].value =
            '701 - 7' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.eightto900 == 0) {
        row.cells[0].value =
            '801 - 8' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.nineto1000 == 0) {
        row.cells[0].value =
            '901 - 9' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.tento1100 == 0) {
        row.cells[0].value =
            '1001 - 10' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.elevento1200 == 0) {
        row.cells[0].value =
            '1101 - 11' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.twelveto1300 == 0) {
        row.cells[0].value =
            '1201 - 12' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.thirteento1400 == 0) {
        row.cells[0].value =
            '1301 - 13' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.fourteento1500 == 0) {
        row.cells[0].value =
            '1401 - 14' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else if (firstpage.fifteento1600 == 0) {
        row.cells[0].value =
            '1501 - 15' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      } else {
        row.cells[0].value =
            '1601 - 16' + firstpage.extrafeets.toString() + ' Feets';
        row.cells[1].value = firstpage.extrafeetsprice.toString();
        row.cells[2].value =
            (firstpage.extrafeets * firstpage.extrafeetsprice).toString();
      }
      feetsbill.style.cellPadding = PdfPaddings(left: 5, top: 5);
    }
    feetsbill.draw(
      page: billpage,
      bounds: Rect.fromLTWH(0, 120, billpage.getClientSize().width,
          billpage.getClientSize().height),
    );
    final PdfPage casingbill = bill.pages.add();
    final PdfGrid casinggrid = PdfGrid();
    casinggrid.columns.add(count: 4);
    final PdfGridRow casingheaderRow = casinggrid.headers.add(1)[0];
    casingheaderRow.cells[0].value = 'Casing Type';
    casingheaderRow.cells[1].value = 'Feets';
    casingheaderRow.cells[2].value = 'Price Per feet';
    casingheaderRow.cells[3].value = 'Total';
    casingheaderRow.style.font =
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold);
    row = casinggrid.rows.add();
    row.style.font = PdfStandardFont(PdfFontFamily.helvetica, 14);
    row.cells[0].value = casing.selectedValue;
    row.cells[1].value = casing.casingfeet.toString();
    row.cells[2].value = casing.casingprice.toString();
    row.cells[3].value = (casing.casingfeet * casing.casingprice).toString();
    casinggrid.style.cellPadding = PdfPaddings(left: 5, top: 5);
    casinggrid.draw(
        page: casingbill,
        bounds: Rect.fromLTWH(0, 0, casingbill.getClientSize().width,
            casingbill.getClientSize().height));
    int total = ((firstpage.zeroto100 +
                firstpage.oneto200 +
                firstpage.twoto300 +
                firstpage.threeto400 +
                firstpage.fourto500 +
                firstpage.fiveto600 +
                firstpage.sixto700 +
                firstpage.sevento800 +
                firstpage.eightto900 +
                firstpage.nineto1000 +
                firstpage.tento1100 +
                firstpage.elevento1200 +
                firstpage.twelveto1300 +
                firstpage.thirteento1400 +
                firstpage.fourteento1500 +
                firstpage.fifteento1600) *
            100 +
        (firstpage.extrafeets * firstpage.extrafeetsprice) +
        (casing.casingfeet * casing.casingprice) +
        4000);
    casingbill.graphics.drawString('Total : $total',
        PdfStandardFont(PdfFontFamily.helvetica, 17, style: PdfFontStyle.bold),
        bounds: const Rect.fromLTWH(400, 80, 190, 30));
    List<int> bytes = bill.save();
    bill.dispose();
    saveandopenpdf(
        bytes,
        editcustomerdetailscasing.customerName.toString() +
            "'s bill on $formattedDate.pdf");
  }
}
