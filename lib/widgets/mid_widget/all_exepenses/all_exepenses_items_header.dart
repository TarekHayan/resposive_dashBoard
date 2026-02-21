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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Card(
                color: isActive ? Colors.transparent : const Color(0xffFAFAFA),
                elevation: 0,
                shape: const CircleBorder(),
                child: isActive
                    ? Center(
                        child: SvgPicture.asset(
                          image,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      )
                    : Center(
                        child: SvgPicture.asset(
                          image,
                          colorFilter: const ColorFilter.mode(
                            Color(0xff4eb7f2),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
              ),
            ),
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
