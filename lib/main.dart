import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kolliity/shared/Dark_mode/AppCubit.dart';
import 'package:kolliity/shared/Dark_mode/cach_helper.dart';
import 'package:kolliity/shared/app_size.dart';
import 'package:kolliity/shared/constants/themes.dart';
import 'package:kolliity/shared/generic_cubit/generic_cubit.dart';
import 'package:kolliity/shared/localization/app_localization.dart';
import 'package:kolliity/shared/prefs/pref_manager.dart';
import 'package:kolliity/shared/providers/language_provider.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/landing.dart';
import 'features/login/login_-screen.dart';
import 'features/profiledata-eng.dart';
import 'features/theme-service.dart';
import 'features/units.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



GlobalKey<NavigatorState> navigatorKey = GlobalKey();
void main() async {

  await GetStorage.init();
  await PrefManager.init();
  await CacheHelper.init();
  bool? isdark = CacheHelper.getBoolData(key: 'isdark');
  WidgetsFlutterBinding.ensureInitialized();
  bool isLoggedIn = await _checkLoginState();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LanguageProvider(),
        ),
        BlocProvider(
          create: (BuildContext context) =>
          Appcubiit()..changemode(isDarkFromShared: isdark),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => ThemeProvider(),
        // ),
        Provider<GenericCubit<String>>(create: (_) => GenericCubit<String>('')),
      ],
      child: MyApp(isdark: isdark,isLoggedIn: isLoggedIn),
    ),
  );
}
Future<bool> _checkLoginState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isLoggedIn') ?? false;
}

class MyApp extends StatelessWidget {
  final bool? isdark;
  final bool isLoggedIn;
  const MyApp({Key? key, required this.isdark,required this.isLoggedIn}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    AppSize.initCurrent(mediaQueryData: MediaQuery.of(context));
    return ScreenUtilInit(
      designSize: Size(AppSize.screenWidth, AppSize.screenHeight),
      builder: (_, i) => Consumer<LanguageProvider>(
        builder: (_, language, __) => MaterialApp(
          // home: isLoggedIn ? Profiledata_Eng() : Login_Eng(),
          // routes: {
          //   '/profile': (context) => Profiledata_Eng(),
          //   '/login': (context) => Login_Eng(),
          // },
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme:  const AppBarTheme(

                elevation: 0,
                titleSpacing: 20,
                // backwardsCompatibility: false, to edit status bar

                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                iconTheme: IconThemeData(color: Colors.black),
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.dark,
                    statusBarColor: Colors.black26,
                    statusBarBrightness: Brightness.light
                )),
            bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
              selectedItemColor: Colors.blue,
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.grey,
            ),

          ),
          darkTheme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor:Colors.black26,
              appBarTheme:  AppBarTheme(

                  elevation: 0,
                  titleSpacing: 20,
                  // backwardsCompatibility: false, to edit status bar

                  backgroundColor: Colors.black26,
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  iconTheme: IconThemeData(color: Colors.white),
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarIconBrightness: Brightness.dark,
                      statusBarColor:Colors.black26,
                      statusBarBrightness: Brightness.dark
                  )),
              bottomNavigationBarTheme:  BottomNavigationBarThemeData(
                selectedItemColor: Colors.blue,
                backgroundColor: Colors.black26,
                unselectedItemColor: Colors.grey,
              ),
              textTheme:  TextTheme(bodyText1: TextStyle(
                  fontWeight:FontWeight.w900,
                  color: Colors.white
              ))

          ),
          themeMode: Appcubiit.get(context).isdark ? ThemeMode.dark : ThemeMode.light,
          // theme: Provider.of<ThemeProvider>(context).isDarkMode
          //     ? AppTheme.darkTheme
          //     : AppTheme.lightTheme,
      navigatorKey: navigatorKey,
    debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "EG"),
        Locale("en", "US"),
      ],
          locale: language.appLocale,
          onGenerateRoute: AppRoutes.appRoutes,
          initialRoute: AppRoutes.start,
    ),
      ),
    );






  }
}
