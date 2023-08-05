import 'package:app_menus/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeController = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    final pageController =
        PageController(initialPage: homeController.currentIndex);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Instagram'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Text('J'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Juan Alvarenga',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Noticias'),
                leading: const Icon(Icons.newspaper),
                onTap: () {
                  //voy a cerrar el drawr
                  Navigator.pop(context);

                  //voy a navergar a la pagina de noticias
                  Navigator.pushNamed(context, '/noticias');
                },
              ),
            ],
          ),
        ),
        body: PageView(
          controller: pageController,
          // scrollDirection: Axis.vertical,
          // physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) async {
            await GetStorage().write('currentIndex', value);
            homeController.currentIndex = value;
          },
          children: [
            Container(
              color: Colors.deepPurple[100],
              child: Center(
                child: Text(
                  'Página 1',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: Center(
                child: Text(
                  'Página 2',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              color: Colors.pink[100],
              child: Center(
                child: Text(
                  'Perfil',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: homeController.currentIndex,
            onTap: (index) async {
              homeController.currentIndex = index;

              await GetStorage().write('currentIndex', index);

              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeIn,
              );
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
                tooltip: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Configuración',
                tooltip: 'Configuración',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
                tooltip: 'Perfil',
              ),
            ],
          ),
        ));
  }
}
