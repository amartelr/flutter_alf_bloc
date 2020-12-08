import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alf_bloc/app.dart';

import 'comp/simplebloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}
