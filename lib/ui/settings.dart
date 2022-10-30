import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidszoo/Provider/theme.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final Uri _whatsapp = Uri.parse('sms:+254742138012');
    final Uri _phone = Uri.parse('tel:+254742138012');
    final Uri _email = Uri.parse(
        'mailto:info@dangakeri254.com?subject=Hello&body=Thank you for contacting Kidszoo Kenya By Climax Technologies! Please let us know how we can help you. We are starting a new revolution in E- Learning and we invite you to Join the Revolution!.');
    Future<void> _launchWhatsapp() async {
      if (!await launchUrl(_whatsapp)) {
        throw 'Could not launch $_whatsapp';
      }
    }

    Future<void> _launchPhone() async {
      if (!await launchUrl(_phone)) {
        throw 'Could not launch $_phone';
      }
    }

    Future<void> _launchEmail() async {
      if (!await launchUrl(_email)) {
        throw 'Could not launch $_email';
      }
    }

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
        // GestureDetector(
        //   onTap: (() {
        //     Share.share('kidszoo');
        //   }),
        //   child: const ListTile(
        //     leading: Icon(Icons.share),
        //     title: Text('Share'),
        //   ),
        // ),
        GestureDetector(
          onTap: (() {
            showDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Text('Contact Us'),
                content: Row(
                  children: [
                    GestureDetector(
                      onTap: _launchEmail,
                      child: Container(
                        child: Column(
                          children: const [
                            Icon(Icons.email),
                            SizedBox(height: 10),
                            Text('Email'),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: _launchPhone,
                      child: Container(
                        child: Column(
                          children: const [
                            Icon(Icons.call),
                            SizedBox(height: 10),
                            Text('Phone'),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: _launchWhatsapp,
                      child: Container(
                        child: Column(
                          children: const [
                            Icon(Icons.message),
                            SizedBox(height: 10),
                            Text('Message'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [CloseButton()],
              ),
            );
          }),
          child: const ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact us'),
          ),
        ),
        GestureDetector(
          onTap: (() {
            showDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Row(
                  children: [
                    Image.asset(
                      'assets/kidzoo.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        const Text('Kidszoo'),
                        SizedBox(height: 5),
                        Text('1.0.0'),
                      ],
                    ),
                  ],
                ),
                content: Text(
                  'Kidszoo is an application designed and built to help children learn basic numbers,alphabets,reading and shapes',
                  style: TextStyle(fontSize: 15),
                ),
                actions: [
                  CupertinoButton(
                      child: Text("Close"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            );
            // showAboutDialog(
            //     context: context,
            //     applicationName: 'Kidszoo',
            //     applicationVersion: '1.0.0',
            //     applicationIcon: Image.asset(
            //       'assets/kidzoo.png',
            //       height: 40,
            //       width: 40,
            //     ),
            //     children: [
            //       const Text(
            //           'Kidszoo is an application designed and built to help children learn basic numbers,alphabets,reading and shapes'),
            //     ]);
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
