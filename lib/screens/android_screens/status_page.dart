import 'package:flutter/material.dart';


import '../../global.dart';

class StatusTabScreen extends StatefulWidget {
  const StatusTabScreen({Key? key}) : super(key: key);

  @override
  State<StatusTabScreen> createState() => _StatusTabScreenState();
}

class _StatusTabScreenState extends State<StatusTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context, i) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (i == 0)
                        ? Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.grey[300],
                                backgroundImage: Image.asset(
                                  Global.statusAndroid[i]["img"],
                                  fit: BoxFit.fill,
                                ).image,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${Global.statusAndroid[i]["name"]}',
                                    style: Global.nameStyle,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${Global.statusAndroid[i]["time"]}',
                                    style: Global.subNameStyle,
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 29,
                                    backgroundColor: Colors.green,
                                  ),
                                  const CircleAvatar(
                                    radius: 27,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.grey[300],
                                    backgroundImage: Image.asset(
                                      Global.statusAndroid[i]["img"],
                                      fit: BoxFit.fill,
                                    ).image,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${Global.statusAndroid[i]["name"]}',
                                    style: Global.nameStyle,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${Global.statusAndroid[i]["time"]}',
                                    style: Global.subNameStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ],
                ),
                (i == 0)
                    ? const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Recent updates',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          );
        },
        itemCount: Global.statusAndroid.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Global.appColor,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
