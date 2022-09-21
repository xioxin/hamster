/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod_client/serverpod_client.dart';
import 'dart:typed_data';
import 'protocol.dart';

class Book extends SerializableEntity {
  @override
  String get className => 'Book';

  int? id;
  late String title;
  String? subtitle;
  String? cover;
  late List<int> tags;

  Book({
    this.id,
    required this.title,
    this.subtitle,
    this.cover,
    required this.tags,
  });

  Book.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    title = _data['title']!;
    subtitle = _data['subtitle'];
    cover = _data['cover'];
    tags = _data['tags']!.cast<int>();
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'cover': cover,
      'tags': tags,
    });
  }
}
