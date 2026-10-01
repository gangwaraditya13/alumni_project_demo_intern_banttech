import 'package:alumni/features/home/presentation/widgets/home_screen_part_2_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ExploreUniversitiesViewAllScreen extends StatefulWidget {
  ExploreUniversitiesViewAllScreen({super.key});

  @override
  State<ExploreUniversitiesViewAllScreen> createState() => _ExploreUniversitiesViewAllScreenState();
}

class _ExploreUniversitiesViewAllScreenState extends State<ExploreUniversitiesViewAllScreen> {
  final List<List<String>> _universities = [
    [
      "Invertis University",
      "https://www.invertisuniversity.ac.in/images/logo.svg",
    ],
    [
      "Amity University",
      "https://images.seeklogo.com/logo-png/39/1/amity-university-logo-png_seeklogo-396047.png",
    ],
    [
      "Chandigarh University",
      "https://images.seeklogo.com/logo-png/43/1/chandigarh-university-cu-logo-png_seeklogo-432515.png",
    ],
    [
      "Lovely Professional University",
      "https://images.seeklogo.com/logo-png/34/2/lpu-sae-india-collegiate-club-logo-png_seeklogo-345773.png",
    ],
    [
      "Sharda University",
      "https://images.seeklogo.com/logo-png/42/1/sharda-university-logo-png_seeklogo-428233.pngn",
    ],
    [
      "Graphic Era University",
      "https://cdn.brandfetch.io/idprfJSwow/w/1000/h/1000/theme/dark/icon.jpeg?c=1bxid64Mup7aczewSAYMX&t=1781716306226",
    ],
    [
      "DIT University",
      "https://upload.wikimedia.org/wikipedia/commons/d/dd/DIT_University_Official_Logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail_unscaled&_=20140330154109",
    ],
    [
      "UPES",
      "https://images.seeklogo.com/logo-png/43/1/upes-university-of-petroleum-and-energy-studies-logo-png_seeklogo-432511.png",
    ],
    [
      "Galgotias University",
      "https://images.seeklogo.com/logo-png/38/1/galgotias-university-logo-png_seeklogo-389692.png",
    ],
    [
      "Manipal University Jaipur",
      "https://imgs.search.brave.com/HC2deGPPhQC9IoBohjNyshQlbYhsUEsn_MQNQCsvbGQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzBhLzRh/LzMxLzBhNGEzMTE5/YWQzYjQ5ZWFjMzlh/M2YzYzE2ZWRkYmJj/LmpwZw",
    ],
  ];

  final TextEditingController _searchTextEditingController = TextEditingController();

  List<List<String>> getSearchedUniversity(String search){
    return search.isEmpty?_universities:_universities.where((e) => e[0].toLowerCase().contains(search.toLowerCase().trim())).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.r),
              child: TextField(
                controller: _searchTextEditingController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                    });
                  }, icon: Icon(Icons.search)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2.w),
                    gapPadding: 8.r
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 2.w),
                      gapPadding: 8..r
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Colors.red, width: 2.w),
                      gapPadding: 8.r
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Colors.red, width: 2.w),
                      gapPadding: 8.r
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(15.r),
                  child: HomeScreenPart2Card(universityName: getSearchedUniversity(_searchTextEditingController.text)[index][0], universityUri: getSearchedUniversity(_searchTextEditingController.text)[index][1],),
                ),
                itemCount: getSearchedUniversity(_searchTextEditingController.text).length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
