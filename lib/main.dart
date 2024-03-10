import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Witcherus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//
        backgroundColor: Colors.brown,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(width: 20),
            Text(
              'Witcherus',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'OldStandardTT',
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const CircleAvatar(
               radius: 130,
               backgroundImage: NetworkImage(
                   'https://steamuserimages-a.akamaihd.net/ugc/924805934474325870/21046C4096E20AB8D84AB2978F9206B0A0317E3C/'),
             ),
           // const Icon(
           //   Icons.account_circle,
           //   size: 130,
           //   color: Colors.blue,
           // ),
            const SizedBox(height: 25),
            const Text(
              'Лукьяненко Андрей Викторович',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String message =
                _isFriendAdded ? 'Друг удален' : 'Друг добавлен';
                _toggleFriendStatus();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
              child: Text(
                  _isFriendAdded ? 'Удалить из друзей' : 'Добавить в друзья'),
            ),
            const SizedBox(height: 20),

            const Text(
              'Дата регистрации: 25 мая 2020',
              style: TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Обо мне: Докучает Виверна или Болотник? Бывает) Я в Дубай уехал',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(20.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Ранг: Мастер',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Любимый герой: Геральт из Ривии',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Убито чудовищ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '255',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            'Выполнено заказов',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '45',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            'Уровень экипировки',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '28',
                            style: TextStyle(fontSize: 16),
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
    );
  }
}