
import 'package:flutter/material.dart';
import '../modules/news.dart';

class Articles extends StatelessWidget {
  const Articles({super.key, required this.news });
  final News news;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(16, 12, 16, 12),
        child: Stack(
          children: [
              Container(
                height: 156,
                //width: 338,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  //color: Colors.green,
                  color:  Color(0xffEBEEF2),
                ),
              ),


             // right: 208,

               SizedBox(
                width: 90,
                height: 156,
                child:  DecoratedBox(
                  decoration:  BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(16),
                     bottomLeft: Radius.circular(16),
                   ),
                    image:  DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(news.cover),
                    ),
                    //color: Colors.red,
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.fromLTRB(134, 25, 0, 0),
              child: Container(
                child: Row(
                  children: [

                    SizedBox(
                      height: 44,
                      width: 180,
                      child: Text(
                        news.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(135, 84, 0, 0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding:  const EdgeInsets.only(right: 8),
                      child: SizedBox(
                        width: 16,
                        height: 16,
                        child:  DecoratedBox(
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image:  DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(news.portal.logo),
                            ),
                            //color: Colors.blue,
                          ),
                        ),
                      ),
                    ),

                    Text(
                      news.portal.title,
                      style: const TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2C3A4B),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250, 84, 0, 0),
              child: Container(
                child: Row(
                  children: [

                     Container(


                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1.0, color: const Color(0xffFE837D)),
                        color: Color(0xffFfffff),
                      ),
                      child: Row(
                        children: [

                            SizedBox(
                              height: 16,
                              width: 55,

                              child: Text(
                                news.category,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFF6861),
                                ),
                              ),

                            ),

                        ],
                      ),


                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(129, 118, 0, 0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: const SizedBox(

                        child: Icon(

                          Icons.recommend_outlined,
                          color: Color(0xffFF6861),
                          size: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          '${news.likes}K',
                          style: const TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2C3A4B),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(220, 118, 0, 0),
              child: Container(
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SizedBox(

                        child: Icon(
                          Icons.comment_bank,
                          color: Color(0xffFF6861),
                          size: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "${news.comments}K",
                          style: const TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2C3A4B),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(335, 118, 0, 0),
              child: SizedBox(
                child: Icon(
                  Icons.bookmark_border,
                  color: Color(0xffFF6861),
                  size: 20.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
