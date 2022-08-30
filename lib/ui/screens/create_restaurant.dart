import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/widgets/custom_container.dart';
import 'package:woo_vendor/ui/widgets/custom_text_field.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_button.dart';
import 'app_routes/app_routes.dart';

class CreateRestaurantScreen extends StatefulWidget {
  const CreateRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<CreateRestaurantScreen> createState() => _CreateRestaurantScreenState();
}

class _CreateRestaurantScreenState extends State<CreateRestaurantScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _numberController = TextEditingController();
  final _openTimeController = TextEditingController();
  final _closeTimeController = TextEditingController();

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
    }
  }

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
                  padding: const EdgeInsets.all(10),
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
                          'Create Your Restaurant',
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
                          width: 20,
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
                              "Restaurant Information",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: _nameController,
                          labelText: "Restaurant name",
                          prefixChildIcon: const Icon(
                            Icons.restaurant_menu_sharp,
                            color: AppTheme.orangeColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: _addressController,
                          labelText: "Restaurant address",
                          prefixChildIcon: const Icon(
                            Icons.location_on_outlined,
                            color: AppTheme.orangeColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: _numberController,
                          labelText: "Phone number",
                          prefixChildIcon: const Icon(
                            Icons.phone,
                            color: AppTheme.orangeColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Verify Your Number",
                              style: TextStyle(
                                  color: AppTheme.orangeColor, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Restaurants Time",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .4,
                              child: CustomTextField(
                                controller: _openTimeController,
                                labelText: "Open time",
                                prefixChildIcon: const Icon(
                                  Icons.phone,
                                  color: AppTheme.orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .4,
                              child: CustomTextField(
                                controller: _closeTimeController,
                                labelText: "Closed time",
                                prefixChildIcon: const Icon(
                                  Icons.phone,
                                  color: AppTheme.orangeColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Restaurant Type",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
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
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            // Initial Value
                            validator: (value) {
                              if (value == null) {
                                return 'Please select Job type';
                              }
                            },
                            decoration: InputDecoration(
                              hintText: "Family Style",
                              counterText: "",
                              filled: true,
                              fillColor: AppTheme.whiteColor,
                              focusColor: AppTheme.whiteColor,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppTheme.whiteColor,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppTheme.whiteColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppTheme.whiteColor, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: List.generate(
                                items.length,
                                (index) => DropdownMenuItem(
                                      value: items[index],
                                      child: Text(items[index].toString()),
                                    )),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (newValue) {},
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: const [
                            Text(
                              "Restaurant Type",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //
                        //   height: MediaQuery.of(context).size.height*.2,
                        //     width: MediaQuery.of(context).size.width ,
                        //     padding: const EdgeInsets.all(10),
                        //     decoration: BoxDecoration(
                        //         color: AppTheme.whiteColor,
                        //         borderRadius: BorderRadius.all(Radius.circular(20)
                        //         ,),
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: Colors.grey.withOpacity(0.2),
                        //           spreadRadius: 2,
                        //           blurRadius: 4,
                        //           offset:
                        //           Offset(0, 3), // changes position of shadow
                        //         ),
                        //       ],
                        //
                        //     ),
                        //
                        //   child: Image.asset("assets/images/add.png"),
                        //
                        //     ),
                        CustomContainer(
                            child: Image.asset("assets/images/add.png")),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Food Image",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomContainer(
                            child: Image.asset("assets/images/add.png")),

                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .06,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text(
                                "WhatsApp for general update",
                                style: TextStyle(
                                    fontSize: 14, color: AppTheme.blackColor),
                              ),
                              Switch(
                                activeColor: AppTheme.orangeColor,
                                value: isSwitched,
                                onChanged: toggleSwitch,
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                            primaryColor: AppTheme.orangeColor,
                            buttonTextColor: AppTheme.whiteColor,
                            buttonText: "Continue", onPress:(){
                              Get.toNamed(MyRoutes.verificationScreen);
                        }
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
