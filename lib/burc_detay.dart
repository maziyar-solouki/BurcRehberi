import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color appbarrengi = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    super.initState();
    appbarrenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: appbarrengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${widget.secilenBurc.burcAdi} Burcu ve Özellikleri", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              centerTitle: true,
              background: Image.asset("images/${widget.secilenBurc.burcBuyukResim}", fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding:const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child:
                Text(widget.secilenBurc.burcDetayi, style:const  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      )
    );
  }

  void appbarrenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage("images/${widget.secilenBurc.burcBuyukResim}"));
    appbarrengi = _generator.vibrantColor!.color;
    setState(() {

    });
    
  }
}
