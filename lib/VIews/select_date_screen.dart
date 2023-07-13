import 'package:flutter/material.dart';
import 'package:metravel_demo1/core/constants/color_palatte.dart';
import 'package:metravel_demo1/core/constants/dimension_constants.dart';
import 'package:metravel_demo1/components/app_bar_container.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:metravel_demo1/constants/item_button_widget.dart';

// ignore: must_be_immutable
class SelectDateScreen extends StatelessWidget {
  SelectDateScreen({Key? key}) : super(key: key);

  static const String routeName = '/select_date_screen';

  DateTime? rangeStartDate;
  DateTime? rangeEndDate;
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Select date',
      paddingContent: EdgeInsets.all(kMediumPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding,
            ),
            SfDateRangePicker(
              view: DateRangePickerView.month,
              selectionMode: DateRangePickerSelectionMode.range,
              monthViewSettings:
                  DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
              selectionColor: ColorPalette.yellowColor,
              startRangeSelectionColor: ColorPalette.yellowColor,
              endRangeSelectionColor: ColorPalette.yellowColor,
              rangeSelectionColor: ColorPalette.yellowColor.withOpacity(0.25),
              todayHighlightColor: ColorPalette.yellowColor,
              toggleDaySelection: true,
              initialSelectedDate: rangeStartDate,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is PickerDateRange) {
                  rangeStartDate = args.value.startDate;
                  rangeEndDate = args.value.endDate;
                }
              },
            ),
            ItemButtonWidget(
              data: 'Select',
              onTap: () {
                Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
              },
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            ItemButtonWidget(
              data: 'Cancel',
              color: ColorPalette.primaryColor.withOpacity(0.1),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
