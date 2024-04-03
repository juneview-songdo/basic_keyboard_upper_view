import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(16),
          Icon(Icons.info_outline, color: Colors.white),
          SizedBox(width: 8.0),
          Text(
            'This is a SnackBar!',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ).padding(vertical: 16),
    );
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
