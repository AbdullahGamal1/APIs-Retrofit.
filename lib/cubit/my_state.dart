part of 'my_cubit.dart';

@immutable
sealed class MyState {}

final class MyInitial extends MyState {}

class GetAllUsers  extends MyState {
  final List<User> allUsersList;
  GetAllUsers(this.allUsersList);
}


class GetUserDetails  extends MyState {
  final User userDetails;
  GetUserDetails(this.userDetails);
}

class CreatNewUser  extends MyState {
  final User newUser;
  CreatNewUser(this.newUser);
}


class DeleteUser  extends MyState {
  final dynamic data;
  DeleteUser(this.data);
}