import 'package:flutter/material.dart';
import 'package:flutter_block/app_router.dart';

void main() {
  runApp( MovieApp(appRouter: AppRouter(),));
}
class MovieApp extends StatelessWidget {

  final AppRouter appRouter = AppRouter();

  MovieApp({super.key, required AppRouter appRouter});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
