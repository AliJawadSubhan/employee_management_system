import 'package:employee_management_system/base/base.dart';
import 'package:flutter/material.dart';

void main() {
  // startListeningToLocationChanges();
  runApp(const EmployeeManagementSystem());
}
//
// import 'dart:async';
// import 'package:easy_geofencing/easy_geofencing.dart';
// import 'package:easy_geofencing/enums/geofence_status.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// ///
// ///This is an [example] app for testing the [EasyGeofencing] dart package
// ///that is purely written in dart
// ///
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Easy Geofencing',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Easy Geofencing'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, this.title}) : super(key: key);
//
//   final String? title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController latitudeController = TextEditingController();
//   TextEditingController longitudeController = TextEditingController();
//   TextEditingController radiusController = TextEditingController();
//   StreamSubscription<GeofenceStatus>? geofenceStatusStream;
//   Geolocator geolocator = Geolocator();
//   String geofenceStatus = '';
//   bool isReady = false;
//   Position? position;
//   @override
//   void initState() {
//     super.initState();
//     getCurrentPosition();
//   }
//
//   getCurrentPosition() async {
//     position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     debugPrint("LOCATION => ${position!.toJson()}");
//     isReady = (position != null) ? true : false;
//   }
//
//   setLocation() async {
//     await getCurrentPosition();
//     // print("POSITION => ${position!.toJson()}");
//     latitudeController =
//         TextEditingController(text: position!.latitude.toString());
//     longitudeController =
//         TextEditingController(text: position!.longitude.toString());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.my_location),
//             onPressed: () {
//               if (isReady) {
//                 setState(() {
//                   setLocation();
//                 });
//               }
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: latitudeController,
//               decoration: const InputDecoration(
//                   border: InputBorder.none, hintText: 'Enter pointed latitude'),
//             ),
//             TextField(
//               controller: longitudeController,
//               decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Enter pointed longitude'),
//             ),
//             TextField(
//               controller: radiusController,
//               decoration: const InputDecoration(
//                   border: InputBorder.none, hintText: 'Enter radius in meter'),
//             ),
//             const SizedBox(
//               height: 60,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   child: const Text("Start"),
//                   onPressed: () {
//                     print("starting geoFencing Service");
//                     EasyGeofencing.startGeofenceService(
//                         pointedLatitude: "24.8671",
//                         pointedLongitude: "67.0811",
//                         radiusMeter: radiusController.text,
//                         eventPeriodInSeconds: 5);
//                     geofenceStatusStream = EasyGeofencing.getGeofenceStream()!
//                         .listen((GeofenceStatus status) {
//                       debugPrint(status.toString());
//                       setState(() {
//                         geofenceStatus = status.toString();
//                       });
//                     });
//                   },
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 ElevatedButton(
//                   child: const Text("Stop"),
//                   onPressed: () {
//                     print("stop");
//                     EasyGeofencing.stopGeofenceService();
//                     geofenceStatusStream!.cancel();
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             Text(
//               "Geofence Status: \n\n\n" + geofenceStatus,
//               textAlign: TextAlign.center,
//               style:
//                   const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     latitudeController.dispose();
//     longitudeController.dispose();
//     radiusController.dispose();
//     super.dispose();
//   }
// }
