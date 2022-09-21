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

class Image extends SerializableEntity {
  @override
  String get className => 'Image';

  int? id;
  late int bookId;
  late String path;
  late String name;
  late int page;
  ZipInfo? zipInfo;
  String? pHash;

  Image({
    this.id,
    required this.bookId,
    required this.path,
    required this.name,
    required this.page,
    this.zipInfo,
    this.pHash,
  });

  Image.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    bookId = _data['bookId']!;
    path = _data['path']!;
    name = _data['name']!;
    page = _data['page']!;
    zipInfo = _data['zipInfo'] != null
        ? ZipInfo?.fromSerialization(_data['zipInfo'])
        : null;
    pHash = _data['pHash'];
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'bookId': bookId,
      'path': path,
      'name': name,
      'page': page,
      'zipInfo': zipInfo?.serialize(),
      'pHash': pHash,
    });
  }
}
