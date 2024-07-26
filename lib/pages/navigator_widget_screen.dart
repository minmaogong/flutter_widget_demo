import 'package:flutter/material.dart';

// 创建一个GlobalKey
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class NavigatorWidgetScreen extends StatefulWidget {
  const NavigatorWidgetScreen({super.key});

  static const routeName = '/NavigatorWidgetScreen';

  @override
  State<NavigatorWidgetScreen> createState() => _NavigatorWidgetScreenState();
}

// TickerProviderStateMixin 用于动画控制
class _NavigatorWidgetScreenState extends State<NavigatorWidgetScreen> {
  int _selectedIndex = 0; // 当前选中的索引

  // 不同页面的占位Widget列表
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Business Page', textAlign: TextAlign.center),
    Text('School Page', textAlign: TextAlign.center),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      body: Center(
        // 显示选中页面的内容
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      endDrawer: _buildDrawer(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Navigator Widget Screen'),
      // 应用栏左侧图标
      leading: IconButton(
        onPressed: () {
          // 使用_globalKey来打开Drawer
          // openDrawer: 打开左侧抽屉 openEndDrawer: 打开右侧抽屉
          _scaffoldKey.currentState?.openEndDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
      // 应用栏右侧动作按钮
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      ],
      // bottom: TabBar(
      //   controller: _tabController,
      //     tabs: const [
      //       Tab(icon: Icon(Icons.directions_car)),
      //       Tab(icon: Icon(Icons.directions_transit)),
      //       Tab(icon: Icon(Icons.directions_bike)),
      //     ]
      // ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: _selectedIndex, // 当前选中的索引
      selectedItemColor: Colors.amber[800], // 选中项的颜色
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  Drawer _buildDrawer() {
    return Drawer( // drawer: 左侧抽屉 endDrawer: 右侧抽屉
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Text(
                "Drawer Header",
                style: TextStyle(color: Colors.blueAccent, fontSize: 24),
              )),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Messages'),
            onTap: () {
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: _tabController,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.blue,
            tabs: const [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ]),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('Car')),
            Center(child: Text('Transit')),
            Center(child: Text('Bike')),
          ],
        ))
      ],
    );
  }
}
