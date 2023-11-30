import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class Utility {

  // Check Network Connection
  static Future<String> checkNetwork() async {

    var checkNetwork = await Connectivity().checkConnectivity();

    if(checkNetwork == ConnectivityResult.none){
      return '';
    } else if(checkNetwork == ConnectivityResult.mobile){
      return 'mobile';
    } else if(checkNetwork == ConnectivityResult.wifi){
      return 'wifi';
    }

    return '';

  }

  // Alert Dialog
  static showAlertDialog(context, title, content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('ตกลง'),
            ),
          ],
        );
      }
    );
  }

}