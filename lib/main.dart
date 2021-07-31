import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyx_test_app/ui/route.dart';
import 'package:nyx_test_app/utils/constant/colors.dart';
import 'package:nyx_test_app/utils/constant/route_path.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nyx Test App',
        //     navigatorObservers: [
        //     locator<AnalyticsService>().getAnalyticsObserver(),
        // ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(color: BackGrondColor, elevation: 0),
          scaffoldBackgroundColor: BackGrondColor,
        ),
        initialRoute: RoutePaths.Home,
        onGenerateRoute: Routers.generateRoute,
      ),
    );
  }
}
