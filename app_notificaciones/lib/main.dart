import 'package:app_notificaciones/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //creamos la instancia de firebase messaging
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  final token = await messaging.getToken();

  //registrar el token en la base de datos

  // usuarioid, guardar en las preferencias
  //asocia el token que se creó, al usuario que se logueó
  print(token);

  //solicitamos el permiso para recibir notificaciones
  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    //* suscripción a un tema específico
    // await FirebaseMessaging.instance.subscribeToTopic('ss-1234');

    //! desuscripción a un tema específico
    // await FirebaseMessaging.instance.unsubscribeFromTopic('ss-1234');

    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    //evento "escucha" y esta pendiente de las notificaciones cuando el app está en primer plano
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // message.data['tipo']
      // message.data['pantalla']

      //hacer una navegacion a una pantalla
      // Navigator.pushNamed(context, message.data['pantalla']);

      if (message.notification != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              duration: const Duration(seconds: 5),
              content: Text(message.notification!.body!),
              action: SnackBarAction(
                label: 'Ir',
                onPressed: () {
                  Navigator.pushNamed(context, message.data['pantalla']);
                },
              )),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
