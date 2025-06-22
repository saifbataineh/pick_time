import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pick_time/core/app_style.dart';
import 'package:pick_time/features/auth/controllers/auth_cubit.dart';
import 'package:pick_time/features/splash/splash_screen.dart';


void main() {
  runApp(
    BlocProvider(
      create: (_) => AuthCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PickTime App',
      theme: AppStyle.themeData,
      home: const SplashScreen(),
    );
  }
}
