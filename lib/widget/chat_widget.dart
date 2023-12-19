import 'package:chatgpt_clone/constants/constants.dart';
import 'package:chatgpt_clone/services/assets_manager.dart';
import 'package:chatgpt_clone/widget/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String message;
  final int userType;
  final bool isLiked;

  const ChatWidget(
      {Key? key,
      required this.message,
      required this.userType,
      required this.isLiked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: userType == 0 ? scaffoldBackgroundColor : cardBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  userType == 0
                      ? AssetsManager.chatLogo
                      : AssetsManager.userImage,
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(child: TextWidget(label: message)),
                userType == 0
                    ? const SizedBox.shrink()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          isLiked
                              ? const Icon(Icons.thumb_up_alt_rounded)
                              : const Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                          isLiked
                              ? const Icon(
                                  Icons.thumb_down_alt_outlined,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.thumb_down_alt_outlined,
                                  color: Colors.white,
                                ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
