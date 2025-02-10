import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
//When you use device preview it is easy to understand the mobile frame
void main() {
  runApp(
    DevicePreview(
        enabled: true,
        builder: (context) => const CraftyBay()
    ),
  ); // Wrap your app
}

