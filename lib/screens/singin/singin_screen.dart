// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_theme.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
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
                        height: 50,
                      ),
                      Image(image: AssetImage('assets/images/event_logo.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 16),
                          Text(
                            'Connexion',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
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
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: const InputDecoration(
                              prefixIcon: Image(
                                  image:
                                      AssetImage('assets/icones/password.png')),
                              suffixIcon: Image(
                                  image: AssetImage(
                                      'assets/icones/eye_close.png')),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              hintText: 'Votre mot de passe'),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: const [Text('Connexion')],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        margin: EdgeInsets.symmetric(horizontal: 66),
                        decoration: BoxDecoration(
                            color: MyTheme.primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'SE CONNECTER',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: MyTheme.white, fontSize: 16),
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Ou',
                        style: TextStyle(fontSize: 18, color: MyTheme.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 66),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(237, 123, 34, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                                image: AssetImage('assets/icones/google.png')),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Conexion avec google',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Vous n’avez pas de compte ?',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'S\'inscrire',
                            style: TextStyle(
                                color: Color.fromRGBO(237, 123, 34, 1),
                                fontSize: 16),
                          )
                        ],
                      )
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
