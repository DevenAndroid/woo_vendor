import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/resources/theme/theme.dart';
import 'package:woo_vendor/ui/screens/app_routes/app_routes.dart';

import '../widgets/custom_appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child:  CustomAppbar(
              data: 'Notification',
              leading: InkWell(
                onTap: ()=> Get.toNamed(MyRoutes.bottomNavBarScreen),
                  child: Icon(Icons.arrow_back_ios)),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: const [
                        Text("Today",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 40,
                          child: Divider(
                            height: 2,
                            thickness: 3,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 13,
                      color: AppTheme.orangeColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/user1.png",
                        height: 50, width: 50, fit: BoxFit.cover),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Lesli Alexander",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff585858)),
                              ),
                              Text(
                                "1 hour ago",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "dolor sit amet, consectetur adipiscing...",
                            style: TextStyle(
                                fontSize: 14, color: AppTheme.textColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 13,
                      color: AppTheme.whiteColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/user1.png",
                        height: 50, width: 50, fit: BoxFit.cover),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Lesli Alexander",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff585858)),
                              ),
                              Text(
                                "1 hour ago",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "dolor sit amet, consectetur adipiscing...",
                            style: TextStyle(
                                fontSize: 14, color: AppTheme.textColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 13,
                      color: AppTheme.orangeColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/user1.png",
                        height: 50, width: 50, fit: BoxFit.cover),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Lesli Alexander",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff585858)),
                              ),
                              Text(
                                "1 hour ago",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "dolor sit amet, consectetur adipiscing...",
                            style: TextStyle(
                                fontSize: 14, color: AppTheme.textColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Yesterday",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 40,
                          child: Divider(
                            height: 2,
                            thickness: 3,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 13,
                              color: AppTheme.orangeColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/images/user1.png",
                                height: 50, width: 50, fit: BoxFit.cover),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Lesli Alexander",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff585858)),
                                      ),
                                      Text(
                                        "07/27/21",
                                        style: TextStyle(
                                            fontSize: 12, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "dolor sit amet, consectetur adipiscing...",
                                    style: TextStyle(
                                        fontSize: 14, color: AppTheme.textColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },

                )
              ],
            ),
          ),
        ));
  }
}
