import 'dart:convert';

import 'package:http/http.dart' as http;

final url = 'https://65f7aa6cb4f842e80885ce02.mockapi.io/user/';

Future<List<dynamic>> getAll() async {
  // print('api called :::::::::::::');
  dynamic data = await http.get(Uri.parse(url));

  // print('${data.body} :::::::::::::');
  return jsonDecode(data.body);
}

deleteUser(var id) async {
  await http.delete(Uri.parse(url+id));
}

updateOne(data) async {
  var obj = {
    "name": data[0],
    "age": data[1],
    "detail": data[2],
  };
  var res = await http.put(Uri.parse(url+data[3]), body: obj);
  print(res);
}

insertOne(data) async {
  var obj = {
    "name": data[0],
    "age": data[1],
    "detail": data[2],
  };
  var res = await http.post(Uri.parse(url), body: obj);
  print(res);
}