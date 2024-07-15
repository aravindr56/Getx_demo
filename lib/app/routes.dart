import 'package:get/get.dart';
import 'package:getx_demo/views/about/about_page.dart';
import '../views/home/home_page.dart';

  appRoutes() => [GetPage(name: '/home', page: ()=> HomePage(),
  transition: Transition.leftToRight,
  ),
   GetPage(name: '/about', page: ()=> AboutPage(),
   transition: Transition.zoom,
   ),

  ];