import 'package:flutter/material.dart';
import 'package:noteapp/view/edit_page.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return editpage();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'saaaaaaaaaaaa',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Text(
                'saaaaaaaaaaaa',
                style: TextStyle(color: Colors.black),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'date',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
