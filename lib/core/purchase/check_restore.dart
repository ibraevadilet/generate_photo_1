import 'package:ai_photo1/core/constants/app_url.dart';
import 'package:ai_photo1/core/functions/push_router_func.dart';
import 'package:ai_photo1/core/purchase/premium.dart';
import 'package:ai_photo1/routes/mobile_auto_router.gr.dart';
import 'package:apphud/apphud.dart';
import 'package:apphud/models/apphud_models/apphud_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRestore {
  static Future<bool> isRestore() async {
    final hasPremiumAccess = await Apphud.hasPremiumAccess();
    final hasActiveSubscription = await Apphud.hasActiveSubscription();
    return hasPremiumAccess || hasActiveSubscription;
  }

  static Future<void> buyProduct(String productId) async {
    var paywalls = await Apphud.paywalls();
    await Apphud.purchase(
      product: ApphudProduct(productId: productId, store: AppUrl.stor),
    ).whenComplete(
      () async {
        if (await Apphud.hasActiveSubscription() ||
            await Apphud.hasPremiumAccess()) {
          await CheckPremium.setSubscrp();
          AppRouting.pushAndPopUntilFunction(const BottomNavigatorRoute());
        }
      },
    );
  }

  static Future<void> showRestoreDoalog(BuildContext context) async {
    if (await isRestore()) {
      await CheckPremium.setSubscrp();
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
