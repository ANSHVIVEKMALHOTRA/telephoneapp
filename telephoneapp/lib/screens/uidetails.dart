

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:telephoneapp/models/individual.dart';
//import 'package:android_intent/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class Info extends StatefulWidget {
  Info({super.key,required this.userDetails});
individual userDetails;
  // This widget is the root of your application.
  @override
  State<Info> createState(){ 
    return _InfoState();}
}

class _InfoState extends State<Info> {

  @override
  void launchWhatsApp(
      String? phone,
      String message,
      ) async {
    String url() {
      if (Platform.isAndroid) {
        // add the [https]
        return "https://wa.me/+91$phone/?text="; // new line
      } else {
        // add the [https]
        return "https://api.whatsapp.com/send?phone=+91$phone="; // new line
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }
  
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
                                  launchWhatsApp(widget.userDetails.mobile1, 'hello'); // THEIR PHONE NUMBER OR LANDLINE NUMBER ANY FEASIBLE
                                },
                                child:const  Icon(Icons.message_outlined),
                              ),
                              ElevatedButton(
                                onPressed:() {
                                  _sendingMails(widget.userDetails.email);
                                },
                                child: Icon(Icons.mail_outline_rounded),
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
 child:
 ListTile(
  minLeadingWidth: 20,
  leading: const Icon(Icons.mobile_friendly),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${widget.userDetails.mobile1}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Padding(padding: EdgeInsets.all(40)),
      ElevatedButton(
        onPressed: () {
          _makingPhoneCall(widget.userDetails.mobile1); // THEIR PHONE NUMBER OR LANDLINE NUMBER ANY FEASIBLE
        },
        child:const  Icon(Icons.call),
      ),
    ],
  ),
   subtitle: Text (
        "Mobile-1",
        style: TextStyle(fontSize: 12),
      ),

 ),
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
      Padding(padding: EdgeInsets.all(40)),
      ElevatedButton(
        onPressed: () {
          _makingPhoneCall(widget.userDetails.mobile2); // THEIR PHONE NUMBER OR LANDLINE NUMBER ANY FEASIBLE
        },
        child:const  Icon(Icons.call),
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
      Padding(padding: EdgeInsets.all(40)),
      ElevatedButton(
        onPressed: () {
          _makingPhoneCall(widget.userDetails.landlineOffice); // THEIR PHONE NUMBER OR LANDLINE NUMBER ANY FEASIBLE
        },
        child:const  Icon(Icons.call),
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

                SizedBox(
                  height: 20,
                )

        ]
        ),
          ),
        ),
      );
  }
}

_makingPhoneCall(String? mobile1) async {
  var url = Uri.parse("tel:"+mobile1!);

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}


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
_sendingMails(String? Email) async {
  var url = Uri.parse("mailto:"+Email!);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
