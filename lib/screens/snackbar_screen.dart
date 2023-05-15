import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: const _SnackBar(),
    );
  }
}

class _SnackBar extends StatelessWidget {
  const _SnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
        final snackBar = SnackBar(
            backgroundColor: Colors.orange[400],
            content: const ListTile(
              leading: Icon(Icons.warning, color: Colors.white),
              title: Text('this is a warning', style: TextStyle(color: Colors.white),),
            ),
            action: SnackBarAction(
              label: 'Done!',
              onPressed: () {
                
              },
              textColor: Colors.white,
              backgroundColor: Colors.blue[300],
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
