import 'package:announcements/dummy_announcements.dart';
import 'package:announcements/widgets/appbar.dart';
import 'package:announcements/widgets/expanded_announcement.dart';
import 'package:flutter/material.dart';
import 'package:announcements/widgets/announcement.dart';

class ViewAnnouncementPage extends StatelessWidget {
  final Announcement announcement;

  ViewAnnouncementPage({required this.announcement});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(title: "Announcements"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 30.0),
          child: ExpandedAnnouncementWidget(
            announcement: announcement,
          ),
        ),
      ),
    );
  }
}
