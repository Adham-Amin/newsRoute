import 'package:flutter/material.dart';
import 'package:news_route/Core/utils/app_assets.dart';
import 'package:news_route/Core/utils/app_colors.dart';

class CategoryModel {
  final String title;
  final String image;
  final Color color;

  CategoryModel({required this.color, required this.title, required this.image});

}

List<CategoryModel> categories = [
  CategoryModel(title: 'Sports', image: AppAssets.sport, color: AppColors.red),
  CategoryModel(title: 'Politics', image: AppAssets.politics, color: AppColors.darkBlure),
  CategoryModel(title: 'Health', image: AppAssets.health, color: AppColors.pink),
  CategoryModel(title: 'Business', image: AppAssets.bussines, color: AppColors.brown),
  CategoryModel(title: 'Environment', image: AppAssets.environment, color: AppColors.lightBlue),
  CategoryModel(title: 'Science', image: AppAssets.science, color: AppColors.yellow),
];