import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/widgets/custom_text_field.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import 'app_routes/app_routes.dart';

class RestaurantDetailScreen extends StatefulWidget {
  const RestaurantDetailScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _openTimeController = TextEditingController();
  final _closeTimeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: CustomAppbar(
              data: 'Restaurant Detail',
              leading: InkWell(
                  onTap: () => Get.toNamed(MyRoutes.profileScreen),
                  child: const Icon(Icons.arrow_back_ios)),
            )),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
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
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          CustomTextField(
                            controller: _nameController,
                            hintText: "Restaurant name",
                            prefixChildIcon: const Icon(
                              Icons.restaurant_menu_outlined,
                              color: AppTheme.orangeColor,
                            ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Enter name"),
                              MinLengthValidator(3,
                                  errorText: " Minimum length is 3")
                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _addressController,
                            hintText: "Restaurant address",
                            prefixChildIcon: const Icon(
                              Icons.location_on_outlined,
                              color: AppTheme.orangeColor,
                            ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a address'),
                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                              controller: _openTimeController,
                              hintText: "Open time",
                              prefixChildIcon: const Icon(
                                Icons.watch_later_outlined,
                                color: AppTheme.orangeColor,
                              ),
                              keyboardType: TextInputType.datetime,
                              validator: MultiValidator([
                                RequiredValidator(errorText: 'Enter time'),
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _closeTimeController,
                            hintText: "Closed time",
                            prefixChildIcon: const Icon(
                              Icons.watch_later_outlined,
                              color: AppTheme.orangeColor,
                            ),
                            keyboardType: TextInputType.datetime,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter time'),
                            ]),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    CustomButton(
                        height: 40,
                        width: 120,
                        buttonText: "Submit",
                        buttonTextColor: AppTheme.whiteColor,
                        primaryColor: AppTheme.orangeColor,
                        onPress: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          if (_formKey.currentState!.validate()) {
                            Get.toNamed(MyRoutes.profileScreen);
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Processing Data")));
                          }
                        })
                  ],
                )),
          ),
        ));
  }
}
