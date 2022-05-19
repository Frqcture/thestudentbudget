import 'package:flutter/material.dart';
import 'HomeScreenWidgets/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  final tabs = [const HomeScreen()];
  int selectedScreen = 0;

  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;

  final user = <String, dynamic>{
    "Testname":"joemama",
    "TestNum": 987.65,
  };

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
        title: const Text('TheStudentBudget'),
      ),
      body: Center(
        child: tabs[selectedScreen],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          db.collection("TestCollection").add(user).then((DocumentReference doc) => null);
        },
        tooltip: 'Create',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar()
    );
  }

  _buildBottomAppBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          selectedScreen = 0;
                        });
                      },
                      icon: const Icon(Icons.abc),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          selectedScreen = 1;
                        });
                      },
                      icon: const Icon(Icons.check_circle),
                    ),
                  )
                ]
              )
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          selectedScreen = 2;
                        });
                      },
                      icon: const Icon(Icons.face),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          selectedScreen = 3;
                        });
                      },
                      icon: const Icon(Icons.gamepad),
                    ),
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}