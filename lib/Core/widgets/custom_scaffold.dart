import 'package:flutter/material.dart';
import 'package:news_route/Core/utils/app_assets.dart';
import 'package:news_route/Core/utils/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key, required this.body, this.appBar
  });

  final Widget body;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      ),
    );
  }
}