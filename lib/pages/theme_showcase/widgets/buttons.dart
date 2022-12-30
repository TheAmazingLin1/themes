import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  Widget _elevatedButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () {}, child: Text("Elevated")),
        ElevatedButton(onPressed: null, child: Text("Elevated disabled")),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Elevated Icon"),
        ),
        ElevatedButton.icon(
          onPressed: null,
          icon: Icon(Icons.add),
          label: Text("Elevated Icon Disabled"),
        ),
      ],
    );
  }

  Widget _textButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(onPressed: () {}, child: Text("Text button")),
        TextButton(onPressed: null, child: Text("Text disabled")),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text Icon"),
        ),
        TextButton.icon(
          onPressed: null,
          icon: Icon(Icons.add),
          label: Text("Text Icon disabled"),
        )
      ],
    );
  }

  Widget _outlinedButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton(onPressed: () {}, child: Text("Outlined")),
        OutlinedButton(onPressed: null, child: Text("Outlined Disabled")),
        OutlinedButton.icon(
            onPressed: () {},
            label: Text("Outlined Icon"),
            icon: Icon(Icons.add)),
        OutlinedButton.icon(
            onPressed: null,
            label: Text("Outlined Icon disabled"),
            icon: Icon(Icons.add)),
      ],
    );
  }

  Widget _iconButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        IconButton(onPressed: null, icon: Icon(Icons.add))
      ],
    );
  }

  Widget _floatingActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton.large(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        FloatingActionButton.small(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Extended"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 700,
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            _elevatedButtons(),
            SizedBox(height: 20),
            _textButtons(),
            SizedBox(height: 20),
            _outlinedButtons(),
            SizedBox(height: 20),
            _iconButtons(),
            SizedBox(height: 20),
            _floatingActionButtons(),
          ],
        ),
      ),
    );
  }
}
