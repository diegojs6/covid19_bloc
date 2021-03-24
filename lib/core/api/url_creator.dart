import 'package:flutter/material.dart';

abstract class IUrlCreator {
  String create({
    @required String endPoint,
    Map<String, dynamic> queryParameters,
    List<String> pathSegments,
    String scheme,
    int port,
  });
}

class UrlCreator implements IUrlCreator {
  static const _urlKey = "corona.lmao.ninja/v2";

  @override
  String create({ String? endPoint,  Map<String, dynamic>? queryParameters, List<String>? pathSegments, String scheme = 'https', int? port,}) {
   return Uri(
     scheme: scheme,
     host: _urlKey,
     port: port,
     pathSegments: [...endPoint!.split('/'), ...(pathSegments ?? [])],
     queryParameters: queryParameters,
   ).toString();
  }
  
}
