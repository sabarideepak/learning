import 'package:flutter/material.dart';

class Alertscreen extends StatefulWidget {
  const Alertscreen({Key? key}) : super(key: key);

  @override
  State<Alertscreen> createState() => _AlertscreenState();
}

class _AlertscreenState extends State<Alertscreen> {
  @override
  Widget build(BuildContext context) {
    Future<void> blurfunc() async {
      return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Container(
          child: AlertDialog(
            title: Text('Alert Go back'),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'))
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Alert')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            blurfunc();
          },
          child: const Text('Alert'),
        ),
      ),
    );
  }
}
