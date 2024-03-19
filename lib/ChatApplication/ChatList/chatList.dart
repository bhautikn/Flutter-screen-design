import 'package:app_new/ChatApplication/ChatList/oneChat.dart';
import 'package:flutter/cupertino.dart';

class ChatList extends StatefulWidget {
  dynamic list = [];

  ChatList({list, super.key}) {
    this.list = list;
    print(list);
  }

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return OneChat(data: widget.list[index]);
      },
      itemCount: widget.list.length,
    );
  }
}
