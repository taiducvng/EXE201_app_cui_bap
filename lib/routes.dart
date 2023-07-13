import 'package:flutter/material.dart';


import 'VIews/confirm_booking_room.dart';
import 'VIews/confirm_booking_room_1.dart';
import 'VIews/confirm_booking_room_bac_lieu.dart';
import 'VIews/guest_and_room_screen.dart';
import 'VIews/hotel_booking_screen.dart';
import 'VIews/result_screen_demo.dart';
import 'VIews/result_screen_demo_bacLieu.dart';
import 'VIews/select_date_screen.dart';
import 'VIews/select_hotel_result.dart';
import 'VIews/select_hotel_result_1.dart';
import 'VIews/select_hotel_result_bac_lieu.dart';
import 'VIews/success_booking_demo.dart';
import 'VIews/success_booking_demo_1.dart';
import 'VIews/success_booking_demo_baclieu.dart';
import 'VIews/success_booking_demo_momo.dart';


final Map<String, WidgetBuilder> routes = {
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomScreen.routeName: (context) => const GuestAndRoomScreen(),
  ResultScreen.routeName: (context) => const ResultScreen(),
  ResultScreenBacLieu.routeName: (context) => const ResultScreenBacLieu(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
  HotelResultScreen.routeName: (context) => const HotelResultScreen(),
  HotelResultScreen1.routeName: (context) => const HotelResultScreen1(),
  HotelResultScreenBacLieu.routeName: (context) => const HotelResultScreenBacLieu(),
  ConfirmRoomBookingResultScreen.routeName: (context) =>
      const ConfirmRoomBookingResultScreen(),
  ConfirmRoomBookingResultScreen1.routeName: (context) =>
      const ConfirmRoomBookingResultScreen1(),
  ConfirmRoomBookingResultScreenBacLieu.routeName: (context) =>
      const ConfirmRoomBookingResultScreenBacLieu(),
  SuccessRoomBookingResultScreen.routeName: (context) =>
      const SuccessRoomBookingResultScreen(),
  SuccessRoomBookingResultScreen1.routeName: (context) =>
      const SuccessRoomBookingResultScreen1(),
  SuccessRoomBookingResultScreenMomo.routeName: (context) =>
      const SuccessRoomBookingResultScreenMomo(),
  SuccessRoomBookingResultScreenBacLieu.routeName: (context) =>
      const SuccessRoomBookingResultScreenBacLieu(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HotelBookingScreen.routeName:
      final String? destination = (settings.arguments as String?);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => HotelBookingScreen(
          destination: destination,
        ),
      );

    default:
      return null;
  }
}
