import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SearchScreen.dart';
import 'NotificationScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(title: 'Shopping Platforms'),
  ));
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  // Shopping platforms
  final List<Map<String, dynamic>> platforms = [
    {
      'name': 'Amazon',
      'image': 'assets/amazon.png',
      'url': 'https://www.amazon.in',
      'items': [
        {
  //          - assets/firdege.webp
  // - assets/iphone.jpg
  // - assets/shirt.jpg
  // - assets/z fold.png
  // - assets/ac.jpg

          'name': 'iphone 15',
          'image': 'assets/iphone.jpg',
          'url': 'https://www.amazon.in/Apple-iPhone-15-Plus-128/dp/B0CHX6X2WW/ref=sr_1_2_sspa?crid=2Z95Y1WNA2AR9&dib=eyJ2IjoiMSJ9.OCoJgZ8ghdguKvc7Ozmt3KlC0a5KB5Cw1Z8vR-gHUKadFVNlFkE5k3U1aDLD2afrwcmyoJKLMFdlt8Onykq3VYWSYe4jY2eZJz379QoXeOpExoNVD9-h2k6hOMwkKT0LoWkfhBqtbWbVPHoJpLZ62UymNh2z6NtbRoCUbNIPd-19uk6oPSnTg47xhCyNBkhT2QSCJGjWVlxTg8IVboUTtGShBLGMQ_XblIIDOjn6_SM.Pw4JbuHirlIJdHnJyLWatvfg6Gt4Q5foYgzl4IDqSiE&dib_tag=se&keywords=iphone&qid=1731938278&sprefix=iphon%2Caps%2C355&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1',
        },
        {
          'name': 'T shirt',
          'image': 'assets/shirt.jpg',//shirt
          'url': 'https://www.amazon.in/Lymio-Sweatshirts-Unisex-H-30-32-Khakhi/dp/B0CM6L982R/ref=sr_1_25?crid=32Y3P5Q1AOZ4D&dib=eyJ2IjoiMSJ9.xvSlAc2gqrEo6BUm5rLTgfihHNUn4rJOU5grTksd9Im2DOa6F9M64KoHIxRbDeHrH0ZKAPk2SfEIuNSAhg6jzaF0vRxAbeQmimLo5ofhAS3wGL-GLkL1BkDwIPKdMSMybNJU6O8BuzfD7y6wHskRin0k6jFKhD9m0Y8FwSuEuGDegrEu88Ze7c5kq27c8Hrvn6ELBJXEl-JtKxUuQB_KOCNXNPIus1tfTTto0EzQBNKBKpiPsvP9HIh1v7XuUhf7M8t8N6vhU526hqGfUL_gt2zFkrgYWBH290MddNUW0Cw.F-56-lelmxFiA0jd6wecYRKsEn1ajz_KuvprDdqoSnU&dib_tag=se&keywords=clothing&qid=1731938410&sprefix=clothing%2Caps%2C244&sr=8-25',
        },
        {
          'name': 'Samsang Z fold',
          'image': 'assets/z fold.png',//z fold
          'url': 'https://www.amazon.in/Samsung-Galaxy-Storage-Additional-Exchange/dp/B0B8SBNW9W/ref=sr_1_2?crid=1Y7VBAT6SUGDM&dib=eyJ2IjoiMSJ9.8kj_NBMGLD5DS1YP91pobSshzxwD9HZUkdR-sBrEAibum1P0_YxMtDxLIyiD3SjUk0MOOC-ry849a-_teZdg3MoYevXiEmCXtDzXGbHiEwrBVTVVlcudxidePjQm9IcjeVBtFA1RR3QLHTW-8pId_j9Ark8LHkABsyr37I4E9SO5k6_YLDnk-EjFOF0YGy7MKfWE2gQh5xXaoO3A_ut7MvEJy6eoVtKPC0dQeyWklzY.Pkl9v19Hv5x9zUl7HN0M6t3VCnPDYpI_cT7LCkNmzCo&dib_tag=se&keywords=samsung+z+fold&nsdOptOutParam=true&qid=1731938625&sprefix=samsung+z+fol%2Caps%2C313&sr=8-2',
        },
        {
          'name': 'refrigerator',
          'image': 'assets/firdege.webp',//fridge
          'url': 'https://www.amazon.in/Samsung-Convertible-Inverter-Refrigerator-RS76CG8003S9HL/dp/B0BQC4Y4TP/ref=sr_1_13?_encoding=UTF8&content-id=amzn1.sym.58c90a12-100b-4a2f-8e15-7c06f1abe2be&dib=eyJ2IjoiMSJ9.SuYaJGM0QWQShkZ4E0oQZmWHl9FG_c0cbL9nt4N7TIzT0_E_xAjPtVZka-zIT8Werti9nwYpBQUptbHsfOYPTsv-K4vLGXq91yL8E11v6DqutUpuhW3I0O1NnGJMU2A2YUeP4AYXfWXJJZN30gOLahgwMC7U8EpXvVQf07AFyrrbwdFYZIPSS1RAfzy8wKzj5z16-S0FwLUMi9gyfxxg0cttzAf_4h97daPBAFJj8fC0xK0ZJ6kVIxB0LVVvnq0KyKtPWrkaRG1AbzS3zmWgnxzsDoajn_XLPoqLUrigt0s._YRlbLBXFZ5sK2nBitSqSQarhw7yInzKXpiE6a0BaYg&dib_tag=se&pd_rd_r=74ddd69d-a955-4f7f-b0f2-2639171b3e4b&pd_rd_w=2R7fd&pd_rd_wg=7seDS&pf_rd_p=58c90a12-100b-4a2f-8e15-7c06f1abe2be&pf_rd_r=BCJK0C1TJHH8R0ABX1F1&qid=1731938693&refinements=p_85%3A10440599031&rps=1&s=kitchen&sr=1-13',
        },
        {
          'name': 'Ac',
          'image': 'assets/ac.jpg',//ac
          'url': 'https://www.amazon.in/Godrej-Convertible-Split-AC-12TINV3R32-GWA/dp/B0BN37ZCF7/ref=sr_1_3?_encoding=UTF8&content-id=amzn1.sym.58c90a12-100b-4a2f-8e15-7c06f1abe2be&dib=eyJ2IjoiMSJ9.LpujZ4uISPUK8sa_6yNGVa_NjOCUQKpUI8WFpHZUHexElYWkHSmB2Sqr1nj00s6qyNiOMggUFM4dmvCDvgwRrImsGaPcKQYVGQtxEp9FyW33oQKwTxbBDOGIOrVUxTxoeQF7xGwW1TcRhicMypOlukaRLOLfEWwwlo4Hz6zoAFhmAP8SOTo73ji1-7B17DyFp38tM2WFuitPkPv5tFmnBeZ_4BUDoWG3ZeRGA9ZlNztiUn53V2hbYfM5idZGDMF2LrPHVmDBOCOvJJWJdtp4rkBmTv-fIT4CVr_LSIMmqVU.oQOhoXdwEmkXboO_cEgG58PFyvLJhwmmKGfObvHfcXY&dib_tag=se&pd_rd_r=8cf1cbc4-e4d6-45c3-b38d-b9c9f423276a&pd_rd_w=NYk7z&pd_rd_wg=uQG9S&pf_rd_p=58c90a12-100b-4a2f-8e15-7c06f1abe2be&pf_rd_r=TDJZYYR2EX0BNAPCADBM&qid=1731938765&refinements=p_85%3A10440599031&rps=1&s=kitchen&sr=1-3&th=1',
        },
      ],
    },
    {
      'name': 'Flipkart',
      'image': 'assets/flipkart.png',
      'url': 'https://www.flipkart.com',
      'items': [
        {
          'name': 'Flipkart Item 1',
          'image': 'assets/flipkart_item1.png',
          'url': 'https://www.flipkart.com/item1',
        },
        {
          'name': 'Flipkart Item 2',
          'image': 'assets/flipkart_item2.png',
          'url': 'https://www.flipkart.com/item2',
        },
        {
          'name': 'Flipkart Item 3',
          'image': 'assets/flipkart_item3.png',
          'url': 'https://www.flipkart.com/item3',
        },
        {
          'name': 'Flipkart Item 4',
          'image': 'assets/flipkart_item4.png',
          'url': 'https://www.flipkart.com/item4',
        },
        {
          'name': 'Flipkart Item 5',
          'image': 'assets/flipkart_item5.png',
          'url': 'https://www.flipkart.com/item5',
        },
      ],
    },
    {
      'name': 'Myntra',
      'image': 'assets/myntra.png',
      'url': 'https://www.myntra.com',
      'items': [
        {
          'name': 'Myntra Item 1',
          'image': 'assets/myntra_item1.png',
          'url': 'https://www.myntra.com/item1',
        },
        {
          'name': 'Myntra Item 2',
          'image': 'assets/myntra_item2.png',
          'url': 'https://www.myntra.com/item2',
        },
        {
          'name': 'Myntra Item 3',
          'image': 'assets/myntra_item3.png',
          'url': 'https://www.myntra.com/item3',
        },
        {
          'name': 'Myntra Item 4',
          'image': 'assets/myntra_item4.png',
          'url': 'https://www.myntra.com/item4',
        },
        {
          'name': 'Myntra Item 5',
          'image': 'assets/myntra_item5.png',
          'url': 'https://www.myntra.com/item5',
        },
      ],
    },
    {
      'name': 'Ajio',
      'image': 'assets/ajio.png',
      'url': 'https://www.ajio.com',
      'items': [
        {
          'name': 'Ajio Item 1',
          'image': 'assets/ajio_item1.png',
          'url': 'https://www.ajio.com/item1',
        },
        {
          'name': 'Ajio Item 2',
          'image': 'assets/ajio_item2.png',
          'url': 'https://www.ajio.com/item2',
        },
        {
          'name': 'Ajio Item 3',
          'image': 'assets/ajio_item3.png',
          'url': 'https://www.ajio.com/item3',
        },
        {
          'name': 'Ajio Item 4',
          'image': 'assets/ajio_item4.png',
          'url': 'https://www.ajio.com/item4',
        },
        {
          'name': 'Ajio Item 5',
          'image': 'assets/ajio_item5.png',
          'url': 'https://www.ajio.com/item5',
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
  backgroundColor: Colors.deepPurple,
  elevation: 10.0,
  centerTitle: true,
  title: Text(
    title,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.search, color: Colors.white),
      onPressed: () {
        // Navigate to SearchScreen when the icon is clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchScreen()),
        );
      },
    ),
    IconButton(
      icon: Icon(Icons.notifications, color: Colors.white),
      onPressed: () {
        // Navigate to NotificationScreen when the icon is clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationScreen()),
        );
      },
    ),
  ],
)

,
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: platforms.length,
        itemBuilder: (context, index) {
          final platform = platforms[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemListPage(
                    platformName: platform['name']!,
                    items: platform['items'],
                  ),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5.0,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      platform['image']!,
                      height: 80.0,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.broken_image,
                          size: 50,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    platform['name']!,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemListPage extends StatelessWidget {
  final String platformName;
  final List<Map<String, String>> items;

  ItemListPage({Key? key, required this.platformName, required this.items})
      : super(key: key);

  // Function to launch URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(platformName),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () => _launchURL(item['url']!),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      item['image']!,
                      height: 80.0,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.broken_image,
                          size: 50,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    item['name']!,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
