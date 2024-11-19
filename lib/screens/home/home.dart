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

/*final bottomBarItemDataList = [
  BottomBarItemModel(
    image: 'assets/icones/explorer.png',
    title: 'Explore',
  ),
  BottomBarItemModel(
    image: 'assets/icones/location.png',
    title: 'Map',
  ),
  BottomBarItemModel(
    image: 'assets/icones/Notification.png',
    title: 'Notifications',
  ),
  BottomBarItemModel(
    image: 'assets/icones/User.png',
    title: 'Profile',
  ),
];*/

var bottomBarItemSelecdIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  void selectBottomBarItem(int index) {
    setState(() {
      bottomBarItemSelecdIndex = index;
    });
  }

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
                /*==============Publicite======================*/

                Container(
                  width: double.infinity,
                  height: 150,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(33, 150, 243, 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage('assets/pub/hands.png'))),
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

      /*bottomNavigationBar: BottomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomBarItem(
              imagePath: bottomBarItemDataList[0].image,
              title: bottomBarItemDataList[0].title,
              isSelected: bottomBarItemSelecdIndex == 0,
              onTap: () {
                selectBottomBarItem(0);
              },
            ),
            BottomBarItem(
              imagePath: bottomBarItemDataList[1].image,
              title: bottomBarItemDataList[1].title,
              isSelected: bottomBarItemSelecdIndex == 1,
              onTap: () {
                selectBottomBarItem(1);
              },
            ),
            BottomBarItem(
              imagePath: bottomBarItemDataList[2].image,
              title: bottomBarItemDataList[2].title,
              isSelected: bottomBarItemSelecdIndex == 2,
              onTap: () {
                selectBottomBarItem(2);
              },
            ),
            BottomBarItem(
              imagePath: bottomBarItemDataList[3].image,
              title: bottomBarItemDataList[3].title,
              isSelected: bottomBarItemSelecdIndex == 3,
              onTap: () {
                selectBottomBarItem(3);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Myprofile(),
                ));
              },
            ),
          ],
        ))*/
    );
  }
}
