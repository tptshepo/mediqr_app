import 'package:flutter/material.dart';

class Examination {
  final String date;
  final String title;
  final String summary;
  final String reporter;

  Examination({
    @required this.date,
    @required this.title,
    @required this.summary,
    @required this.reporter,
  });
}

final List<Examination> examinsations = [
  Examination(
    date: '11 Jan, 2016',
    title: 'Left Arm X-Ray',
    summary: 'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
    reporter: 'Dr Roman Kutepov',
  ),
  Examination(
    date: '11 Fed, 2017',
    title: 'Left Arm X-Ray',
    summary: 'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
    reporter: 'Dr Roman Kutepov',
  ),
  Examination(
    date: '11 Dec, 2018',
    title: 'Left Arm X-Ray',
    summary: 'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
    reporter: 'Dr Roman Kutepov',
  ),
];
