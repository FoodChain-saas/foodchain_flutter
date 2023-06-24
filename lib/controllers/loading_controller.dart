import 'package:flutter/material.dart';
import 'package:foodchain_flutter/controllers/base_controller.dart';
import 'package:loader_overlay/loader_overlay.dart';

class LoadingControler extends BaseController {
  Future<void> startLoading(BuildContext context) async {
    return context.loaderOverlay.show();
  }

  Future<void> stopLoading(BuildContext context) async {
    try {
      if (context.loaderOverlay.visible) {
        context.loaderOverlay.hide();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static void startLoadingStatic(BuildContext context) {
    LoadingControler().startLoading(context);
  }

  static void stopLoadingStatic(BuildContext context) {
    LoadingControler().stopLoading(context);
  }
}
