import "package:dio/dio.dart";
import 'package:flutter_shop/config/servcie_url.dart';
import 'dart:async';
import 'dart:io';
import '../config/servcie_url.dart';

Future getHomePageContent() async {
  try {
    print('Start to get homePage data.......');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    var formData = {'lon': '115.02932', 'lat': '35.76189'};
    response = await dio.post(ServicePath['homePageContext'], data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'The back-end interface is abnormal, please check the code and server conditions.........');
    }
  } catch (e) {
    return print('ERROR:======>${e}');
  }
}
