import 'package:flutter/material.dart';
import 'package:sje_mobile_app/models/task.dart';

class UpComingTaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  String task_name = "TaskName" ;
  String sector = "Mobile Section" ;
  String task_startdate = "Begins 9 avril " ;
  String description = "Description de la tache a faire avec les details sur les sources ou les etapes a enchainer" ;





    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(child: Material(
      color: Colors.transparent,
      child: Card(

      elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: size.width*1 ,
          decoration: BoxDecoration( image: DecorationImage(image: AssetImage("assets/Vector2.png"),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.0)),

          child: Column(

            children: [Row( children: [ SizedBox(width: size.width *0.05),Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text (sector,style: TextStyle( fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            )] ),Row(children: [SizedBox(width: size.width*0.1,) ,Text(task_name),],),

              Row(children: [

               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Icon(Icons.assignment ,
                     size : 37,
                   ),
               ),


            SizedBox(
                  width : 230,child: Center( widthFactor: 0 ,child: Text(description,style:  TextStyle(fontSize: 17 ),)))
            ],),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end


                    ,children: [Text(task_startdate,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red[900]),)]),
              )




          ]),
        )

      )

      )),
    );
  }
}
