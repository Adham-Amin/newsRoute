import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:news_route/Core/utils/app_colors.dart';
import 'package:news_route/Core/utils/app_routes.dart';
import 'package:news_route/Core/utils/app_styles.dart';
import 'package:news_route/Features/home/presentation/manager/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.index});

  final CategoryModel category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRouters.category, extra: category.title),
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: index % 2 == 0 ? Radius.circular(25) : Radius.zero,
            bottomRight: index % 2 == 1 ? Radius.circular(25) : Radius.zero,
          ),
        ),
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              category.image,
              width: 132.w,
            ),
            Text(
              category.title,
              style: AppStyles.textNormal22.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
