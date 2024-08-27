import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Geri dönme işlevi
            },
          ),
          title: Text('Profil Sayfası'),
          backgroundColor:
              Color.fromARGB(255, 182, 149, 240), // Arka plan rengi
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Bildirim işlevi
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Profil simgesi işlevi
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                // Menüde bir şey seçildiğinde yapılacaklar
              },
              itemBuilder: (BuildContext context) {
                return {'Ayarlar', 'Çıkış Yap'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profil Fotoğrafı ve Adı
              Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('lib/assets/images/pp.jpg'),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmet Bütün',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'ahmetbutun27@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32.0),

              // Biyografi Bölümü
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Merhaba! Ben Ahmet. Yazılım geliştiriciyim ve mobil uygulamalar geliştirme konusunda tutkuluyum. Flutter ile çalışmaktan keyif alıyorum ve yeni projeler üzerinde çalışmayı seviyorum.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              SizedBox(height: 32.0),

              // Butonlar ve İkonlar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        SizedBox(width: 8.0),
                        Text('Takip Et'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.message),
                        SizedBox(width: 8.0),
                        Text('Mesaj Gönder'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.0),

              // İletişim İkonları
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.linked_camera, color: Colors.blue[800]),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.camera, color: Colors.blue[800]),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16.0),
                  IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.blue[800]),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: 
//         Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '$_counter',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _incrementCounter,
//           tooltip: 'Increment',
//           child: const Icon(Icons.add),
//         ),
//         );
//   }
// }
