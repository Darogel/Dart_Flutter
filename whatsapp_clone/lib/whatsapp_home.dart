import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_screen.dart';
import 'package:whatsapp_clone/pages/camera_alt.dart';
import 'package:whatsapp_clone/pages/chat_list.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget{
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();

}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(  
      appBar: new AppBar(
        title: new Text("WhatsApp Clone"),
        bottom: new TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
          new Tab(icon: new Icon(Icons.camera_alt)),
          new Tab(text: "CHATS"),
          new Tab(text: "ESTADOS"),
          new Tab(text: "LLAMADAS"),
        ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new ChatList(),
          new Status(),
          new Calls()

      ],
      ),
    );
  }
}