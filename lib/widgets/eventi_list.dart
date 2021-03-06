import 'package:calendar/models/evento_model.dart';
import 'package:calendar/widgets/evento_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class EventiList extends StatelessWidget {
  EventiList({Key key,@required this.eventi}) : super(key: key);
  final List<Evento> eventi;

  @override
  Widget build(BuildContext context) {
    if(eventi.length> 0 ){
       return ListView.builder(
       // scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
          itemCount: eventi.length,
          itemBuilder: (BuildContext context, int index) {
            Evento evento = eventi[index];
            return EventoItem(
              evento: evento,
            );
          });
    }
    else{
      return Image(image:AssetImage('assets/no_events.png'));
    }
     
  }
}
