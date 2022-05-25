import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Statless widget as stateful widget'),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: toggle,
            builder: (context, value, child){
              return TextFormField(
            obscureText: toggle.value,
            decoration: InputDecoration(
              hintText: 'password',
              suffix: InkWell(
                onTap: () {
                  toggle.value = !toggle.value;
                },
                child: toggle.value
                    ? Icon(Icons.visibility_off_outlined)
                    : Icon(Icons.visibility),
              ),
            ),
          );

            },
          ),
          
          Center(
            child: ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context, value, child) {
                  return Text(
                    _counter.value.toString(),
                    style: TextStyle(fontSize: 30),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
