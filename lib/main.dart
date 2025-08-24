import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var title = [
      'วานิลลา',
      'ช็อกโกแลต',
      'สตรอเบอร์รี่',
      'มิ้นท์ช็อกชิป',
      'คุ้กกี้แอนด์ครีม',
      'กาแฟ',
      'มะม่วง',
      'ช็อกโกแลตดูไบ',
      'คาราเมล',
      'มัทฉะ',
    ];
    var image = [
      'assets/images/vanilla.jpg',
      'assets/images/chocolate.jpg',
      'assets/images/strawberry.jpg',
      'assets/images/mint.jpg',
      'assets/images/cookies&cream.jpg',
      'assets/images/coffee.jpg',
      'assets/images/mango.jpg',
      'assets/images/dubai.jpg',
      'assets/images/caramel.jpg',
      'assets/images/matcha.jpg',
    ];
    var detail = [
      'ไอศกรีมหอมหวานกลิ่นวานิลลาธรรมชาติ เนื้อเนียนนุ่ม ทานง่าย เป็นรสคลาสสิกที่ทุกคนชื่นชอบ',
      'รสชาติเข้มข้นของช็อกโกแลตแท้ หวานขมกำลังดี เหมาะสำหรับสายช็อกโกแลตเลิฟเวอร์',
      'รสเปรี้ยวหวานสดชื่นจากสตรอเบอร์รี่แท้ มีกลิ่นหอมของผลไม้ธรรมชาติ ทานแล้วรู้สึกสดชื่น',
      'ไอศกรีมมิ้นท์เย็นสดชื่นผสมช็อกโกแลตชิปกรุบกรอบ รสชาติแปลกใหม่ที่ลงตัว',
      'เนื้อไอศกรีมครีมหวานละมุนผสมกับชิ้นคุกกี้โอรีโอ้กรอบๆ เคี้ยวเพลินทุกคำ',
      'รสชาติหอมเข้มของกาแฟคั่วบดแท้ เหมาะสำหรับคนรักกาแฟที่อยากเพิ่มความหวานเย็น',
      'ไอศกรีมผลไม้รสเปรี้ยวหวานจากมะม่วงสุก เนื้อเนียน หอมกลิ่นมะม่วงแบบไทยๆ',
      'ช็อกโกแลตเข้มข้นสไตล์ตะวันออกกลาง เพิ่มความหรูหราด้วยกลิ่นเครื่องเทศอ่อนๆ และเนื้อสัมผัสที่นุ่มลึก',
      'ไอศกรีมรสหวานมันจากคาราเมลแท้ๆ หอมละมุน ละลายในปาก',
      'รสมัทฉะแท้จากญี่ปุ่น หอมชาเขียว ขมนิดๆ หวานหน่อยๆ ได้ความรู้สึกสดชื่นแบบ Zen',
    ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange, // สีหลัก
        fontFamily: 'Kanit',
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('รายการรสไอศกรีมโปรด')),
        body: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      image[index],
                                      fit: BoxFit.cover,
                                      width: 220,
                                      height: 160,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    title[index],
                                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 80, 80, 80))
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    detail[index],
                                    style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 120, 120, 120))
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('ปิด'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title[index],
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}