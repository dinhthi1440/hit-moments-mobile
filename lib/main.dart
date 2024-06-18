import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hit_moments/app/providers/providers_list.dart';
import 'package:hit_moments/app/routes/app_pages.dart';
import 'package:hit_moments/app/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() async {
  await GetStorage.init('hit_moment');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => MultiProvider(
        providers: List.generate(
          listProviders.length,
          (index) => ChangeNotifierProvider(
            create: (_) => listProviders[index],
          ),
        ),
        child: MaterialApp(
          //the
          themeAnimationCurve: Curves.easeIn,
          themeAnimationDuration: const Duration(milliseconds: 500),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.SPASH,
          routes: AppPages.routes,
        ),
      ),
    );
  }
}
