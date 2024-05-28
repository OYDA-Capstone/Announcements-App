// ignore_for_file: avoid_print

import 'package:announcements/views/all_announcements.dart';
import 'package:announcements/views/view_announcement.dart';
import 'package:oydadb/oydadb.dart';
// import 'package:announcements/oydadb_pack/oydadb.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String host = 'oydaserver.postgres.database.azure.com';
  String oydabaseName = 'announcements';
  String username = 'oydaadmin';
  String password = 'OhenebaOmar123';
  String devKey = "77775432";
  bool useSSL = true;
  int port = 5432;

  final oydaInterface = OYDAInterface();
  await oydaInterface.setOydaBase(devKey, oydabaseName, host, port, username, password, useSSL);
  final data = await oydaInterface.selectTable('announcements');
  print(data);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Announcements App',
      initialRoute: '/announcements',
      routes: {
        '/announcements': (context) => AllAnnouncementsPage(),
        // '/viewAnnouncement': (context) => ViewAnnouncementPage(announcement: announcements[0])
      },
    );
  }
}
