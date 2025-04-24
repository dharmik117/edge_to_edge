import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EdgeToEdge {
  static Future<void> configure({
    bool enableTop = true,
    bool enableBottom = true,
    Color statusBarColor = Colors.transparent,
    Color navigationBarColor = Colors.transparent,
    Brightness statusBarIconBrightness = Brightness.light,
    Brightness navigationBarIconBrightness = Brightness.light,
  }) async {
    if (!Platform.isAndroid) return;

    final overlays = <SystemUiOverlay>[
      if (enableTop) SystemUiOverlay.top,
      if (enableBottom) SystemUiOverlay.bottom,
    ];

    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: overlays,
    );

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: navigationBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
        systemNavigationBarIconBrightness: navigationBarIconBrightness,
      ),
    );
  }
}
