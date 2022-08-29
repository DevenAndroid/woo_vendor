import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/theme/theme.dart';

class CustomAppbar extends StatelessWidget {
  final String? data;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppbar({super.key, required this.data, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      )),
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: AppTheme.orangeColor,

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.light,
        // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      backgroundColor: AppTheme.orangeColor,
      leading: leading,
      title: Text(
        data!,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: AppTheme.whiteColor,
            fontSize: 20),
      ),
      actions: actions,
    );
  }
}
