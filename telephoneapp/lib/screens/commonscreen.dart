import 'package:flutter/material.dart';
import 'package:telephoneapp/models/individual.dart';
import 'package:telephoneapp/models/searchouput.dart';

import 'package:telephoneapp/screens/detaillScreen.dart';
var output=[
SearchOutput(designation: "Associate Proffesor",
name: "Mohit Sir",
image: "https://www.aimit.edu.in/wp-content/uploads/2022/10/aimit-fdp-resource-persons-nitk-01.jpg",
mobile: "998899988",
position1: "Communication Communist",
position2: "DDS DON",
landline: "111",
unitname: "CSE"),
SearchOutput(designation: "Proffesor",
name: "Anna Annappa",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSsnwHg4tBXe69cdCUM49mjKx3jxhA9-mKHQ&usqp=CAU",
mobile: "998800988",
position1: "IEEE grandmaster",
position2: "ACM rockstar",
unitname: "CSE",
landline: "123"
),

];

class CommonScreen extends StatelessWidget
{
 CommonScreen({super.key, required this.filteredlist});
final List<individual> filteredlist; 
/*
@override
 State<CommonScreen> createState()
 {
  return _CommonScreenState();
 }
}

class _CommonScreenState extends State<CommonScreen>
{
*/

@override
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(
                       title:  Text("${filteredlist.length}"),
                       backgroundColor: const  Color.fromARGB(255,201,112,72),
                       centerTitle: true,
                      ),

       body: ListView.builder(
        itemCount: filteredlist.length,
 itemBuilder:(context, index){
         return Container(
          height: 80,
          padding: const EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
          child: Card(
            child: Row(
              children: [
                const SizedBox(width: 10,),
                Text("${index+1}"),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name:${filteredlist[index].name}"),
                  
                                       Text("Landline: ${filteredlist[index].mobile2}"),                   
                      Text("Mobile: ${filteredlist[index].mobile1}"),
                  ],
                ),
                const Spacer(),
               IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(details: output[index])),);
               }, icon: const Icon(Icons.person))
              ],
            ),
          ) 
          ,);
        
        }, ),               
    );
  }
}