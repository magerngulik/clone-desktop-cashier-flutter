import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './riverpod_util.dart';
import 'module/client/mainnavigatorcashier/view/mainnavigatorcashier_view.dart';

void main() async {
  Widget mainView = Container();

  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.navigatorKey,
        home: MainnavigatorcashierView(),
      ),
    ),
  );
}
