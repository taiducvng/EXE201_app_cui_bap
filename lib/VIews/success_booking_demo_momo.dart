import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';
import 'package:metravel_demo1/VIews/success_booking_demo_1.dart';

class SuccessRoomBookingResultScreenMomo extends StatefulWidget {
  static const String routeName = '/success_booking_screen_Momo';
  const SuccessRoomBookingResultScreenMomo(
      {super.key,
      this.selectDate,
      this.guestAndRoom,
      this.dropdownValueForLocation,
      this.durations,
      this.bookPrice,
      this.bookPrice1});
  final String? selectDate;
  final String? guestAndRoom;
  final String? dropdownValueForLocation;
  final int? durations;
  final int? bookPrice;
  final int? bookPrice1;
  @override
  State<SuccessRoomBookingResultScreenMomo> createState() =>
      _SuccessRoomBookingResultScreenMomoState();
}

class _SuccessRoomBookingResultScreenMomoState
    extends State<SuccessRoomBookingResultScreenMomo> {
  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Access the selectDate and guestAndRoom values
    final String? selectDate = arguments?['selectDate'];
    final String? guestAndRoom = arguments?['guestAndRoom'];
    final String? dropdownValueForLocation =
        arguments?['dropdownValueForLocation'];
    final int? durations = arguments?['durations'];
    final int? bookPrice = arguments?['bookPrice'];
    final int? bookPrice1 = arguments?['bookPrice1'];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(25, 16, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ],
              ),
              // congrats screen

              //brief descriptions

              ReusableText(
                text: "QR scan for e-wallets payment",
                style: appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
              ),
              HeightSpacer(size: height * 0.0125),
              ReusableText(
                text: "Pay with momo",
                style: appstyle(17, Color(kOrange.value), FontWeight.w400),
              ),
              HeightSpacer(size: height * 0.0125),
              Image.asset(
                "assets/images/qrmomo.jpg",
                height: 52,
                width: 52,
              ),

              Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var response = await Dio().get(
                          "https://scontent.fsgn5-14.fna.fbcdn.net/v/t1.15752-9/344752934_797811041716266_3117518104344564931_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=kEHyUgOWhDcAX8LnahB&_nc_ht=scontent.fsgn5-14.fna&oh=03_AdQ24mbM9bS230vnNjlVfykMeDRmNibSwZy2GIXC_DmYEw&oe=64A68285",
                          options: Options(responseType: ResponseType.bytes));
                      final result = await ImageGallerySaver.saveImage(
                          Uint8List.fromList(response.data),
                          quality: 60,
                          name: "hello");
                      print(result);
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 113, vertical: 12),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: ReusableTextForLogo(
                      text: "Download QR",
                      style: appstyle(15, Color(kLight.value), FontWeight.w400),
                    ),
                  ),
                ],
              ),
              ReusableText(
                text: "Pay with zalopay",
                style: appstyle(17, Color(kOrange.value), FontWeight.w400),
              ),
              HeightSpacer(size: height * 0.0125),
              Image.asset(
                "assets/images/qrzalopay.jpg",
                height: 52,
                width: 52,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var response = await Dio().get(
                          "https://scontent.fsgn5-12.fna.fbcdn.net/v/t1.15752-9/351334877_1271866323469602_4370180485475176269_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=uH0WIJMfre4AX9ucPfD&_nc_ht=scontent.fsgn5-12.fna&oh=03_AdSMkEzP2V9T3uibXBIVScxOmBL_-rucTGrRBmnGPl2KtQ&oe=64A66B6F",
                          options: Options(responseType: ResponseType.bytes));
                      final result = await ImageGallerySaver.saveImage(
                          Uint8List.fromList(response.data),
                          quality: 60,
                          name: "hello");
                      print(result);
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 113, vertical: 12),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: ReusableTextForLogo(
                      text: "Download QR",
                      style: appstyle(15, Color(kLight.value), FontWeight.w400),
                    ),
                  ),
                ],
              ),
              ReusableText(
                text: "Pay with VNPAY",
                style: appstyle(17, Color(kOrange.value), FontWeight.w400),
              ),
              HeightSpacer(size: height * 0.0125),
              Image.asset(
                "assets/images/qrvnpay.jpg",
                height: 52,
                width: 52,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var response = await Dio().get(
                          "https://scontent.fsgn5-10.fna.fbcdn.net/v/t1.15752-9/352455701_6462589930468383_1218660452552347905_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_ohc=T5I5rNNzAHsAX_jRdt4&_nc_ht=scontent.fsgn5-10.fna&oh=03_AdRQFUME5lxDYQhEUq9DkmnJvp-oea9HAEGBgTDg-TmSzg&oe=64A69F56",
                          options: Options(responseType: ResponseType.bytes));
                      final result = await ImageGallerySaver.saveImage(
                          Uint8List.fromList(response.data),
                          quality: 60,
                          name: "hello");
                      print(result);
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 113, vertical: 12),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: ReusableTextForLogo(
                      text: "Download QR",
                      style: appstyle(15, Color(kLight.value), FontWeight.w400),
                    ),
                  ),
                ],
              ),
              HeightSpacer(size: height * 0.045),
              ReusableText(
                text: "Once you finish paying,countinue",
                style: appstyle(17, Color(kDarkBlue.value), FontWeight.w400),
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).pushNamed(
                    SuccessRoomBookingResultScreen1.routeName,
                    arguments: {
                      'selectDate': selectDate,
                      'guestAndRoom': guestAndRoom,
                      'dropdownValueForLocation': dropdownValueForLocation,
                      'durations': durations,
                      'bookPrice': bookPrice,
                      'bookPrice1': bookPrice1,
                    },
                  );
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
                  style: appstyle(15, Color(kLight.value), FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
