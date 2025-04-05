import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_route/Core/utils/app_colors.dart';
import 'package:news_route/Core/utils/app_styles.dart';
import 'package:news_route/Features/home/presentation/manager/category_model.dart';
import 'package:news_route/Features/home/presentation/widgets/category_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          SizedBox(
            height: 36.h,
          ),
          Text(
            'Pick your category of interest',
            style: AppStyles.textNormal22.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 2 / 2.5),
                itemBuilder: (context, index) =>
                    CategoryItem(category: categories[index], index: index)),
          )
        ],
      ),
    );
  }
}