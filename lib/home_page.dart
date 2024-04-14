import 'package:demo_flutter/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isFriendAdded = false;

  void _toggleFriendStatus() {
    setState(() {
      _isFriendAdded = !_isFriendAdded;
    });
  }

  void _sendMessage() {}

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double scaleFactor;

    if (screenSize.width > 950) {
      scaleFactor = 1.0;
    } else if (screenSize.width > 820) {
      scaleFactor = 0.9;
    } else if (screenSize.width > 650) {
      scaleFactor = 0.8;
    } else if (screenSize.width > 570) {
      scaleFactor = 0.7;
    } else {
      scaleFactor = 0.6;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Witcherus',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'OldStandardTT',

                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {
                    const Locale("ru") == context.locale
                        ? context.setLocale(const Locale("en"))
                        : context.setLocale(const Locale("ru"));
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.brown,
                    ),
                  ),
                  child: Text(context.locale.toString()),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10 * scaleFactor),
                child: CircleAvatar(
                  radius: 150 * scaleFactor,
                  backgroundImage: const AssetImage('assets/geralt.gif'),
                ),
              ),
              SizedBox(height: 25 * scaleFactor),
              Text(
                '#Main_Name',
                style: TextStyle(fontSize: 18 * scaleFactor),
              ),
              SizedBox(height: 20 * scaleFactor),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String message = _isFriendAdded
                          ? LocaleKeys.friend_removed.tr()
                          : LocaleKeys.friend_added.tr();
                      _toggleFriendStatus();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message)),
                      );
                    },
                    child: Text(
                      _isFriendAdded
                          ? LocaleKeys.remove_from_friends.tr()
                          : LocaleKeys.add_to_friends.tr(),
                    ),
                  ),
                  SizedBox(width: 10 * scaleFactor),
                  ElevatedButton(
                    onPressed: _sendMessage,
                    child: const Icon(Icons.send),
                  ),
                ],
              ),
              SizedBox(height: 20 * scaleFactor),
              Text(
                '${LocaleKeys.date_registration.tr()}#Registration_Date',
                style: TextStyle(fontSize: 14 * scaleFactor),
              ),
              SizedBox(height: 30 * scaleFactor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0 * scaleFactor),
                child: Text(
                  '${LocaleKeys.about_me.tr()}#About_Player',
                  style: TextStyle(fontSize: 14 * scaleFactor),
                ),
              ),
              SizedBox(height: 20 * scaleFactor),
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(20.0 * scaleFactor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${LocaleKeys.rank.tr()}#Rank_Player',
                      style: TextStyle(fontSize: 16 * scaleFactor),
                    ),
                    SizedBox(height: 15 * scaleFactor),
                    Text(
                      '${LocaleKeys.favorite_hero.tr()}#Favorite_Hero ',
                      style: TextStyle(fontSize: 18 * scaleFactor),
                    ),
                    SizedBox(height: 15 * scaleFactor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              LocaleKeys.killed_monsters.tr(),
                              style: TextStyle(fontSize: 16 * scaleFactor),
                            ),
                            Text(
                              '#Achievement_Killed_Monsters',
                              style: TextStyle(fontSize: 16 * scaleFactor),
                            ),
                          ],
                        ),
                        SizedBox(width: 20 * scaleFactor),
                        Column(
                          children: [
                            Text(
                              LocaleKeys.orders_completed.tr(),
                              style: TextStyle(fontSize: 16 * scaleFactor),
                            ),
                            Text(
                              '#Achievement_Orders_Completed',
                              style: TextStyle(fontSize: 16 * scaleFactor),
                            ),
                          ],
                        ),
                        SizedBox(width: 20 * scaleFactor),
                        Column(
                          children: [
                            Text(
                              LocaleKeys.equipment_level.tr(),
                              style: TextStyle(fontSize: 16 * scaleFactor),
                            ),
                            Text(
                              '#Achievement_Equipment_level',
                              style: TextStyle(fontSize: 16 * scaleFactor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
