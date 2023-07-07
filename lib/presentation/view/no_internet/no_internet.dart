import 'package:auth_test/core/theme/app_icons.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/core/utils/size_konfig.dart';
import 'package:auth_test/presentation/view/auth/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ---- The page that is created when the Internet goes down ----

class NoInternetPage extends StatelessWidget {
  final Function() onTap;
  const NoInternetPage({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset(AppIcons.icNoInternet)),
            Text(AppString.strLostConnection),
            const SizedBox(height: 8),
            Text(
              AppString.strCheackConnection,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: wi(16), vertical: he(80)),
              child: CustomButtonWidget(
                text: AppString.strTryAgain,
                onTap: onTap
              ),
            )
          ],
        ),
      ),
    );
  }
}
