import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/core/widgets/loading_widget.dart';
import 'package:flutter/cupertino.dart';

// ---- the main button to use the application ----
class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.textColor,
      this.isLoading = false,
      this.bgColor})
      : super(key: key);

  final String text;
  final Function() onTap;
  final Color? textColor;
  final bool isLoading;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.circular(2),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoading
              ? SizedBox(
                  height: he(36), width: he(30), child: const LoadingWidget())
              : Padding(
                  padding: EdgeInsets.symmetric(vertical: he(10)),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: he(14),
                        fontWeight: FontWeight.w700,
                        color: AppColors.white),
                  ),
                ),
        ],
      ),
      color: AppColors.primaryColor,
    );
  }
}
