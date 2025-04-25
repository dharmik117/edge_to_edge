import 'package:edge_to_edge/edge_to_edge.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EdgeToEdge.configure(
    statusBarColor: Colors.transparent,
    navigationBarColor: Colors.black,
    statusBarIconBrightness: Brightness.dark,
    navigationBarIconBrightness: Brightness.dark,
    enableTop: true,
    enableBottom: false,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(body: Center(child: Text('Edge To Edge UI'))),
    );
  }
}
