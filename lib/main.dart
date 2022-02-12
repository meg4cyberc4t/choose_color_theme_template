import 'package:choose_color_theme_template/theme_data_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDataService.themeData,
      //To use a dark theme, use darkTheme and ThemeMode
      home: const WidgetsView(),
    );
  }
}

class WidgetsView extends StatelessWidget {
  const WidgetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: _drawer(context),
      appBar: AppBar(
        title: const Text('Choose color theme template'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _localDivider('Text', context),
              Text(
                'headline1',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'headline2',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'headline3',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'headline4',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'headline5',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'headline6',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'bodyLarge',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'bodyMedium',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'bodySmall',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'bodyText1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'bodyText2',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                'button',
                style: Theme.of(context).textTheme.button,
              ),
              Text(
                'caption',
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                'overline',
                style: Theme.of(context).textTheme.overline,
              ),
              Text(
                'subtitle1',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'subtitle2',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'displayLarge',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'displayMedium',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'displaySmall',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'labelLarge',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                'labelMedium',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                'labelSmall',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                'titleLarge',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'titleMedium',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'titleSmall',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              _localDivider('Buttons', context),
              ElevatedButton(
                onPressed: () {},
                child: const Text('ElevatedButton'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('ElevatedButton with icon'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'OutlinedButton',
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('OutlinedButton with icon'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('TextButton'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('TextButton with icon'),
              ),
              ToggleButtons(
                borderRadius: BorderRadius.circular(4.0),
                isSelected: const [true, true, false],
                onPressed: (index) {},
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 1'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 2'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 3'),
                  ),
                ],
              ),
              BackButton(onPressed: () {}),
              CloseButton(onPressed: () {}),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 8),
              FloatingActionButton.extended(
                  onPressed: () {}, label: const Text('Label')),
              const SizedBox(height: 8),
              FloatingActionButton.large(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 8),
              FloatingActionButton.small(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              PopupMenuButton(
                icon: const Icon(Icons.keyboard_arrow_up),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(child: Text('PopupMenuButton A')),
                  const PopupMenuItem(child: Text('PopupMenuButton B')),
                  const PopupMenuDivider(),
                  const PopupMenuItem(child: Text('PopupMenuButton C')),
                  const PopupMenuItem(child: Text('PopupMenuButton D')),
                ],
              ),
              DropdownButton<int>(
                onChanged: (int? value) {},
                value: 0,
                items: const [
                  DropdownMenuItem(
                    child: Text('DropdownMenuItem A'),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text('DropdownMenuItem B'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('DropdownMenuItem C'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('DropdownMenuItem D'),
                    value: 3,
                  ),
                ],
              ),
              _localDivider('List Tiles', context),
              ListTile(
                title: const Text('title'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('title'),
                subtitle: const Text('subtitle'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('title'),
                subtitle: const Text('subtitle'),
                leading: CircleAvatar(
                  child: const Icon(Icons.person),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text('title'),
                subtitle: const Text('subtitle'),
                leading: CircleAvatar(
                  child: const Icon(Icons.person),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {},
              ),
              CheckboxListTile(
                value: false,
                title: const Text('title'),
                subtitle: const Text('subtitle'),
                onChanged: (value) {},
              ),
              CheckboxListTile(
                value: true,
                title: const Text('title'),
                subtitle: const Text('subtitle'),
                onChanged: (value) {},
              ),
              _localDivider('Bottom Navigation Bars', context),
              NavigationBar(
                selectedIndex: 1,
                destinations: const <Widget>[
                  NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.calendar_today_outlined),
                    selectedIcon: Icon(Icons.calendar_today),
                    label: 'Calendar',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.search_outlined),
                    selectedIcon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person_outlined),
                    selectedIcon: Icon(Icons.person),
                    label: 'Person',
                  ),
                ],
              ),
              _localDivider('Popups', context),
              OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('title'),
                      content: const Text('context'),
                      actions: [
                        TextButton(
                          child: const Text('Back'),
                          onPressed: Navigator.of(context).pop,
                        ),
                        TextButton(
                          child: const Text('Next'),
                          onPressed: Navigator.of(context).pop,
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  'Show alert dialog',
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewPadding.bottom,
                        ),
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.share),
                              title: const Text('Share'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.link),
                              title: const Text('Get link'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.edit),
                              title: const Text('Edit name'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.delete),
                              title: const Text('Delete collection'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  'Show modal bottom sheet',
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: const Text('Text label'),
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {},
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Show snack bar',
                ),
              ),
              OutlinedButton(
                onPressed: () async {
                  await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                },
                child: const Text(
                  'Show time picker',
                ),
              ),
              OutlinedButton(
                onPressed: () async {
                  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(
                      const Duration(days: 365),
                    ),
                  );
                },
                child: const Text(
                  'Show date picker',
                ),
              ),
              _localDivider('Chips', context),
              Wrap(
                children: [
                  InputChip(
                    avatar: const Icon(Icons.add),
                    label: const Text('Input 1'),
                    onSelected: (bool value) {},
                  ),
                  const SizedBox(width: 10),
                  InputChip(
                    avatar: const Icon(Icons.remove),
                    label: const Text('Input 2'),
                    onSelected: (bool value) {},
                  ),
                ],
              ),
              _localDivider('Switches / Sliders', context),
              Slider(
                value: 50,
                max: 100,
                label: 'Label',
                onChanged: (value) {},
              ),
              Switch(
                value: true,
                onChanged: (value) {},
              ),
              Switch(
                value: false,
                onChanged: (value) {},
              ),
              _localDivider('Progress Indicators', context),
              const SizedBox(height: 10),
              const LinearProgressIndicator(),
              const SizedBox(height: 10),
              const CircularProgressIndicator(),
              const SizedBox(height: 10),
              _localDivider('Text Fields', context),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Hint Text'),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Hint Text',
                    labelText: 'Label Text',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Only label',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _localDivider(String text, BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 8.0),
        child: Row(
          children: [
            const Expanded(
              child: Divider(
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const Expanded(
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      );

  Widget _drawer(BuildContext context) => Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Header',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Item 2'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Item 3'),
                onTap: () {},
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Label',
                ),
              ),
              ListTile(
                leading: const Icon(Icons.bookmark),
                title: const Text('Item A'),
                onTap: () {},
              ),
            ],
          ),
        ),
      );
}
