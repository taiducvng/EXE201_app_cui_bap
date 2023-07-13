import 'package:flutter/material.dart';
import 'package:metravel_demo1/core/constants/dimension_constants.dart';
import 'package:metravel_demo1/core/helpers/asset_helper.dart';
import 'package:metravel_demo1/VIews/guest_and_room_screen.dart';
import 'package:metravel_demo1/VIews/result_screen_demo.dart';
import 'package:metravel_demo1/VIews/result_screen_demo_bacLieu.dart';

import 'package:metravel_demo1/components/select_date_screen.dart';
import 'package:metravel_demo1/components/app_bar_container.dart';
import 'package:metravel_demo1/constants/item_button_widget.dart';
import 'package:metravel_demo1/components/item_options_booking.dart';
import 'package:metravel_demo1/core/extensions/date_ext.dart';

import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/reusable_text.dart' show ReusableText;

class HotelBookingScreen extends StatefulWidget {
  HotelBookingScreen({super.key, this.destination});

  static const String routeName = '/hotel_booking_screen';

  final String? destination;

  static const List<String> listItems = <String>[
    'Ha Noi',
    'Ha Nam',
    'Bac Lieu',
    'TP Ho Chi Minh',
  ];
  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String selectedLocation = '';
  String dropdownValue = 'Choose';
  String dropdownValueForLocation = 'Ha Noi';
  int? durations;
  String? selectDate;
  String? guestAndRoom;
  DateTime? date1;
  DateTime? date2;
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Search places',
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(kOrange.value),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: ReusableText(
                            text: "Location",
                            style: appstyle(
                                14, Color(kDarkGrey.value), FontWeight.w500)),
                      )
                    ],
                  ),
                  // titles
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .transparent, // Set the button background color to transparent
                          elevation: 0, // Remove the button shadow
                          padding:
                              EdgeInsets.zero, // Remove default button padding
                          // Reduce the button's tap target size
                        ),
                        onPressed: () {
                          // Get.to(() => AutoCompleteLocationScreen(
                          //       onLocationSelected: handleLocationSelected,
                          //       selectedLocation: selectedLocation,
                          //     ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReusableText(
                            text: "Where  next?",
                            style: appstyle(
                                22, Color(kDarkGrey.value), FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  DropdownButton<String>(
                      value: dropdownValueForLocation,
                      icon: const Icon(Icons.menu),
                      items: const [
                        DropdownMenuItem<String>(
                            value: 'Ha Noi', child: Text("Ha Noi")),
                        DropdownMenuItem<String>(
                            value: 'Ho Chi Minh', child: Text("Ho Chi Minh")),
                        DropdownMenuItem<String>(
                            value: 'Bac Lieu', child: Text("Bac Lieu")),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValueForLocation = newValue!;
                        });
                      }),
                ],
              ),
            ),
            // ItemOptionsBookingWidget(
            //   title: 'Destination',
            //   value: widget.destination ?? 'Viet Nam',
            //   icon: AssetHelper.icoLocation,
            //   onTap: () {},
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ItemOptionsBookingWidget(
                title: 'Select Date',
                value: '$selectDate($durations days)' ?? 'Select date',
                icon: AssetHelper.icoCalendal,
                onTap: () async {
                  final result = await Navigator.of(context)
                      .pushNamed(SelectDateScreen.routeName);
                  if (result is List<DateTime?>) {
                    setState(() {
                      final resultStartDate = result[0];
                      final resultEndDate = result[1];

                      if (resultStartDate != null && resultEndDate != null) {
                        durations =
                            resultEndDate.difference(resultStartDate).inDays;
                      } else {
                        durations = null;
                      }

                      selectDate =
                          '${resultStartDate?.getStartDate} - ${resultEndDate?.getEndDate}';
                    });
                  }
                },
              ),
            ),
            ItemOptionsBookingWidget(
              title: 'Guest and Room',
              value: guestAndRoom ?? 'Choose your guest and room',
              icon: AssetHelper.icoBed,
              onTap: () async {
                final result = await Navigator.of(context)
                    .pushNamed(GuestAndRoomScreen.routeName);
                if (result is List<int>) {
                  setState(() {
                    guestAndRoom = '${result[0]} Guest, ${result[1]} Room';
                  });
                }
              },
            ),

            ItemButtonWidget(
              data: 'Search',
              onTap: () {
                if (dropdownValueForLocation == 'Ho Chi Minh' &&
                    selectDate != null &&
                    guestAndRoom != null) {
                  Navigator.of(context).pushNamed(
                    ResultScreen.routeName,
                    arguments: {
                      'selectDate': selectDate,
                      'guestAndRoom': guestAndRoom,
                      'dropdownValueForLocation': dropdownValueForLocation,
                      'durations': durations,
                    },
                  );
                } else if (dropdownValueForLocation == 'Bac Lieu' &&
                    selectDate != null &&
                    guestAndRoom != null) {
                  Navigator.of(context).pushNamed(
                    ResultScreenBacLieu.routeName,
                    arguments: {
                      'selectDate': selectDate,
                      'guestAndRoom': guestAndRoom,
                      'dropdownValueForLocation': dropdownValueForLocation,
                      'durations': durations,
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
