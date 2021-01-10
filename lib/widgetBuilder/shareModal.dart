import 'package:screenshot_share_image/screenshot_share_image.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class ShareModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModal(context).show();
        },
        child: Icon(
          Icons.info,
          size: 25.0,
        ));
  }

  AwesomeDialog showModal(contxt) {
    return AwesomeDialog(
        context: contxt,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Share it',
        desc: 'Would you like to share this with your friends?',
        btnOkOnPress: () {});
  }
}
