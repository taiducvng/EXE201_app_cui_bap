import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'date_ext.dart';
import '../VIews/select_date_screen.dart';
import 'location_search_autocomplete_fields.dart';

class SearchPlacesForHotelScreen extends StatefulWidget {
  const SearchPlacesForHotelScreen({super.key});
  static const List<String> listItems = <String>[
    'Ha Noi, Viet Nam',
    'Ha Nam, Viet Nam',
    'Bac Lieu, Viet Nam',
    'TP Ho Chi Minh, Viet Nam',
  ];
  @override
  State<SearchPlacesForHotelScreen> createState() =>
      _SearchPlacesForHotelScreenState();
}

class _SearchPlacesForHotelScreenState
    extends State<SearchPlacesForHotelScreen> {
  String selectedLocation = '';
  void handleLocationSelected(String selectedLocation) {
    setState(() {
      this.selectedLocation = selectedLocation;
    });
  }

  String? dateSelected;
  DateTime? rangeStartDate;
  DateTime? rangeEndDate;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back_ios),
                  ],
                ),
              ),

              // appbar done
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
                            padding: EdgeInsets
                                .zero, // Remove default button padding
                            // Reduce the button's tap target size
                          ),
                          onPressed: () {
                            Get.to(() => AutoCompleteLocationScreen(
                                  onLocationSelected: handleLocationSelected,
                                  selectedLocation: selectedLocation ?? '',
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ReusableText(
                              text: selectedLocation.isNotEmpty
                                  ? selectedLocation
                                  : 'Where next?',
                              style: appstyle(
                                  22, Color(kDarkGrey.value), FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Color(kOrange.value),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: ReusableText(
                          text: "Dates",
                          style: appstyle(
                              14, Color(kDarkGrey.value), FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StatefulBuilder(
                    builder: (context, setState) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () async {
                          final result = await Navigator.of(context)
                              .pushNamed(SelectDateScreen.routeName);
                          if (!(result as List<DateTime?>)
                              .any((element) => element == null)) {
                            dateSelected =
                                '${result[0]?.getStartDate} -  ${result[1]?.getEndDate}';
                            setState(() {});
                          }
                        },
                        child: ReusableText(
                            text: dateSelected ?? "01 Feb - 06 Feb 2022 ",
                            style: appstyle(
                                16, Color(kDark.value), FontWeight.w400)),
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: "Room, guests",
                      style:
                          appstyle(16, Color(kDarkGrey.value), FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            text: "1 Room, 1 Guest",
                            style: appstyle(
                                20, Color(kDarkGrey.value), FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(kOrange.value),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
