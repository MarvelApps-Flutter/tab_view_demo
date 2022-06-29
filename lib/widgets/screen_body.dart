import 'package:flutter/material.dart';

class ScreenBody extends StatefulWidget {
  final String tabBarTitle;
  final TabController tabController;
  final IconData tabIcon;

  const ScreenBody(
      {Key? key,
      required this.tabBarTitle,
      required this.tabController,
      required this.tabIcon})
      : super(key: key);

  @override
  State<ScreenBody> createState() => _ScreenBodyState();
}

class _ScreenBodyState extends State<ScreenBody> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade400,
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.orange.shade200, shape: BoxShape.circle),
                child: Icon(
                  widget.tabIcon,
                  color: Colors.orange.shade900,
                  size: 100,
                ),
              ),
              Text(
                widget.tabBarTitle,
                style: const TextStyle(
                    color: Colors.indigo,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        floatingActionButton: isExpanded == false
            ? FloatingActionButton(
                backgroundColor: Colors.indigo,
                child: const Icon(
                  Icons.add,
                  color: Colors.orange,
                ),
                onPressed: () {
                  // to navigate to any other page by using tabcontroller.
                  setState(() {
                    isExpanded = true;
                  });
                },
              )
            : InkWell(
                hoverColor: Colors.indigo.shade200,
                onTap: () {
                  setState(() {
                    isExpanded = false;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.indigo,
                      child: const Icon(
                        Icons.home,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        // to navigate to any other page by using tabcontroller.
                        widget.tabController.animateTo(0);
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.indigo,
                      child: const Icon(
                        Icons.mail,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        // to navigate to any other page by using tabcontroller.
                        widget.tabController.animateTo(1);
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.indigo,
                      child: const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        // to navigate to any other page by using tabcontroller.
                        widget.tabController.animateTo(2);
                      },
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.indigo,
                      child: const Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        // to navigate to any other page by using tabcontroller.
                        widget.tabController.animateTo(3);
                      },
                    ),
                  ],
                ),
              ));
  }
}
