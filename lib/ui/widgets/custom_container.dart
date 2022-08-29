import 'package:flutter/material.dart';

import '../../resources/theme/theme.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final BoxBorder? border;

  const CustomContainer({super.key, required this.child, this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: border,
          color: AppTheme.whiteColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: child);
  }
}
