import 'package:flutter/material.dart';

class ControllerPage {
  void sectionFunction(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
