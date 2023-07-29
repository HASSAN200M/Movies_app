



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/splash_screean.dart';

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return GetMaterialApp(
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
					scaffoldBackgroundColor: Color(0xFF1d1d28),
					appBarTheme: AppBarTheme(
						backgroundColor: Colors.transparent,
						elevation: 0,
					)),
			home: splashScreean(),
		);
	}
}
