import 'package:flutter/material.dart';
import 'package:woo_vendor/ui/widgets/custom_text_field.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Profile',
              leading: Icon(Icons.arrow_back_ios),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              padding: const EdgeInsets.only(right: 10),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey.shade300)),
                              ),
                              child: Image.asset(
                                  "assets/images/clipboard_text.png"),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Restaurant detail",
                              style: TextStyle(
                                  fontSize: 14, color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              padding: const EdgeInsets.only(right: 10),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey.shade300)),
                              ),
                              child: Image.asset("assets/images/id.png"),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Owner detail",
                              style: TextStyle(
                                  fontSize: 14, color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              padding: const EdgeInsets.only(right: 10),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey.shade300)),
                              ),
                              child: const Icon(
                                Icons.perm_identity,
                                color: AppTheme.orangeColor,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Account detail",
                              style: TextStyle(
                                  fontSize: 14, color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 30,
                                padding: const EdgeInsets.only(right: 10),
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                child: const Icon(
                                  Icons.phone_android,
                                  color: AppTheme.orangeColor,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Food Licence",
                              style: TextStyle(
                                  fontSize: 14, color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              padding: const EdgeInsets.only(right: 10),
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey.shade300)),
                              ),
                              child: Image.asset("assets/images/gst.png"),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "GST detail",
                              style: TextStyle(
                                  fontSize: 14, color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(5),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 30,
                                padding: const EdgeInsets.only(right: 10),
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                child: const Icon(
                                  Icons.help_outline,
                                  color: AppTheme.orangeColor,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Help",
                              style: TextStyle(
                                  fontSize: 14, color: AppTheme.blackColor),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
