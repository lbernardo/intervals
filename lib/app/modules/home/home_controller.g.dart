// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$successAtom = Atom(name: '_HomeControllerBase.success');

  @override
  int get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(int value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$failAtom = Atom(name: '_HomeControllerBase.fail');

  @override
  int get fail {
    _$failAtom.reportRead();
    return super.fail;
  }

  @override
  set fail(int value) {
    _$failAtom.reportWrite(value, super.fail, () {
      super.fail = value;
    });
  }

  final _$intervalAtom = Atom(name: '_HomeControllerBase.interval');

  @override
  String get interval {
    _$intervalAtom.reportRead();
    return super.interval;
  }

  @override
  set interval(String value) {
    _$intervalAtom.reportWrite(value, super.interval, () {
      super.interval = value;
    });
  }

  final _$noteAtom = Atom(name: '_HomeControllerBase.note');

  @override
  String get note {
    _$noteAtom.reportRead();
    return super.note;
  }

  @override
  set note(String value) {
    _$noteAtom.reportWrite(value, super.note, () {
      super.note = value;
    });
  }

  final _$responseAtom = Atom(name: '_HomeControllerBase.response');

  @override
  String get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(String value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  final _$listAtom = Atom(name: '_HomeControllerBase.list');

  @override
  List<dynamic> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<dynamic> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$visibleAtom = Atom(name: '_HomeControllerBase.visible');

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void isSuccess() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.isSuccess');
    try {
      return super.isSuccess();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isFail() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.isFail');
    try {
      return super.isFail();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGame() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setGame');
    try {
      return super.setGame();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVisible(bool s) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setVisible');
    try {
      return super.setVisible(s);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
success: ${success},
fail: ${fail},
interval: ${interval},
note: ${note},
response: ${response},
list: ${list},
visible: ${visible}
    ''';
  }
}
