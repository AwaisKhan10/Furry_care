import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/firebase_option.dart';
import 'package:furry_care/locator.dart';
import 'package:furry_care/ui/screens/menu/adopt/adopt_view_model.dart';
import 'package:furry_care/ui/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
          MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      builder: (BuildContext context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AdoptionViewModel()),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Furry Care',
          theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                surfaceTintColor: Colors.transparent),
            scaffoldBackgroundColor: const Color(0xffF2F2F2),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
