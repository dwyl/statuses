library statuses;

import 'dart:convert';
import 'dart:io';

/// Class holding a quote information
class StatusInfo {
  final int code;
  final String desc;
  final String text;

  StatusInfo(this.code, this.desc, this.text);

  factory StatusInfo.fromJson(Map<String, dynamic> json) {
    return StatusInfo(
      json['code'],
      json['desc'],
      json['text']
    );
  }
}

/// Static class that can be invoked to fetch quotes
class Statuses {

  /// Loads the information from the `.json` file containing the quotes list.
  static Future<List<StatusInfo>> _statusesList() async {
    String jsonString = await File('statuses.json').readAsString();
    List<dynamic> jsonList = json.decode(jsonString);
    List<StatusInfo> statuses = jsonList.map((json) => StatusInfo.fromJson(json)).toList();
    return statuses;
  }

  /// Returns a list of quotes
  static Future<List<StatusInfo>> list() async {
    return await _statusesList();
  }
}