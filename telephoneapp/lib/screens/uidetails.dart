import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:telephoneapp/models/individual.dart';
import 'package:android_intent/android_intent.dart';
//import 'package:url_launcher/url_launcher.dart';

class Info extends StatefulWidget {
  Info({super.key,required this.userDetails});
individual userDetails;
  // This widget is the root of your application.
  @override
  State<Info> createState(){ 
    return _InfoState();}
}

class _InfoState extends State<Info> {
  // var userDetails = {
  //   'name': 'John Doe',
  //   'email': 'john.doe@example.com',
  //   'siteName': 'Company Site',
  //   'joiningDate': 'January 1, 2022',
  //   'departmentId': 'IT-123',
  //   'mobile1': '+1 (123) 456-7890',
  //   'mobile2': '+1 (987) 654-3210',
  //   'landlineOffice': '+1 (555) 123-4567',
  //   'landlineResidential': '+1 (555) 987-6543',
  //   'designation': 'Software Engineer',
  // };
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Details',
            style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor:const  Color.fromARGB(255, 201, 112, 72),
          
        /*  systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.blue[200], // Navigation bar
            statusBarColor: Colors.brown[200], // Status bar
          ),*/
       //   iconTheme: const IconThemeData(color: Colors.white10),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: Colors.white60, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/D5603AQEu4GLWV0rq6Q/profile-displayphoto-shrink_800_800/0/1692427344601?e=2147483647&v=beta&t=mzeFXfo7bnwCELchV_ciRGwElYtdHxwUyz2KvmjnVt4'),
                    ),
                   const  Padding(padding: EdgeInsets.only(left: 20)),
                    Container(
                      width: MediaQuery.of(context).size.width - 222,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Text(
                            "${widget.userDetails.name}",
                            style: TextStyle(fontSize: 22),
                          ), //NAME OF THE PROFFESOR
                           Text(
                            "${widget.userDetails.designation}",
                            style: TextStyle(fontSize: 19, color: Colors.grey),
                          ), // THEIR POSITION OR POST OR ANY KIND OF DESIGNATION
                        const   SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                               //   _makingPhoneCall(1234); // THEIR PHONE NUMBER OR LANDLINE NUMBER ANY FEASIBLE
                                },
                                child:const  Icon(Icons.call),
                              ),
                              // IconTile(
                              //   backColor:const  Color(0xffFEF2F0),
                              //   imgAssetPath: "assets/call.png",
                              // ),
                              //  IconTile(
                              //    backColor:const  Color(0xffEBECEF),
                              //  imgAssetPath: "assets/whatsapp.png",
                              //  ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Container(
                    height: 2.0,
                    width: 1300.0,
                    color: Colors.black,
                  ),
                ),
               Card(                            //card one
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.web_asset_outlined),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.siteName}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Site Name",
    style: TextStyle(fontSize: 11),
  ),
)
),
Card(                                         //card2
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.date_range),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.joiningDate}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Joining Date",
    style: TextStyle(fontSize: 12),
  ),
)
),


Card(
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.admin_panel_settings_outlined),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.departmentId}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Department ID",
    style: TextStyle(fontSize: 12),
  ),
)
),

Card(
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.mobile_friendly),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.mobile1}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Mobile-1",
    style: TextStyle(fontSize: 12),
  ),
)
),
Card(
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.mobile_friendly),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.mobile2}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Mobile-2",
    style: TextStyle(fontSize: 12),
  ),
)
),


Card(
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.call),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.landlineOffice}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Landline(office)",
    style: TextStyle(fontSize: 12),
  ),
)
),

Card(
 child: ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.call),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.landlineResidential}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  ),
  subtitle: Text(
    "Landline(residential)",
    style: TextStyle(fontSize: 12),
  ),
)
),

                const SizedBox(height: 8),
                Text("Site Name: ${widget.userDetails.siteName}",
                    style:const  TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(height: 8),
                Text("Joining Date: ${widget.userDetails.joiningDate}",
                    style:const  TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(height: 8),
                Text("Department ID: ${widget.userDetails.departmentId}",
                    style:const  TextStyle(color: Colors.black, fontSize: 16)),
               const  SizedBox(height: 8),
                Text("Mobile 1: ${widget.userDetails.mobile1}",
                    style:const  TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(height: 8),
                Text("Mobile 2: ${widget.userDetails.mobile2}",
                    style:const  TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(height: 8),
                Text("Landline (Office): ${widget.userDetails.landlineOffice}",
                    style: const TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(height: 8),
                Text(
                    "Landline (Residential): ${widget.userDetails.landlineResidential}",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(height: 8),
                Text("Designation: ${widget.userDetails.designation}",
                    style:const  TextStyle(color: Colors.black, fontSize: 16)),
                const SizedBox(
                  height: 20,
                ),
                
                const SizedBox(
                  height: 24,
                ),
               
//                         Row(
//                           children: <Widget>[
//                             Icon(Icons.accessibility_outlined),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   "Availability",
//                                   style: TextStyle(
//                                       color: Colors.black87.withOpacity(0.7),
//                                       fontSize: 20),
//                                 ),
//                                 SizedBox(
//                                   height: 3,
//                                 ),
//                                 Container(
//                                     width:
//                                         MediaQuery.of(context).size.width - 268,
//                                     child: Text(
//                                       '''Monday - Friday
// Open till 7 Pm''',
//                                       style: TextStyle(color: Colors.grey),
//                                     ))
//                               ],
//                             )
//                           ],
//                         )
                    
                /*
                const Text(
                  "Activity",
                  style: TextStyle(
                      color: Color(0xff242424),
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
               const  SizedBox(
                  height: 22,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding:
                           const  EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                        decoration: BoxDecoration(
                            color:const  Color(0xffFBB97C),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffFCCA9B),
                                  borderRadius: BorderRadius.circular(16)),
                              child:const  Icon(Icons.list),
                            ),
                           const  SizedBox(
                              width: 16,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width / 2 - 130,
                              child:const  Text(
                                "List Of Schedule",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                        decoration: BoxDecoration(
                            color: Color(0xffA5A5A5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding:const  EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffBBBBBB),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Icon(Icons.list),
                            ),
                           const  SizedBox(
                              width: 16,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width / 2 - 130,
                              child:const  Text(
                                "Doctor's Daily Post",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
                */
              ],
            ),
          ),
        ),
      );
  }
}
/*
_makingPhoneCall(int num) async {
  var url = Uri.parse("tel:%d", num);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
*/
class IconTile extends StatelessWidget {
  final String? imgAssetPath;
  final Color? backColor;

  IconTile({this.imgAssetPath, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          imgAssetPath!,
          width: 20,
        ),
      ),
    );
  }
}
