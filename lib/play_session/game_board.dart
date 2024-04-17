class GameBoard extends StatefulWidget {
  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<List<bool>> tiles =
      List.generate(6, (_) => List.generate(6, (_) => false));

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
      itemCount: 36,
      itemBuilder: (context, index) {
        int row = index ~/ 6;
        int col = index % 6;
        return GestureDetector(
          onTap: () {
            setState(() {
              tiles[row][col] = !tiles[row][col];
            });
          },
          child: Container(
            color: tiles[row][col] ? Colors.green : Colors.red,
          ),
        );
      },
    );
  }
}
