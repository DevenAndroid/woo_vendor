import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:woo_vendor/resources/theme/theme.dart';

import '../widgets/custom_appbar.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  var items = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Offer',
              leading: Icon(Icons.arrow_back_ios),
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
                        Text(
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
                    viewportFraction: 1,
                    autoPlay: true,
                    height: MediaQuery.of(context).size.height * .3,
                  ),
                  items: [
                    1,
                    2,
                    3,
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * .13,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              "assets/images/slider_image.png",
                            ),
                            fit: BoxFit.cover,
                          )),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                //   DotsIndicator(
                //     dotsCount: 3,
                //     position: items.length,
                //     decorator: DotsDecorator(
                //       color: Color(0xffFFF2ED), // Inactive color
                //       activeColor: AppTheme.orangeColor,
                //     ),
                //   );
                //   const SizedBox(
                //   height: 20,
                // ),
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
                        height: MediaQuery.of(context).size.height * .1,
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
                  height: 15,
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
                        height: MediaQuery.of(context).size.height * .1,
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
