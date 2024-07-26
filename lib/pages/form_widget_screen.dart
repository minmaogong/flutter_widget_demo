import 'package:flutter/material.dart';

class FormWidgetScreen extends StatefulWidget {
  const FormWidgetScreen({super.key});

  static const routeName = '/FormWidgetScreen';

  @override
  State<FormWidgetScreen> createState() => _FormWidgetScreenState();
}

class _FormWidgetScreenState extends State<FormWidgetScreen> {
  bool _isObscure = true;
  bool _isCheckAndroid = false;
  bool _isCheckIOS = false;
  bool _isCheckMacOS = false;
  OperatingSystem _operatingSystem = OperatingSystem.Android;
  bool _isSwitch = false;

  // 当前选中的项
  String? _selectedItem = 'Item 1';

  // 下拉菜单项列表
  final List<String> _dropdownItems = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Form Widget Screen'),
      ),
      body: Column(
        children: [
          const Text(
            'TextField 输入框',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Enter your name',
            ),
          ),
          TextFormField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: "Enter your password",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Checkbox 复选框',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Row(
            children: [
              Checkbox(
                value: _isCheckAndroid,
                onChanged: (bool? isCheck) {
                  setState(() {
                    _isCheckAndroid = isCheck!;
                  });
                },
              ),
              const Text('Android'),
              Checkbox(
                value: _isCheckIOS,
                onChanged: (bool? isCheck) {
                  setState(() {
                    _isCheckIOS = isCheck!;
                  });
                },
              ),
              const Text('iOS'),
              Checkbox(
                value: _isCheckMacOS,
                onChanged: (bool? isCheck) {
                  setState(() {
                    _isCheckMacOS = isCheck!;
                  });
                },
              ),
              const Text('macOS'),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Radio 单选框',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Row(children: [
            Radio<OperatingSystem>(
                value: OperatingSystem.Android,
                groupValue: _operatingSystem,
                onChanged: (value) {
                  setState(() {
                    _operatingSystem = value!;
                  });
                }),
            const Text('Android'),
            Radio<OperatingSystem>(
                value: OperatingSystem.iOS,
                groupValue: _operatingSystem,
                onChanged: (value) {
                  setState(() {
                    _operatingSystem = value!;
                  });
                }),
            const Text('iOS'),
            Radio<OperatingSystem>(
                value: OperatingSystem.MacOS,
                groupValue: _operatingSystem,
                onChanged: (value) {
                  setState(() {
                    _operatingSystem = value!;
                  });
                }),
            const Text('macOS'),
          ]),
          const SizedBox(height: 20),
          const Text(
            'Switch 开关按钮',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Switch',
                style: TextStyle(fontSize: 18),
              ),
              Switch(
                value: _isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    _isSwitch = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'DropdownButton  下拉菜单',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          DropdownButton(
              value: _selectedItem,
              items:
                  _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue;
                });
              }),
        ],
      ),
    );
  }
}

enum OperatingSystem {
  Android,
  iOS,
  MacOS,
}
