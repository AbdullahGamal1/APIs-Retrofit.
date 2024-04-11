
import 'package:apis/my_repo.dart';
import 'package:apis/user.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;

  MyCubit(this.myRepo) : super(MyInitial());
  void emitGetAllUser() {
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));
    });
  }

  void emitGetUserDetails(int userId) {
    myRepo.getUsersById(userId).then((userDetails) {
      emit(GetUserDetails(userDetails));
    });
  }

  void emitCreatNewUser(User newUser) {
    myRepo.creatNewUser(newUser).then((newUser) {
      emit(CreatNewUser(newUser));
    });
  }

  void emitDeleteUser(String id) {
    myRepo.deleteUser(id).then((data) {
      emit(DeleteUser(data));
    });
  }
}
