import 'package:flutter/material.dart';
import 'package:woo_vendor/ui/widgets/custom_appbar.dart';

import '../widgets/custom_button.dart';

class AgreementPolicyScreen extends StatefulWidget {
  const AgreementPolicyScreen({Key? key}) : super(key: key);

  @override
  State<AgreementPolicyScreen> createState() => _AgreementPolicyScreenState();
}

class _AgreementPolicyScreenState extends State<AgreementPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Agreement policy',
              leading: Icon(Icons.arrow_back_ios),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text("AgreementPolicyScreen",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 50,
                  child: Divider(
                    height: 2,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/agreement_policy.png")),
                const SizedBox(
                  height: 50,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Lorem Ipsum Dolor Sit Amet,Consectetur Adipiscing Elit,",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    height: 50,
                    width: 150,
                    buttonText: " Continue ",
                    onPress: () {
                      // Get.toNamed(MyRoutes.chooseVehicleScreen);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
