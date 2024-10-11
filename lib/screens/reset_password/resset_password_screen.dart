// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_theme.dart';

class RessetPassordSreen extends StatefulWidget {
  const RessetPassordSreen({super.key});

  @override
  State<RessetPassordSreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<RessetPassordSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image(
                image: AssetImage('assets/backgrounds/sinin_top_left.png')),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image(
                image: AssetImage('assets/backgrounds/singin_top_right.png')),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image(
                image: AssetImage('assets/backgrounds/sinin_center_right.png')),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image(
                image: AssetImage('assets/backgrounds/singin_bottom_left.png')),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
                image:
                    AssetImage('assets/backgrounds/singin_bottom_right.png')),
          ),
          LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 54,
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 16),
                          Icon(Icons.arrow_back),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: const [
                          SizedBox(width: 16),
                          Text(
                            'Reset Password',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: const [
                          SizedBox(width: 16),
                          Text(
                            'Please enter your email address to\nrequest a password reset',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              prefixIcon: Image(
                                  image: AssetImage('assets/icones/mail.png')),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              hintText: 'Exemple@gmail.com'),
                        ),
                      ),
                      SizedBox(
                        height: 44,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 66),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: MyTheme.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'SEND',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: MyTheme.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Image(
                                    image: AssetImage(
                                        'assets/icones/right_arrow.png')),
                                SizedBox(
                                  width: 12,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
