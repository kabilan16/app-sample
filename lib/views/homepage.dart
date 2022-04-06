import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:srp/views/camera_page.dart';
// import 'package:srp/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Language Translator',
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () async {
          await availableCameras().then(
            (value) => (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraPage(
                      cameras: value,
                    ),
                  ),
                ),
          );
        },
        child: const Text('Launch camera'),
      )),
    );
  }
}
