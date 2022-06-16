import 'package:flutter/material.dart';
import 'models/record.dart';
import 'helpers/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Record record;
  DetailPage({required this.record});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(record.name),
        ),
        body: ListView(
          children: <Widget>[
            Hero(
              tag: "avatar_" + record.name,
              child: Image.network(record.photo),
            ),
            GestureDetector(
              onTap: () {
                URLLauncher().launchURL(record.url);
              },
              child: Container(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Name: " + record.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Company: " + record.company,
                            style: TextStyle(color: Colors.grey[500]),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.red[500],
                    ),
                    Text(record.contact),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}