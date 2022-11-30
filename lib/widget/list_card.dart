// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'big_text.dart';
import 'colors.dart';

class ListCard extends StatefulWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, right: 10, left: 10),
            margin: EdgeInsets.only(bottom: 0),
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                      margin: EdgeInsets.only(bottom: 0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColors.noteaColor,
                      ),
                      child: Icon(
                        Icons.description,
                        color: AppColors.notebColor,
                      )),
                  title: BigText(
                    text: '1',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    size: 18,
                  ),
                  subtitle: Text(
                    'Applications',
                    style: TextStyle(fontSize: 14, color: AppColors.greyColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
