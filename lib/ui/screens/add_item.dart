import 'package:flutter/material.dart';
import 'package:woo_vendor/ui/widgets/custom_text_field.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.whiteColor,
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Add Item',
              leading: Icon(Icons.arrow_back_ios),
            )),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1565060299509-453c4f3bc905?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80"))),
                        ),
                      ),
                      Positioned(
                          right: 120,
                          top: 10,
                          child: Image.asset("assets/images/edit2.png"))
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Item Name",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: _nameController,
                    hintText: "Item name",
                    prefixChildIcon: Image.asset("assets/images/money.png"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Item Description",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5, color: Colors.grey.shade300)),
                    ),
                    child: TextFormField(
                      controller: _descriptionController,
                      minLines: 4,
                      maxLines: 4,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          fillColor: AppTheme.textBoxBackgroundColor,
                          filled: true,
                          hintText: "Lorem ipsum dolor sit amet, consectetur.",
                          labelStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: MediaQuery.of(context).size.width * 0.040,
                          ),
                          prefixIcon: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Container(
                                  width: 30,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            color: Colors.grey.shade300)),
                                  ),
                                  child: Image.asset(
                                      "assets/images/clipboard_text.png"),
                                ),
                              ),
                            ],
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: MediaQuery.of(context).size.width * 0.040,
                          ),
                          border: InputBorder.none,
                          focusColor: AppTheme.orangeColor,
                          hoverColor: AppTheme.orangeColor),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Item Price",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: _nameController,
                    hintText: "Item price",
                    prefixChildIcon: Image.asset("assets/images/coin.png"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    height: 40,
                    width: 100,
                    buttonText: "Add",
                    buttonTextColor: AppTheme.whiteColor,
                    primaryColor: AppTheme.orangeColor,
                    onPress: () {},
                  )
                ],
              )),
        ));
  }
}
