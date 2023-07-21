import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListTile Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black54,
                          backgroundImage:
                              AssetImage('lib/assets/women_profile.jpg'),
                        ),
                        title: Text('Humna', style: TextStyle(fontSize: 16, )),
                        subtitle: Text('Let me build list tiles in flutter :)', style: TextStyle(fontSize: 14),),
                        trailing: Text('4:11 PM', style: TextStyle(fontSize: 12),),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
