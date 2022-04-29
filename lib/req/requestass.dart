import 'package:http/http.dart' as http;
import 'dart:convert';

class Requestassis {
  static Future<dynamic> getrequest(String url, String uri, var q) async {
    http.Response response = await http.get(Uri.https(url, uri, q));

    try {
      if (response.statusCode == 200) {
        String jsonData = response.body;
        var decodeData = jsonDecode(jsonData);
        return decodeData;
      } else {
        return "failed";
      }
    } catch (exp) {
      return "failed";
    }
  }
}
