import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../global.dart';



class CupertinoChatsScreen extends StatefulWidget {
  const CupertinoChatsScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoChatsScreen> createState() => _CupertinoChatsScreenState();
}

class _CupertinoChatsScreenState extends State<CupertinoChatsScreen> {
  get cupertinoMainColor => null;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[50],
      navigationBar: CupertinoNavigationBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'Edit',
            style: Global.cupertinoBlueText,
          ),
        ),
        trailing: const Icon(
          CupertinoIcons.add,
          color: Colors.blue,
          size: 25,
        ),
        middle: const Text(
          'Chats',
          style: TextStyle(fontSize: 19),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.3)),
              height: MediaQuery.of(context).size.height * 0.75,
              child: ListView.separated(
                padding: const EdgeInsets.only(
                    right: 20, left: 15, top: 10, bottom: 50),
                itemBuilder: (context, i) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.grey[300],
                            backgroundImage: Image.asset(
                              Global.chatsAndroid[i]["img"],
                              fit: BoxFit.fill,
                            ).image,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${Global.chatsAndroid[i]["name"]}',
                                style: Global.cupertinoName,
                              ),
                              const SizedBox(height: 3),
                              Text(
                                '${Global.chatsIOS[i]["msg"]}',
                                style: Global.cupertinoTime,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '${Global.chatsIOS[i]["time"]}',
                            style: Global.cupertinoTime,
                          ),
                          Container(height: 20),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, i) {
                  return Divider(
                    color: Colors.grey.shade500,
                    height: 30,
                    indent: 60,
                  );
                },
                itemCount: Global.callsIOS.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
