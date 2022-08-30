import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class AccountDetailScreen extends StatefulWidget {
  const AccountDetailScreen({Key? key}) : super(key: key);

  @override
  State<AccountDetailScreen> createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Account Detail',
              leading: Icon(Icons.arrow_back_ios),
            )),
        body: SingleChildScrollView(
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
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  CustomButton(
                    buttonText: "  Submit  ",
                    buttonTextColor: AppTheme.whiteColor,
                    primaryColor: AppTheme.orangeColor,
                    onPress: () {},
                  )
                ],
              )),
        ));
  }
}
