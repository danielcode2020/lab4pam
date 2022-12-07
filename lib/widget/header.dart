import 'package:flutter/material.dart';
class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Center(


    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        width: 338,
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [


                     Text(
                      'News',
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Source Sans Pro',
                        color: Color(0xff2C3A4B),
                      ),
                    ),




                      Text(
                        'See all',
                        //textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Source Sans Pro',
                          color: Color(0xffFF6861),
                        ),
                ),


            ],
          ),
      ),
    ),
    );
  }
}
