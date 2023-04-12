import 'package:flutter/material.dart';
import 'package:flutter_material_icon_mappings/mapping.dart';

class FlutterMaterialIconMapping {
  static IconData? iconDataFromIconName(String iconName) {
    return materialIconMapping.containsKey(iconName) ? IconData(materialIconMapping[iconName]!, fontFamily: 'MaterialIcons') : null;
  }
}
