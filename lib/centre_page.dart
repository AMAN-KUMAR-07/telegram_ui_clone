import 'package:flutter/material.dart';
import 'package:telegram/chatpage.dart';

class Centre extends StatefulWidget {
  const Centre({Key? key}) : super(key: key);

  @override
  _CentreState createState() => _CentreState();
}

class _CentreState extends State<Centre> {
  final name = [
    "Kylie",
    "Leonardo",
    "Panther",
    "Rock",
    "Zendaya",
    "Millie",
    "Virat",
    "Yash",
    "Wolvarine",
    "West"
  ];
  final chat = [
    "hiii kylie",
    "next movie",
    "your movie music was next level",
    "how you doing?",
    "dune visiuals were mind boggling",
    "when is season 4 of stranger things coming?",
    "iss bar ipl jitna hai",
    "waiting for kgf 2",
    "?????",
    "oyee kyne west.."
  ];
  final profile = [
    "assets/kyli.png",
    "assets/leo.jpg",
    "assets/panther.jpg",
    "assets/rock.jpg",
    "assets/zendaya.jpg",
    "assets/millie.jpg",
    "assets/virat.jpg",
    "assets/yash.jpg",
    "assets/wolvarine.jpg",
    "assets/west.jpg"
  ];
  final time = [
    "11:21 PM",
    "02:45 AM",
    "03:55 PM",
    "Dec 24",
    "Oct 17",
    "11:15 AM",
    "Jun 15",
    "02:45 AM",
    "03:55 PM",
    "02:45 AM",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: false,
            tileColor: Colors.blueGrey.shade900,
            title: Text(
              name[index],
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: Text(
              chat[index],
              style: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(profile[index]),
              radius: 30.0,
            ),
            trailing: Text(
              time[index],
              style: const TextStyle(color: Colors.white60),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatPage(
                            image: profile[index],
                            name: name[index],
                          )));
            },
          );
        });
  }
}
