import 'package:flutter/material.dart';
void main() => runApp(GradientAppBarRun());
// stateless widget
class GradientAppBarRun extends StatelessWidget {
  @override Widget build(BuildContext context) {
    // returning MaterialApp
    //var menu;
    return MaterialApp (debugShowCheckedModeBanner: false, theme: ThemeData.light (), home:
      // scaffold
      Scaffold (body: CustomScrollView (slivers: <Widget>[
            // silverappbar for gradient widget
            SliverAppBar (
              pinned: true, expandedHeight: 80, flexibleSpace: Container (
              decoration: BoxDecoration (
                  // LinearGradient
                  gradient: LinearGradient (
                    // colors for gradient
                    colors: [Colors.blue, Colors.purple,
                    ],
                  ),
                ),
              ),
              // title of appbar
              //title: Text ("Gradient AppBar!"),
              title:
              Container(child: Row(children:<Widget>[Image.asset('image/inaklug.png',fit: BoxFit.contain, height: 60,), Text('Inaklug'),
                  ],
                ),
              ), actions: <Widget>[Padding(padding: EdgeInsets.symmetric(horizontal:16), child: Icon(Icons.menu),)
              ],
            ), SliverList (delegate: SliverChildListDelegate ([Divider(), Stack(children: <Widget>[Image.asset('image/dresden2.jpg'), Positioned(left: 10, right: 0, bottom: 10,
                        child: Text('Tentang Kami', style: TextStyle(color: Colors.white, fontSize: 30),),)
                    ],), ListTile(title: Text('Profil', style: TextStyle(fontSize: 30),
                    ),),
                  Padding(padding: const EdgeInsets.all(8.0), child: Text('Didirikan pada tahun 2018, Ini membuktikan bahwa INAKLUG merupakan konsultan pendidikan internasional yang berpengalaman, terbesar terpercaya dan juga memiliki jam terbang tinggi untuk melayani para anak-anak muda Indonesia untuk menuntut ilmu di berbagai negara maju dunia''.'),
                  ), Divider(), Stack(children: <Widget>[Image.asset('image/visi.png'),
                    ],
                  ),
                  ListTile(
                    title: Text('Visi', style: TextStyle(fontSize: 30),
                    ),
                  ), Padding(padding: const EdgeInsets.all(8.0), child: Text('Membangun Sumber Daya Indonesia yang mempunyai daya tinggi, tangguh secara internasional untuk menghadapi persaingan di era globalisasi serta membangun karakter pemimpin Indonesia masa depan yang tangguh, mandiri, dan profesional'
                      '.'),), Divider(), Stack(children: <Widget>[Image.asset('image/misi.png'),],), ListTile(title: Text('Misi', style: TextStyle(fontSize: 30),),
          ),
          Padding(padding: const EdgeInsets.all(8.0), child: Text('Membangun Sumber Daya Indonesia yang mempunyai daya tinggi, tangguh secara internasional untuk menghadapi persaingan di era globalisasi serta membangun karakter pemimpin Indonesia masa depan yang tangguh, mandiri, dan profesional'
                            '.'),
                  ), OutlinedButton(onPressed: () {}, style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.grey)),
                      ),), child: Text("Layanan Kami"),
                  ), Divider(), Container(alignment: Alignment.center, child: Column(children: [Text("Hubungi kami", style: TextStyle(fontSize: 30)), Text(""), Text("Kantor Pusat", style: TextStyle(fontSize: 20)), Text("Galeria Jakarta, Town Square, LT. Basement.", style: TextStyle(fontSize: 20)), Text("Phone : 089871234567", style: TextStyle(fontSize: 15)),],),
                  ), OutlinedButton(onPressed: () {}, style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.grey)),
                      ),), child: Text("Lokasi Kami"),), Container(height: 50, width: 150, decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue, Colors.purple], begin: Alignment.topLeft, end: Alignment.bottomRight,), border: Border.all(color: Colors.white, width: 1.5,), borderRadius: BorderRadius.circular(25),), child: OutlinedButton(child: Text('Kirim Pesan', style: TextStyle(color: Colors.white)), onPressed: () {},),
                  ), ListTile(title: Text(''),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: Container(height: 80, decoration: BoxDecoration(
                  // LinearGradient
                  gradient: LinearGradient(
                    // colors for gradient
                    colors: [Colors.blue, Colors.purple,], begin: Alignment.topCenter, end: Alignment.bottomCenter,),),child: Center(child: Text("Copyright 2022 - Inaklug Indonesia Hak Cipta dilindungi undang undang", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}