import 'package:flutter/material.dart';

import '../../resources/theme/theme.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onPress;
  final double? width;
  final double? height;
  final Color? primaryColor;
  final Color? buttonTextColor;

  const CustomButton(
      {Key? key,
      this.onPress,
      this.width,
      this.height,
      this.buttonText,
      this.primaryColor,
      this.buttonTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(color: AppTheme.orangeColor)),
              primary: primaryColor,
              // padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              textStyle: const TextStyle(fontWeight: FontWeight.bold)),
          onPressed: onPress,
          child: Text(
            buttonText!,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: buttonTextColor),
          )),
    );
  }
}
