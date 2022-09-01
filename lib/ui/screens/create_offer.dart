import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/screens/app_routes/app_routes.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class CreateOfferScreen extends StatefulWidget {
  const CreateOfferScreen({Key? key}) : super(key: key);

  @override
  State<CreateOfferScreen> createState() => _CreateOfferScreenState();
}

class _CreateOfferScreenState extends State<CreateOfferScreen> {


  final _discountController = TextEditingController();
  final _descriptionController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: CustomAppbar(
              data: 'Create Offer',
              leading: InkWell(
                  onTap: ()=> Get.toNamed(MyRoutes.offerScreen),
                  child: const Icon(Icons.arrow_back_ios)),
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * .25,
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
                  child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(20),
                      dashPattern: const [10, 10],
                      color: const Color(0xffC5C5C5),
                      strokeWidth: 2,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/upload.png"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Upload Template",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: MediaQuery.of(context).size.height * .25,
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
                  child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(20),
                      dashPattern: const [10, 10],
                      color: const Color(0xffC5C5C5),
                      strokeWidth: 2,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/upload.png"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Upload Food Image",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),


                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text("Discount",
                        style: TextStyle(
                          fontSize: 16,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: _discountController,
                  hintText: "50%",
                  prefixChildIcon: Image.asset("assets/images/percent.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text("Description",
                        style: TextStyle(
                          fontSize: 16,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.5, color: Colors.grey.shade300)),
                  ),
                  child: TextFormField(
                    controller: _descriptionController,
                    minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        fillColor: AppTheme.textBoxBackgroundColor,
                        filled: true,
                        hintText: "Lorem ipsum dolor sit amet, consectetur.",
                        labelStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: MediaQuery.of(context).size.width * 0.040,
                        ),
                        prefixIcon: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                width: 30,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                child: Image.asset(
                                    "assets/images/clipboard_text.png"),
                              ),
                            ),
                          ],
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: MediaQuery.of(context).size.width * 0.040,
                        ),
                        border: InputBorder.none,
                        focusColor: AppTheme.orangeColor,
                        hoverColor: AppTheme.orangeColor),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  height: 40,
                  width: 100,
                  buttonText: "Create ",
                  buttonTextColor: AppTheme.whiteColor,
                  primaryColor: AppTheme.orangeColor,
                  onPress: () {
                    Get.toNamed(MyRoutes.offerScreen);


                  },
                )

              ],
            ),
          ),
        ));
  }
}
