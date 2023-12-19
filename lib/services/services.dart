import 'package:chatgpt_clone/widget/drop_down.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widget/text_widget.dart';

class Services {
  static Future<void> showModelSheet(BuildContext context) async {
    return await showModalBottomSheet(
        context: context,
        backgroundColor: scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextWidget(
                    label: "Choose Modal",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Flexible(flex: 2, child: DropDownWidget())
              ],
            ),
          );
        });
  }
}
