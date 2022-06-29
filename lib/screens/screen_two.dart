import 'package:flutter/material.dart';
import 'package:tabview_flutter_module/constant/text_constants.dart';
import 'package:tabview_flutter_module/widgets/screen_body.dart';

class SecondScreen extends StatelessWidget {
  final TabController tabController;
  const SecondScreen({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
        tabBarTitle: TextConstants.titleTab_2,
        tabController: tabController,
        tabIcon: Icons.mail);
  }
}
