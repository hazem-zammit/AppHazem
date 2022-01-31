import 'package:application/Design/CustomWidgets/txtfield.dart';
import 'package:application/Design/Pages/addteammates1.dart';
import 'package:application/Design/Pages/locationsscreen.dart';
import 'package:application/Design/Pages/preparebag.dart';
import 'package:flutter/material.dart';
import 'package:application/Design/CustomWidgets/button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class addtripform extends StatelessWidget {
  const addtripform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset('images/chevron-left.png')),
        title: Text(
          "Add New Trip",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trip Name",
              style: TextStyle(color: Color(0xFF71717A), fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            txtfield(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Location",
              style: TextStyle(color: Color(0xFF71717A), fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            txtfield(),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => locationsscreen()),
                );
              },
              child: buttonsmalloutlined(title: "View Locations"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Teammates",
              style: TextStyle(color: Color(0xFF71717A), fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            box(),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addteammatesempty()),
                );
              },
              child: buttonmediumoutlined(title: 'Add New Teammates'),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                showDialogFunc(context);
              },
              child: datepicker(),
            ),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => preparebag()),
                );
              },
              child: buttondefault(title: 'Start'),
            ),
          ],
        ),
      ),
    );
  }
}

showDialogFunc(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              height: 380,
              width: 343,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: SfDateRangePicker(
                headerHeight: 50,
                selectionColor: Color(0xffA3E635),
                rangeSelectionColor: Color(0xffF7FEE7),
                endRangeSelectionColor: Color(0xffA3E635),
                startRangeSelectionColor: Color(0xffA3E635),
                todayHighlightColor: Color(0xffA3E635),
                view: DateRangePickerView.month,
                selectionMode: DateRangePickerSelectionMode.multiRange,
              ),
            ),
          ),
        );
      });
}

class box extends StatelessWidget {
  const box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Image.asset('images/plus.png'),
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFfafafa),
        border: Border.all(color: Color(0xFFF4F4F5), width: 1),
      ),
    );
  }
}

class datepicker extends StatelessWidget {
  const datepicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pick Date',
                style: TextStyle(color: Color(0xFFA1A1AA), fontSize: 16),
              ),
              Image.asset('images/chevron-down.png'),
            ],
          ),
        ),
      ),
      height: 48,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFfafafa),
      ),
    );
  }
}
