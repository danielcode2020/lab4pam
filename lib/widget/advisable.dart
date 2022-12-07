
import 'package:flutter/material.dart';

import '../modules/featured.dart';
class Advisable extends StatelessWidget {
  final Featured featured;
  const Advisable({super.key, required this.featured});

  @override
  Widget build(BuildContext context) {
    return Center(

        child: Stack(
            children: [
                 Padding(
                   padding:  EdgeInsets.only(right: 16,left: 16),
                   child: Container(
                    width: 310,
                    height: 252,
                   decoration:  BoxDecoration(
                     image:  DecorationImage(
                       fit: BoxFit.fitHeight,
                       image: NetworkImage(featured.cover),
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(24),
                     ),
                    //color: Colors.red,
                ),
              ),
                 ),

               Positioned(
                  left: 12,
                  bottom: 24,
                  top: 156,
                  right: 12,

                    child: Column(
                      children:[

                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          featured.title,
                          overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                        ),
                      ),


                           Padding(
                             padding: const EdgeInsets.fromLTRB(12, 0, 193, 0),
                             child: TextButton(

                              onPressed: () { },
                              child: const Text('Read Now',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                               style: TextButton.styleFrom(
                                 backgroundColor: Color(0xffFE837D),
                                   shape: StadiumBorder()
                               ),

                        ),
                           ),
                      ]
                    ),

              ),



            ],
        ),

    );
  }
}
