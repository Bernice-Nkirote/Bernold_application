import 'package:bernold_application/config/app_router.dart';
import 'package:flutter/material.dart';
import 'package:bernold_application/screens/screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/wishlist/wishlist_bloc.dart';
import 'config/theme.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
      ],
      child: MaterialApp(
        title: "Bernold Autoparts",
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
