import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:woo_vendor/icons.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .11),
          child: const CustomAppbar(
            data: 'Menu',
            leading: Icon(Icons.arrow_back_ios),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
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
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10),
                            hintText: "Search for Dishes",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Container(
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(color: Colors.grey.shade300),
                                ),
                              ),
                              child: Icon(
                                Icons.search,
                                color: AppTheme.orangeColor,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.040,
                            ),
                            focusColor: AppTheme.orangeColor,
                            hoverColor: AppTheme.orangeColor),
                        keyboardType: TextInputType.text,
                        // controller: _numberController,
                        cursorColor: AppTheme.orangeColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            primary: AppTheme.orangeColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        child: Image.asset("assets/images/plus.png")),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Slidable(
                          // Specify a key if the Slidable is dismissible.
                          key: const ValueKey(0),

                          // The end action pane is the one at the right or the bottom side.
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (value) {},
                                backgroundColor: Color(0xFFFFF2ED),
                                foregroundColor: AppTheme.orangeColor,
                                icon: MyFlutterApp.edit,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ],
                          ),

                          // The child of the Slidable is what the user sees when the
                          // component is not dragged.
                          child: Container(
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
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .11,
                                  width: MediaQuery.of(context).size.width * .2,
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
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Barbeque Nation",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppTheme.orangeColor),
                                          ),
                                          Text(
                                            "Not Available",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xffCE0404)),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Noodles",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "\$0.00",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff343536)),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              "Lorem ipsum dolor sit amet,wha is tthe  consectetur.",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
