import 'package:flutter/material.dart';

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

String _dropdownvalue="Computer Science";

@override
void dispose(){
  nametext.dispose();
  topictext.dispose();
  super.dispose();
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
                           const Row(children: [SizedBox(width: 10,),
                                     Text("Name"),
                           ],),
                            Container(
                             padding: const EdgeInsets.all(6),
                              child: TextField(
                                controller: nametext,
                                 decoration: InputDecoration(

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
                                  hintText: "Enter the name",
                                 ),
                                 ),
                            ),
                            const SizedBox(height: 5,),
                           const Row(children: 
                                  [SizedBox(width: 10,),
                                     Text("Specialisation")]),
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
                            ),
                           const Row(children: [SizedBox(width: 10,),
                                     Text("Branch"),]),
                                     const SizedBox(height: 7,),
                            Row(children: 
                                   [ const SizedBox(width: 10,),
                                      DropdownButton(
                               hint: const Text("Select the branch"),
                               elevation: 8,
                                 items: const[
                                  DropdownMenuItem(child: Text("Computer Science"), value:"Computer Science",),
                                     DropdownMenuItem( value: "EEE" ,child: Text("Electrical and Electronics"),),
                                      DropdownMenuItem( value: "EC" ,child: Text("Electronic and Communication"),),
                                       DropdownMenuItem( value: "IT" ,child: Text("Information Techology"),),
                                        DropdownMenuItem( value: "ME" ,child: Text("Mechanical"),),
                                         DropdownMenuItem( value: "MN" ,child: Text("Mining"),),
                                          DropdownMenuItem( value: "CV" ,child: Text("Civil"),),
                                           DropdownMenuItem( value: "CDS" ,child: Text("Compuation and Data SCience"),),
                                            DropdownMenuItem( value: "CH" ,child: Text("Chemical Engineering"),),
                                            DropdownMenuItem( value: "MT" ,child: Text("Metallurgy"),),
                                            DropdownMenuItem( value: "AI" ,child: Text("Artificial Intelligence"),),
                                            DropdownMenuItem( value: "Administration" ,child: Text("Administration"),),
                                            DropdownMenuItem( value: "NT" ,child: Text("Non-Teaching"),),
                                            DropdownMenuItem( value: "OT" ,child: Text("Others"),),

                                 ], 
                                  value: _dropdownvalue,
                                 onChanged:
                                 (newvalue)
                                 {
                                  if(newvalue is String)
                                  {
                                  setState(() 
                                  {
                                    _dropdownvalue=newvalue;
                                  });
                                  }} 
                                  ),
                                  ]),
                    ],
             ),   
             floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,      
      floatingActionButton: SizedBox(
          height: 50,
          width: 120,
          child: FloatingActionButton(
            elevation: 5,
            //clipBehavior: Clip.antiAlias,
          
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            backgroundColor:const Color.fromARGB(255,201,112,72),
            splashColor: Colors.white,
            onPressed: (){},
            child: const Row(
              children: [
                SizedBox(width: 15,),
                Icon(Icons.search,),
                Text("Search",style: TextStyle(fontSize: 17),)
              ],
            ) ,
          ),
        ),
    );
  }
}