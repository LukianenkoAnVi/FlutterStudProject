// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "date_registration": "Registration date: ",
  "friend_removed": "Friend removed",
  "friend_added": "Friend added",
  "remove_from_friends": "Remove from friends",
  "add_to_friends": "Add to friends",
  "send_message": "Send message",
  "about_me": "About me: ",
  "rank": "Rank: ",
  "favorite_hero": "Favorite hero: ",
  "killed_monsters": "Monsters killed",
  "orders_completed": "Orders completed",
  "equipment_level": "Equipment level"
};
static const Map<String,dynamic> ru = {
  "date_registration": "Дата регистрации: ",
  "friend_removed": "Друг удален",
  "friend_added": "Друг добавлен",
  "remove_from_friends": "Удалить из друзей",
  "add_to_friends": "Добавить в друзья",
  "send_message": "Отправить сообщение",
  "about_me": "Обо мне: ",
  "rank": "Ранг: ",
  "favorite_hero": "Любимый герой: ",
  "killed_monsters": "Убито чудовищ",
  "orders_completed": "Выполнено заказов",
  "equipment_level": "Уровень экипировки"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
