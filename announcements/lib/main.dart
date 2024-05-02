import 'package:announcements/dummy_announcements.dart';
import 'package:announcements/oydabase_package/oydadb.dart';
import 'package:announcements/views/all_announcements.dart';
import 'package:announcements/views/view_announcement.dart';
// import 'package:announcements/widgets/announcement.dart';
// import 'package:announcements/widgets/appbar.dart';
// import 'package:announcements/create_announcement.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String oydabaseName = 'announcements';
  String host = 'localhost';
  int port = 5453;
  String username = 'postgres';
  String password = 'okad';
  bool useSSL = false;
  String devKey = "77775432";

  final oydaInterface = OYDAInterface();
  await oydaInterface.setOydaBase(devKey, oydabaseName, host, port, username, password, useSSL);

  final columns = {
    'id': 'SERIAL PRIMARY KEY',
    'title': 'VARCHAR(255) NOT NULL',
    'content': 'TEXT NOT NULL',
    'posted_date': 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP'
  };
  await oydaInterface.createTable('announcements', columns);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<Announcement> announcements = [
      const Announcement(
          title: "ML Tutorial Session",
          content: "Hello all, If you are interested in the tutorial session, sign up using the link...",
          postedDate: "15 Feb 2024, 00:31"),
      const Announcement(
          title: "Flutter Workshop",
          content: "Hello all, If you are interested in the workshop, sign up using the link...",
          postedDate: "15 Feb 2024, 00:31"),
      const Announcement(
          title: "Dart Tutorial Session",
          content: "Hello all, If you are interested in the tutorial session, sign up using the link...",
          postedDate: "15 Feb 2024, 00:31"),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Announcements App',
      initialRoute: '/announcements',
      routes: {
        '/announcements': (context) => AllAnnouncementsPage(),
        '/viewAnnouncement': (context) => ViewAnnouncementPage(announcement: announcements[0])
      },
    );
  }
}
                    // AnnouncementWidget(
                    //         title: announcements[0].title,
                    //         content: announcements[0].content,
                    //         postedDate: announcements[0].postedDate,
                    //         )