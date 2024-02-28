import 'package:flutter/material.dart';
import 'package:news_app/blocs/news_bloc/news_bloc.dart';

class NewsBlocProvider extends InheritedWidget {
  final NewsBloc bloc;

  NewsBlocProvider({Key? key, required Widget child})
      : bloc = NewsBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(oldWidget) => true;

  static NewsBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NewsBlocProvider>()!.bloc;
  }
}
