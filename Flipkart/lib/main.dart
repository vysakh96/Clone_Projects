import 'package:flipkart/provider/provider_class.dart';

import 'package:flutter/material.dart';

import 'splashScreen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Provider_class(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashFlip(),
      ),
    ),
  );
}
