import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:dio/dio.dart';

final dio = Dio();

// class SettingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("Setting page"),
//       ),
//       body: Center(
//         child: Text("Setting Pages"),
//       ),
//     );
//   }
// }

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormApi();
  }
}

class FormApi extends State<SettingPage> {
  String getData = "";
  var data1;

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

  var token =
      'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrbXllcnNAc2FudGVlLm9yZyIsImV4cCI6MTY4NjM3NjA5MSwiaWF0IjoxNjg1MDgwMDkxfQ.Hz4aYln3w76aDAkVj7BA7MH-v5FtX7DaCoT6hh82y-0';
  Future getUser() async {
    try {
      //put your dio request here....
      Response dioResponse = await dio.get(
        'https://hmhpapi.ariespro.com/hmhpapi/Predicted_ussage/all',
        options: Options(
          headers: {
            'Accept': "application/json",
            'Authorization': 'Bearer $token',
          },
        ),
      );

      // var data = jsonDecode(dioResponse.data);
      print('getdataaaaaaaaaaaa' + dioResponse.toString());

      if (dioResponse.statusCode == 200) {
        setState(() {
          print('auditIddddddd' + dioResponse.toString());

          // var d = jsonDecode(dioResponse.);
          getData = dioResponse.toString();
          print('vvvvvvvvvvvv' + getData);
        });

        print('Login successfully');
      } else {
        print('failed');
        print(getData);
        print(dioResponse.toString());
      }
    } on DioError catch (e) {
      // in case of a code that is not success, you can get it here through object 'e'
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    // fetchData();
    getUser();
    //fetchDataGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
        child: Text(
          getData,
          style: TextStyle(fontSize: 21),
        ),
      ),
    );
  }
}
