
 import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
          icon: Icon(Icons.groups),
          text: "Groups",
              ),
          Tab(
          icon: Icon(Icons.chat),
          text: "Chats",
          ),
          Tab(
          icon: Icon(Icons.update),
          text: "Status"
          ),
          Tab(
          icon: Icon(Icons.phone),
          text: "Calls",
          )
          ],
          ),
        ),
      ),
    );
  }
}
