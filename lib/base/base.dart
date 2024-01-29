import 'dart:async';
import 'dart:developer';

import 'package:employee_management_system/modules/attendence/attendence_provider.dart';
import 'package:employee_management_system/modules/leaves/leaves_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart' as loc;

class EmployeeManagementSystem extends StatelessWidget {
  const EmployeeManagementSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AttendenceProvider()),
        ChangeNotifierProvider(create: (context) => LeavesProvider()),
        ChangeNotifierProvider(create: (context) => CheckLocationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          indicatorColor: Colors.white,
        ),
        home: const CheckLocation(),
      ),
    );
  }
}

class CheckLocation extends StatefulWidget {
  const CheckLocation({super.key});

  @override
  State<CheckLocation> createState() => _CheckLocationState();
}

class _CheckLocationState extends State<CheckLocation> {
  @override
  void initState() {
    super.initState();
    Provider.of<CheckLocationProvider>(context, listen: false)
        .checkPositionInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<CheckLocationProvider>(builder: (context, p, c) {
          return Text(p.isNearToOffice == true
              ? "Hey, you can check in"
              : "Hey you cannot check in");
        }),
      ),
    );
  }
}

// void startListeningToLocationChanges() {
//   debugPrint("sam");
//   const locationOptions = LocationSettings(
//     accuracy: LocationAccuracy.high,
//     distanceFilter: 0,
//     // 2 seconds interval
//   );
//   // notifyListeners();
//   debugPrint(locationOptions.distanceFilter.toString());
// }

class CheckLocationProvider extends ChangeNotifier {
  // 24.867183089607103, 67.08117790155717
  final double _officeLatitude = 24.867183089607103;
  final double _officeLongtitude = 67.08117790155717;
  final double _distancethres = 50.0;
  bool isNearToOffice = false;
  bool serviceEnabled = false;
  loc.Location location = loc.Location();
  loc.PermissionStatus? _permissionGranted;

  checkPositionInit() async {
    try {
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == loc.PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != loc.PermissionStatus.granted) {
          return;
        }
      }

      serviceEnabled = await location.serviceEnabled();
      if (serviceEnabled) {
        log("service is enalbe");
        location.onLocationChanged.listen((loc.LocationData position) {
          log("listen changes ${position.latitude}");

          isNearToOffice = isCloseToOffice(position);
          notifyListeners();
          // Use current location
        });
      } else {
        bool myserviceEnabled = await location.requestService();
        if (myserviceEnabled) {
          checkPositionInit();
        }
        log("service is not enalbe");
      }

      notifyListeners();
    } catch (e) {
      if (e.toString() == "Location services are disabled.") {
        Geolocator.requestPermission();
      }
    }
  }

  bool isCloseToOffice(loc.LocationData position) {
    double distance = Geolocator.distanceBetween(
      position.latitude!,
      position.longitude!,
      _officeLatitude,
      _officeLongtitude,
    );
    debugPrint("Distance between is ${distance} meters");
    return int.parse(distance.toStringAsFixed(0)) <=
        int.parse(_distancethres.toStringAsFixed(0));
  }
  // bool isCloseToOffice(loc.LocationData position) {
  //   double distance = Geolocator.distanceBetween(
  //     position.latitude!,
  //     position.longitude!,
  //     _officeLatitude,
  //     _officeLongtitude,
  //   );
  //   log("distance bet is ${distance <= _distancethres}");

  //   return distance <= _distancethres;
  // }

  // Future<Position> _determinePosition() async {
  //   bool serviceEnabled = false;
  //   LocationPermission permission;
  //   // Test if location services are enabled.
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     // Location services are not enabled don't continue
  //     // accessing the position and request users of the
  //     // App to enable the location services.
  //     return Future.error('Location services are disabled.');
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       // Permissions are denied, next time you could try
  //       // requesting permissions again (this is also where
  //       // Android's shouldShowRequestPermissionRationale
  //       // returned true. According to Android guidelines
  //       // your App should show an explanatory UI now.
  //       return Future.error('Location permissions are denied');
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     // Permissions are denied forever, handle appropriately.
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }

  //   // When we reach here, permissions are granted and we can
  //   // continue accessing the position of the device.
  //   debugPrint("permission accessed");
  //   return await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);
  // }
}
