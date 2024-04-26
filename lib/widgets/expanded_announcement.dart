import 'package:announcements/dummy_announcements.dart';
import 'package:flutter/material.dart';

class ExpandedAnnouncementWidget extends StatelessWidget {
  final Announcement announcement;

  const ExpandedAnnouncementWidget({
    required this.announcement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
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
              Row(
                children: [
                  // middle column (announcement details)
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(bottom: 10.0, top: 10.0)),
                        Text(
                          announcement.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 115, 167, 1),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 10.0, top: 10.0)),
                        Text(
                          announcement.content,
                          style: const TextStyle(fontSize: 15, color: Color.fromRGBO(51, 51, 51, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(thickness: 0.3, color: Color.fromRGBO(108, 117, 124, 1)),
      ],
    );
  }
}
