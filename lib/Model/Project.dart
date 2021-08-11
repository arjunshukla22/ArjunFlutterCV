import 'package:flutter/material.dart';

class Project {
  final String title;
  final String platform;
  final String description;
  final String appURL;

  Project(
      {required this.title,
      required this.platform,
      required this.description,
      required this.appURL});

  static List<Project> fetchAll() {
    return [
      Project(
          title: "Prepladder",
          platform: 'Objective C',
          description:
              'PrepLadder App enables medical students to better utilize their time and prepare on the go. It allows you access to a world of services and preparation material, curated specifically for medical students. The foremost use of the app is that it can supplement your preparation for exams like NEET-PG, AIIMS-PG, NEET-SS, and FMGE, also read blogs and news stories that relate to medical education and keep yourself updated about latest counseling, exams, and books.A one-stop destination for all things related to medical education - packs, study material, news, updates, classes, books and more.',
          appURL: 'https://apps.apple.com/in/app/prepladder/id1257368237'),
      Project(
          title: 'OnePrep',
          platform: 'Swift',
          description:
              "OnePrep is a reliable digital education platform designed especially for aspiring CAs, backed by India’s best CA faculty, the most amazing learning material, and a unique individual-level student support system. It's everything you need to ace CA Intermediate & Final, on one single platform. Features of OnePrep App - Video Lectures, Colored Notes, QBank, Faculty Support",
          appURL: 'https://apps.apple.com/us/app/id1529720146')
    ];
  }
}
