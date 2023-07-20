import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  Future<void> changeIndexOnTap(int newPageIndex) async {
    emit(
      HomeState(
        pageIndex: newPageIndex,
      ),
    );
  }
}
