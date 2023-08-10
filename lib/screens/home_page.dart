import 'package:flutter/material.dart';
import 'package:tabview_flutter_module/constant/text_constants.dart';
import 'package:tabview_flutter_module/screens/screen_forth.dart';
import 'package:tabview_flutter_module/screens/screen_one.dart';
import 'package:tabview_flutter_module/screens/screen_three.dart';
import 'package:tabview_flutter_module/screens/screen_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //tabcontroller.index can be used to get the name of current index value of the tabview.
        title: Text(tabController.index == 0
            ? TextConstants.titleTab_1
            : tabController.index == 1
                ? TextConstants.titleTab_2
                : tabController.index == 2
                    ? TextConstants.titleTab_3
                    : TextConstants.titleTab_4),
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            text: TextConstants.titleTab_1,
            icon: Icon(
              Icons.home,
              color: Colors.indigo.shade500,
            ),
          ),
          Tab(
              text: TextConstants.titleTab_2,
              icon: Icon(
                Icons.email,
                color: Colors.indigo.shade500,
              )),
          Tab(
              text: TextConstants.titleTab_3,
              icon: Icon(
                Icons.star,
                color: Colors.indigo.shade500,
              )),
          Tab(
              text: TextConstants.titleTab_4,
              icon: Icon(
                Icons.person,
                color: Colors.indigo.shade500,
              ))
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        FirstScreen(
          tabController: tabController,
        ),
        SecondScreen(
          tabController: tabController,
        ),
        ThirdScreen(
          tabController: tabController,
        ),
        FourthScreen(
          tabController: tabController,
        )
      ]),
    );
  }
}
