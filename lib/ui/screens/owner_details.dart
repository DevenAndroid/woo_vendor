import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class OwnerDetailScreen extends StatefulWidget {
  const OwnerDetailScreen({Key? key}) : super(key: key);

  @override
  State<OwnerDetailScreen> createState() => _OwnerDetailScreenState();
}

class _OwnerDetailScreenState extends State<OwnerDetailScreen> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child:  CustomAppbar(
              data: 'Owner detail',
              leading: InkWell(
                  onTap: ()=> Get.toNamed(MyRoutes.profileScreen),
                  child: Icon(Icons.arrow_back_ios)),
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
                          hintText: "Owner name",
                          prefixChildIcon: const Icon(
                            Icons.restaurant_menu_outlined,
                            color: AppTheme.orangeColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          controller: _numberController,
                          hintText: "Owner mobile number",
                          prefixChildIcon: const Icon(
                            Icons.location_on_outlined,
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
                    height: 40,
                    width: 120,
                    buttonText: "Submit",
                    buttonTextColor: AppTheme.whiteColor,
                    primaryColor: AppTheme.orangeColor,
                    onPress: ()=> Get.toNamed(MyRoutes.profileScreen),)
                ],
              )),
        ));
  }
}
