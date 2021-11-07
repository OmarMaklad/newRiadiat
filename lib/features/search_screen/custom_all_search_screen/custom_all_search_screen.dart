import 'package:flutter/material.dart';
import 'package:riadiat/features/search_screen/widget/custom_container_not_result.dart';

class AllSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: customNoResult(context: context),
          ),
        ],
      ),
    );
  }
}
