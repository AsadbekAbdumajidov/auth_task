import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.textEditingController,
      this.onChange,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscure,
      this.textInputAction,
      this.fillColor,
      this.preIconColor,
      this.validator,
      this.autoFocus,
      this.focusNode,
      this.labelColor,
      this.initialValue,
      this.labelText,
      this.hintTextColor,
      this.textColor,
      this.errorText,
      this.keyboardType,
      this.textInputFormatter})
      : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final FormFieldValidator<String>? validator;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? labelText;
  final Color? labelColor;
  final Color? hintTextColor;
  final Color? textColor;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputFormatter? textInputFormatter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style:
          Theme.of(context).textTheme.displaySmall?.copyWith(color: textColor),
      onChanged: onChange,
     
      initialValue: initialValue,
      controller: textEditingController,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: AppColors.secondaryDark,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        errorText: errorText,
        hintStyle: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: hintTextColor??AppColors.greyColor),
        hintText: hintText,
        filled: false,
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: labelColor, fontSize: he(15)),
        fillColor: fillColor ?? AppColors.white,
        contentPadding: const EdgeInsets.fromLTRB(12, 30, 12, 14),
       
       enabledBorder: const UnderlineInputBorder(
        
          borderSide: BorderSide(color: AppColors.secondaryDark),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryDark),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryDark),
        ),
        // errorBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(color: AppColors.red),
        // ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.red),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryDark),
        ),
      ),
    );
  }
}