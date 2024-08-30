import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeScreen(),
    ),
  );
}

// HomeScreenはStatefulWidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}) : super();

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('HomeScreen build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ボタンをタップするとカウントアップする
            ElevatedButton(
              child: Text('Home Screen Count: ($_counter)'),
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            const CounterButton(),
          ],
        ),
      ),
    );
  }
}

// CounterButtonはStatefulWidget
class CounterButton extends StatefulWidget {
  const CounterButton({super.key}) : super();

  @override
  State createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('CounterButton build');
    // ボタンをタップするとカウントアップする
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _counter++;
        });
      },
      child: Text('Counter Button Count: ($_counter)'),
    );
  }
}