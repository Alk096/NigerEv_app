import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_theme.dart';

class PopularEventItem extends StatelessWidget {
  const PopularEventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: const Image(
              image: AssetImage('assets/images/upcoming3.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'jui 11,2024',
                  style: TextStyle(color: MyTheme.grey),
                ),
                const Text(
                  'popularEvent.title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Biggest Event in dhaka, join to\n see the excitment of the\nnew car guy',
                  style: TextStyle(color: MyTheme.grey),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_img1.png')),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile_img1.png')),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: const CircleAvatar(
                            child: Text(
                              '45',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text('Joined',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
