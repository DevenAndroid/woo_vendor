import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class GSTDetailScreen extends StatefulWidget {
  const GSTDetailScreen({Key? key}) : super(key: key);

  @override
  State<GSTDetailScreen> createState() => _GSTDetailScreenState();
}

class _GSTDetailScreenState extends State<GSTDetailScreen> {
  final _numberController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: CustomAppbar(
              data: 'GST detail',
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
                              controller: _numberController,
                              hintText: "GST NO",
                              prefixChildIcon:
                                  Image.asset("assets/images/percent.png"),
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a number'),
                              MinLengthValidator(10, errorText: 'Minimum 10 numbers required'),
                              MaxLengthValidator(15, errorText: 'Maximum numbers length is 15')
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

                      }
                    ,)
                  ],
                )),
          ),
        ));
  }
}
