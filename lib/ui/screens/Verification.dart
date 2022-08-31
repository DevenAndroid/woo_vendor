import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/screens/app_routes/app_routes.dart';
import 'package:woo_vendor/ui/widgets/custom_button.dart';
import 'package:woo_vendor/ui/widgets/custom_container.dart';
import 'package:woo_vendor/ui/widgets/custom_text_field.dart';

import '../../resources/theme/theme.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formKey = GlobalKey<FormState>();

  String radioValue = "yes";
  String radioValue2 = "Aadhaar card";

  final _dateController = TextEditingController();
  final _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .23,
                    width: MediaQuery.of(context).size.width,
                    color: AppTheme.orangeColor,
                    child: const Center(
                        child: Text(
                      'LOGO',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 30),
                    )),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 140,
              bottom: 0,
              right: 0,
              left: 0,
              child: SingleChildScrollView(
                child: Container(
                  // padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.all(20),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Verification',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.blackColor),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          width: 30,
                          child: Divider(
                            height: 2,
                            thickness: 3,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "FSSAI Details",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppTheme.whiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(children: [
                            Row(
                              children: const [
                                Text(
                                  "License",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RadioListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,

                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              // contentPadding : EdgeInsetsGeometry  ,
                              title: const Text("Yes ! have a license"),
                              value: "Yes",
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              title: const Text("No ! don't have a license"),
                              value: "No",
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = value.toString();
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppTheme.textColor.withOpacity(0.5)),
                                color: AppTheme.whiteColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Expire date of FSSAI",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    controller: _dateController,
                                    hintText: "DD/MM/YYYY",
                                    prefixChildIcon: const Icon(
                                      Icons.calendar_month_outlined,
                                      color: AppTheme.orangeColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Expire date of FSSAI",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    controller: _numberController,
                                    hintText: "DD/MM/YYYY",
                                    prefixChildIcon: const Icon(
                                      Icons.calendar_month_outlined,
                                      color: AppTheme.orangeColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "KYC Details",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppTheme.whiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(children: [
                            Row(
                              children: const [
                                Text(
                                  "License",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RadioListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              title: const Text("Aadhaar card"),
                              value: "Aadhaar card",
                              groupValue: radioValue2,
                              onChanged: (value) {
                                setState(() {
                                  radioValue2 = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              title: const Text("Passport"),
                              value: "Passport",
                              groupValue: radioValue2,
                              onChanged: (value) {
                                setState(() {
                                  radioValue2 = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              title: const Text("Driving License"),
                              value: "Driving License",
                              groupValue: radioValue2,
                              onChanged: (value) {
                                setState(() {
                                  radioValue2 = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              title: const Text("Passport"),
                              value: "Passport",
                              groupValue: radioValue2,
                              onChanged: (value) {
                                setState(() {
                                  radioValue2 = value.toString();
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomContainer(
                              child: Image.asset("assets/images/add.png"),
                              border: Border.all(
                                  color: AppTheme.textColor.withOpacity(0.50)),
                            ),const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "GST Certification ",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomContainer(child: Image.asset("assets/images/add.png")),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              height: 40,
                              width: 110,
                              primaryColor: AppTheme.orangeColor,
                              buttonTextColor: AppTheme.whiteColor,
                              buttonText: "Submit",
                              onPress: (){
                                Get.toNamed(MyRoutes.agreementPolicyScreen);
                              },
                            )
                          ]),
                        ),
                      ])),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
