import 'package:flutter/material.dart';
import 'package:flutter_alf_bloc/comp/counter/view/counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'comp/counter/bloc/counter_bloc.dart';
import 'comp/theme/cubit/theme_cubit.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            theme: theme,
            home: BlocProvider(
              create: (_) => CounterBloc(),
              child: CounterPage(),
            ),
          );
        },
      ),
    );
  }
}
