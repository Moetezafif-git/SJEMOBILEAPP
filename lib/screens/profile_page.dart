// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names

import 'package:flutter/material.dart';
import 'package:sje_mobile_app/components/identitycard.dart';
import 'package:sje_mobile_app/components/task_card.dart';
import 'package:sje_mobile_app/components/upcoming_card.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: SafeArea(

         child:SingleChildScrollView(child: Column(children: [
           buildProfile() ,SizedBox(height: 40,), BuildIdentityCard() ,SizedBox(height: 70,
           child: Container(
          alignment: Alignment.bottomLeft,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15 , vertical:  8),
             child: Text("Up comming Task :" , style: TextStyle (
        fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red[900])),
           )),),
           UpComingTaskCardBuild(),UpComingTaskCardBuild(),UpComingTaskCardBuild(),UpComingTaskCardBuild() ],
    ))));
  }

  Widget buildProfile() {
    final urlprofile =
        'https://www.google.com/search?q=image&sxsrf=APq-WBtV8Ce2QUzpaMirQPw-h3DE6Ogjiw:1647612074729&tbm=isch&source=iu&ictx=1&vet=1&fir=ItY9cBsepnqjwM%252CYMrfs-kIZ4Ew8M%252C_%253BcrfXWJAUWwZv_M%252Cwu2NBJuBKFH9OM%252C_%253BmAU6jx73udcEqM%252CRpPxxPFVAGtHaM%252C_%253BT-5LPareUNz_0M%252CMg7hSXjkHWG3wM%252C_%253BA4G7eW2zetaunM%252CDk0je1fDK9JQJM%252C_%253BqXynBYpZpHkhWM%252CLXLE9wLzF8n9vM%252C_%253BMOAYgJU89sFKnM%252CZ_eGzcyTurSWHM%252C_%253BY6pVL1x5vDTXyM%252CAUGex1t7pBVh6M%252C_%253BbDjlNH-20Ukm8M%252CE6NZnQpByECJPM%252C_%253B7dmpjfGEZoXSVM%252C6NiCcD1_F05BmM%252C_%253B0oRviLGatf-4aM%252CE6NZnQpByECJPM%252C_%253B22LfYBs93BDCLM%252C2TPDw_meK_7JkM%252C_&usg=AI4_-kS7u583kaz0SLTbF_QTFv018wDGSg&sa=X&ved=2ahUKEwjKhMSj6c_2AhXS8LsIHf38A6QQ9QF6BAgEEAE#imgrc=ItY9cBsepnqjwM';

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 500,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/drawer_decoration.jpg"),
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/img_1.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(color: Color(0xFF01579B), spreadRadius: 2),
                    ]),
              ),
            )),
        Container(

          child :IconButton(onPressed: (){ Navigator.of(context).pushReplacementNamed("main_page");},  icon: Icon(Icons.arrow_back,size: 40,),
        color: Colors.white30,),),],
    );
  }
}


  Widget UpComingTaskCardBuild() {
    return UpComingTaskCard();
  }

   Widget BuildIdentityCard() {
  return IdentityCard() ;

    }



