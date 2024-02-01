import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

Future<void> main(List<String> args) async {
  final cubit = CounterCubit();

  // final steamSubcription = cubit.listen(print);

  print(cubit.state);
  cubit.increment();
  print(cubit.state);
  cubit.increment();
  print(cubit.state);
  cubit.decrement();
  print(cubit.state);
  cubit.close();
}
