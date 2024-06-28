import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iaproject/MyHomePage.dart';
import 'package:iaproject/ThemeNotifier.dart';
import 'package:iaproject/onboarding.dart';
import 'package:iaproject/themes.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: "Flutter Chat",
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
      home: const Onboarding(),
    );
  }
}
