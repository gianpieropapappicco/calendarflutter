import 'package:calendar/blocs/evento/evento.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:calendar/models/evento_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class EventoItem extends StatelessWidget {
  final Evento evento;
  final formatter = new DateFormat('dd/MM/yyyy,  H:mm');

  EventoItem({
    Key key,
    @required this.evento,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction){
        BlocProvider.of<EventoListBloc>(context)
              .add(DeleteEvento(evento: evento));
      } ,
        key: Key(evento.id.toString()),
        child: Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
              ),
              height: 100,
              child: Row(
                children: <Widget>[
                  Container(
                      height: 100,
                      width: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        color: Colors.orange,
                      )),
                  Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        formatter.format(evento.dataInizio).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        evento.descrizione,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    )
                  ]),
                ],
              ),
            )));
  }
}
