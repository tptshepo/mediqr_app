import 'package:flutter/material.dart';

class Examination {
  final String date;
  final String title;
  final String summary;
  final String reporter;
  final String action;

  Examination({
    @required this.date,
    @required this.title,
    @required this.summary,
    @required this.reporter,
    @required this.action,
  });
}

final List<Examination> examinsations = [
  Examination(
    date: '11 Jan, 2016',
    title: 'Left Arm X-Ray',
    summary: 'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
    reporter: 'Dr Roman Kutepov',
    action: 'See X-Ray',
  ),
  Examination(
    date: '11 Fed, 2017',
    title: 'Blood Examination',
    summary: 'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
    reporter: 'Dr Roman Kutepov',
    action: 'See Report',
  ),
  Examination(
    date: '11 Dec, 2018',
    title: 'Left Arm X-Ray',
    summary: 'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
    reporter: 'Dr Roman Kutepov',
    action: 'See X-Ray',
  ),
];
