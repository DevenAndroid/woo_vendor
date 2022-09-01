import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/resources/theme/theme.dart';

import '../widgets/custom_appbar.dart';
import 'app_routes/app_routes.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  var items = [
    "https://img.freepik.com/free-photo/sambar-rice-sambar-sadam-one-pot-meal-from-south-indian-state-tamil-nadu-kerala_466689-75220.jpg?w=740&t=st=1661928577~exp=1661929177~hmac=9fa362e70586ca687ae6f821aecee0d2eff6263f24c259b738a7f490a4298a75",
    "https://img.freepik.com/free-photo/sambar-rice-sambar-sadam-one-pot-meal-from-south-indian-state-tamil-nadu-kerala_466689-75220.jpg?w=740&t=st=1661928577~exp=1661929177~hmac=9fa362e70586ca687ae6f821aecee0d2eff6263f24c259b738a7f490a4298a75",
    "https://img.freepik.com/free-photo/sambar-rice-sambar-sadam-one-pot-meal-from-south-indian-state-tamil-nadu-kerala_466689-75220.jpg?w=740&t=st=1661928577~exp=1661929177~hmac=9fa362e70586ca687ae6f821aecee0d2eff6263f24c259b738a7f490a4298a75",


  ];

  RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child:  CustomAppbar(
              data: 'Offer',
              leading: InkWell(
                  onTap: ()=> Get.toNamed(MyRoutes.profileScreen),
                  child: const Icon(Icons.menu)),
              actions: [Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: InkWell(
                    onTap: ()=> Get.toNamed(MyRoutes.createOfferScreen),
                    child: const Icon(Icons.add)),
              ),],
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Today's offer",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.orangeColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .1,
                          child: const Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 1.2,
                      autoPlay: true,
                      height: MediaQuery.of(context).size.height * .22,
                      onPageChanged: (value, value1) {
                        currentIndex.value = value;
                        // setState((){});
                        print(value);
                      }),
                  items: List.generate(
                      items.length,
                      (index) => Container(
                            height: MediaQuery.of(context).size.height * .13,
                            width: MediaQuery.of(context).size.width*.9,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(const Radius.circular(20)),
                                image: DecorationImage(
                              image: NetworkImage(items[index].toString()),
                              fit: BoxFit.fill,
                            )),
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(() {
                  return DotsIndicator(
                    dotsCount: items.length,
                    position: currentIndex.value.toDouble(),
                    decorator: const DotsDecorator(
                      color: Color(0xffFFF2ED), // Inactive color
                      activeColor: AppTheme.orangeColor,
                    ),
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .09,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1565060299509-453c4f3bc905?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Hot Dog",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50% off",
                                style: TextStyle(
                                    fontSize: 14, color: AppTheme.orangeColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                "Available",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7 days",
                                style: TextStyle(
                                    fontSize: 12, color: AppTheme.orangeColor),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height* .09,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1565060299509-453c4f3bc905?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Hot Dog",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50% off",
                                style: TextStyle(
                                    fontSize: 14, color: AppTheme.orangeColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                "Available",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7 days",
                                style: TextStyle(
                                    fontSize: 12, color: AppTheme.orangeColor),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
