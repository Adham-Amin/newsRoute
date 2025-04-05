import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_route/Features/home/presentation/widgets/articles_list.dart';
import 'package:news_route/Features/home/presentation/widgets/sources_list.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        SourcesList(),
        SizedBox(
          height: 8.h,
        ),
        ArticlesList(),
      ],
    );
  }
}