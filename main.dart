import 'dart:convert';

import 'package:demo/details.dart';

import 'package:demo/samplepages.dart';

import 'package:flutter/material.dart';

import 'drawers.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

final dio = Dio();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'shailesh',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 28, 29, 126)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'shailesh1 Home Page Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  var _pagesData = [HomePage(), AboutPage(), ServicesPage()];
  int _counter = 0;
  int _selectedItem = 0;
  String passwords = "Myers*%\$&9873";

  // String getData = "getData";
  // var data1;

  // Future fetchData() async {
  //   Response response;

  //   response = await dio.post('https://hmhpapi.ariespro.com/hmhpapi/login',
  //       data: {'username': 'kmyers@santee.org', 'password': 'Myers*%\$&9873'});
  //   print('getTokenByMe' + response.data.toString());
  //   // Response response = await post(
  //   //     Uri.parse('https://hmhpapi.ariespro.com/hmhpapi/login'),
  //   //     body: {
  //   //       'username': 'kmyers@santee.org',
  //   //       'password': "Myers*%\$&9873",
  //   //     });

  //   if (response.statusCode == 200) {
  //     setState(() {
  //       print(response.data.toString());
  //       getData = jsonDecode(response.data.toString());
  //       data1 = jsonDecode(response.data.toString());
  //       print(data1['token']);
  //     });

  //     print('Login successfully');
  //   } else {
  //     print('failed');
  //     print(getData);
  //     print(response.data.toString());
  //   }
  // }

  // var token =
  //     'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrbXllcnNAc2FudGVlLm9yZyIsImV4cCI6MTY4NjM3NjA5MSwiaWF0IjoxNjg1MDgwMDkxfQ.Hz4aYln3w76aDAkVj7BA7MH-v5FtX7DaCoT6hh82y-0';
  // Future getUser() async {
  //   try {
  //     //put your dio request here....
  //     Response dioResponse = await dio.get(
  //       'https://hmhpapi.ariespro.com/hmhpapi/Predicted_ussage/all',
  //       options: Options(
  //         headers: {
  //           'Accept': "application/json",
  //           'Authorization': 'Bearer $token',
  //         },
  //       ),
  //     );

  //     // var data = jsonDecode(dioResponse.data);
  //     print('getdataaaaaaaaaaaa' + dioResponse.toString());

  //     if (dioResponse.statusCode == 200) {
  //       setState(() {
  //         print('auditIddddddd' + dioResponse.toString());

  //         var d = jsonDecode(dioResponse.toString());
  //         getData = d.toString();
  //         print('vvvvvvvvvvvv' + d);
  //       });

  //       print('Login successfully');
  //     } else {
  //       print('failed');
  //       print(getData);
  //       print(dioResponse.toString());
  //     }
  //   } on DioError catch (e) {
  //     // in case of a code that is not success, you can get it here through object 'e'
  //     print(e);
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  //   getUser();
  //   //fetchDataGet();
  // }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
      drawer: MainDrawoer(),
      body: Center(
        child: TextButton(
            child: Text("click heare"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyPageDetail()),
              );
            }),

        // child: _pagesData[_selectedItem],

        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //       ),
        //     ],
        //   ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cleaning_services), label: "Services"),
          ],
          currentIndex: _selectedItem,
          onTap: (setValue) {
            setState(() {
              _selectedItem = setValue;
            });
          }),
    );
  }
}
