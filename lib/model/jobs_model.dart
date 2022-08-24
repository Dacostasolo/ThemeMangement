import 'package:flutter/material.dart';

class JobDetails {
  final IconData icon;
  final String title;
  final String description;
  final String startDate;
  final String country;
  final String jobType;

  JobDetails(
      {required this.icon,
      required this.title,
      required this.country,
      required this.description,
      required this.jobType,
      required this.startDate});

  static List<JobDetails> get jobList => [
        JobDetails(
            icon: Icons.work,
            title: 'Software Engineer',
            country: 'USA',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
            jobType: 'Full Time',
            startDate: '01/01/2020'),
        JobDetails(
          icon: Icons.work,
          title: 'Full Stack Developer',
          country: 'Canada',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          jobType: 'Remote',
          startDate: '11/12/2021',
        ),
        JobDetails(
            icon: Icons.work,
            title: 'Web Developer',
            country: 'Spain',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
            jobType: 'Full Time',
            startDate: '01/01/2020'),
        JobDetails(
            icon: Icons.work,
            title: 'Web Developer',
            country: 'Spain',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
            jobType: 'Full Time',
            startDate: '01/01/2020'),
        JobDetails(
            icon: Icons.work,
            title: 'Mobile App Developer',
            country: 'Ghana',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
            jobType: 'Full Time',
            startDate: '01/01/2020'),
      ];
}
