/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class Tag extends TableRow {
  @override
  String get className => 'Tag';
  @override
  String get tableName => 'tag';

  static final t = TagTable();

  @override
  int? id;
  late tag name;
  String? cover;

  Tag({
    this.id,
    required this.name,
    this.cover,
  });

  Tag.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    name = tag.fromSerialization(_data['name']);
    cover = _data['cover'];
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'name': name.serialize(),
      'cover': cover,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'name': name.serialize(),
      'cover': cover,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'name': name.serialize(),
      'cover': cover,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'cover':
        cover = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Tag>> find(
    Session session, {
    TagExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Tag>(
      where: where != null ? where(Tag.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Tag?> findSingleRow(
    Session session, {
    TagExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Tag>(
      where: where != null ? where(Tag.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Tag?> findById(Session session, int id) async {
    return session.db.findById<Tag>(id);
  }

  static Future<int> delete(
    Session session, {
    required TagExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Tag>(
      where: where(Tag.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Tag row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Tag row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Tag row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    TagExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Tag>(
      where: where != null ? where(Tag.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TagExpressionBuilder = Expression Function(TagTable t);

class TagTable extends Table {
  TagTable() : super(tableName: 'tag');

  @override
  String tableName = 'tag';
  final id = ColumnInt('id');
  final name = ColumnSerializable('name');
  final cover = ColumnString('cover');

  @override
  List<Column> get columns => [
        id,
        name,
        cover,
      ];
}

@Deprecated('Use TagTable.t instead.')
TagTable tTag = TagTable();
