import 'dart:async';

import 'package:flutter/services.dart';

class GenericFormField {
  static const MethodChannel _channel =
      const MethodChannel('generic_form_field');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
