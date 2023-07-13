import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectDateScreen extends StatelessWidget {
  SelectDateScreen({Key? key}) : super(key: key);
  static const String routeName = '/select_date_screen';

  DateTime? rangeStartDate;
  DateTime? rangeEndDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(
        children: [
          SfDateRangePicker(
              view: DateRangePickerView.month,
              selectionMode: DateRangePickerSelectionMode.range,
              monthViewSettings:
                  DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
              selectionColor: Color(kOrange.value),
              startRangeSelectionColor: Colors.amber,
              endRangeSelectionColor: Colors.amber,
              rangeSelectionColor: Color(kOrange.value).withOpacity(0.25),
              todayHighlightColor: Color(kDarkBlue.value),
              toggleDaySelection: true,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is PickerDateRange) {
                  rangeStartDate = args.value.startDate;
                  rangeEndDate = args.value.endDate;
                }
              }),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Select',
              style: TextStyle(
                fontSize: 18,
                color: Color(kDark.value),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 18,
                color: Color(kDark.value),
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    )));
  }
}
