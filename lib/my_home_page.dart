import 'package:flutter/material.dart';
import 'currency_rate_widget.dart';
import 'message_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Trip',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 26, 38, 98),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 2),
                          blurRadius: 10,
                          color: const Color.fromARGB(
                            255,
                            79,
                            79,
                            79,
                          ).withValues(alpha: 0.2),
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: '&',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 180, 159, 0),
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 2),
                          blurRadius: 10,
                          color: const Color.fromARGB(
                            255,
                            79,
                            79,
                            79,
                          ).withValues(alpha: 0.2),
                        ),
                      ],
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Payzies',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 26, 38, 98),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 2),
                          blurRadius: 10,
                          color: const Color.fromARGB(
                            255,
                            79,
                            79,
                            79,
                          ).withValues(alpha: 0.2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const CurrencyRateWidget(),
            const MessageWidget(),
            // SizedBox(
            //   height: 100,
            //   width: 100,
            //   child: Image.asset('assets/images/icon.png'),
            // ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 1000,
            //     itemBuilder: (context, index) {
            //       return Column(
            //         children: [
            //           Center(child: Text('hello $index')),
            //           const SizedBox(height: 10),
            //         ],
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                // Handle home button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              onPressed: () {
                // Handle search button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              color: Colors.white,
              onPressed: () {
                // Handle profile button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
