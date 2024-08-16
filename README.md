# widget_demo

A new Flutter project.

## Getting Started

## 1.平台选择
- Windows
    - Desktop
    - Android
    - Web
- macOS
    - Desktop
    - iOS
    - Android
    - Web
- Linux
    - Desktop
    - Android
    - Web
- ChromeOS
    - Android
    - Web

> 以下环境是基于macOS平台配置

## 2.Flutter开发工具
- Xcode
    - iOS开发工具
    - AppStore下载 或者 官网下载
        - 指定命令行工具版本：执行 sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
        - 签署Xcode许可协议：执行 sudo xcodebuild -license
- CocoaPods
    - 用于iOS和macOS应用程序开发的依赖管理工具
    - 安装： sudo gem install cocoapods 或者 brew install cocoapods
    - 配置环境变量 export PATH=$HOME/.gem/bin:$PATH
    - 验证：pod --version
- Flutter 编辑器
    - [Visual Studio Code](https://code.visualstudio.com/Download) Flutter官方推荐
    - [Android Studio](https://developer.android.com/studio?hl=zh-cn)
    - [IntelliJ IDEA](https://www.jetbrains.com/help/idea/installation-guide.html)

## 3.安装Flutter SDK
- 使用VS Code 安装 Flutter
    1. 启动VS Code
    2. Command + Shift + P 打开 命令面板
    3. 输入 flutter
    4. 选择 “Flutter: New Project”
    5. 如果电脑上没有Flutter SDK，会提示下载SDK，按照提示安装即可
- 手动下载Flutter SDK
    - https://docs.flutter.dev/get-started/install/macos/mobile-ios
    - 安装SDK 到指定目录
    - 将 Flutter 添加到 环境变量
        - 打开命令行工具
        - 输入 vim ~/.zshenv
        - 将 'export PATH=$HOME/development/flutter/bin:$PATH' 添加到环境变量中
        - 保存后执行 source ~/.zshenv 触发环境变量生效
- Flutter 环境检查
    - 打开命令行工具
    - 执行flutter doctor -v
```
[✓] Flutter (Channel stable, 3.19.5, on macOS 14.4.1 23E224 darwin-arm64, locale
    zh-Hans-CN)
    • Flutter version 3.19.5 on channel stable at /Users/xxx/development/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 300451adae (4 months ago), 2024-03-27 21:54:07 -0500
    • Engine revision e76c956498
    • Dart version 3.3.3
    • DevTools version 2.31.1
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
    • Android SDK at /Users/xxx/Library/Android/sdk
    • Platform android-34, build-tools 34.0.0
    • Java binary at: /Applications/Android
      Studio.app/Contents/jbr/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build
      17.0.9+0-17.0.9b1087.7-11185874)
    • All Android licenses accepted.
[✓] Xcode - develop for iOS and macOS (Xcode 15.3)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • Build 15E204a
    • CocoaPods version 1.15.2
[✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome
[✓] Android Studio (version 2023.2)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build
      17.0.9+0-17.0.9b1087.7-11185874)
[✓] VS Code (version 1.91.1)
    • VS Code at /Applications/Visual Studio Code.app/Contents
    • Flutter extension version 3.92.0
[✓] Connected device (4 available)
    • xxx iPhone (mobile)       • 00008020-000141D00CE9002E            • ios
      • iOS 17.5.1 21F90
    • iPhone 15 Pro Max (mobile) • 9C88C882-BC1A-4EB6-9365-55F24210573D • ios
      • com.apple.CoreSimulator.SimRuntime.iOS-17-4 (simulator)
    • macOS (desktop)            • macos                                •
      darwin-arm64   • macOS 14.4.1 23E224 darwin-arm64
    • Chrome (web)               • chrome                               •
      web-javascript • Google Chrome 127.0.6533.57
[✓] Network resources
    • All expected network resources are available.
• No issues found!
```

## 4.Flutter常用指令
- 创建项目
```
# 默认会创建支持Android、iOS、Linux、macOS、Windows和Web工程
flutter create  flutter_demo 

# 创建仅支持Android和iOS平台工程
flutter create --platforms ios,android flutter_demo

# Android要求java语言，iOS要求OB开发，默认是kotlin和swift
flutter create -a java -i objc
```
- 创建插件
```
# 创建dart插件
flutter create -t plugin flutter_plugin_demo

# 创建与平台相关插件
flutter create -t plugin --platforms ios,android flutter_plugin_demo

# 创建支持ffi插件
flutter create -t plugin_ffi flutter_plugin_demo
```
- 获取和安装pubspec.yaml中的依赖库
```
# 1.创建项目后，运行前需要先执行 pub get
# 2.添加库依赖或者更改版本号需要执行pub get
flutter pub get
```
- Flutter打包
```
# 编译apk
flutter build apk

# 编译ipa
flutter build ipa

# 指定程序入口编译
flutter build apk --target=lib/main_dev.dart
```
- 运行Flutter工程
```
flutter run

# 指定某个设备上运行
flutter run -d <deviceId>

# 指定入口文件运行
flutter run -t lib/main_dev.dart
```
- 删除build等项目缓存
```
# 删除build,.dart_tool,.packages等目录，clean后需要flutter pub get获取依赖
flutter clean
```
- 查看依赖树
```
flutter pub deps
```
- 截屏
```
flutter screenshot
```

## 5.Flutter常用组件
- 基础组件
    - Text 显示文本
    - Image 显示图片
    - Icon 显示图标
    - Container 容器，可用于装饰和定位子widget
    - Column和Row 线性布局，分别用于垂直和水平方向上排列子widget
    - Stack 叠加布局 用于堆叠子widget
    - Scaffold 提供基本的Material Design布局结构
- 按钮和可交互组件
    - ElevatedButton 有阴影的按钮
    - FloatingActionButton 圆形按钮
    - IconButton 图标按钮
    - TextButton 文本按钮
    - GestureDetector 检测手势的widget，用于添加点击、双击、长按等交互
- 布局组件
    - Padding 添加内边距
    - Align 对齐子widget
    - Center 将子widget居中显示
    - ListView 显示列表数据，支持滚动
    - GridView 显示网格数据
- 表单组件
    - TextField 输入框
    - Checkbox 复选框
    - Radio 单选按钮
    - Switch 开关按钮
    - DropdownButton 下拉菜单
- 导航组件
    - AppBar 应用栏，通常显示在应用的顶部
    - Drawer 抽屉菜单，通常与Scaffold一起使用
    - BottomNavigationBar 底部导航栏
    - TabBar 标签页，通常用于顶部或底部
- StatelessWidget、StatefulWidget和InheritedWidget
    - StatelessWidget
        - **特点**：不持有状态。它们在构建时接收给定的参数，这些参数决定了它们的显示内容。一旦创建，其属性不会改变。
        - **用途**：适用于当Widget的显示内容不需要根据用户交互或其他因素变化时。例如，一个显示静态文本的Widget。
    - StatefulWidget
        - **特点**：持有状态。这类Widget可以根据用户交互或数据变化来动态更改其显示内容。它们通过创建一个单独的State对象来管理状态。
        - **用途**：适用于需要根据用户交互或数据变化动态更新UI的场景。例如，一个计数器Widget，用户点击按钮时计数增加。
    - InheritedWidget
        - **特**点：数据共享。InheritedWidget并不直接与状态管理相关，而是一种在Widget树中高效传递数据的方式。子Widget可以通过context访问在Widget树中高层传递下来的数据。
        - **用途**：适用于需要在Widget树中共享数据的场景，尤其是跨多个Widget共享数据时。例如，应用的主题数据或用户登录信息。
- 其他组件
    - FutureBuilder和StreamBuilder: 用于构建基于Future和Stream的异步UI
        - FutureBuilder
            - FutureBuilder用于构建一个依赖于Future的Widget。当Future完成时，它会自动更新UI。
            - **使用场景**：适用于需要处理单次异步操作的情况，如从网络请求数据。
        - StreamBuilder
            - StreamBuilder用于构建一个依赖于Stream的Widget。它监听Stream的数据，并且每当Stream发出新的数据时，它会自动更新UI。
            - **使用场景**：适用于需要处理连续数据流的情况，如聊天应用中的即时消息。
    - AnimatedList: 动画列表，用于当列表项插入或移除时显示动画。
    - Hero: 创建在路由之间飞行的动画效果。
        - Hero widget允许开发者在屏幕之间创建动画，使得一个widget可以“飞”到另一个屏幕上，这对于创建流畅的用户体验非常有用。
## 6.Flutter-全球化
- 添加依赖
```
dependencies:
  flutter:
    sdk: flutter
  easy_localization:
```
- assets/translations/目录下创建翻译文件
```
// en.json
{
  "hello": "Hello World"
}
// zh-CN.json
{
  "hello": "你好！"
}
```
- 配置pubspec.yaml
```
flutter:
  assets:
    - assets/translations/
```
- 初始化easy_localization
```
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('zh', 'CN')],
      path: 'assets/translations', // 你的翻译文件路径
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Localization Demo',
      home: MyHomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('easy_localization'),
      ),
      body: Center(
        child: Text('hello'.tr()), // 使用.tr()获取翻译文本
      ),
    );
  }
}
```
- 通过指令自动生成映射文件
```
# 执行命令
# 生成coden_loader.g.dart
dart run easy_localization:generate -S assets/translations/

# 生成local_keys.g.dart
dart run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations/ -s en.json
```
- 使用翻译
```
Text('hello'.tr())
```
- 切换语言
```
ElevatedButton(
  onPressed: () {
    context.setLocale(Locale('zh', 'CN')); // 切换到中文
  },
  child: Text('Switch to Spanish'),
)
```

## 7.Flutter-资源管理
- 添加图片资源：
```
flutter:
  assets:
    - images/a_dot_burr.jpeg
    - images/a_dot_ham.jpeg
```
- 添加字体资源：
```
flutter:
  fonts:
    - family: MyCustomFont
      fonts:
        - asset: fonts/MyCustomFont-Regular.ttf
        - asset: fonts/MyCustomFont-Italic.ttf
          style: italic
```
- 访问图片资源
```
Widget build(BuildContext context) {
  return Image.asset('images/a_dot_burr.jpeg');
}
```
- 访问图片资源
```
TextStyle(
  fontFamily: 'MyCustomFont',
)
```
- 使用包中的资源
  如果你的资源存储在一个包中，需要在路径前加上包名：
```
Image.asset('packages/my_package/images/a_dot_burr.jpeg')
```
- 加载文本文件
```
import 'package:flutter/services.dart' show rootBundle;
Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}
```
- 图片资源多倍图
1. 创建图片资源目录： 在项目的**assets**目录下创建不同密度的子目录，例如images/、images/2.0x/、images/3.0x/等。

## 8.[Flutter-Bloc状态管理框架](https://pub.dev/packages/bloc)
>Flutter Bloc是一个流行的状态管理库，它基于Reactive Programming（响应式编程），特别是使用了Stream和Sink的概念来处理状态的变化。Bloc全称为Business Logic Component，旨在将业务逻辑与UI界面分离，使得应用更易于维护和测试。
- **Event**：事件是从UI发送到Bloc的输入。它通常表示用户的交互（如按钮点击）。
- **State**：状态是Bloc输出到UI的响应。UI根据不同的状态进行重建。
- **Bloc**：Bloc接收事件作为输入，然后根据这些事件产生新的状态作为输出。

- 添加依赖：在pubspec.yaml中添加flutter_bloc依赖。
```
dependencies:
  flutter_bloc: ^8.0.0 # 请检查最新版本
```
- 定义Events：创建一个枚举或类来定义所有可能的事件。
```
enum CounterEvent { increment, decrement }
```
- 定义States：创建一个类来表示状态
```
class CounterState {
  final int counterValue;
  CounterState({required this.counterValue});
}
```
- 创建Bloc：继承Bloc类来创建你的Bloc，定义接收事件并产生状态的逻辑。
```
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.increment) {
        emit(CounterState(counterValue: state.counterValue + 1));
      } else if (event == CounterEvent.decrement) {
        emit(CounterState(counterValue: state.counterValue - 1));
      }
    });
  }
}
```
- 在UI中使用Bloc：使用BlocProvider在UI树中提供Bloc，并使用BlocBuilder或BlocListener来构建响应状态变化的UI。
```
void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text('${state.counterValue}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().add(CounterEvent.increment),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
```
- BlocProvider、BlocBuilder、BlocListener、BlocConsumer
    - BlocProvider
        - **用途**：用于向子树中注入Bloc或Cubit实例。
        - **特点**：它使用Provider包来实现，允许子树中的任何组件能够通过context访问到Bloc或Cubit实例。
    ```
    BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterPage(),
    )
    ```

    - BlocBuilder
        - **用途**：用于构建基于Bloc或Cubit状态变化的UI部分。（Cubit只有状态State，没有事件Event）
        - **特点**：它监听Bloc或Cubit的状态变化，并根据新状态重建UI。它不会响应事件，只负责根据状态变化构建UI。
    ```
    BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
        return Text('${state.counter}');
        },
    )
    ```
    - BlocListener
        - **用途**：用于监听Bloc或Cubit状态变化以执行一次性操作，如导航、显示对话框等。
        - **特点**：它监听状态变化并执行操作，但不构建UI。通常用于响应状态变化时需要执行的副作用或一次性操作。
    ```
    BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
            if (state.counter == 5) {
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Counter reached 5')),
                );
            }
        },
        child: Container(),
    )
    ```
    - BlocConsumer
        - 用途：结合了BlocBuilder和BlocListener的功能，既可以构建UI，也可以监听状态变化执行操作。
        - 特点：适用于既需要根据状态变化重建UI，又需要执行一次性操作的场景。减少了需要同时使用BlocBuilder和BlocListener的情况。
    ```
    BlocConsumer<CounterBloc, CounterState>(
        builder: (context, state) {
            return Text('${state.counter}');
        },
        listener: (context, state) {
            if (state.counter == 5) {
             ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Counter reached 5')),
            );
            }
        },
    )
    ```

## 9.flutter_bloc与freezed结合使用
>flutter_bloc与freezed的结合使用可以极大地提高代码的可读性和可维护性。flutter_bloc用于状态管理，而freezed用于生成不可变的数据模型，这对于处理状态变化尤其有用。
- 添加依赖
```
dependencies:
  flutter_bloc: 
  freezed_annotation: 
dev_dependencies:
  build_runner: 
  freezed: 
```
- 定义State和Event使用Freezed
```
import 'package:freezed_annotation/freezed_annotation.dart';
part 'counter_event.freezed.dart';
part 'counter_state.freezed.dart';
@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
}
@freezed
class CounterState with _$CounterState {
  const factory CounterState({required int counter}) = _CounterState;
}
```
- 运行`flutter pub run build_runner build`来生成相关代码。
- 创建Bloc
```
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<Increment>((event, emit) => emit(CounterState(counter: state.counter + 1)));
    on<Decrement>((event, emit) => emit(CounterState(counter: state.counter - 1)));
  }
}
```
- 在UI中使用Bloc
```
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';
void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter with Freezed')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text('Counter: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().add(const CounterEvent.increment()),
        child: Icon(Icons.add),
      ),
    );
  }
}
```

## 10.Flutter-Go_Router路由框架
> go_router是Flutter的一个路由库，它提供了声明式路由配置、深层链接支持、嵌套导航等功能，使得Flutter应用的路由管理变得更加简单和灵活。

#### 基本使用
- 添加依赖
```
dependencies:
  go_router: ^2.0.0 # 请检查最新版本
```
- 配置路由
```
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => HomeScreen(),
    ),
    GoRoute(
      path: '/details/:id',
      builder: (BuildContext context, GoRouterState state) {
        final id = state.params['id']!;
        return DetailsScreen(id: id);
      },
    ),
  ],
);
```
- 使用路由
```
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
```

#### 常用接口
- 导航：使用context.go()、context.push()、context.pop()等方法进行页面导航
```
// 导航到指定路径
context.go('/details/1');
// 在当前路径上推送新路径
context.push('/details/1');
context.replace('/details/1');
// 返回上一个页面
context.pop();
```
- 参数传递：通过路由路径中的参数或查询参数传递数据
```
// 路径参数
final id = state.params['id'];
// 查询参数
final query = state.queryParams['query'];
```
- 重定向：使用redirect属性处理重定向逻辑
```
final goRouter = GoRouter(
  routes: [...],
  redirect: (state) {
    // 根据条件返回重定向的路径
    if (!isUserLoggedIn) {
      return '/login';
    }
    return null; // 无需重定向
  },
);
```
- 错误处理：通过配置errorBuilder来自定义错误页面
```
final goRouter = GoRouter(
  routes: [...],
  errorBuilder: (context, state) => ErrorScreen(error: state.error),
);
```

## 11.关键字extends/implements/with
在Dart（Flutter的编程语言）中，extends、implements和with关键字用于类的继承、接口实现和混入（Mixin），它们有着不同的用途和行为：
#### extends
- **用途**：用于创建一个子类，继承一个父类。
- **行为**：子类会继承父类的方法和属性。在Dart中，类只能继承自一个父类（单继承）。
```
class Animal {
  void eat() => print('Animal eating');
}
class Dog extends Animal {
  void bark() => print('Dog barking');
}
```
#### implements
- **用途**：用于实现一个或多个接口。(不能new对象)
- **行为**：类必须实现接口中定义的所有方法，但不继承任何实现。一个类可以实现多个接口。
```
abstract class Eater {
  void eat();
}
abstract class Barker {
  void bark();
}
class Dog implements Eater, Barker {
  @override
  void eat() => print('Dog eating');
  @override
  void bark() => print('Dog barking');
}
```
#### with
- **用途**：用于将一个或多个mixin的功能添加到类中。
- **行为**：Mixin允许在多个类层次结构中重用代码。一个类可以使用多个mixin。
```
mixin Eater {
  void eat() => print('Eating');
}
mixin Barker {
  void bark() => print('Barking');
}
class Dog extends Animal with Eater, Barker {
  // Dog now has eat() and bark() methods.
}
```

## 12.补充
- Flutter中设置宽高使用的是逻辑像素

在 Flutter 中，宽度和高度的单位是逻辑像素（logical pixels），也称为设备独立像素（device-independent pixels, DIP）。逻辑像素是一个抽象的单位，用于在不同设备上实现一致的用户界面布局。

逻辑像素与物理像素（physical pixels）之间的关系由设备的像素密度（DPI 或 PPI）决定。Flutter 使用 MediaQuery 来获取设备的像素密度，并根据这个密度来计算逻辑像素和物理像素之间的转换。

例如，如果你设置一个组件的宽度为 100 逻辑像素，这个宽度在不同设备上会根据设备的像素密度进行缩放，以确保在视觉上看起来一致。

- 获取设备的像素密度

你可以使用 MediaQuery 获取设备的像素密度（devicePixelRatio），以了解逻辑像素和物理像素之间的关系：
```
import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Pixel Ratio Example'),
      ),
      body: Center(
        child: Text('Device Pixel Ratio: $devicePixelRatio'),
      ),
    );
  }
}
void main() => runApp(MaterialApp(home: MyWidget()));
```
