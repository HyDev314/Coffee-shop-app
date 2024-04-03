import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../config/theme/palette.dart';

class LocationForm extends StatefulWidget {
  const LocationForm({super.key});

  @override
  _LocationFormState createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  TextEditingController locationController = TextEditingController();

  void _onBackButtonTapped(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        scrolledUnderElevation: 0,
        title: const Text(
          'Edit Address',
          style: TextStyle(
            fontFamily: 'Sora',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Palette.textColor,
          ),
        ),
        centerTitle: true,
        leadingWidth: 80,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                size: 20,
              ),
              onPressed: () => _onBackButtonTapped(context),
            );
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                controller: locationController,
                style: const TextStyle(
                  color: Palette.textColor,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Edit Address',
                  hintStyle: const TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Palette.mainColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _launchGoogleMaps,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.mainColor,
                    foregroundColor: Palette.whiteColor,
                    minimumSize: const Size(315, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: const Text(
                  'Open Google Maps',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchGoogleMaps() async {
    String address = locationController.text;
    String googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=$address';
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }
}
