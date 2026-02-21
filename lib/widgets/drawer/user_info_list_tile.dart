import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 20, top: 40),
      child: Card(
        color: const Color(0xffFAFAFA),
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(title, style: AppStyles.styleSemiBold16(context)),
          ),
          subtitle: FittedBox(
            alignment: AlignmentDirectional.centerStart,

            fit: BoxFit.scaleDown,
            child: Text(subtitle, style: AppStyles.styleRegular12(context)),
          ),
        ),
      ),
    );
  }
}
