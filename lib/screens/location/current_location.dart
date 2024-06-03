import 'dart:async';

import 'package:career_center/screens/language_location/language_location.dart';
import 'package:career_center/utils/app_colors.dart';
import 'package:career_center/widgets/custom_appbar.dart';
import 'package:career_center/widgets/custom_text.dart';
import 'package:career_center/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:lorrent_routes/screens/home/home_screen.dart';
// import 'package:lorrent_routes/utils/appcolor.dart';
// import 'package:lorrent_routes/utils/appimage.dart';
// import 'package:lorrent_routes/widgets/custom_appbar.dart';
// import 'package:lorrent_routes/widgets/custom_text.dart';
// // ignore: unused_import
// import 'package:lorrent_routes/widgets/primary_button.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';

class CurrentLocation extends StatefulWidget {
  CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  @override
  void initState() {
    super.initState();
  }

  bool isStart = true;

  static const LatLng _center = LatLng(31.118793, 74.463272);

  final Completer<GoogleMapController> _controller = Completer();

  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    _onAddMarkerButtonPressed();
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(const Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId("1"),
        position: _center,
        infoWindow: InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Current Location'),
      body: SnappingSheet(
        snappingPositions: [
          // SnappingPosition.factor(
          //   positionFactor: 0.0,
          //   snappingCurve: Curves.easeOutExpo,
          //   snappingDuration: Duration(seconds: 1),
          //   grabbingContentOffset: GrabbingContentOffset.top,
          // ),
          SnappingPosition.factor(
            snappingCurve: Curves.elasticOut,
            snappingDuration: Duration(milliseconds: 1750),
            positionFactor: 0.6,
          ),
          SnappingPosition.factor(
            grabbingContentOffset: GrabbingContentOffset.bottom,
            snappingCurve: Curves.linearToEaseOut,
            snappingDuration: Duration(seconds: 1),
            positionFactor: 0.07,
          ),
        ],
        child: mapView(),
        grabbingHeight: 40,
        grabbing: grableView(),
        sheetBelow: SnappingSheetContent(
          draggable: (details) => true,
          child: sheetContentView(),
        ),
      ),
    );
  }

  Widget mapView() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      markers: _markers,
      initialCameraPosition: const CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
    );
  }

  Widget grableView() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: Get.width * 0.3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Container(
        width: Get.width * 0.1,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Widget sheetContentView() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20),
              // const Row(
              //   children: [
              //     // Image(image: AssetImage(AppImaes.profilepick)),
              //     SizedBox(
              //       width: 14,
              //     ),
              //     // Column(
              //     //   children: [
              //     //     CText(
              //     //       'John’s Smith',

              //     //     ),
              //     //     Text(
              //     //       'john@smith.com',
              //     //       style: TextStyle(
              //     //           color: AppColors.blackColor,
              //     //           fontSize: 12,
              //     //           fontWeight: FontWeight.w400),
              //     //     ),
              //     //   ],
              //     // )
              //   ],
              // ),
              // SizedBox(
              //   height: 20.h,
              // ),
              // CText(
              //   text: 'Pick Up',
              //   fontSize: 12,
              //   fontWeight: FontWeight.w400,
              //   color: AppColors.primarybackColor.withOpacity(0.5),
              // ),
              // SizedBox(
              //   height: 12.h,
              // ),
              // Row(
              //   children: [
              //     // Image.asset(AppImaes.pickuplocation),
              //     Padding(
              //       padding: EdgeInsets.only(left: 11.w),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           CText(
              //             text: ' 23 Wressle Road, Plumstead',
              //             fontSize: 14,
              //             fontWeight: FontWeight.w400,
              //             color: AppColors.primarybackColor,
              //           ),
              //           Row(
              //             children: [
              //               CText(
              //                 text: 'Pick up time:',
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.w400,
              //                 color:
              //                     AppColors.primarybackColor.withOpacity(0.5),
              //               ),
              //               CText(
              //                 text: '11:45 PM',
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.w400,
              //                 color: AppColors.primarybackColor,
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 19.h,
              // ),
              // CText(
              //   text: 'Destination',
              //   fontSize: 12,
              //   fontWeight: FontWeight.w400,
              //   color: AppColors.primarybackColor.withOpacity(0.6),
              // ),
              // SizedBox(
              //   height: 12.h,
              // ),
              // Row(
              //   children: [
              //     // Image.asset(AppImaes.pickuplocation),
              //     Container(
              //         height: 35.h,
              //         width: 35.w,
              //         decoration: BoxDecoration(
              //             color: AppColors.primarybackColor.withOpacity(0.1),
              //             borderRadius: BorderRadius.circular(50.r)),
              //         child: IconButton(
              //           icon: const Icon(
              //             Icons.location_on,
              //             color: AppColors.primarybackColor,
              //             size: 17,
              //           ),
              //           onPressed: () {},
              //         )),
              //     Padding(
              //       padding: EdgeInsets.only(left: 11.w),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           CText(
              //             text: 'Kings Cross Underground Statio...',
              //             fontSize: 14,
              //             fontWeight: FontWeight.w400,
              //             color: AppColors.primarybackColor,
              //           ),
              //           Row(
              //             children: [
              //               CText(
              //                 text: 'Drop off time:',
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.w400,
              //                 color:
              //                     AppColors.primarybackColor.withOpacity(0.6),
              //               ),
              //               CText(
              //                 text: '11:45 PM',
              //                 fontSize: 12,
              //                 fontWeight: FontWeight.w400,
              //                 color: AppColors.primarybackColor,
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 50.h,
              // ),
            
              PrimaryButton(text: 'Next', onTap: (){
                Get.to(HomeScreen());
              })
              // isStart
              //     ? PrimaryButton(
              //         text: 'Start',
              //         onTap: () {
              //           setState(() {
              //             isStart = false;
              //           });
              //         })
              //     : PrimaryButton(
              //         text: 'Complete',
              //         onTap: () {
              //           Get.offAll(HomeScreen());
              //         }),
            ],
          ),
        ),
      ),
    );
  }
}
