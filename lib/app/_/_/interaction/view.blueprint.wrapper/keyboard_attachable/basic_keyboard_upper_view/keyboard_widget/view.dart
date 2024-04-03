import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class KeyboardWidgetView extends StatefulWidget {
  KeyboardWidgetView({super.key});

  @override
  State<KeyboardWidgetView> createState() => StateChild();
}

class KeyboardWidgetViewState extends State<KeyboardWidgetView>
    with StateMother {
  final TextEditingController textEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 1,
          thickness: 1,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              // Flexible 또는 Expanded 사용
              child: TextFormField(
                controller: textEditingController,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                // 최소 시작 줄 수
                maxLines: 4,
                // 최대 확장될 수 있는 줄 수
                decoration: InputDecoration(
                  hintText: 'Type something here',
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  // Padding 조절
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ).padding(horizontal: 10, vertical: 10),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: KeyboardWidgetView());
}
