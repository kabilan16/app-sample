import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:srp/views/camera_page.dart';
// import 'package:srp/main.dart';
import 'package:flutter_text_to_speech/flutter_text_to_speech.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VoiceController _voiceController;

  String text =
      'This is an example tutorial of using text to speech in a flutter application! The example is provided on fluttercentral website.';

  @override
  void initState() {
    _voiceController = FlutterTextToSpeech.instance.voiceController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _voiceController.stop();
  }

  _playVoice() {
    _voiceController.init().then((_) {
      _voiceController.speak(
        text,
        VoiceControllerOptions(),
      );
    });
  }

  _stopVoice() {
    _voiceController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: _playVoice,
              color: Colors.blue,
              child: Text('Play Voice'),
            ),
            RaisedButton(
              onPressed: _stopVoice,
              color: Colors.blue,
              child: Text('Stop Voice'),
            ),
          ],
        ),
      ),
    );
  }
}
