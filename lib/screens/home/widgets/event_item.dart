import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/event_model.dart';
import 'package:flutter_application_1/screens/my_theme.dart';

class EventItem extends StatelessWidget {
  final EventModel eventModel;
  const EventItem({super.key, required this.eventModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Image(image: AssetImage(eventModel.image))),
              Container(
                decoration: BoxDecoration(
                  color: MyTheme.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                margin: const EdgeInsets.only(left: 8, top: 8),
                padding: const EdgeInsets.all(6),
                child: const Column(
                  children: [
                    Text(
                      '11',
                      style: TextStyle(
                          color: Color.fromRGBO(240, 99, 90, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      'JUIN',
                      style: TextStyle(
                          color: Color.fromRGBO(240, 99, 90, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 8,
                child: Container(
                    decoration: BoxDecoration(
                      color: MyTheme.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    margin: const EdgeInsets.only(left: 8, top: 8),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.bookmark,
                      color: Color.fromRGBO(240, 99, 90, 1),
                    )),
              ),
            ],
          ),
          Text(
            'juin 11,2024',
            style: TextStyle(color: MyTheme.grey),
          ),
          Text(
            eventModel.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
                    child: CircleAvatar(
                      child: Text(
                        eventModel.joined,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              const Text('Joined',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
