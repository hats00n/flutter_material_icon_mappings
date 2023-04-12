// Import the test package and Counter class
import 'package:flutter_material_icon_mappings/flutter_material_icon_mappings.dart';
import'package:test/test.dart';

void main() {
  test('Should be able to lookup the icons by name properly', () {
    final mapping = FlutterMaterialIconMapping.iconDataFromIconName("interests");

    expect(mapping?.codePoint, 984355);
  });
}