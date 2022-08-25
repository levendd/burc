import 'package:burc_application/yukselen/Yukselen_detay.dart';
import 'package:burc_application/yukselen/yukselen.dart';
import 'package:flutter/material.dart';

class YukselenItem extends StatelessWidget {
  final Yukselen listelenenYukselen;
  const YukselenItem({required this.listelenenYukselen, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>YukselenDetay(secilenYukselen: listelenenYukselen)));
            },
            leading: Image.asset("assets/images/"+listelenenYukselen.burcKucukResim,width: 64,height: 64,),
            title: Text(
              listelenenYukselen.burcAdi,
              style: myTextStyle.headline5,
            ),
           
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink.shade200,),
          ),
        ),
      ),
    );
  }
}