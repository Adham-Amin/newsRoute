import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_route/Core/utils/app_colors.dart';
import 'package:news_route/Core/utils/app_styles.dart';

class HeaderArticle extends StatelessWidget {
  const HeaderArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 232.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(24.sp),
            ),
            image: DecorationImage(
              image: NetworkImage(
                "https://img.rasset.ie/00215124-1600.jpg",
              ),
            ),
          ),
        ),
        Text(
          'BBC news*',
          style: AppStyles.textLight13.copyWith(color: AppColors.grey),
        ),
        Text(
          'Why are football\'s biggest clubs starting a new tournament?',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.textNormal14.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          '3 hours ago',
          style: AppStyles.textLight13
              .copyWith(color: AppColors.grey, fontWeight: FontWeight.w400),
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
