import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Category{
   final int mafia;
   final int people;
   final int doctor;
   final int detective;

   const Category({
     required this.mafia,
     required this.people,
     required this.doctor,
     required this.detective,
   });
}