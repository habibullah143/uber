import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uberr/providers/walkthrough_provider.dart';

class WalkthroughStepper extends StatelessWidget {
  final PageController controller;
  const WalkthroughStepper({Key? key, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      3,
      (int index) {
        return
            //  Consumer<WalkthroughProvider>(
            //   builder: (consumerContext, walkthrough, child) {
            //     return
            GestureDetector(
          onTap: () {
            controller.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          },
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Container(
              height: 5.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: index <= 1
                    //walkthrough.currentPageValue
                    ? Theme.of(context).primaryColor
                    : Colors.grey[300],
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.only(right: 5.0),
            ),
          ),
        );
      },
    )
        //   },
        // ),
        );
  }
}
