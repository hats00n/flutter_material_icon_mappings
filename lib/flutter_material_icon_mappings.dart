library flutter_material_icon_mappings;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterMaterialIconMapping {
  // Singleton instance
  static final FlutterMaterialIconMapping _instance = FlutterMaterialIconMapping._internal();


  // Class variable to store the parsed JSON data
  late Map<String, int> iconNameCodePointMapping;

  // Private constructor
  FlutterMaterialIconMapping._internal() {
    // Read JSON file and populate jsonData
    _readJsonFile('mapping.json');
  }

  // Factory constructor
  factory FlutterMaterialIconMapping() {
    return _instance;
  }

  IconData? iconDataFromIconName(String iconName) {
    return iconNameCodePointMapping.containsKey(iconName) ? IconData(iconNameCodePointMapping[iconName]!, fontFamily: 'MaterialIcons') : null;
  }

  // Read JSON file and populate jsonData
  Future<void> _readJsonFile(String filePath) async {
    try {
      final String jsonString = await rootBundle.loadString("packages/flutter_material_icon_mapping/assets/mapping.json");
      iconNameCodePointMapping = jsonDecode(jsonString);
    } catch (e) {
      iconNameCodePointMapping = {};
      rethrow;
    }
  }
}
