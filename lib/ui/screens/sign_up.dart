import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool eyeHide = true;

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
            top: MediaQuery.of(context).size.height*.16,
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
                        'Sign up',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 40,
                        child: Divider(
                          height: 2,
                          thickness: 3,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Hello !',
                        style: TextStyle(
                            fontSize: 18, color: AppTheme.orangeColor),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Sign up',
                            style: TextStyle( fontSize: 13,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '  to get started.',
                            style: TextStyle(color: AppTheme.textColor, fontSize: 13,),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [Text("User Name",style: TextStyle(fontSize: 16,),)],
                      ),
                      const SizedBox(
                        height: 10,
                      ),


                      CustomTextField(
                        controller: _nameController,
                        hintText: "Enter your name",
                        prefixChildIcon: const Icon(
                          Icons.person_outline_rounded,
                          color: AppTheme.orangeColor,
                        ),
                        keyboardType: TextInputType.text,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter a  name'),
                          MinLengthValidator(3, errorText: "Minimum length is 3"),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [Text("Mobile Number",style: TextStyle(fontSize: 16,),)],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      CustomTextField(

                        controller: _numberController,
                        hintText: "Enter your number",
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
                      Row(
                        children: const [Text("Email ID",style: TextStyle(fontSize: 16,),)],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      CustomTextField(
                        controller: _emailController,
                        hintText: "Enter your Email",
                        prefixChildIcon: const Icon(
                          Icons.mail_outline,
                          color: AppTheme.orangeColor,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter a Email'),
                          EmailValidator(errorText: 'Enter a valid Email'),

                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [Text("Password",style: TextStyle(fontSize: 16,),)],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      CustomTextField(
                        obscureText: eyeHide,
                        controller: _passwordController,
                        hintText: "Enter your Password",
                        prefixChildIcon: const Icon(
                          Icons.lock_outline,
                          color: AppTheme.orangeColor,
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                eyeHide = !eyeHide;
                              });
                            },
                            child: eyeHide == true
                                ? const  Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.remove_red_eye_outlined)
                        ),
                        keyboardType: TextInputType.text,
                        validator:MultiValidator([
                          RequiredValidator(errorText: 'Enter a  password'),
                          MinLengthValidator(8, errorText: "Minimum length is 8")
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      CustomButton(
                        height: 40,
                        width: 120,
                        primaryColor: AppTheme.orangeColor,
                        buttonTextColor: AppTheme.whiteColor,
                        buttonText: "Got OTP",
                        onPress: () {
                          if (_formKey.currentState!.validate()) {
                            Get.toNamed(MyRoutes.createRestaurantScreen);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Divider(
                              thickness: 2,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Or",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Divider(
                              thickness: 2,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/images/fb.png",
                                fit: BoxFit.cover),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/images/google.png",
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Don't have an account?",
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Text(
                            ' Sign up',
                            style: TextStyle(
                              color: AppTheme.orangeColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
