import 'package:customerrormessage/customsnackbar.dart';
import 'package:flutter/material.dart';

void main() {
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
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(
               backgroundColor: Colors.transparent,
               behavior: SnackBarBehavior.floating,
               elevation: 0,
               content: CustomSnackBarContent(content: 'Something is wrong', title: 'oh snap!',),)
            );
          },
          child: Text('Click'),
        ),
      ),
    ));
  }
}

