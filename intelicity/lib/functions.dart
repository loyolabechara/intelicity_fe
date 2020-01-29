import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

Future<String> selectDate(BuildContext context, hoje) async {
// Future<String> selectDate(BuildContext context, hoje_15, hoje) async {

  DateTime hoje_15 = new DateTime(hoje.year -15, hoje.month, hoje.day);

  String _dt_nascimento = formatDate(hoje_15, [dd, '/', mm, '/', yyyy]);

  final DateTime picked = await showDatePicker(
      context: context,
      initialDate: hoje_15,
      firstDate: DateTime(1920, 1),
      lastDate: hoje
  );
  return formatDate(picked, [dd, '/', mm, '/', yyyy]);

//  setState(() {
//        _dt_nascimento = _dt_nascimento;
//  });

//  print(_dt_nascimento);

//  if (picked != null && picked != _dt_nascimento)
//    setState(() {
//        _dt_nascimento = _dt_nascimento;
//    });
}
