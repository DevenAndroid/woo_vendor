import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/screens/app_routes/app_routes.dart';

import '../../resources/theme/theme.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .11),
          child: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
            systemOverlayStyle: const SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: AppTheme.orangeColor,

              // Status bar brightness (optional)
              statusBarIconBrightness: Brightness.light,
              // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            backgroundColor: AppTheme.orangeColor,
            leading: InkWell(
              child: const Icon(Icons.arrow_back_ios),
              onTap: () {
                Get.toNamed(MyRoutes.bottomNavBarScreen);
              },
            ),
            title: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Image.asset("assets/images/user1.png")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "John  Smith",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              Image.asset("assets/images/video.png"),
              Image.asset("assets/images/call.png"),
            ],
          )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintText: "Type something",
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          focusedBorder: InputBorder.none,
                          prefixIcon: Container(
                            width: 30,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: AppTheme.orangeColor,
                              size: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: MediaQuery.of(context).size.width * 0.040,
                          ),
                          focusColor: AppTheme.orangeColor,
                          hoverColor: AppTheme.orangeColor),
                      keyboardType: TextInputType.text,
                      // controller: _numberController,
                      cursorColor: AppTheme.orangeColor,
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
                        child: Image.asset("assets/images/send.png")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
