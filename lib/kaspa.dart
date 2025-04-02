import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Kaspa extends StatelessWidget {
  const Kaspa({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MultiBlocProvider(
      providers: [],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          useInheritedMediaQuery: false,
          ensureScreenSize: true,
          fontSizeResolver: FontSizeResolvers.height,
          rebuildFactor: (old, data) => true,
          builder: (context, child) => GlobalLoaderOverlay(
              overlayColor: Colors.white.withAlpha((0.51 * 255).toInt()),
              overlayWholeScreen: true,
              child: MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: [
                    ...context.localizationDelegates,
                  ],
                  supportedLocales: const [
                    Locale('en'),
                    Locale('fr'),
                  ],
                   locale: context.locale,
                  title: 'Kaspa',
                  theme: ThemeData.light(),
                  builder: (context, child) {
                      ResponsiveBreakpoints.builder(
                    child: child!,
                    breakpoints: [
                      const Breakpoint(start: 0, end: 450, name: MOBILE),
                      const Breakpoint(start: 451, end: 800, name: TABLET),
                      const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                      const Breakpoint(
                          start: 1921, end: double.infinity, name: '4K'),
                    ],
                  );
                    return MediaQuery(
                         data: MediaQuery.of(context).copyWith(
                      textScaler: TextScaler.linear(
                          MediaQuery.of(context).size.width > 428 ? 1 : 1.12),
                    ),
                      child: child);
                    
                  },
                  ))),
    );
  }
}
