// ignore_for_file: deprecated_member_use

import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomTabItem extends StatelessWidget {
  const BottomTabItem(
      {Key? key,
      required int currentIndex,
      required this.onTap,
      required this.label,
      required this.icon,
      required this.index})
      : _currentIndex = currentIndex,
        super(key: key);

  final int _currentIndex;
  final int index;
  final Function() onTap;
  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: he(12)),
            SvgPicture.asset(icon,height: he(20),color: index == _currentIndex
                        ? AppColors.primaryColor
                        : AppColors.greyColor,),
            SizedBox(height: he(8)),
            Text(label,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: index == _currentIndex
                        ? AppColors.primaryColor
                        : AppColors.greyColor,
                    fontWeight: index == _currentIndex
                        ? FontWeight.w600
                        : FontWeight.w400)),
            SizedBox(height: he(8))
          ],
        ),
      ),
    );
  }
}
