import 'package:catalogue_plante/main_second.dart';
import 'package:catalogue_plante/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'info1_page.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [

          Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Menthe.webp"),
              fit: BoxFit.cover,

            ),
          ),
        ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Vous trouverez ici une liste de différentes plante ainsi que les bientfaits qu'elles peuvent nous apporter dans notre quotidien",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,


                    ),
                    textAlign: TextAlign.center,
                  )
                  .animate()
                  .fadeIn(duration: 1500.ms) // Apparition douce
                  .moveY(begin: 20, end: 0, duration: 1000.ms),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
                        backgroundColor: MaterialStatePropertyAll(Colors.green),

                      ),

                      onPressed:() {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: ( _, __ ,___) => MainWrapper()
                            )
                        );
                      },

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Explorer les plante",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          )
                          .animate()
                          .fadeIn(duration: 1500.ms) // Apparition douce
                          .moveY(begin: 20, end: 0, duration: 1000.ms),
                          Icon(
                            Icons.arrow_forward,
                            size: 24,
                          )

                        ],
                      )

                  )
                      .animate()
                      .fadeIn(duration: 1500.ms) // Apparition douce
                      .moveY(begin: 20, end: 0, duration: 1000.ms),

                ],
              ),
            )
        ]
        ),
    );
  }
}