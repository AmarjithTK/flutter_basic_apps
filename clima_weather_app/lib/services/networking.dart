import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  Future<dynamic> getData(fetchurl) async {
    Uri url = Uri.parse(fetchurl);
    http.Response jsonresponse = await http.get(url);
    if (jsonresponse.statusCode == 200) {
      print('handshake success');
      var jsondata = jsonDecode(jsonresponse.body);
      return jsondata;
    }

    return null;
  }
}
