import 'package:flrx/pages/page.dart';
import 'package:flrx_skeleton/modules/common/pages/viewmodels/counter_page_vm.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget with Page<AppState, CounterPageVM> {
  @override
  Widget buildContent(BuildContext context, CounterPageVM vm) {
    {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                vm.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("auth/login/1");
                },
                child: Text("Go to Login"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: vm.incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
    }
  }

  @override
  CounterPageVM initViewModel() => CounterPageVM();
}
