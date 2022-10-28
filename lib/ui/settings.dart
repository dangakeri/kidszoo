import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidszoo/Provider/theme.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

// import '../Theme/theme_manager.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).buttonColor,
          ),
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          child: ListTile(
            leading: const Icon(Icons.brightness_3),
            trailing: CupertinoSwitch(
              value: themeChanger.darkTheme,
              onChanged: (newValue) {
                setState(() {
                  themeChanger.darkTheme = newValue;
                });
              },
            ),
            title: const Text('Dark theme'),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Share.share('hello this me');
          }),
          child: const ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
          ),
        ),
        GestureDetector(
          onTap: (() {
            showAboutDialog(
                context: context,
                applicationName: 'Kidszoo',
                applicationVersion: '1.0.0',
                applicationIcon: Image.asset(
                  'assets/kidzoo.png',
                  height: 40,
                  width: 40,
                ),
                children: [
                  const Text(
                      'Kidszoo is an application designed and built to help children learn basic numbers,alphabets,reading and shapes'),
                ]);
          }),
          child: const ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
          ),
        )
      ]),
    );
  }
}
