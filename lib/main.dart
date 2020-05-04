import 'package:bmslib/src/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bmslib/src/services/auth.dart';
import 'package:bmslib/src/models/notifiers/theme_notifier.dart';
//import 'package:bmslib/src/models/notifiers/book_notifier.dart';
import 'package:bmslib/src/theme/theme.dart' as libraryTheme;
import 'package:bmslib/src/screens/splash/splash_screen.dart';

void main() => runApp(BMSLib());

class BMSLib extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
        //ChangeNotifierProvider(create: (_) => BookNotifier()),
        // StreamProvider<User>.value(
        //   value: AuthService().user,
        // ),
      ],
      child: MaterialAppWithTheme(), //add wrapper here
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      darkTheme: libraryTheme.Theme.darkTheme,
      theme: themeNotifier.darkModeEnabled
          ? libraryTheme.Theme.darkTheme
          : libraryTheme.Theme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: CurrentScreen(),
    );
  }
}
