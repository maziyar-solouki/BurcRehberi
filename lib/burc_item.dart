import 'package:burcrehberi/burc_detay.dart';
import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc , super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BurcDetay(secilenBurc: listelenenBurc),),);
          },
          leading: Image.asset("images/${listelenenBurc.burcKucukResim}"),
          title: Text(listelenenBurc.burcAdi, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          subtitle: Text(listelenenBurc.burcTarihi),
          trailing: const Icon(Icons.arrow_forward, color: Colors.teal,),
        ),
      ),
    );
  }
}
