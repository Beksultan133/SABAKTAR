


import 'package:sabak12_quize_app_2/model.dart';

class UseQuize {
  int index = 0;
  List<QuizeModel> surooJoop = [
    QuizeModel(suroo: 'Кыргызстанда 7 область барбы?', joop: true),
    QuizeModel(suroo: 'Сулайман Тоо Жалал-Абад облусундабы?', joop: false),
    QuizeModel(suroo: 'Маймыл бакка чыга алабы?', joop: true),
    QuizeModel( suroo: 'Google корпорациясы кеңсеси Кыргызстанда жайгашканбы?',joop: false),
    QuizeModel(suroo: 'Балык сууда жашайбы?', joop: true),
  ];

  String surooAluu() {
    return surooJoop[index].suroo;
  }

  bool joopAluu() {
    return surooJoop[index].joop;
  }

  void nextQuestion() {
    if (index <= surooJoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (surooJoop[index] == surooJoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
