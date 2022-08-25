import 'package:burc_application/burc/burc_listesi.dart';
import 'package:burc_application/yukselen/Yukselen_listesi.dart';
import 'package:flutter/material.dart';



// ignore: camel_case_types
class anaSayfa extends StatelessWidget {

  const anaSayfa({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burçlar Listesi"),
      ),
      body :Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                   InkWell(
                  splashColor:  Colors.black26,
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>burcListesi()));
                  },
                  child:  Column(
                    mainAxisSize: MainAxisSize.min,
                    children :  [
                      Ink.image(
                        image: const AssetImage("assets/images/burc.jpg"),
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 6,),
                      const Text(
                        "Burçlar",
                        style: const TextStyle(fontSize: 32,color: Colors.white),
                      ),
                      const SizedBox(height: 6,),
                    ],
                  ),
                ),
              ],
              ) 
            ),
            Material(
               color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                InkWell(
                  splashColor:  Colors.black26, 
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>YukselenListesi()));
                  },
                  child:  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage("assets/images/yukselen.jpg"),
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "Yükselenler",
                        style: const TextStyle(fontSize: 32, color: Colors.white),
                      ),
                      const SizedBox(height: 6,), 
                    ],
                  ),
               )
              ],
              )
            )
          ],
        ), 
      ),
    );
  } 
}