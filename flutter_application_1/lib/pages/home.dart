import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/world_time.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;
    WorldTime instance = data['time_instance'];
    String bgImage = instance.isDaytime ? 'day.png' : 'night.png';
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              FilledButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = result;
                    });
                  },
                  icon: const Icon(Icons.edit_location),
                  label: const Text("Edit Location")),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(instance.location,
                      style: const TextStyle(fontSize: 28, letterSpacing: 2)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(instance.time, style: const TextStyle(fontSize: 66))
            ],
          ),
        ),
      )),
    );
  }
}
