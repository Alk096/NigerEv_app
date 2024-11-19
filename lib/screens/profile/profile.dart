import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/my_theme.dart';
import 'package:flutter_application_1/screens/profile/edit_profile.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: MyTheme.black, fontSize: 18),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: IconButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  icon: const Icon(Icons.arrow_back))),
        ),
        body: Column(
          children: [
            const SizedBox(height: 15),
            const SizedBox(
              height: 90,
              width: 90,
              child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/image_profile.png')),
            ),
            const SizedBox(height: 15),
            Text(
              'Brama',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.black),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text(
                      '350',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text('Followin'),
                  ],
                ),
                const SizedBox(width: 25),
                Container(
                  height: 40,
                  width: 1,
                  color: MyTheme.grey,
                ),
                const SizedBox(width: 25),
                const Column(
                  children: [
                    Text(
                      '346',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text('Followers'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ));
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: MyTheme.primaryColor, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage('assets/icones/edit.png'),
                      color: MyTheme.primaryColor,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: MyTheme.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
