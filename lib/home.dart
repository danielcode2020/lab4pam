import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'controller/HomeController.dart';
import 'widget/advisable.dart';
import 'widget/articles.dart';
import 'widget/header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  void initState() {
    //Get.lazyPut(() => HomeController());
    Get.put(HomeController());
    HomeController controller = Get.find();
    controller.readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: SizedBox(
            //width: 77,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                   Text(
                    'Featured',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff2C3A4B),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Source Sans Pro',

                  ),
                ),
                  Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFF6861),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),

              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Obx(
              () => Container(
                height: 252,
                width: 450,
                  child: ListView.builder(
                      itemCount: controller.featured.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Advisable(
                          featured: controller.featured[index],
                        );
                      }),

              ),
            ),
          ),

             Container(
              width: 358,
              height: 24,
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  Header(),
                ],

            ),
          ),



           Obx(
              () =>  Container(
                  height: 381,
                  //width: 358,
                  child: ListView.builder(
                      itemCount: controller.news.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Articles(
                          news: controller.news[index],
                        );
                      }),
                ),
              ),


        ],
      ),
    );
  }
}
