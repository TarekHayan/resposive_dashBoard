import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.webLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, webLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        if (size.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (size.maxWidth < SizeConfig.web) {
          return tabletLayout(context);
        } else {
          return webLayout(context);
        }
      },
    );
  }
}
