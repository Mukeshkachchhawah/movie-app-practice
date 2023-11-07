import 'package:flutter/material.dart';

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/animations/left_to_right_transition.dart';
import 'package:page_animation_transition/animations/top_to_bottom_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:video_player/custom_widgets/custom_container/custom_container1.dart';
import 'package:video_player/custom_widgets/custom_container/custom_container2.dart';
import 'package:video_player/open_movie_tab/new_release.dart';
import 'package:video_player/widgets/darwars.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List new_release = [
    "https://static-koimoi.akamaized.net/wp-content/new-galleries/2022/04/bholaa-01-1.jpg",
    "https://cdn.moviefone.com/admin-uploads/posters/fastx-movie-poster_1678807228.jpg?d=360x540&q=60",
    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00058086-lsmhrsphls-portrait.jpg",
    "https://st1.bollywoodlife.com/wp-content/uploads/2022/11/5-292.jpg",
    "https://assets.gadgets360cdn.com/pricee/assets/product/202301/Animal_1673270841.jpg",
    "https://im.rediff.com/movies/2023/jan/12film4.jpg",
    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-250,h-390/et00323848-sxfuvsdbzr-portrait.jpg"
  ];

  List comingsoon = [
    "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_2_5x/sources/r1/cms/prod/9942/1279942-v-724d56a723a1",
    "https://source.boomplaymusic.com/buzzgroup2/M00/33/A5/rBEe_GJKlZ6ATWH1AAJ7XF5-lqE348.png",
    "https://assets.gadgets360cdn.com/pricee/assets/product/202205/Cirkus-New-Poster_1652176101.jpg",
    "https://assetscdn1.paytm.com/images/cinema/Spidr-608x800-deeb9600-5b2d-11ec-a600-994b3acb0b07.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_blackpanther_19754_4ac13f07.jpeg?region=0%2C0%2C540%2C810",
    "https://preview.redd.it/rc0pe9r1w0t71.jpg?auto=webp&s=51819c7382094e9bab17625f549db34d25bd00fe",
    "https://1.bp.blogspot.com/-W8QS0xUeOQ0/YOgVxLwhDPI/AAAAAAAAOpw/9GdbHxJ9hrYtCytWxe2ngho2wCv9f3JcgCLcBGAsYHQ/s1350/Upcoming%2BHindi%2Bfilm%252C%2B%2523BhootPolice%2BMovie%2BPosters%2B%25281%2529.jpg",
    "https://www.rewariyasat.com/h-upload/2022/05/28/30205-liger.webp",
    "https://m.media-amazon.com/images/M/MV5BNDNlZmEzZjUtMmZiYi00NzQ2LTljN2EtYjhhMWU1ZWQ2MDY0XkEyXkFqcGdeQXVyMTA5NzUzODM4._V1_.jpg"
  ];

  List Bollwoed_Movie = [
    "https://cdn.bollywoodmdb.com/fit-in/movies/largethumb/2021/pushpa/poster.jpg",
    "https://image.scoopwhoop.com/q30/s3.scoopwhoop.com/anj2/5cb6c32cd0aa3850a6a6b18c/6ebc7a53-c5ac-4f1e-b2e5-488064d2ce40.jpg",
    "https://cdn.bollywoodmdb.com/fit-in/cover/152x202/16703_raksha-bandhan_cover.jpg",
    "https://pbs.twimg.com/media/EW0hmeeVcAAEheR.jpg",
    "https://image.scoopwhoop.com/q30/s4.scoopwhoop.com/anj2/5dd3c34850758d6730e4f44f/e5a30ca6-5032-4c7a-ab9b-6b37056e6629.jpg",
    "https://www.filmibeat.com/img/320x100x392/popcorn/trending_news/release-date-locked-for-goodbye-6275-20220903122728.jpg",
    "https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-1z5156101/portrait/1920x770b428101cf0d84ef697a2b22e172a913b.jpg",
    "https://daex9l847wg3n.cloudfront.net/shemoutputimages/Jab-Jab-Phool-Khile/5ba8ce1fa609d26f87000021/medium_2_3_1622047234.jpg?1622051379",
    "https://webimages.oneindia.com/wp-content/uploads/sites/38/2023/06/FsbwFZ2XgAMXxnR.jpg"
  ];
  List Holiwoed_movie = [
    "https://www.scrolldroll.com/wp-content/uploads/2022/04/Doctor-strange-Hollywood-movies-releasing-in-may-2022.webp",
    "https://upload.wikimedia.org/wikipedia/en/e/ee/TheLostCityPoster.jpg",
    "https://www.bollymoviereviewz.com/wp-content/uploads/2013/05/Operation_Fortune.jpg",
    "https://assets.gadgets360cdn.com/pricee/assets/product/202205/jurassic_world_dominion_poster_1652087377.jpeg",
    "https://www.bollymoviereviewz.com/wp-content/uploads/2013/05/330px-Fantastic_Beasts2C_The_Secrets_of_Dumbledore_teaser_poster.png",
    "https://www.naijaprey.com/wp-content/uploads/2022/02/A-Fairy-Tale-After-All.jpg",
    "https://www.naijaprey.com/wp-content/uploads/2022/02/Fistful-Of-Vengeance.jpg",
    "https://www.thefilmik.com/wp-content/uploads/2022/02/THe-Flash-Movie-.webp",
    "https://m.timesofindia.com/thumb.cms?msid=92238059&width=200&height=281",
  ];

  List Episode = [
    "https://www.indiantvinfo.com/media/2022/05/Anupamaa-High-TRP-Hindi-Serial.jpg",
    "https://www.tellyupdates.com/wp-content/uploads/2022/01/Yeh-Rishta-Kya-Kehlata-Hai.jpg",
    "https://bollywoodhush.com/wp-content/uploads/2022/04/Spy-Bahu.jpg",
    "https://starsunfolded.com/wp-content/uploads/2022/08/Sanjog.jpg",
    "https://sarkarilatestnews.com/wp-content/uploads/2022/01/Yeh-Hai-Chahatein-16th-January-2022-Written-Episode-Update-in-hindi.webp",
    "https://netstorage-tuko.akamaized.net/images/a030e9a59f19b1d8.jpg?imwidth=900",
    "https://rskg.in/wp-content/uploads/2022/06/Parineeti.jpg",
    "https://i0.wp.com/auditionsnews.com/wp-content/uploads/2020/09/kumkum-bhagya-aaj-ka-episode.jpg?resize=800%2C491&ssl=1&is-pending-load=1",
    "https://nettv4u.com/imagine/19-07-2019/radhakrishn.jpg",
    "https://1.bp.blogspot.com/-5YfJs5sPfgU/Xm4w4cwLJeI/AAAAAAAAZck/-vBoPO6juJo9v8xPZ05U6YTLZUftBQhSQCLcBGAsYHQ/w1200-h630-p-k-no-nu/Naagin-TV-Series.png"
  ];

  List English_Movie = [
    "https://i.ytimg.com/vi/9XxS6_uPR_4/maxresdefault.jpg",
    "https://stat1.bollywoodhungama.in/wp-content/uploads/2022/08/Siya-306x393.jpg",
    "https://image.tmdb.org/t/p/original/dWYGHG6yIG8Fh8LwhbGnnaYNYyX.jpg",
    "https://m.media-amazon.com/images/M/MV5BOWY1NjE2MzUtYTVjOC00ZDUxLWIwZDUtMzk5YWQ5ODc5YTI5XkEyXkFqcGdeQXVyMTI1NDEyNTM5._V1_QL75_UY281_CR46,0,190,281_.jpg",
    "https://1.bp.blogspot.com/-dVsLW7hCz80/XeqDreIp9oI/AAAAAAAAAl4/XUfgkaLlcDorI_XgNDUXWmJjWp8bS5sfQCLcBGAsYHQ/s400/War-2019.jpg",
    "http://m.shareimage.pics/?img=181661757203.jpg",
    "https://aniportalimages.s3.amazonaws.com/media/details/5fdDA5XkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg",
    "https://i.pinimg.com/474x/90/bc/af/90bcaf70186ec4ce8e502aba6c14c6b9.jpg",
    "https://i.pinimg.com/474x/80/8b/34/808b344284fd6ff306bae8216f7f5e9e.jpg",
    "http://inextmovies.xyz/wp-content/uploads/2021/10/ArmyOfThievesTeaserPoster.jpg"
  ];

  List Hindi_Movie = [
    "https://images004-a.erosnow.com/movie/8/1000378/img145210/6984260/1000378_6984260.jpg",
    "https://qqcdnpictest.mxplay.com/pic/4427b696f812fbf4aadc14559f8995fc/en/2x3/320x480/4b278501b4080f45f01a07d5ba8f99a1_1280x1920.webp",
    "https://qqcdnpictest.mxplay.com/pic/452b1863d450b2bb76aeb9dff933db82/en/2x3/320x480/509de1e1cf9157c15a9ea442f34446bb_1280x1920.webp",
    "https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-103561/portrait/bindihi1920x770.jpg",
    "https://upload.wikimedia.org/wikipedia/en/f/f4/Mimi_2021_Hindi_poster.jpg",
    "https://1.bp.blogspot.com/-Du7MX1-gseM/X_SwXWWyGgI/AAAAAAAAACM/KENR48rZK9QX99EO902EuXyFXF4S4oFYQCNcBGAsYHQ/w1200-h630-p-k-no-nu/Wanted7.jpg",
    "https://akamaividz2.zee5.com/image/upload/w_504,h_756,c_scale,f_webp,q_auto:eco/resources/0-0-2481/portrait/002481cover31066131.jpg",
    "https://upload.wikimedia.org/wikipedia/en/thumb/e/ee/Genius_official_poster.jpg/220px-Genius_official_poster.jpg",
    "http://timesofindia.indiatimes.com/photo/61979945.cms",
    "https://qqcdnpictest.mxplay.com/pic/0824b942cecba2886443004138a8e860/en/2x3/320x480/b73fa454b62777d915a0f9271b92f1fa_1280x1920.webp"
  ];

  List Cartoons = [
    "https://images.bauerhosting.com/legacy/media/6140/b515/4699/e01c/48f2/7735/inside-out-main2.jpg?q=80&w=440&ar=16:9&fit=crop&crop=top",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-animated-movie-0005-inside-out-disney-1531165701.jpg",
    "https://www.edsys.in/wp-content/uploads/16-10-2018_12-inspirational-animated-movies-for-students-1.jpg",
    "https://i.pinimg.com/550x/16/01/26/160126b35dc6687fde1af5a1786cb02a.jpg",
    "https://i.ytimg.com/vi/XnuDetmX9lU/maxresdefault.jpg",
    "https://d.newsweek.com/en/full/1787416/mitchells-vs-machines.jpg?w=1600&h=1600&q=88&f=d470e9bca117b92f0c66863606274a03",
    "https://animationsongs.com/wp-content/uploads/2021/08/Paw-Patrol-The-Movie-List-Of-All-Songs-From-2021-Spin-Master-Movie-Official-Soundtrack.jpg",
    "https://www.currentschoolnews.com/wp-content/uploads/2022/02/flatten-1.jpg",
    "https://i.ytimg.com/vi/Pnp0upDOn6E/maxresdefault.jpg",
    "https://www.hollywoodinsider.com/wp-content/uploads/2022/08/The-Hollywood-Insider-Shrek-Success-Pop-Culture-Dreamworks.png"
  ];
  List Games_images = [
    "https://imgk.timesnownews.com/story/PUBG-cover-image_0.jpg",
    "https://imgk.timesnownews.com/story/Call-of-duty-mobile-poster.jpg?tr=w-400,h-300,fo-auto",
    "https://cdn.images.express.co.uk/img/dynamic/143/590x/GTA-6-release-date-news-1278144.jpg?r=1588689843355",
    "https://play-lh.googleusercontent.com/c18dnPx8Qm-WIfdWoG4ZRmD1P2-cwFPwSY9-dsNHBBPs_o5kV4qg-3yrj8shXVXQrWE",
    "https://s3.amazonaws.com/culga-games-images/uploads/images/penalty-challenge.jpg",
    "https://staticg.sportskeeda.com/editor/2020/04/11745-15871611317419-800.jpg",
    "https://images.indianexpress.com/2021/12/7-Games-like-Animal-Crossing-featured-1.jpg",
    "https://www.pcgamesn.com/wp-content/uploads/2018/12/PUBG_Vikendi_gameplay-550x309.jpg",
    "https://i.ytimg.com/vi/hRw2JhM1IvE/maxresdefault.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: 
        AppBar(
          backgroundColor: Color.fromARGB(255, 13, 11, 102),
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
        ),
        drawer: Drawers(),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child:
                // add image cros Slider animation ant outo silder
                ImageSlideshow(
              indicatorColor: Colors.blue,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [

                ////////// images otot slider Timers //////////////////
                Image.network(
                  'https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2022/04/24121055/Featured_MostAnticipatedMovies2022_Thor.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtPTBRxwqQ283xAfvE8RCiNt_oPsHDNJda4Q&usqp=CAU',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'http://static-mag.itcher.com/mag/wp-content/uploads/2015/06/Lord-of-the-Rings-1024x512.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2023/05/30/1209821-gt-vs-cskipl-final-2023-csk-win.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.ytimg.com/vi/u5dZjOydoF0/maxresdefault.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Release Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // New Release Video Bloack
          newrelease(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Coming Soon Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // New Coming Soon Video Bloack
          coming_soon(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Bollwoed Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // New Boliwoed Video Bloack
          boliwoed(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Holiwoed Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Holiwoed(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Les't Episode",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          new_episode(),
          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Trading English Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          tradingenglish(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Trading Hindi Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          tradingHindi(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Cartoons Movie",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Popular_Video(),
          SizedBox(
            height: 20,
          ),
          // New Games Video Bloack
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Games Video",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Gamese()
        ])));
  }

  Widget Popular_Video() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Cartoons.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container1(
                    image: Cartoons[index],
                    onTap: () {
                      print("hello ");
                    }),
              )),
    );
  }

  Widget tradingHindi() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Hindi_Movie.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container1(
                    image: Hindi_Movie[index],
                    onTap: () {
                      print("hello ");
                    }),
              )),
    );
  }

  Widget tradingenglish() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: English_Movie.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container1(
                    image: English_Movie[index],
                    onTap: () {
                      print("hello ");
                    }),
              )),
    );
  }

  Widget new_episode() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Episode.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container2(
                  images: Episode[index],
                  onTap: () {
                    print("hello ");
                  },
                ),
              )),
    );
  }

  Widget Holiwoed() {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Holiwoed_movie.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container1(
                    image: Holiwoed_movie[index],
                    onTap: () {
                      print("hello ");
                    }),
              )),
    );
  }

  Widget boliwoed() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Bollwoed_Movie.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container1(
                    image: Bollwoed_Movie[index],
                    onTap: () {
                      print("hello ");
                    }),
              )),
    );
  }

  Widget coming_soon() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: comingsoon.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Container1(
                    image: comingsoon[index],
                    onTap: () {
                      print("hello ");
                    }),
              )),
    );
  }

  Widget newrelease() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: new_release.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(5),
                child:
                    //  Container(
                    //    height: 300,
                    // width: 200,
                    //   decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(new_release[index]),fit: BoxFit.fill)),
                    //  )
                    Custom_Container1(image: new_release[index], onTap: () {}),
              )),
    );
  }

  Widget Gamese() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Games_images.length,
          itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Custom_Container1(image: Games_images[index], onTap: () {}),
              )),
    );
  }
}
