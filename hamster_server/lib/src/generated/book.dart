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

class Book extends TableRow {
  @override
  String get className => 'Book';
  @override
  String get tableName => 'book';

  static final t = BookTable();

  @override
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

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'cover': cover,
      'tags': tags,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'cover': cover,
      'tags': tags,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'subtitle':
        subtitle = value;
        return;
      case 'cover':
        cover = value;
        return;
      case 'tags':
        tags = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Book>> find(
    Session session, {
    BookExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Book>(
      where: where != null ? where(Book.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Book?> findSingleRow(
    Session session, {
    BookExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Book>(
      where: where != null ? where(Book.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Book?> findById(Session session, int id) async {
    return session.db.findById<Book>(id);
  }

  static Future<int> delete(
    Session session, {
    required BookExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Book>(
      where: where(Book.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Book row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Book row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Book row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    BookExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Book>(
      where: where != null ? where(Book.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef BookExpressionBuilder = Expression Function(BookTable t);

class BookTable extends Table {
  BookTable() : super(tableName: 'book');

  @override
  String tableName = 'book';
  final id = ColumnInt('id');
  final title = ColumnString('title');
  final subtitle = ColumnString('subtitle');
  final cover = ColumnString('cover');
  final tags = ColumnSerializable('tags');

  @override
  List<Column> get columns => [
        id,
        title,
        subtitle,
        cover,
        tags,
      ];
}

@Deprecated('Use BookTable.t instead.')
BookTable tBook = BookTable();
