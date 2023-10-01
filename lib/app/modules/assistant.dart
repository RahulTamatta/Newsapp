// import 'package:flutter/widgets.dart';
// import 'package:speech_recognition/speech_recognition.dart';
// import 'package:speech_recognition/speech_recognition_event.dart';
// class AssistantWidget extends StatefulWidget {
//   @override
//   _AssistantWidgetState createState() => _AssistantWidgetState();
// }

// class _AssistantWidgetState extends State<AssistantWidget> {
//   final SpeechRecognition _speechRecognition = SpeechRecognition();
//   bool _isListening = false;
//   String _text = '';

//   @override
//   void initState() {
//     super.initState();
//     _initSpeechRecognition();
//   }

//   void _initSpeechRecognition() {
//     _speechRecognition.setAvailabilityHandler((bool available) {
//       if (available) {
//         _speechRecognition.activate().then((result) {
//           setState(() {});
//         });
//       }
//     });

//     _speechRecognition.setRecognitionStartedHandler(() {
//       setState(() {
//         _isListening = true;
//       });
//     });

//     _speechRecognition.setRecognitionResultHandler((String text) {
//       setState(() {
//         _text = text;
//       });
//     });

//     _speechRecognition.setRecognitionCompleteHandler(() {
//       setState(() {
//         _isListening = false;
//       });
//     });

//     _speechRecognition.activate().then((result) {
//       setState(() {});
//     });
//   }

//   void _startListening() {
//     if (!_isListening) {
//       _speechRecognition.listen().then((result) {
//         if (result) {
//           setState(() {});
//         }
//       });
//     }
//   }

//   void _stopListening() {
//     if (_isListening) {
//       _speechRecognition.stop().then((result) {
//         setState(() {
//           _isListening = false;
//         });
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Assistant'),
//       ),
//       body: Center(
//         child: Text(_text),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _isListening ? _stopListening : _startListening,
//         child: Icon(_isListening ? Icons.stop : Icons.mic),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _speechRecognition.cancel();
//     _speechRecognition.destroy();
//     super.dispose();
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: AssistantWidget(),
//   ));
// }
