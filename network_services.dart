import 'package:http/http.dart' as http;   //Package Used

class NetworkService {
  Future<void> fetchTasks() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

    if (response.statusCode == 200) {
      // Print Raw JSON
      print(response.body);
    } else {
      print("Failed");
      print(response.statusCode);
    }
  }
}
