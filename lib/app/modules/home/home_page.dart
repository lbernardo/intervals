
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Treinando intervalos"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  startGame() {
    setState(() {
      controller.setGame();
    });
  }

  void response(String value) {
    if (controller.visible) {
      return;
    }
    if (value == controller.response) {
      setState(() {
        controller.isSuccess();
      });
    } else {
      setState(() {
        controller.isFail();
      });
    }
    setState(() {
      controller.setVisible(true);
      Future.delayed(const Duration(milliseconds: 2000), () {
        setState(() {
          controller.setGame();
        });
      });
    });
  }

   colorButton(String v) {
    if (!controller.visible) {
      return Colors.grey;
    }
    return (v == controller.response) ? Colors.green[100] : Colors.red[100];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 40)),
          Text('Intervalo ${controller.interval}'),
          Center(
            child: Text(
              controller.note,
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              controller.list.length,
              (index) => RaisedButton(
                color:  colorButton(controller.list[index]),
                onPressed: () {
                  response(controller.list[index]);
                },
                child: Text(controller.list[index],
                    style: TextStyle(fontSize: 40.0)),
              ),
            ),
          )),
          Text('Acertos: ${controller.success}'),
          Text('Erros: ${controller.fail}'),
        ],
      ),
    );
  }
}
