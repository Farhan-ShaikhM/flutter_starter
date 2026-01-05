import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/second_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Container(
        // BORDER: whole screen body
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: Center(
          child: Container(
            // BORDER: Center widget area
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // BORDER: Text 1
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Text(
                    'Welcome Farhan 👋',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                Container(
                  // BORDER: Text 2
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 2),
                  ),
                  child: const Text(
                    'This is your first custom Flutter screen.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                const SizedBox(height: 16),

                Container(
                  // BORDER: Row (IMPORTANT ONE 👀)
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.person, size: 40),
                      SizedBox(width: 12),
                      Text(
                        'Farhan Shaikh',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen(
                                name: 'Farhan',
                                age: 22,
                            ),
                        ),
                        );
                    },
                    child: const Text('Go to Second Screen'),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
