/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class ZipInfo extends SerializableEntity {
  @override
  String get className => 'ZipInfo';

  late int offset;
  late int length;

  ZipInfo({
    required this.offset,
    required this.length,
  });

  ZipInfo.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    offset = _data['offset']!;
    length = _data['length']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'offset': offset,
      'length': length,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'offset': offset,
      'length': length,
    });
  }
}
