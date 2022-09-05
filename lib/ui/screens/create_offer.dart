import 'dart:convert';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:woo_vendor/ui/screens/app_routes/app_routes.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class CreateOfferScreen extends StatefulWidget {
  const CreateOfferScreen({Key? key}) : super(key: key);

  @override
  State<CreateOfferScreen> createState() => _CreateOfferScreenState();
}

class _CreateOfferScreenState extends State<CreateOfferScreen> {
  final _discountController = TextEditingController();
  final _descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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

  FilePickerResult? uploadDocument1;
  String? uploadDocumentFileName1;
  PlatformFile? uploadDocumentPickedFile1;
  bool uploadDocumentLoading1 = false;
  File? uploadDocumentDisplay1;
  String? sendingDocumentInAPI1;

  void uploadDocumentFunction1() async {
    try {
      setState(() {
        uploadDocumentLoading1 = true;
      });
      uploadDocument1 = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowMultiple: false,
          allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf', 'docx', 'doc']);
      if (uploadDocument1 != null) {
        uploadDocumentFileName1 = uploadDocument1!.files.first.name;
        uploadDocumentPickedFile1 = uploadDocument1!.files.first;
        uploadDocumentDisplay1 =
            File(uploadDocumentPickedFile1!.path.toString());

        List<int> uploadcertificateImage64 =
            uploadDocumentDisplay1!.readAsBytesSync();

        sendingDocumentInAPI1 = base64Encode(uploadcertificateImage64);

        print("Base 64 image===> $sendingDocumentInAPI1");

        if (kDebugMode) {
          print("File name $uploadDocumentFileName1");
        }
      }

      setState(() {
        uploadDocumentLoading1 = false;
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
              data: 'Create Offer',
              leading: InkWell(
                  onTap: () => Get.toNamed(MyRoutes.offerScreen),
                  child: const Icon(Icons.arrow_back_ios)),
            )),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Today's offer",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.orangeColor),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .1,
                            child: const Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: MediaQuery.of(context).size.height * .25,
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
                    child: InkWell(
                      onTap: () {
                        uploadDocumentFunction();
                      },
                      child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(20),
                          dashPattern: const [10, 10],
                          color: const Color(0xffC5C5C5),
                          strokeWidth: 2,
                          child: Container(
                              margin: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: uploadDocument == null
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/upload.png"),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Upload Template",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    )
                                  : Stack(children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: FileImage(
                                                    uploadDocumentDisplay!))),
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
                                                color: Colors.black
                                                    .withOpacity(.6),
                                                shape: BoxShape.circle,
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              child: const Icon(
                                                Icons.clear,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                    ]))),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: MediaQuery.of(context).size.height * .25,
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
                    child: InkWell(
                      onTap: () => uploadDocumentFunction1(),
                      child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(20),
                          dashPattern: const [10, 10],
                          color: const Color(0xffC5C5C5),
                          strokeWidth: 2,
                          child: Container(
                              margin: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: uploadDocument1 == null
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/upload.png"),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Upload Food Image",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  : Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: FileImage(
                                                      uploadDocumentDisplay1!))),
                                        ),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  uploadDocumentPickedFile1 =
                                                      null;
                                                  uploadDocumentDisplay1 = null;
                                                  uploadDocument1 = null;
                                                  print(
                                                      uploadDocumentFileName1);
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(.6),
                                                  shape: BoxShape.circle,
                                                ),
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: const Icon(
                                                  Icons.clear,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text("Discount",
                          style: TextStyle(
                            fontSize: 16,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: _discountController,
                    hintText: "50%",
                    prefixChildIcon: Image.asset("assets/images/percent.png"),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter number'),
                      MinLengthValidator(1,
                          errorText: 'Minimum 10 numbers required'),
                      MaxLengthValidator(3,
                          errorText: 'Maximum numbers length is 3')
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text("Description",
                          style: TextStyle(
                            fontSize: 16,
                          ))
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
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Enter description'),
                        MinLengthValidator(3, errorText: 'Minimum length 3'),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    height: 40,
                    width: 100,
                    buttonText: "Create ",
                    buttonTextColor: AppTheme.whiteColor,
                    primaryColor: AppTheme.orangeColor,
                    onPress: () {
                      if (_formKey.currentState!.validate() &&
                          uploadDocument != null &&
                          uploadDocument1 != null) {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        Get.toNamed(MyRoutes.offerScreen);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      } else {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content:
                                  Text('Enter all the fields and documents')),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
