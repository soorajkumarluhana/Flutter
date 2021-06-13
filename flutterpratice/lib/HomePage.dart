import 'package:flutter/material.dart';
import 'package:flutterpratice/drawer.dart';

class HomePage extends StatelessWidget {
  var image = [
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmobilemall.pk%2Fpublic_html%2Fimages%2Fno_image.png&imgrefurl=https%3A%2F%2Fmobilemall.pk%2Ft-mobile-mytouch-3g-1-2&tbnid=Zixyinr55EyLEM&vet=12ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygBegUIARDeAQ..i&docid=S9_1ZcoG-vyPQM&w=700&h=400&q=mobile&client=opera&ved=2ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygBegUIARDeAQ",
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.samsung.com%2Fis%2Fimage%2Fsamsung%2Fassets%2Fpk%2Fgalaxy-s21%2Fpf%2FHOME_P_KV_Main_Animated_KV_720X1080.jpg%3F%24ORIGIN_JPG%24&imgrefurl=https%3A%2F%2Fwww.samsung.com%2Fpk%2Fsmartphones%2Fall-smartphones%2F&tbnid=0XnatmEKIsVJAM&vet=12ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygEegUIARDmAQ..i&docid=vW7QaViW-R_NjM&w=720&h=1080&q=mobile&client=opera&ved=2ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygEegUIARDmAQ",
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Ffdn.gsmarena.com%2Fimgroot%2Fnews%2F21%2F04%2Ft-mobile-5g-free-phone-upgrade%2F-1200w5%2Fgsmarena_001.jpg&imgrefurl=https%3A%2F%2Fwww.gsmarena.com%2Ftmobile_is_giving_you_a_free_samsung_galaxy_a32_5g_if_you_tradein_any_old_phone-news-48559.php&tbnid=IoIso2xW98GUtM&vet=12ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygJegUIARDxAQ..i&docid=ooTPmcms8D9VjM&w=1200&h=800&q=mobile&client=opera&ved=2ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygJegUIARDxAQ",
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Ffdn.gsmarena.com%2Fimgroot%2Fnews%2F21%2F04%2Ft-mobile-5g-free-phone-upgrade%2F-1200w5%2Fgsmarena_001.jpg&imgrefurl=https%3A%2F%2Fwww.gsmarena.com%2Ftmobile_is_giving_you_a_free_samsung_galaxy_a32_5g_if_you_tradein_any_old_phone-news-48559.php&tbnid=IoIso2xW98GUtM&vet=12ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygJegUIARDxAQ..i&docid=ooTPmcms8D9VjM&w=1200&h=800&q=mobile&client=opera&ved=2ahUKEwiWgrTzvJLxAhWL_IUKHZ65AtkQMygJegUIARDxAQ"
  ];
  var title = ["Iphone 12", "MacBook", "Note", "Laptop"];
  var price = ["\$10", "\$10", "\$30", "\$40"];
  var subtitle = [
    "5.0 (23 review)",
    "5.0 (23 review)",
    "5.0 (23 review)",
    "5.0 (23 review)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: price.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(image[index]),
              ),
              title: Text(title[index]),
              subtitle: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(subtitle[index]),
                  ],
                ),
              ),
              trailing: Text(price[index]),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
