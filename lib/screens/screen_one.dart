import 'package:flutter/material.dart';
import 'package:tabview_flutter_module/constant/text_constants.dart';
import 'package:tabview_flutter_module/widgets/screen_body.dart';

class FirstScreen extends StatelessWidget {
  final TabController tabController;
  const FirstScreen({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
        tabBarTitle: TextConstants.titleTab_1,
        tabController: tabController,
        tabIcon: Icons.home);
  }
}
