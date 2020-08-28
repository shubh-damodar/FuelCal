import 'dart:io';

import 'package:flutter/services.dart';

// ignore: non_constant_identifier_names
PatternVibrate() {
  HapticFeedback.mediumImpact();

  sleep(
    const Duration(milliseconds: 200),
  );

  HapticFeedback.mediumImpact();

  sleep(
    const Duration(milliseconds: 500),
  );

  HapticFeedback.mediumImpact();

  sleep(
    const Duration(milliseconds: 200),
  );
  HapticFeedback.mediumImpact();
}
