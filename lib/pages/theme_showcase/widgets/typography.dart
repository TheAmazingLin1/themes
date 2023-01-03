import 'package:flutter/material.dart';

class Typographies extends StatelessWidget {
  const Typographies({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            "Display Large",
            style: theme.displayLarge,
          ),
          SizedBox(height: 10),
          Text(
            "Display Medium",
            style: theme.displayMedium,
          ),
          SizedBox(height: 10),
          Text(
            "Display Small",
            style: theme.displaySmall,
          ),
          SizedBox(height: 10),
          Text(
            "Headline Large",
            style: theme.headlineLarge,
          ),
          SizedBox(height: 10),
          Text(
            "Headline Medium",
            style: theme.headlineMedium,
          ),
          SizedBox(height: 10),
          Text(
            "Headline Small",
            style: theme.headlineSmall,
          ),
          SizedBox(height: 10),
          Text(
            "Title Large",
            style: theme.titleLarge,
          ),
          SizedBox(height: 10),
          Text(
            "Title Medium",
            style: theme.titleMedium,
          ),
          SizedBox(height: 10),
          Text(
            "Title Small",
            style: theme.titleSmall,
          ),
          SizedBox(height: 10),
          Text(
            "Label Large",
            style: theme.labelLarge,
          ),
          SizedBox(height: 10),
          Text(
            "Label Medium",
            style: theme.labelMedium,
          ),
          SizedBox(height: 10),
          Text(
            "Label Small",
            style: theme.labelSmall,
          ),
          SizedBox(height: 10),
          Text(
            "Body Large",
            style: theme.bodyLarge,
          ),
          SizedBox(height: 10),
          Text(
            "Body Medium",
            style: theme.bodyMedium,
          ),
          SizedBox(height: 10),
          Text(
            "Body Small",
            style: theme.bodySmall,
          ),
        ],
      ),
    );
  }
}
