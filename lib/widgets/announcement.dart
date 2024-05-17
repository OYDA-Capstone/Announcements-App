import 'package:announcements/dummy_announcements.dart';
import 'package:flutter/material.dart';

class AnnouncementWidget extends StatelessWidget {
  final Announcement announcement;

  const AnnouncementWidget({
    super.key,
    required this.announcement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
          child: Row(
            children: [
              // left column (profile initials)
              Expanded(
                flex: 1,
                child: Container(),
              ),

              // middle column (announcement details)
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/viewAnnouncement', arguments: this);
                      },
                      child: Text(
                        announcement.title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 115, 167, 1),
                        ),
                      ),
                    ),
                    Text(
                      announcement.content,
                      style: const TextStyle(fontSize: 14, color: Color.fromRGBO(51, 51, 51, 1)),
                    ),
                  ],
                ),
              ),
              // right column (posted date)
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      announcement.postedDate,
                      style: const TextStyle(fontSize: 12, color: Color.fromRGBO(68, 68, 68, 1)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 0.3, color: Color.fromRGBO(108, 117, 124, 1)),
      ],
    );
  }
}
