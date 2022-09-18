import 'package:a24_skeleton/screens/sign_in/signin_widget/textfield_signin.dart';
import 'package:a24_skeleton/screens/signup/signup_widgets/date_widgets.dart';
import 'package:a24_skeleton/screens/signup/signup_widgets/dob_widget.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class CombineTextField_d extends StatefulWidget {
  CombineTextField_d({Key? key}) : super(key: key);

  @override
  State<CombineTextField_d> createState() => _CombineTextField_dState();
}

class _CombineTextField_dState extends State<CombineTextField_d> {
  // DateTime _dateTime = DateTime.now();
  late DateTime selectedDate;
  String location = 'Null, Press Button';
  String Address = 'موقعك';
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality} ${place.postalCode}, ${place.country}';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border(
            //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
            top: BorderSide(width: 0.5, color: app_Grey_textcolor),
            left: BorderSide(width: 0.5, color: app_Grey_textcolor),
            right: BorderSide(width: 0.5, color: app_Grey_textcolor),
            bottom: BorderSide(width: 0.5, color: app_Grey_textcolor),
          )),
      child: Column(
        children: [
          TextField_SignIn(
            title: "الاسم الاول",
            textColor: 0xFF8E929E,
            keyboardType: TextInputType.emailAddress,
            obscuretext: false,
          ),
          Divider(
            height: 0.5,
            color: app_Grey_textcolor,
          ),
          TextField_SignIn(
            title: "اللقب",
            textColor: 0xFF8E929E,
            keyboardType: TextInputType.visiblePassword,
            obscuretext: true,
          ),
          Divider(
            height: 0.5,
            color: app_Grey_textcolor,
          ),
          DateWidgets(
            title: Address,
            textColor: 0xFF000000,
            onPress: () async {
              Position position = await _getGeoLocationPosition();
              location =
                  'Lat: ${position.latitude} , Long: ${position.longitude}';
              GetAddressFromLatLong(position);
            },
          ),
          Divider(
            height: 0.5,
            color: app_menu_textcolor,
          ),
          DOBWidgets(
            title: "يوم الميلاد",
            textColor: 0xFF8E929E,
            onPress: () {},
            hinttext: ' الشهر',
          ),
          Divider(
            height: 0.5,
            color: app_Grey_textcolor,
          ),
          DateWidgets(
            title: "مهنة",
            textColor: 0xFF8E929E,
            onPress: () {
              showDatePicker(context);
            },
          )
        ],
      ),
    );
  }

  void showDatePicker(context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            child: CupertinoDatePicker(
              backgroundColor: datepicker,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (value) {
                if (value != null && value != selectedDate)
                  setState(() {
                    selectedDate = value;
                  });
              },
              initialDateTime: DateTime.now(),
              minimumYear: 2015,
              maximumYear: 2029,
            ),
          );
        });
  }
}
