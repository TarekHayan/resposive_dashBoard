import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExepensesItemsHeader extends StatelessWidget {
  const AllExepensesItemsHeader({
    super.key,
    required this.image,
    required this.isActive,
  });
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: isActive ? Colors.transparent : const Color(0xffFAFAFA),
          elevation: 0,
          shape: const CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: isActive
                ? SvgPicture.asset(image, color: Colors.white)
                : SvgPicture.asset(image, color: const Color(0xff4eb7f2)),
          ),
        ),
        Icon(
          Icons.arrow_right,
          color: isActive ? Colors.white : const Color(0xff064061),
        ),
      ],
    );
  }
}
