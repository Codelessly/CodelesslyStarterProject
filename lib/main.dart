import 'package:codelessly_sdk/codelessly_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Codelessly.instance.initialize(
    config: CodelesslyConfig(
      // Step 1: Insert Codelessly Auth token.
      authToken: '',
      isPreview: kDebugMode,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Codelessly Starter App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: CodelesslyWidget(
          // Step 2: Insert the Published Layout ID of your home canvas.
          layoutID: '',
        ),
      ),
    );
  }
}
