//ignore_for_file:prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'centre_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon icn = const Icon(Icons.search);
  Widget txt = const Text(('Telegram'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: txt,
        backgroundColor: Colors.blueGrey.shade900,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (icn.icon == Icons.search) {
                    icn = const Icon(Icons.cancel);
                    txt = const TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                          border: InputBorder.none),
                      style: TextStyle(color: Colors.white),
                    );
                  } else {
                    icn = const Icon(Icons.search);
                    txt = const Text('Telegram');
                  }
                });
              },
              icon: icn),
        ],
      ),
      body: const Centre(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.create),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/yash.jpg"),
              ),
              accountName: Text("AMAN KUMAR"),
              accountEmail: Text("+91 7245789087"),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
                leading: const Icon(Icons.group),
                title: const Text(
                  'New Group',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.perm_contact_cal_sharp),
                title: const Text(
                  'Contacts',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.call),
                title: const Text(
                  'Calls',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.fmd_good),
                title: const Text(
                  'People Nearby',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.bookmark_border),
                title: const Text(
                  'Saved Messages',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            ListTile(
                leading: const Icon(Icons.group_add),
                title: const Text(
                  'Invite Friends',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.support_agent),
                title: const Text(
                  'Telegram Features ',
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
