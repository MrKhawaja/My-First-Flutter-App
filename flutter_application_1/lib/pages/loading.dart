import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void loadWorldTime() async {
    WorldTime instance = WorldTime(location: 'Dhaka', url: 'Asia/Dhaka');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',
        arguments: {'time_instance': instance});
  }

  @override
  void initState() {
    super.initState();
    loadWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SpinKitRing(color: Colors.purple, size: 50.0),
    ));
  }
}
