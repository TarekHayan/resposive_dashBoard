import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ButtomColor, this.TextColor, this.title});
  final Color? ButtomColor, TextColor;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ButtomColor ?? const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),

        onPressed: () {},
        child: Text(
          title ?? "Send Money",
          style: AppStyles.styleSemiBold18.copyWith(
            color: TextColor ?? AppStyles.styleSemiBold18.color,
          ),
        ),
      ),
    );
  }
}
