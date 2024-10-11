import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_theme.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Image(
                image: AssetImage('assets/backgrounds/sinin_top_left.png')),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Image(
                image: AssetImage('assets/backgrounds/singin_top_right.png')),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Image(
                image: AssetImage('assets/backgrounds/sinin_center_right.png')),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Image(
                image: AssetImage('assets/backgrounds/singin_bottom_left.png')),
          ),
          const Align(
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
                      const SizedBox(
                        height: 54,
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 16),
                          Icon(Icons.arrow_back),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          SizedBox(width: 16),
                          Text(
                            'Verification',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          SizedBox(width: 16),
                          Text(
                            'We’ve send you the verification\ncode on +1 2620 0323 7631',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: false, signed: false),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    hintText: '__'),
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: false, signed: false),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    hintText: '__'),
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: false, signed: false),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    hintText: '__'),
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: false, signed: false),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    hintText: '__'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 44,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 66),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: MyTheme.primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'CONTINNUE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: MyTheme.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Image(
                                    image: AssetImage(
                                        'assets/icones/right_arrow.png')),
                                const SizedBox(
                                  width: 12,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Re-send code in',
                            style: TextStyle(fontSize: 18, color: MyTheme.grey),
                          ),
                          Text(
                            ' 0:20',
                            style: TextStyle(
                                fontSize: 18, color: MyTheme.primaryColor),
                          ),
                        ],
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
