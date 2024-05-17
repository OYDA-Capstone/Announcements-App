// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CreateAnnouncement extends StatefulWidget {
  @override
  _CreateAnnouncementWidgetState createState() => _CreateAnnouncementWidgetState();
}

class _CreateAnnouncementWidgetState extends State<CreateAnnouncement> {
  final _formKey = GlobalKey<FormState>(); // Key for form validation
  String _name = "";
  String _title = "";
  String _content = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Assign form key
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              'Create Announcement',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) => setState(() => _name = value!), // Update name on save
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }
              return null;
            },
            onSaved: (value) => setState(() => _title = value!), // Update title on save
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Content',
              hintMaxLines: 5, // Allow multiple lines for content
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter content';
              }
              return null;
            },
            onSaved: (value) => setState(() => _content = value!), // Update content on save
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save(); // Save form values
                // Handle submission here (e.g., add new announcement)
                print('Name: $_name, Title: $_title, Content: $_content');
                // Clear form fields after submission (optional)
                setState(() {
                  _name = "";
                  _title = "";
                  _content = "";
                });
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
  