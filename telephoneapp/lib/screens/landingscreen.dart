import 'package:flutter/material.dart';
import 'package:telephoneapp/widgets/searchbox.dart';

class LandingScreen extends StatelessWidget
{
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
        appBar: AppBar(
                       title: const Text("Telephone Directory"),
                       backgroundColor: const Color.fromARGB(255,201,112,72),
                       centerTitle: true,
                      ),
                      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const SearchBox(),
         body: const Center(
          child: Text("Telephone Directory ",style: TextStyle(color: Color.fromARGB(255,201,112,72)),),
         ),
      );
  }

}