import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/widgets/custom_container.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import 'app_routes/app_routes.dart';

class FoodLicenceScreen extends StatefulWidget {
  const FoodLicenceScreen({Key? key}) : super(key: key);

  @override
  State<FoodLicenceScreen> createState() => _FoodLicenceScreenState();
}

class _FoodLicenceScreenState extends State<FoodLicenceScreen> {
  FilePickerResult? uploadDocument;
  String? uploadDocumentFileName;
  PlatformFile? uploadDocumentPickedFile;
  bool uploadDocumentLoading = false;
  File? uploadDocumentDisplay;
  String? sendingDocumentInAPI;

  void uploadDocumentFunction() async {
    try {
      setState(() {
        uploadDocumentLoading = true;
      });
      uploadDocument = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowMultiple: false,
          allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf', 'docx', 'doc']);
      if (uploadDocument != null) {
        uploadDocumentFileName = uploadDocument!.files.first.name;
        uploadDocumentPickedFile = uploadDocument!.files.first;
        uploadDocumentDisplay = File(uploadDocumentPickedFile!.path.toString());

        List<int> uploadcertificateImage64 =
            uploadDocumentDisplay!.readAsBytesSync();

        sendingDocumentInAPI = base64Encode(uploadcertificateImage64);

        print("Base 64 image===> $sendingDocumentInAPI");

        if (kDebugMode) {
          print("File name $uploadDocumentFileName");
        }
      }

      setState(() {
        uploadDocumentLoading = false;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: CustomAppbar(
              data: 'Food Licence',
              leading: InkWell(
                  onTap: () => Get.toNamed(MyRoutes.profileScreen),
                  child: const Icon(Icons.arrow_back_ios)),
            )),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  // Stack(children: [
                  //   CustomContainer(
                  //       child: Image.asset("assets/images/add.png")),
                  //   Positioned(
                  //       top: 10,
                  //       right: 10,
                  //       child: Image.asset("assets/images/edit.png"))
                  // ]),

                  InkWell(
                      onTap: () {
                        uploadDocumentFunction();
                      },
                      child: uploadDocument == null
                          ? Stack(
                              children: [
                                CustomContainer(
                                    child:
                                        Image.asset("assets/images/add.png")),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child:
                                        Image.asset("assets/images/edit.png"))
                              ],
                            )
                          : Stack(children: [
                              CustomContainer(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: FileImage(
                                            uploadDocumentDisplay!,
                                          ),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        uploadDocumentPickedFile = null;
                                        uploadDocumentDisplay = null;
                                        uploadDocument = null;
                                        print(uploadDocumentFileName);
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.6),
                                        shape: BoxShape.circle,
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon(
                                        Icons.clear,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            ])),
                  const SizedBox(
                    height: 150,
                  ),
                  CustomButton(
                    height: 40,
                    width: 120,
                    buttonText: "Submit",
                    buttonTextColor: AppTheme.whiteColor,
                    primaryColor: AppTheme.orangeColor,
                    onPress: () {
                      if (uploadDocument != null) {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        Get.toNamed(MyRoutes.profileScreen);
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Processing Data")));
                      }
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter the documents")));

                    },
                  )
                ],
              )),
        ));
  }
}
