import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class IdentityCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String name = 'Moetez' ;
    String lastname = 'Afif' ;
    DateTime birthday   ;
    String status = ' Member' ;
    String  pole  = "Projet "  ;
    Size size = MediaQuery.of(context).size;

    // TODO: implement build
    var MyTextSyle = TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.w500);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.grey, Colors.blue]),
        borderRadius: BorderRadius.circular(20)),
        child: Card(



          elevation:10 ,
           shape: RoundedRectangleBorder( borderRadius:
           BorderRadius.circular(20)),
          child:  Padding(
            padding: const EdgeInsets.all(10.0),


              child: Column(

                children: [
                Row ( children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Name ",style: MyTextSyle,
         ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name),

                ),SizedBox( width : size.width *0.2) ,Padding(

                  padding: const EdgeInsets.all(10.0),
                  child: Text("Last Name  ",style: MyTextSyle),
                ),Text(lastname ,)],),

              Row( children: [Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Status : ",style: MyTextSyle,),
                ), ),Text(status) ,SizedBox( width : size.width *0.25) , Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sector  " ,style: MyTextSyle,),
                ),Text(pole)
              ],)],
              ),

            ),
          ),
      ),
    )
       ;
  }

}