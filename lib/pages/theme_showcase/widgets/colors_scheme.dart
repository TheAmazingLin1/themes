import 'package:flutter/material.dart';

class CardColors {
  String title;
  Color color;

  CardColors(this.title, this.color);
}

class ColorsScheme extends StatelessWidget {
  const ColorsScheme({super.key});

  Widget _colorCard(BuildContext context, List<CardColors> colors,
      {bool whiteText = false}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: colors.length * 40,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            for (final color in colors)
              _cardSegment(context, color.title, color.color)
          ],
        ),
      ),
    );
  }

  Widget _cardSegment(BuildContext context, String title, Color color) {
    return Expanded(
      child: Container(
        color: color,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        child: Text(title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          _colorCard(
            context,
            [
              CardColors("primary", colorScheme.primary),
              CardColors("onPrimary", colorScheme.onPrimary),
              CardColors("primaryContainer", colorScheme.primaryContainer),
              CardColors("onPrimaryContainer", colorScheme.onPrimaryContainer),
            ],
          ),
          _colorCard(
            context,
            [
              CardColors("secondary", colorScheme.secondary),
              CardColors("onSecondary", colorScheme.onSecondary),
              CardColors("secondaryContainer", colorScheme.secondaryContainer),
              CardColors(
                  "onSecondaryContainer", colorScheme.onSecondaryContainer),
            ],
          ),
          _colorCard(
            context,
            [
              CardColors("tertiary", colorScheme.tertiary),
              CardColors("onTertiary", colorScheme.onTertiary),
              CardColors("tertiaryContainer", colorScheme.tertiaryContainer),
              CardColors(
                  "onTertiaryContainer", colorScheme.onTertiaryContainer),
            ],
          ),
          _colorCard(
            context,
            [
              CardColors("error", colorScheme.error),
              CardColors("onError", colorScheme.onError),
              CardColors("errorContainer", colorScheme.errorContainer),
              CardColors("onErrorContainer", colorScheme.onErrorContainer),
            ],
          ),
          _colorCard(
            context,
            [
              CardColors("background", colorScheme.background),
              CardColors("onBackground", colorScheme.onBackground),
            ],
          ),
          _colorCard(
            context,
            [
              CardColors("surface", colorScheme.surface),
              CardColors("onSurface", colorScheme.onSurface),
              CardColors("surfaceVariant", colorScheme.surfaceVariant),
              CardColors("onSurfaceVariant", colorScheme.onSurfaceVariant),
            ],
          ),
          _colorCard(
            context,
            [
              CardColors("outline", colorScheme.outline),
              CardColors("shadow", colorScheme.shadow),
              CardColors("inverseSurface", colorScheme.inverseSurface),
              CardColors("onInverseSurface", colorScheme.onInverseSurface),
              CardColors("inversePrimary", colorScheme.inversePrimary),
            ],
          ),
        ],
      ),
    );
  }
}
