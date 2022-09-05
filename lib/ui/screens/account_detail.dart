import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class AccountDetailScreen extends StatefulWidget {
  const AccountDetailScreen({Key? key}) : super(key: key);

  @override
  State<AccountDetailScreen> createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {


  bool eyeHide = true;


  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child:  CustomAppbar(
              data: 'Account Detail',
              leading: InkWell(
                  onTap: ()=> Get.toNamed(MyRoutes.profileScreen),
                  child: Icon(Icons.arrow_back_ios)),
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
                            offset:
                                const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          CustomTextField(
                            controller: _nameController,
                            hintText: "John Doe",
                            prefixChildIcon: const Icon(
                              Icons.person_outline_rounded,
                              color: AppTheme.orangeColor,
                            ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a  name'),
                              MinLengthValidator(3, errorText: "Minimum length is 3"),
                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _numberController,
                            hintText: "Enter your number ",
                            prefixChildIcon: const Icon(
                              Icons.phone,
                              color: AppTheme.orangeColor,
                            ),
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a number'),
                              MinLengthValidator(10, errorText: 'Minimum 10 numbers required'),
                              MaxLengthValidator(15, errorText: 'Maximum numbers length is 15')
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Verify Your Number",
                                style: TextStyle(color: AppTheme.orangeColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _emailController,
                            hintText: "jhondoe@gmail.com",
                            prefixChildIcon: const Icon(
                              Icons.email_outlined,
                              color: AppTheme.orangeColor,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Enter a Email'),
                              EmailValidator(errorText: 'Enter a valid Email'),

                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _passwordController,
                            hintText: "Enter yor password",
                            prefixChildIcon: const Icon(
                              Icons.lock_outline,
                              color: AppTheme.orangeColor,
                            ),
                            obscureText: eyeHide,
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    eyeHide = !eyeHide;
                                  });
                                },
                                child: eyeHide == true
                                    ? const  Icon(Icons.visibility_off_outlined,color: AppTheme.orangeColor,)
                                    : const Icon(Icons.remove_red_eye_outlined,color: AppTheme.orangeColor,)
                            ),
                            keyboardType: TextInputType.text,
                            validator:MultiValidator([
                              RequiredValidator(errorText: 'Enter a  password'),
                              MinLengthValidator(8, errorText: "Minimum length is 8")
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
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          Get.toNamed(MyRoutes.profileScreen);

                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Processing Data")));
                        }
                      })
                  ],
                )),
          ),
        ));
  }
}
