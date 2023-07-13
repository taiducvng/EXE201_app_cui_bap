import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/profile.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';
import 'package:metravel_demo1/components/search_places.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';

import 'package:provider/provider.dart';

import '../VIews/hotel_booking_screen.dart';
import '../VIews/login_provider.dart';
import '../VIews/onboard_screen.dart';
import 'no_trips.dart';

class AutoCompleteLocationScreen extends StatefulWidget {
  final Function(String) onLocationSelected;
  final String selectedLocation;

  const AutoCompleteLocationScreen({
    Key? key,
    required this.onLocationSelected,
    required this.selectedLocation,
  }) : super(key: key);

  @override
  State<AutoCompleteLocationScreen> createState() =>
      _AutoCompleteLocationScreenState();
}

class _AutoCompleteLocationScreenState
    extends State<AutoCompleteLocationScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController =
        TextEditingController(text: widget.selectedLocation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(183, 255, 158, 67),
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
                                  style: appstyle(14, Color(kDarkGrey.value),
                                      FontWeight.w500)),
                            )
                          ],
                        ),
                        // titles
                        Row(
                          children: [
                            Expanded(
                              child: Autocomplete<String>(
                                optionsBuilder: ((textEditingValue) {
                                  if (textEditingValue.text == '') {
                                    return const Iterable<String>.empty();
                                  }
                                  return SearchPlacesForHotelScreen.listItems
                                      .where((String item) {
                                    return item.contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                }),
                                onSelected: (String item) {
                                  widget.onLocationSelected(item);
                                  print('The $item was selected');
                                },
                                fieldViewBuilder: (context, controller,
                                    focusNode, onFieldSubmitted) {
                                  return TextField(
                                    controller: _textEditingController,
                                    focusNode: focusNode,
                                    decoration: InputDecoration(
                                      hintText: 'Where next?',
                                      hintStyle: TextStyle(fontSize: 22),
                                    ),
                                    //onChanged: onFieldSubmitted,
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //xong phần trên
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.near_me_outlined,
                        color: Color(kOrange.value),
                      ),
                      ReusableText(
                          text: "Current Location",
                          style: appstyle(
                              16, Color(kDark.value), FontWeight.w400)),
                    ],
                  ),
                  Divider(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.map_outlined,
                        color: Color(kOrange.value),
                      ),
                      ReusableText(
                          text: "Select a property from a map",
                          style: appstyle(
                              16, Color(kDark.value), FontWeight.w400)),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HotelBookingScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 113, vertical: 12),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: ReusableTextForLogo(
                    text: "Done",
                    style: appstyle(15, Color(kLight.value), FontWeight.w400))),
          ],
        ),
      ),
    ));
  }
}
