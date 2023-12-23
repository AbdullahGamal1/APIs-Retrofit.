import 'package:apis/cubit/my_cubit.dart';
import 'package:apis/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> userList = [];
  User user = User();
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<MyCubit>(context).emitGetAllUser();
    // BlocProvider.of<MyCubit>(context).emitGetUserDetails(5848526);
    // BlocProvider.of<MyCubit>(context).emitCreatNewUser(User(
    //     name: 'Abdullah Gamal',
    //     email: 'abdullah.gamaal9332333@hotmail.com',
    //     gender: 'male',
    //     status: 'active'));
    BlocProvider.of<MyCubit>(context).emitDeleteUser("5816731");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          // BlocBuilder<MyCubit, MyState>(
          //   builder: (context, state) {
          //     if (state is GetAllUsers) {
          //       userList = (state).allUsersList;
          //       return ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: userList.length,
          //         padding: EdgeInsets.all(8),
          //           itemBuilder: (BuildContext context, int Index) {
          //         return Container(
          //           height: 50,
          //           color: Colors.amberAccent,
          //           child: Center(child: Text(userList[Index].name.toString())),
          //         );
          //       });
          //     } else {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // )

          // BlocBuilder<MyCubit, MyState>(
          //   builder: (context, state) {
          //     if (state is GetUserDetails) {
          //       user = (state).userDetails;
          //       return  Container(
          //               height: 50,
          //               color: Colors.amberAccent,
          //               child: Center(
          //                   child: Text(user.name.toString())),
          //             );
          //     } else {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // )

          // BlocBuilder<MyCubit, MyState>(
          //   builder: (context, state) {
          //     if (state is CreatNewUser) {
          //       user = (state).newUser;
          //       return Container(
          //         height: 50,
          //         color: Colors.amberAccent,
          //         child: Center(child: Text(user.name.toString())),
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // )

          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is DeleteUser) {
                // user = (state).newUser;
                return Container(
                  height: 50,
                  color: Colors.amberAccent,
                  child: Center(child: Text(state.data.toString())),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
