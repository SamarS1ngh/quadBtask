import 'package:fluttemp/Utils/Routes/app_router_config.dart';
import 'package:fluttemp/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ViewModel/Provider/showsVM.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => ShowsViewModel())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
        designSize: Size(width, height),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme: ThemeData(
              colorScheme: const ColorScheme.dark(
                  background: AppColors.backgroundColor,
                  error: AppColors.errorColor,
                  primary: AppColors.primaryColor),
              useMaterial3: true,
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(),
    );
  }
}
