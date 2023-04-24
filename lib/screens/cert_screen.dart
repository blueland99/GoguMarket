import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/button_widget.dart';

/// 휴대폰 인증 화면
class CertScreen extends StatefulWidget {
  const CertScreen({Key? key}) : super(key: key);

  @override
  State<CertScreen> createState() => _CertScreenState();
}

class _CertScreenState extends State<CertScreen> {
  bool isCertButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(''),
        elevation: 0.5,
        // 색상만 변경
        // iconTheme: const IconThemeData(
        //   color: Colors.black,
        // ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          padding: const EdgeInsets.symmetric(horizontal: 20),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '휴대폰 번호를 인증해주세요.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '고구마켓은 휴대폰 번호로 가입해요. 번호는 안전하게 보관되며 어디에도 공개되지 않아요.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              maxLength: 11,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp('[0-9]'),
                ),
              ],
              decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15), border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(), hintText: '휴대폰 번호를 입력해주세요', counterText: ''),
              style: Theme.of(context).textTheme.labelSmall,
              onChanged: (value) {
                isCertButtonEnabled = (value.length == 11);
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            BoxButtonWidget(
              text: '인증문자 받기',
              enabled: isCertButtonEnabled,
              callback: () {
                // TODO: 인증문자 받기 클릭
              },
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '휴대폰 번호가 변경되었나요?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      TextButtonWidget(
                        text: '이메일로 계정찾기',
                        callback: () {
                          // TODO: 이메일로 계정찾기 클릭
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
