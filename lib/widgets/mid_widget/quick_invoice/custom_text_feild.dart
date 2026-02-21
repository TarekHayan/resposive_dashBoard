import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff4EB7F2),
      decoration: InputDecoration(
        hint: Text(hint, style: AppStyles.styleRegular16(context)),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        border: decoration(),
        enabledBorder: decoration(),
        focusedBorder: decoration(color: const Color(0xff4EB7F2)),
      ),
    );
  }

  OutlineInputBorder decoration({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      gapPadding: 20,
      borderSide: BorderSide(color: color ?? Colors.transparent),
    );
  }
}
