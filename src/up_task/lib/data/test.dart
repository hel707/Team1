import 'dart:io';
import 'dart:convert';

// THIS IS TEST FILE (TO BE DELETED LATER)
void main() {
  final String filePath = 'lib/data/jsonFiles/weekly_tasks.json';

  try {
    final File file = File(filePath);

    if (!file.existsSync()) {
      print('File not found: $filePath');
      return;
    }

    final String jsonString = file.readAsStringSync();
    final dynamic jsonData = json.decode(jsonString);

    print('JSON content:');
    print(jsonData);
  } catch (e) {
    print('Error reading and printing JSON file: $e');
  }
}
