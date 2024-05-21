import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oydadb/oydadb.dart';
import 'package:announcements/main.dart';

void main() {
  String host = 'oydaserver.postgres.database.azure.com';
  String oydabaseName = 'announcements';
  String username = 'oydaadmin';
  String password = 'OhenebaOmar123';
  String devKey = "77775432";
  bool useSSL = true;
  int port = 5432;

  test('setOydaBase', () async {
    final oydaInterface = OYDAInterface();
    await oydaInterface.setOydaBase(devKey, oydabaseName, host, port, username, password, useSSL);
  });

  test('createTable', () async {
    final oydaInterface = OYDAInterface();
    await oydaInterface.setOydaBase(devKey, oydabaseName, host, port, username, password, useSSL);
    final columns = {
      'id': 'SERIAL',
      'title': 'VARCHAR(255)',
      'content': 'TEXT',
      'postedDate': 'TIMESTAMP',
    };
    await oydaInterface.createTable('announcements', columns);

    final values = {
      'title': 'ML Tutorial Session',
      'content': 'Hello all, If you are interested in the tutorial session, sign up using the link...',
      'postedDate': '15 Feb 2024, 00:31'
    };
    await oydaInterface.insertRows('announcements', values);

    final values2 = {
      'title': 'Flutter Workshop',
      'content': 'Hello all, If you are interested in the workshop, sign up using the link...',
      'postedDate': '15 Feb 2024, 00:31'
    };
    await oydaInterface.insertRows('announcements', values2);

    final values3 = {
      'title': 'Dart Tutorial Session',
      'content': 'Hello all, If you are interested in the tutorial session, sign up using the link...',
      'postedDate': '15 Feb 2024, 00:31'
    };
    await oydaInterface.insertRows('announcements', values3);

  });

  test('selectTable', () async {
    final oydaInterface = OYDAInterface();
    await oydaInterface.setOydaBase(devKey, oydabaseName, host, port, username, password, useSSL);
    final data = await oydaInterface.selectTable('announcements');
    print(data);
  });

  test('dropTable', () async {
    final oydaInterface = OYDAInterface();
    await oydaInterface.setOydaBase(devKey, oydabaseName, host, port, username, password, useSSL);
    await oydaInterface.dropTable('announcements');
  });
}
