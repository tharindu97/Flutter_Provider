import 'package:counterapp/blocs/counter_bloc.dart';
import 'package:counterapp/widgets/dicrement.dart';
import 'package:counterapp/widgets/increment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 45),
              ),
              IncrementButton(),
              DecrementButton()
            ],
          ),
        ),
      ),
    );
  }
}