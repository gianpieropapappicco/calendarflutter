import 'package:calendar/models/evento_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class EventoListEvent {
  final Evento evento;
  final DateTime data;
  EventoListEvent({this.evento,this.data});
}

class GetEventos extends EventoListEvent {
  GetEventos() : super();
}
class FiltraEventos extends EventoListEvent {
  FiltraEventos({@required DateTime data}) : super(data:data);
}
class DeleteEvento extends EventoListEvent {
  DeleteEvento({@required Evento evento}) : super(evento: evento);
}
class AddEvento extends EventoListEvent {
  AddEvento({@required Evento evento}) : super(evento: evento);
}