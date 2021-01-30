import 'dart:math';

import 'package:intervals/app/modules/home/enum.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';


@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int success = 0;

  @observable
  int fail = 0;

  @observable
  String interval = "";

  @observable
  String note = "";

  @observable
  String response = "";

  @observable
  var list = [];

  @observable
  bool visible = false;

  @action
  void isSuccess() {
    success++;
  }

  @action
  void isFail() {
    fail++;
  }

  @action
  void setGame() {
    final random = new Random();
    interval = Enum.INTERVALS[random.nextInt(Enum.INTERVALS.length)];
    note = Enum.NATURAL_NOTES[random.nextInt(Enum.NATURAL_NOTES.length)];
    response = Enum.INTERVAL_NOTES[note][interval];
    var copyNotes = List.from(Enum.NOTES);
    copyNotes.remove(response);
    list = [response];
    for(int i=0;i<3;i++) {
      var n = copyNotes[random.nextInt(copyNotes.length)];
      copyNotes.remove(n);
      list.add(n);
    }
    list.shuffle();
    this.setVisible(false);
  }

  @action
  setVisible(bool s) {
    this.visible = s;

  }


}
