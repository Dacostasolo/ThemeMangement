import 'package:get/get.dart';

import '../components/job_card_component.dart';
import '../model/jobs_model.dart';
import '../presentation/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Text(
                "Go Jobs",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, i) => JobCard(
                          icon: JobDetails.jobList[i].icon,
                          title: JobDetails.jobList[i].title,
                          country: JobDetails.jobList[i].country,
                          description: JobDetails.jobList[i].description,
                          jobType: JobDetails.jobList[i].jobType,
                          startDate: JobDetails.jobList[i].startDate),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: defaultPadding),
                      itemCount: JobDetails.jobList.length))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Get.theme.textTheme.bodyText1!.color,
        onPressed: () => Get.changeThemeMode(
          Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
        ),
        child: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
      ),
    );
  }
}
