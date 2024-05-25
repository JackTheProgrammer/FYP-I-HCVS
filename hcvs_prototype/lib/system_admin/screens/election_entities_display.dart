import 'package:flutter/material.dart';

import '../data/monitoring_data.dart';

class ElectionEntitiesDisplay extends StatefulWidget {
  const ElectionEntitiesDisplay({Key? key}) : super(key: key);

  @override
  State<ElectionEntitiesDisplay> createState() =>
      _ElectionEntitiesDisplayState();
}

class _ElectionEntitiesDisplayState extends State<ElectionEntitiesDisplay> {
  final allCandidates = getAllCandidates();
  final registeredVoters = getRegisteredVoters();

  // Widget buildGridTile(String item, int index) {
  //   return Card(
  //     child: GridTile(
  //       footer: index.isOdd
  //           ? Container(
  //               color: Colors.red,
  //               child: IconButton(
  //                 icon: const Icon(Icons.delete),
  //                 color: Colors.white,
  //                 onPressed: () {
  //                   // Perform delete action here
  //                   debugPrint('Delete item at index $index');
  //                 },
  //               ),
  //             )
  //           : null,
  //       child: Center(
  //         child: Text(
  //           item,
  //           style: const TextStyle(fontSize: 18.0),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget buildGrid(List<String> items) {
  //   return GridView.builder(
  //     itemCount: items.length,
  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 2,
  //       mainAxisSpacing: 8.0,
  //       crossAxisSpacing: 8.0,
  //     ),
  //     itemBuilder: (BuildContext context, int index) {
  //       return buildGridTile(items[index], index);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("All candidates"),
              const SizedBox(height: 20),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: List<Widget>.generate(
                    allCandidates.length,
                    (index) {
                      if (index % 2 != 0) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(allCandidates[index].name),
                            Text(allCandidates[index].id),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  allCandidates.removeAt(index);
                                });
                                debugPrint(
                                  allCandidates
                                      .map((e) => e.name)
                                      .toList()
                                      .toString(),
                                );
                              },
                              icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.orange,
                              ),
                              label: const Text(
                                "Delete",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(allCandidates[index].name),
                          Text(allCandidates[index].id),
                          const Icon(
                            Icons.done_outline_outlined,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Registered voters"),
              const SizedBox(height: 20),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: List<Widget>.generate(
                    registeredVoters.length,
                    (index) {
                      if (index % 2 != 0) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("\t${registeredVoters[index].name}\t\t"),
                            Text("\t${registeredVoters[index].id}\t\t"),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  registeredVoters.removeAt(index);
                                });
                                debugPrint(
                                  allCandidates
                                      .map((e) => e.name)
                                      .toList()
                                      .toString(),
                                );
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.amber,
                              ),
                              label: const Text(
                                "Delete",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(registeredVoters[index].name),
                          Text(registeredVoters[index].id),
                          const Icon(
                            Icons.done_outline_outlined,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return SafeArea(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: <Widget>[],
    //   ),
    // );
  }
}
