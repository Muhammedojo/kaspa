import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../contract/splash.dart';
import '../view/splash.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    implements SplashControllerContract {
  late final SplashViewContract view;

  @override
  void initState() {
    super.initState();

    view = SplashView(
      controller: this,
    );
   // onAnimationComplete();
  }

  // void onAnimationComplete() {
  //   Future.delayed(const Duration(seconds: 5), () async {
  //     if (mounted) {
  //     //  GetIt.I.get<UserCubit>().getUser();
  //     }
  //     bool? hasUserLoggedIn = await GetIt.I.get<LocalStorage>().isLoggedIn();
  //     if (hasUserLoggedIn != null && hasUserLoggedIn) {
  //       Login user = await GetIt.I.get<LocalStorage>().getUser();
  //       await showHomeScreen(user);
  //     } else {
  //       if (mounted) {
  //         context.goNamed(RouteConstants.login);
  //       }
  //     }
  //   });
  // }

  // Future<void> showHomeScreen(Login user) async{
  //   await GetIt.I.get<LocalStorage>().openDb(user.userName ?? "defaultUsername");
  //   refreshLocalData();
  //   if (mounted) {
  //     context.goNamed(RouteConstants.homePage);
  //   }
  // }

  // void refreshLocalData(){
  //   GetIt.I.get<InventoryCubit>().loadInventoryFromDb();
  //   GetIt.I.get<InputSalesCubit>().loadInputSalesFromDb();
  //   GetIt.I.get<GetFarmersCubit>().loadFarmersFromDb();
  //   GetIt.I.get<ProductCubit>().loadProductsFromDb();
  //   GetIt.I.get<ValueChainCubit>().loadValueChainFromDb();
  //   GetIt.I.get<InsightCubit>().loadInsightsFromDb();
  // }

  @override
  Widget build(BuildContext context) {
    return view.build(context);
  }
}
