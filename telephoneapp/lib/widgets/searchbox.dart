import 'package:flutter/material.dart';
import 'package:telephoneapp/screens/searchscreen.dart';

class SearchBox extends StatelessWidget
{
const SearchBox({super.key});
@override

Widget build(BuildContext context)
{
  return  SizedBox(
          height: 50,
          width: 120,
          child: FloatingActionButton(
            elevation: 5,
            //clipBehavior: Clip.antiAlias,
          
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            backgroundColor: const Color.fromARGB(255,201,112,72),
            splashColor: Colors.white,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchMenu()));
            },
            child: const Row(
              children: [
                SizedBox(width: 15,),
                Icon(Icons.search,),
                Text("Search",style: TextStyle(fontSize: 17),)
              ],
            ) ,
          ),
        );
}

}