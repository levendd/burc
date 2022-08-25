import 'package:burc_application/burc/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class burcDetay extends StatefulWidget {
  final   Burc secilenBurc;
  const burcDetay({required this.secilenBurc, Key? key }) : super(key: key);

  @override
  State<burcDetay> createState() => _burcDetayState();
}

class _burcDetayState extends State<burcDetay> {
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
              title: Text(widget.secilenBurc.burcAdi+" Burcu Ve Özellikleri",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              background: Image.asset(
                'assets/images/'+widget.secilenBurc.burcBuyukResim,
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
                  widget.secilenBurc.burcDetayi,
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
    _generator= await PaletteGenerator.fromImageProvider(AssetImage('assets/images/'+widget.secilenBurc.burcBuyukResim));
    appbarRenk = _generator.dominantColor!.color;
    textRenk = _generator.lightVibrantColor!.color;
    setState(() {
      
    });
  }
}