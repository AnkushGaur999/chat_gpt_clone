
import 'package:chatgpt_clone/constants/constants.dart';
import 'package:chatgpt_clone/services/api_sevices.dart';
import 'package:chatgpt_clone/services/assets_manager.dart';
import 'package:chatgpt_clone/services/services.dart';
import 'package:chatgpt_clone/widget/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final textController = TextEditingController();
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
            color: Colors.teal,
            child: Image.asset(AssetsManager.openAILogo, color: Colors.white, ),
          ),
        title: const Text("ChatGPT"),
        actions: [
          IconButton(onPressed: () async {
            await Services.showModelSheet(context);
          }, icon: const Icon(Icons.more_vert_rounded, color: Colors.white,))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: messages.length,
                  physics: const PageScrollPhysics(),
                  itemBuilder: (context, position){
                return ChatWidget(message: messages[position]["message"].toString(), userType: int.parse(messages[position]["userType"].toString()), isLiked: true,);
              }),
            ),


            if(_isTyping)...[
              const SpinKitThreeBounce(color: Colors.white, size: 18,)
            ],

            const SizedBox(height: 10,),

            Material(
              color: cardBackground,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  children: [

                    Expanded(
                        child: TextField(
                          controller: textController,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: const TextStyle(color: Colors.white),
                          onSubmitted: (value){
                            // TODO SEND MESSAGE

                          },
                          decoration: const InputDecoration(
                            hintText: "How can i help you?",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none
                              )
                            )

                          ),
                        )),

                    IconButton(onPressed: (){
                      ApiServices.getModels();
                    }, icon: const Icon(Icons.send, color: Colors.white,))
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
