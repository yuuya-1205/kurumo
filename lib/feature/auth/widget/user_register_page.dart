import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kurumo/feature/auth/models/user.dart';
import 'package:kurumo/feature/auth/provider/auth_provider.dart';
import 'package:kurumo/feature/auth/widget/component/input_form.dart';
import 'package:kurumo/feature/auth/widget/component/primary_button.dart';

class UserRegisterPage extends ConsumerStatefulWidget {
  const UserRegisterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserRegisterPageState();
}

class _UserRegisterPageState extends ConsumerState<UserRegisterPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final companyNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final zipCodeController = TextEditingController();
  final adressController = TextEditingController();
  final buildingNameController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    companyNameController.dispose();
    phoneNumberController.dispose();
    zipCodeController.dispose();
    adressController.dispose();
    buildingNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uid = ref.watch(uidProvider);
    final firestore = FirebaseFirestore.instance.collection('user');
    print(uid);
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text('入力した会社情報はお客様に表示されます'),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Flexible(
                    child: InputForm(
                  labelText: '苗字',
                )),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                    child: InputForm(
                  labelText: '名前',
                ))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const InputForm(
              labelText: '会社名',
            ),
            const SizedBox(
              height: 16,
            ),
            const InputForm(
              labelText: '電話番号',
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Text('郵便番号'),
                Flexible(
                  child: InputForm(
                    labelText: '〒',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const InputForm(
              labelText: '住所',
            ),
            const SizedBox(
              height: 16,
            ),
            const InputForm(
              labelText: '建物名',
            ),
            const SizedBox(
              height: 102,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
                children: [
                  TextSpan(text: '登録することで,'),
                  TextSpan(
                    text: 'プライバシーポリシー',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: 'と'),
                  TextSpan(
                    text: '利用規約',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: 'に'),
                  TextSpan(text: '同意したことになります'),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            PrimaryButton(
              label: 'アカウント作成',
              onPressed: () async {
                const register = User(
                    firstName: '',
                    lastName: '',
                    companyName: '',
                    phoneNumber: 1,
                    zipCode: 1,
                    adress: '',
                    buildingName: '');
                await firestore.doc(uid).set(register.toJson());
                const path = '/top_page';
                context.go(path);
              },
            )
          ],
        ),
      ),
    );
    ;
  }
}
