import 'package:flutter/material.dart';

mixin ThemeDataService {
  // It may come in handy
  // ThemeData (https://api.flutter.dev/flutter/material/ThemeData-class.html)
  // ColorScheme (https://api.flutter.dev/flutter/material/ColorScheme-class.html)

  static ThemeData get themeData => customThemeData;

  /// Classic ThemeData
  ///
  /// They are by default and there is no need to designate colors
  static ThemeData classicDarkThemeData = ThemeData.dark();
  static ThemeData classicLightThemeData = ThemeData.light();

  /// ThemeData.from
  ///
  /// Makes ThemeData based on your ColorScheme
  // So a darker color scheme is possible
  static ThemeData colorSchemeThemeData1 =
      ThemeData.from(colorScheme: const ColorScheme.dark());
  // Or get a contrasting white
  static ThemeData colorSchemeThemeData2 =
      ThemeData.from(colorScheme: const ColorScheme.light());

  static ThemeData colorSchemeThemeData3 =
      ThemeData.from(colorScheme: const ColorScheme.highContrastDark());
  static ThemeData colorSchemeThemeData4 =
      ThemeData.from(colorScheme: const ColorScheme.highContrastLight());

  // You can also make a ThemeData based on Color
  static ThemeData localThemeData = ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
  );

  // The second option (Preferred!)
  static ThemeData localThemeData2 = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange));

  // So for example the themes from Notify (https://github.com/meg4cyberc4t/notify)
  static ThemeData darkThemeDataNotify = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6EC6CA), brightness: Brightness.dark));
  static ThemeData lightThemeDataNotify = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8474A1)));

  // Well, you can always make your own clean ThemeData
  static ThemeData customThemeData = ThemeData(
    // Define the default brightness and colors.
    // brightness: Brightness.dark,
    primarySwatch: Colors.red,

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.bold),
      headline6: TextStyle(fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
