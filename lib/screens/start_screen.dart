import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<String> countryList = ['🇰🇷 한국', '🇯🇵 일본', '🇨🇦 캐나다', '🇺🇸 영국', '🇬🇧 미국'];
  late String selectCountry;

  @override
  void initState() {
    super.initState();
    selectCountry = countryList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 150),
                  child: Image.asset('assets/images/goguma_icon.png'),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '당신 근처의 고구마켓',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '내 동네를 설정하고\n고구마켓을 시작해보세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return makeCountryListView(context);
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            selectCountry,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      elevation: 0,
                    ),
                    child: Text(
                      '시작하기',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '이미 계정이 있나요?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container makeCountryListView(BuildContext context) {
    // TODO: Bottom Sheet 높이를 ListView 높이에 맞춰 적용되도록 수정
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(15),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          var country = countryList[index];
          return Container(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectCountry = country;
                  Navigator.pop(context);
                });
              },
              child: Text(country),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(),
      ),
    );
  }
}
