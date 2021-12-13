import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class networkHelper {
  String apiKey = '49bea1cb-3484-482d-9f87-a7ebbb1b2f0b';

  Uri urlParse(url) {
    Uri parsedUrl = Uri.parse(url);
    return parsedUrl;
  }

  Future<dynamic> getData(coinName, currency) async {
    var decodedData;

    String apiUrl =
        'https://rest.coinapi.io/v1/exchangerate/$coinName/$currency?apikey=$apiKey';

    http.Response response = await http.get(urlParse(apiUrl));
    if (response.statusCode == 200) {
      decodedData = jsonDecode(response.body);
      print('Handshake success');
    } else {
      decodedData['rate'] = 0.0;
    }

    return decodedData['rate'];
  }
}
