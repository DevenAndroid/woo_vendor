import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woo_vendor/ui/widgets/custom_button.dart';

import '../../resources/theme/theme.dart';
import '../widgets/custom_appbar.dart';

class RestaurantLocationScreen extends StatefulWidget {
  const RestaurantLocationScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantLocationScreen> createState() =>
      _RestaurantLocationScreenState();
}

class _RestaurantLocationScreenState extends State<RestaurantLocationScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(26.9112472, 75.7296486),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(26.9112472, 75.7296486),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * .11),
            child: const CustomAppbar(
              data: 'Restaurant Location',
              leading: Icon(Icons.arrow_back_ios),
            )),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .7,
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
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width,
                            maxWidth: MediaQuery.of(context).size.width,
                            maxHeight: MediaQuery.of(context).size.height * .4,
                            minHeight: MediaQuery.of(context).size.height * .4,
                          ),
                          child: GoogleMap(
                            myLocationEnabled: true,
                            myLocationButtonEnabled: true,
                            mapType: MapType.normal,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Current Location",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: AppTheme.orangeColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Tasula, North South",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      CustomButton(
                                        buttonText: "Change",
                                        buttonTextColor: AppTheme.orangeColor,
                                        primaryColor: AppTheme.whiteColor,
                                        onPress: () {},
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "523,Tasula North\nSouth ,Mustafapasa,tasula,438748,South africa",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          width: 150,
                          buttonText: "Confirm",
                          primaryColor: AppTheme.orangeColor,
                          buttonTextColor: AppTheme.whiteColor,
                          onPress: () {},
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
