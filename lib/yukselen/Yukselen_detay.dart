import 'package:burc_application/yukselen/yukselen.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class YukselenDetay extends StatefulWidget {
  final   Yukselen secilenYukselen;
  const YukselenDetay({required this.secilenYukselen, Key? key }) : super(key: key);

  @override
  State<YukselenDetay> createState() => _YukselenDetayState();
}

class _YukselenDetayState extends State<YukselenDetay> {
  Color appbarRenk = Colors.transparent;
  Color textRenk = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    
    super.initState();
    appbarRenginiBul();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,

            backgroundColor: appbarRenk,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenYukselen.burcAdi+" Yukseleni Ve Özellikleri",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              background: Image.asset(
                'assets/images/'+widget.secilenYukselen.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenYukselen.burcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                )
                ),
            ),
          )
        ],
      )
      );
    
  }

  void appbarRenginiBul()async {
    _generator= await PaletteGenerator.fromImageProvider(AssetImage('assets/images/'+widget.secilenYukselen.burcBuyukResim));
    appbarRenk = _generator.dominantColor!.color;
    
    setState(() {
      
    });
  }
}