import 'package:auth_test/core/theme/app_string.dart';
import 'package:flutter/cupertino.dart';

/* 
An alert dialog informs the user about situations that require acknowledgment.
An alert dialog has an optional title, optional content, and an optional list of actions. 
The title is displayed above the content and the actions are displayed below the content.
-------------------
*/
void showAlertDialog(
  BuildContext context, {
  String? title,
  String? subtitle,
  Function()? onTapYeas,
  Function()? onTapNo,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(title ?? ""),
      content: Text(subtitle ?? ""),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          /// This parameter indicates this action is the default,
          /// and turns the action's text to bold text.
          isDefaultAction: true,
          onPressed: onTapNo,
          child: Text(AppString.strNo),
        ),
        CupertinoDialogAction(
          /// This parameter indicates the action would perform
          /// a destructive action such as deletion, and turns
          /// the action's text color to red.
          isDestructiveAction: true,
          onPressed: onTapYeas,
          child: Text(AppString.strYeas),
        ),
      ],
    ),
  );
}
