import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/event_model.dart';
import 'package:flutter_application_1/screens/home/widgets/popular_event_item.dart';
import 'widgets/event_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final eventList = [
  EventModel(
    image: 'assets/images/upcoming1.png',
    title: 'Conferance sur l\'IA',
    joined: '+20',
  ),
  EventModel(
    image: 'assets/images/upcoming2.png',
    title: 'Formation',
    joined: '+25',
  ),
  EventModel(
    image: 'assets/images/upcoming3.png',
    title: 'Exposition de voiture',
    joined: '+45',
  ),
];

final popularEventList = [
  EventModel(
    image: 'assets/images/upcoming3.png',
    title: 'Exposition de voiture',
    joined: '+45',
  ),
  EventModel(
    image: 'assets/images/upcoming1.png',
    title: 'Conferance sur l\'IA',
    joined: '+20',
  ),
  EventModel(
    image: 'assets/images/upcoming2.png',
    title: 'Formation',
    joined: '+25',
  ),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /*Top container*/
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage('assets/icones/loupe.png')),
                Image(image: AssetImage('assets/images/profile.png')),
                Image(image: AssetImage('assets/icones/parametre.png')),
              ],
            ),
          ),

          /*Events*/

          Expanded(
            child: ListView(
              children: [
                /*evenement a venir*/
                const Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Evenement a venir',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ],
                ),

                /*Evenement a venir imtems*/

                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      final eventModel = eventList[index];
                      return EventItem(eventModel: eventModel);
                    },
                    itemCount: eventList.length,
                  ),
                ),

                /*Popular event*/

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Event',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      Text(
                        'SEE ALL',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),

                /*PopularItems*/

                const PopularEventItem(),
                const PopularEventItem(),
                const PopularEventItem()
              ],
            ),
          ),
        ],
      ),

      /*BottomNavigationBar*/

      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/icones/explorer.png')),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Decouvrir',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
