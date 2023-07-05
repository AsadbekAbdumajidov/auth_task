import 'package:flutter/material.dart';

class RibbonScreen extends StatelessWidget {
  const RibbonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          Text("Ribbon Page",style: Theme.of(context).textTheme.displaySmall)
      ),
    );
  }
}
