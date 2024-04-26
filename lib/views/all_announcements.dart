import 'package:announcements/dummy_announcements.dart';
import 'package:announcements/widgets/announcement.dart';
import 'package:announcements/widgets/appbar.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class AllAnnouncementsPage extends StatelessWidget {
  const AllAnnouncementsPage({Key? key}) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(title: "Announcements"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 30.0),
          // child: StreamBuilder<QuerySnapshot>(
          // )
          child: ListView.builder(
            itemCount: announcements.length,
            itemBuilder: (context, index) {
              return AnnouncementWidget(
                announcement: announcements[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
