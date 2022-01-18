//ignore_for_file:prefer_const_literals_to_create_immutables,prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:telegram/home_page.dart';

class ChatPage extends StatefulWidget {
  final String? image, name, chatt;
  const ChatPage(
      {Key? key,
      @required this.image,
      @required this.name,
      @required this.chatt})
      : super(key: key);

  @override
  _ChatPageState createState() {
    // ignore: no_logic_in_create_state
    return _ChatPageState(image, name, chatt);
  }
}

class _ChatPageState extends State<ChatPage> {
  String? image, name, chatt;
  _ChatPageState(this.image, this.name, this.chatt);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blueGrey.shade800,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(image!),
                  radius: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Last seen 1 hour ago",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      size: 30.0,
                      color: Colors.white,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 30.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bg1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade800,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      chatt!,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 19.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade800,
                filled: true,
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.emoji_emotions_outlined)),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.mic_none)),
                hintText: "Message",
              ),
            )
          ],
        ),
      ),
    );
  }
}
