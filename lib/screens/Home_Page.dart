import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switchbloc_class/Switch_bloc/switch_bloc.dart';
import 'package:switchbloc_class/Switch_bloc/switch_event.dart';
import 'package:switchbloc_class/Switch_bloc/switch_state.dart';
import 'package:switchbloc_class/screens/Switch_Screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SwitchBloc>(create: (context) => SwitchBloc(),
    child: SwitchPage(),
    );
  }
}
