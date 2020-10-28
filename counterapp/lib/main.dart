import 'package:counterapp/blocs/counter_bloc.dart';
import 'package:counterapp/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc()
        ),
      ],
      child: MaterialApp(
        home: CounterPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
