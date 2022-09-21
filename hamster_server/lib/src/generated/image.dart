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

class Image extends TableRow {
  @override
  String get className => 'Image';
  @override
  String get tableName => 'image';

  static final t = ImageTable();

  @override
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

  @override
  Map<String, dynamic> serializeForDatabase() {
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

  @override
  Map<String, dynamic> serializeAll() {
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

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      case 'path':
        path = value;
        return;
      case 'name':
        name = value;
        return;
      case 'page':
        page = value;
        return;
      case 'zipInfo':
        zipInfo = value;
        return;
      case 'pHash':
        pHash = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Image>> find(
    Session session, {
    ImageExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Image>(
      where: where != null ? where(Image.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Image?> findSingleRow(
    Session session, {
    ImageExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Image>(
      where: where != null ? where(Image.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Image?> findById(Session session, int id) async {
    return session.db.findById<Image>(id);
  }

  static Future<int> delete(
    Session session, {
    required ImageExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Image>(
      where: where(Image.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Image row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Image row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Image row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    ImageExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Image>(
      where: where != null ? where(Image.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ImageExpressionBuilder = Expression Function(ImageTable t);

class ImageTable extends Table {
  ImageTable() : super(tableName: 'image');

  @override
  String tableName = 'image';
  final id = ColumnInt('id');
  final bookId = ColumnInt('bookId');
  final path = ColumnString('path');
  final name = ColumnString('name');
  final page = ColumnInt('page');
  final zipInfo = ColumnSerializable('zipInfo');
  final pHash = ColumnString('pHash');

  @override
  List<Column> get columns => [
        id,
        bookId,
        path,
        name,
        page,
        zipInfo,
        pHash,
      ];
}

@Deprecated('Use ImageTable.t instead.')
ImageTable tImage = ImageTable();
