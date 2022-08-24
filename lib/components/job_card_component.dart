import 'package:flutter/material.dart';

import '../presentation/constants.dart';

class JobCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String startDate;
  final String country;
  final String jobType;

  const JobCard(
      {required this.icon,
      required this.title,
      required this.country,
      required this.description,
      required this.jobType,
      required this.startDate,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadiusDirectional.circular(defaultBorderRadius)),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(defaultBorderRadius)),
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    child: Icon(icon),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: defaultBorderRadius * 0.8),
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Container(
                    width: defaultPadding * 4,
                    height: defaultPadding * 2,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                          backgroundColor:
                              MaterialStateProperty.all(blueColor)),
                      child: Text(
                        'Open',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: textColorLightTheme,
                            fontSize: defaultFontSize * 0.8),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.work,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  label: Text(jobType,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: defaultFontSize * 0.7))),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.location_on,
                      color: Theme.of(context).iconTheme.color),
                  label: Text(country,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: defaultFontSize * 0.7))),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.timelapse,
                      color: Theme.of(context).iconTheme.color),
                  label: Text(
                    startDate,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: defaultFontSize * 0.7),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
