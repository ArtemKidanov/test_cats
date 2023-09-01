import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:test_cats/src/presentation/features/base/cubit_helper.dart';
import 'package:test_cats/src/presentation/features/cat_facts_list_screen/cat_facts_list_cubit.dart';
import 'package:test_cats/src/presentation/widgets/date_formatted_text_widget.dart';
import 'package:test_cats/src/presentation/widgets/error_message_widget.dart';
import 'package:test_cats/src/presentation/widgets/image_from_bytes_widget.dart';
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
              leading: ImageFromBytesWidget(
                imageBytes: Uint8List.fromList(
                  state.catFactsList[index].imageBytes,
                ),
                width: 50,
              ),
              contentPadding: const EdgeInsets.all(4),
              title: Text(
                state.catFactsList[index].text,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: DateFormattedTextWidget(
                dateTime: state.catFactsList[index].createdAt,
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
