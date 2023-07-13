import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/view/page/app.dart';

void main() {
   runApp(
    ProviderScope(
      child: const AppRoute(),
    ),
  );
}
