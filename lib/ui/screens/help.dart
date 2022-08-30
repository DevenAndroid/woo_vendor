import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Help',
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
                  //   child: Column(
                  //     children: <Widget>[
                  //       CustomTextField(
                  //           controller: _numberController,
                  //           hintText: "GST NO",
                  //           prefixChildIcon:
                  //           Image.asset("assets/images/percent.png")),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 150,
                  // ),
                  // CustomButton(
                  //   buttonText: "  Submit  ",
                  //   buttonTextColor: AppTheme.whiteColor,
                  //   primaryColor: AppTheme.orangeColor,
                  //   onPress: () {},
                  )
                ],
              )),
        ));
  }
}
