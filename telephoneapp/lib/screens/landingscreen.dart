import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:telephoneapp/widgets/searchbox.dart';
import 'package:telephoneapp/models/individual.dart';
import 'package:http/http.dart' as http;

List<individual> individuals=[];
int val=0;
class LandingScreen extends StatefulWidget
{
  const LandingScreen({super.key});
  @override
  State<LandingScreen> createState()
  {
    return _LandingScreenState();
  }
}

class _LandingScreenState extends State<LandingScreen>
{
  
  Future<void> _fetchindividuals() async {
    final response = await http.get(Uri.parse("http://telephone.nitk.ac.in/api/v1/faculties"));
  
  final data= jsonDecode(response.body);
  if(response.statusCode == 200 )
  {
setState(() {
   val=response.contentLength!.toInt();
for(Map<String,dynamic> i in data['data'])
{
 
 // individuals.add(individual.fromJson(i));
}
  });
   }
   else
   {
val=-1;
   }
  }
  
 @override
  void initState() {
    super.initState();
  _fetchindividuals();
  
  } 
 
 
 
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
        body: val==-1? 
        const  Center (child:CircularProgressIndicator(
          color:  Color.fromARGB(255,201,112,72),

        )):
        
        Text("$val",style: TextStyle(color: Colors.black),)
        /*
        const  Center (child:CircularProgressIndicator(
          color:  Color.fromARGB(255, 0, 0, 0),)
        )
        ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index)
          {
            return ListTile(
              title: Text(individuals[index].name.toString()),
            );
          })
      */
        );
  }

}