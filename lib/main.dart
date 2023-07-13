import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/Views/home_screen.dart';
import 'package:metravel_demo1/Views/login.dart';
import 'package:metravel_demo1/Views/login_provider.dart' show LoginNotifier;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/Views/onboarding_provider.dart'
    show OnBoardNotifier;
import 'package:metravel_demo1/routes.dart';
import "package:metravel_demo1/Views/signup_provider.dart" show SignUpNotifier;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'components/bottom_bar_states.dart';
import 'core/helpers/local_storage_helper.dart';

Widget defaultHome = const HomeScreen();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final entryPoint = prefs.getBool('entrypoint') ?? false;
  final loggedIn = prefs.getBool('loggedIn') ?? false;
  if (entryPoint & !loggedIn) {
    defaultHome = const LoginPage();
  } else if (entryPoint & loggedIn) {
    defaultHome = const MainScreen();
  }
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
    ChangeNotifierProvider(create: (context) => LoginNotifier()),
    ChangeNotifierProvider(create: (context) => SignUpNotifier()),
  ], child: const MyApp()));
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 830),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            routes: routes,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Color(kLight.value),
              iconTheme: IconThemeData(color: Color(kDark.value)),
              primarySwatch: Colors.grey,
            ),
            home: defaultHome,
          );
        });
  }
}
