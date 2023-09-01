import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_cats/src/presentation/features/base/cubit_helper.dart';
import 'package:test_cats/src/presentation/features/cat_facts_list_screen/cat_facts_list_cubit.dart';
import 'package:test_cats/src/presentation/widgets/error_message_widget.dart';
import 'package:test_cats/src/presentation/widgets/loading_widget.dart';

class CatFactsListScreen extends StatelessWidget
    with CubitHelper<CatFactsListCubit, CatFactsListState> {
  const CatFactsListScreen({Key? key}) : super(key: key);

  static const screenName = 'cat_facts_list_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat facts history list'),
      ),
      body: observe(
        builder: (_, state) {
          if (state.isLoading) {
            return const LoadingWidget();
          }

          if (state.errorMessage.isNotEmpty) {
            return ErrorMessageWidget(errorMessage: state.errorMessage);
          }

          if (state.catFactsList.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('No locally saved data found.'),
              ),
            );
          }

          return ListView.builder(
            itemCount: state.catFactsList.length,
            itemBuilder: (context, index) => ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.memory(
                  Uint8List.fromList(
                    state.catFactsList[index].imageBytes ?? [],
                  ),
                  width: 50,
                ),
              ),
              contentPadding: const EdgeInsets.all(4),
              title: Text(
                state.catFactsList[index].text,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                DateFormat.yMMMMd(
                  Platform.localeName,
                ).format(
                  state.catFactsList[index].createdAt,
                ),
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
