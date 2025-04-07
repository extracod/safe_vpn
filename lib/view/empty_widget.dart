import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class EmptyWidget extends StatelessWidget {
  final bool showEmpty;

  const EmptyWidget({required this.showEmpty,super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showEmpty,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.iconEmptyPlaceholder.path,
            width: 109,
            height: 107.5,
          ),
          Text(
            "There is nothing...",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
