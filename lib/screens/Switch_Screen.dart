import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Switch_bloc/switch_bloc.dart';
import '../Switch_bloc/switch_event.dart';
import '../Switch_bloc/switch_state.dart';


class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      appBar: AppBar(title: Text('Switch  Example here',style: TextStyle(
        color: Colors.orangeAccent,
        fontSize: 26,
        fontWeight: FontWeight.w700
      ),),
        backgroundColor: Colors.blue,
        centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<SwitchBloc,SwitchState>(builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Switch(
                    activeColor: Colors.indigo,
                    activeTrackColor: Colors.blue,
                    inactiveThumbColor: Colors.black,
                    value: state.value, onChanged: (change) {
                    context.read<SwitchBloc>().add(SwitchChangeEvent());
                    // to check the value state
                    print(state.value);
                  },),
                  // to make the value print in the Screen
                  state.value? Text('True',
                    style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.w700
                  ),
                  ) : Text('False',style: TextStyle(
                      color: Colors.black54,
                      fontSize: 26,
                      fontWeight: FontWeight.w700
                  ),),

                ],
              );
            },
            ),


          ],
        ),
      ),
    );
  }
}
