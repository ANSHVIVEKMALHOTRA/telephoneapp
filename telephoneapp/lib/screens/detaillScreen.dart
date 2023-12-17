import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:telephoneapp/models/searchouput.dart';

class DetailScreen extends StatelessWidget
{
const DetailScreen({super.key, required this.details});
final SearchOutput details;

@override
Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
                       title: const Text("Telephone Directory"),
                       backgroundColor: const  Color.fromARGB(255,201,112,72),
                       centerTitle: true,
                      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
    //  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Image.network(
            details.image,
            width: 200,
            height: 200,
          ),
          ),
        ),
        Text(details.name),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Designation: ${details.designation}"),
            Text("Position 1: ${details.position1}"),
            Text("Position 2: ${details.position2}"),
            Text("Unit name: ${details.unitname}"),
            Text("landline: ${details.landline}"),
          ],
        ),
       Center(
         child: TextButton(onPressed: (){}, child: const Row(children: [
          Icon(Icons.call),
          SizedBox(width: 4,),
          Text("Call")
         ],),),
       ) 
      ],
    ),
  );
}
}