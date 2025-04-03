import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kaspa/kaspa.dart';
import 'config/di/app_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initGetIt();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('fr')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'GB'),
      saveLocale: true,
      startLocale: const Locale('en', 'GB'),
      useFallbackTranslations: true,
      useOnlyLangCode: true,
      child: const Kaspa())
  );
  FlutterNativeSplash.remove();
}