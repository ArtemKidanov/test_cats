import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_cats/src/presentation/features/base/cubit_helper.dart';
import 'package:test_cats/src/presentation/features/cat_fact_screen/cat_fact_cubit.dart';
import 'package:test_cats/src/presentation/features/cat_facts_list_screen/cat_facts_list_screen.dart';
import 'package:test_cats/src/presentation/widgets/error_message_widget.dart';
import 'package:test_cats/src/presentation/widgets/loading_widget.dart';
import 'package:test_cats/src/presentation/widgets/text_button_widget.dart';

class CatFactScreen extends StatelessWidget
    with CubitHelper<CatFactCubit, CatFactState> {
  const CatFactScreen({Key? key}) : super(key: key);

  static const screenName = 'cat_fact_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test cats'),
      ),
      body: observe(
        builder: (_, state) {
          if (state.isLoading) {
            return const LoadingWidget();
          }

          if (state.errorMessage.isNotEmpty) {
            return ErrorMessageWidget(errorMessage: state.errorMessage);
          }

          return Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
              bottom: 48,
            ),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildCatImage(state),
                    const SizedBox(height: 16),
                    Text(state.catFact.text),
                    const SizedBox(height: 8),
                    Text(
                      DateFormat.yMMMMd(
                        Platform.localeName,
                      ).format(state.catFact.createdAt),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: observe(
        builder: (_, state) {
          if (state.isLoading) {
            return const SizedBox();
          }

          return _buildButtons(context);
        },
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButtonWidget(
          text: 'Another fact!',
          onButtonTappedCallback: () => cubit(context)?.onCreated(),
        ),
        TextButtonWidget(
          text: 'Facts history',
          onButtonTappedCallback: () => Navigator.pushNamed(
            context,
            CatFactsListScreen.screenName,
          ),
        ),
      ],
    );
  }

  Widget _buildCatImage(CatFactState state) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.memory(
          Uint8List.fromList(
            state.catFact.imageBytes ?? [],
          ),
        ),
      ),
    );
  }
}