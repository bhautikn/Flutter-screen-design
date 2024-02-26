import 'package:app_new/project_screen/HomePage.dart';
import 'package:flutter/material.dart';

class MainScreen2 extends StatelessWidget {
  const MainScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.black87,
        title: Container(
          padding: const EdgeInsets.all(20),
          child: const Row(
            children: [
              Icon(
                Icons.add_business_outlined,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'EduWave',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Container(
        child: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Text(
                    'Hello There',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const InkWell(
                child:  ListTile(
                  title: Text('login'),
                  leading: Icon(Icons.login),
                ),
              ),
               InkWell(
                onTap: (){
                  // ScaffoldMessenger.of(context).
                },
                child: const ListTile(
                  title: Text('logout'),
                  leading: Icon(Icons.logout_sharp),
                ),
              ),
              const InkWell(
                child:  ListTile(
                  title: Text('info'),
                  leading: Icon(Icons.info_outline),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            const Expanded(
              child: Text(''),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Let\'s learn with our exiting course!',
                    style: TextStyle(
                      fontSize: 37,
                      color: Colors.white,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Discover thousands of courses and reach new milestone every day.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(child: Text('')),
                  Row(
                    children: [
                      const Text('Swipe Bar'),
                      const Expanded(child: Text('')),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(400)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              const Text(
                                'Start',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
