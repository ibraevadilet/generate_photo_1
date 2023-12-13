import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppRestore {
  static Future<bool> isRestore() async {
    final hasPremiumAccess = await Apphud.hasPremiumAccess();
    final hasActiveSubscription = await Apphud.hasActiveSubscription();
    return hasPremiumAccess || hasActiveSubscription;
  }

  static Future<void> showRestoreDoalog(BuildContext context) async {
    if (await isRestore()) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool("ISBUY", true);
      showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Success!'),
          content: const Text('Your purchase has been restored!'),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Ok'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Restore purchase'),
          content: const Text('Your purchase is not found'),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () => {Navigator.of(context).pop()},
              child: const Text('Ok'),
            ),
          ],
        ),
      );
    }
  }
}
