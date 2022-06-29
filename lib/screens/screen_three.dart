import 'package:flutter/material.dart';
import 'package:tabview_flutter_module/constant/text_constants.dart';
import 'package:tabview_flutter_module/widgets/screen_body.dart';

class ThirdScreen extends StatelessWidget {
  final TabController tabController;
  const ThirdScreen({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
        tabBarTitle: TextConstants.titleTab_3,
        tabController: tabController,
        tabIcon: Icons.star);
  }
}
