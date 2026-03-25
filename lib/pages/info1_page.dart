import 'package:catalogue_plante/pages/info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PageAnonce extends StatelessWidget {
  const PageAnonce({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/images/im3.jpg"),
                 fit: BoxFit.cover,

               ),
            ),
        ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Découvrez les bienfaits des plantes",
                  style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                  textAlign: TextAlign.center,
                )
                    .animate()
                    .fadeIn(duration: 1500.ms) // Apparition douce
                    .moveY(begin: 20, end: 0, duration: 1000.ms), // Monte légèrement
                const Text("Catalogue de plante ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 1500.ms) // Apparition douce
                    .moveY(begin: 20, end: 0, duration: 1000.ms),
                Padding(padding: EdgeInsets.all(30)),

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: ( _, __ ,___) => EventPage()
                        )
                    );
                  },
                  child: Text("suivant",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),

                  ),
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
