import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:project_news/controller.dart';
import 'package:project_news/layout/card.dart';
import 'package:project_news/model/response/m_response.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Future<ResponseServices> newsResponse;
  Future<ResponseServices> callIndex(
      String? tags, Map<String, dynamic>? params) async {
    dynamic response;
    await ServiceController().newsIndex(tags, params).then((res) async {
      response = await res.data;
    });
    return ResponseServices.fromJson(response);
  }

  TextEditingController searchController = TextEditingController();

  List<dynamic> tagsList = [
    {"title": "Semua", "value": ""},
    {"title": "Nasional", "value": "nasional"},
    {"title": "Internasional", "value": "internasional"},
    {"title": "Ekonomi", "value": "ekonomi"},
    {"title": "Olahraga", "value": "olahraga"},
    {"title": "Teknologi", "value": "teknologi"},
    {"title": "Hiburan", "value": "hiburan"},
    {"title": "Gaya Hidup", "value": "gaya-hidup"},
  ];

  @override
  void initState() {
    super.initState();
    newsResponse = callIndex(null, null);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Masukan judul berita',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            newsResponse = callIndex(null, {
                              'title': searchController.value.text
                            });
                          });
                        },
                        icon: const Icon(Icons.search_rounded))),
              ),
            ),
            SizedBox(
              height: 40,
              child: AnimatedList(
                  padding: const EdgeInsets.only(top: 3, bottom: 3, left: 15),
                  scrollDirection: Axis.horizontal,
                  initialItemCount: tagsList.length,
                  itemBuilder: (context, index, animation) {
                    return GestureDetector(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            newsResponse =
                                callIndex('/${tagsList[index]['value']}', null);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40))),
                          child: Text(tagsList[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16.0)),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: FutureBuilder(
                  future: newsResponse,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      EasyLoading.show(
                          dismissOnTap: false, status: "Memuat Berita ...");
                      return const Center();
                    } else {
                      ResponseServices? response = snapshot.data;
                      return AnimatedList(
                        padding: const EdgeInsets.only(top: 10),
                        initialItemCount: response?.data?.length ?? 0,
                        itemBuilder: (context, index, animation) {
                          return GestureDetector(
                            child: Cards(
                              onPress: () {
                                context.goNamed('DETAIL', pathParameters: {
                                  'link': response?.data?[index].link ?? '',
                                  'title': response?.data?[index].title ?? '',
                                });
                              },
                              newsDate: response?.data?[index].isoDate ??
                                  '' as DateTime,
                              newsDescription:
                                  response?.data?[index].contentSnippet ?? '',
                              newsTitle: response?.data?[index].title ?? '',
                              newsLogo:
                                  response?.data?[index].image?.small ?? '',
                            ),
                          );
                        },
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
