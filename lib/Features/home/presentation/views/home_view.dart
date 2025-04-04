import 'package:flutter/material.dart';
import 'package:news_route/Core/widgets/custom_scaffold.dart';
import 'package:news_route/Features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const HomeViewBody(),
    );
  }
}