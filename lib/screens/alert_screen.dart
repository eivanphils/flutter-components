import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: DialogTitle(),
          content: ContentDialog(),
          actions: [
            CancelButton(),
            AceptButton()
          ],
        );
      }
    );
  }
  
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          elevation: 5,
          title: const DialogTitle(),
          content: const ContentDialog(),
          actions: const [
            CancelButton(),
            AceptButton()
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Platform.isAndroid ? displayDialogAndroid(context)
            : displayDialogIOS(context);
          }, 
          // onPressed: () => displayDialogAndroid(context),
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('mostrar alerta', style: TextStyle(fontSize: 18)),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}

class AceptButton extends StatelessWidget {
  const AceptButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Icon(Icons.check)
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
    );
  }
}

class ContentDialog extends StatelessWidget {
  const ContentDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('mi cuerpo'),
        SizedBox(height: 10),
        FlutterLogo(size: 100)
      ],
    );
  }
}

class DialogTitle extends StatelessWidget {
  const DialogTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Mi titulo');
  }
}