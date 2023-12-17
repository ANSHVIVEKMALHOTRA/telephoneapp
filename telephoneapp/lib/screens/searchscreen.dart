//import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:telephoneapp/models/searchmodel.dart';
import 'package:telephoneapp/screens/commonscreen.dart';
import 'package:telephoneapp/data/dummydatafile.dart';
import 'package:telephoneapp/models/individual.dart';
import 'package:telephoneapp/screens/detaillScreen.dart';
import 'package:telephoneapp/screens/uidetails.dart';
import 'package:telephoneapp/screens/commonscreen.dart';


List<individual> filteredlist=[];

String name="";
int _dropdownvalue=-1;

class SearchMenu extends StatefulWidget
{
 const SearchMenu({super.key});
 
 @override
 State<SearchMenu> createState()
 {
  return _SearchMenuState();
 }
}

class _SearchMenuState extends State<SearchMenu>
{
var nametext= TextEditingController();
var topictext=TextEditingController();

void filteredlistonparameters(String name, int departmentid){
setState(() {
   filteredlist =completelist.where((element)
   {
if(name==  "" && departmentid == -1)
{
  return true;
}
else
{
  if(name != "" && departmentid== -1)
  {
   return element.name!.toLowerCase().contains(name.toLowerCase());
  }
  else if (name=="" && departmentid != -1)
  {
    return element.departmentId==departmentid;
  }
  else if(name != "" && departmentid != -1)
  {
    return  element.name!.toLowerCase().contains(name.toLowerCase()) && element.departmentId==departmentid;
  }
}
return false;
   }).toList();
   
   
  /*  filteredlist = completelist.where((element){
if(n=="n" && i != -1)
{
  return element.departmentId==i?true:false;
}
else
if(n != "n" && i == -1)
{
  return element.name == n;
}
else
if(n!= "n" && i != -1)
{
  return element.name==n && element.departmentId==i;
}
return true;
 }).toList();
*/
});
 
}

String name="";
int _dropdownvalue=-1;

@override
void dispose(){
  nametext.dispose();
  topictext.dispose();
  super.dispose();
}
@override
void initState() {
    filteredlist=completelist;
    super.initState();
  }
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
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                              const SizedBox(height: 5,),
                         
                            Container(
                             padding: const EdgeInsets.all(6),
                              child: TextField(
                                
                                controller: nametext,
                                onChanged: (value){
                                  name=value;
                                  filteredlistonparameters(name, _dropdownvalue);},
                                 decoration: InputDecoration(
                                  labelText:  "Name" ,
                                  labelStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                                  focusedBorder:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    gapPadding:1,
                                    borderSide: const BorderSide(width: 2,color:Color.fromARGB(255,244,220,194) ),
                                                 ) ,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    gapPadding:5,
                                    borderSide: const BorderSide(width: 2,color:Color.fromARGB(255,201,112,72) ),
                                  ),
                                  disabledBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    gapPadding:5,
                                    borderSide: const BorderSide(width: 2,color:Color.fromARGB(255, 110, 109, 109) ),
                                  ),
                                 // hintText: "Enter the name",
                                 ),
                                 ),
                            ),
                            const SizedBox(height: 5,),
                           const Row(children: 
                                   [
                                    SizedBox(width: 10,),
                                    ]),
                         
                           const Row(children: [SizedBox(width: 10,),
                                     Text("Branch"),]),
                                     const SizedBox(height: 7,),
                            Row(children: 
                                   [ const SizedBox(width: 10,),
                                      DropdownButton(

                               hint: const Text("Select the branch"),
                               elevation: 8,
                                 items: const[
                                  DropdownMenuItem( child: Text("Select the branch"), value:-1,),
                                   DropdownMenuItem( child: Text("Computer Science"), value:1,),
                                     DropdownMenuItem( value: 2 ,child: Text("Electrical and Electronics"),),
                                      DropdownMenuItem( value: 3 ,child: Text("Electronic and Communication"),),
                                       DropdownMenuItem( value: 4 ,child: Text("Information Techology"),),
                                        DropdownMenuItem( value: 5 ,child: Text("Mechanical"),),
                                         DropdownMenuItem( value: 6 ,child: Text("Mining"),),
                                          DropdownMenuItem( value: 7 ,child: Text("Civil"),),
                                           DropdownMenuItem( value: 8 ,child: Text("Compuation and Data SCience"),),
                                            DropdownMenuItem( value: 9 ,child: Text("Chemical Engineering"),),
                                          DropdownMenuItem( value: 10 ,child: Text("Metallurgy"),),
                                        DropdownMenuItem( value: 11 ,child: Text("Artificial Intelligence"),),
                                      DropdownMenuItem( value: 12 ,child: Text("Administration"),),
                                    DropdownMenuItem( value: 13 ,child: Text("Non-Teaching"),),
                                  DropdownMenuItem( value: 14 ,child: Text("Others"),),

                                 ], 
                                  value: _dropdownvalue,
                                 onChanged:
                                 (newvalue)
                                 {
                                 _dropdownvalue=newvalue!;
                                 filteredlistonparameters(name, _dropdownvalue);
                                 } 
                                  ),
                                  ]),
              Expanded(
                child:  ListView.builder(
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
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Info(userDetails: filteredlist[index])),);
               }, icon: const Icon(Icons.person))
              ],
            ),
          ) 
          ,);
        
        }, )
              
              )
                    
                    ],
             ),
              
    );
  }
}  
/*
                             Container(
                              padding: const EdgeInsets.all(6),
                              child:  TextField(
                                controller: topictext,
                                 decoration: InputDecoration(

                                  focusedBorder:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    gapPadding:5,
                                    borderSide: const BorderSide(width: 2,color:Color.fromARGB(255,244,220,194) ),
                                                 ) ,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    gapPadding:5,
                                    borderSide: const BorderSide(width: 2,color:Color.fromARGB(255,201,112,72) ),
                                  ),
                                  disabledBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    gapPadding:5,
                                    borderSide: const BorderSide(width: 2,color:Color.fromARGB(255, 110, 109, 109) ),
                                  ),
                                  hintText: "Enter the Specialisation",
                                 ),
                                 ),
                            ), */
