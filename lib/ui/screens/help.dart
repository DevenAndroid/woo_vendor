import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final _dataController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child:  CustomAppbar(
              data: 'Help',
              leading: InkWell(
                  onTap: ()=> Get.toNamed(MyRoutes.profileScreen),
                  child: Icon(Icons.arrow_back_ios)),
            )),
        body: Form(
          key: _formkey,
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
                            offset:
                                const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          CustomTextField(
                              controller: _dataController,
                              hintText: "Type something..",
                              prefixChildIcon: const Icon(
                                Icons.help_outline,
                                color: AppTheme.orangeColor,
                              ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a some text'),
                              MinLengthValidator(4, errorText: "Minimum length is 3"),
                            ]),
                          ),
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
                        onPress: (){
                          if(_formkey.currentState!.validate()){
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            Get.toNamed(MyRoutes.profileScreen);
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Processing Data")));
                          }
                        })
                  ],
                )),
          ),
        ));
  }
}
