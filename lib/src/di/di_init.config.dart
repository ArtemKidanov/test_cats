// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_cats/src/data/data_sources/local/cat_facts_hive_data_source.dart'
    as _i4;
import 'package:test_cats/src/data/data_sources/remote/cat_facts_api_client.dart'
    as _i6;
import 'package:test_cats/src/data/mappers/cat_fact_model_response_to_entity_mapper.dart'
    as _i3;
import 'package:test_cats/src/data/repositories/cat_facts_repository_impl.dart'
    as _i8;
import 'package:test_cats/src/di/modules/dio_module.dart' as _i13;
import 'package:test_cats/src/domain/interactors/get_cat_facts_list_interactor.dart'
    as _i9;
import 'package:test_cats/src/domain/interactors/get_random_cat_fact_interactor.dart'
    as _i10;
import 'package:test_cats/src/domain/repositories/cat_facts_repository.dart'
    as _i7;
import 'package:test_cats/src/presentation/features/cat_fact_screen/cat_fact_cubit.dart'
    as _i11;
import 'package:test_cats/src/presentation/features/cat_facts_list_screen/cat_facts_list_cubit.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.factory<_i3.CatFactModelResponseToEntityMapper>(
        () => _i3.CatFactModelResponseToEntityMapper());
    await gh.lazySingletonAsync<_i4.CatFactsHiveDataSource>(
      () => _i4.CatFactsHiveDataSource.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.Dio>(() => dioModule.provideDio());
    gh.lazySingleton<_i6.CatFactsApiClient>(
        () => _i6.CatFactsApiClient.create(gh<_i5.Dio>()));
    gh.factory<_i7.CatFactsRepository>(() => _i8.CatFactsRepositoryImpl(
          gh<_i6.CatFactsApiClient>(),
          gh<_i4.CatFactsHiveDataSource>(),
          gh<_i3.CatFactModelResponseToEntityMapper>(),
        ));
    gh.factory<_i9.GetCatFactsListInteractor>(
        () => _i9.GetCatFactsListInteractor(gh<_i7.CatFactsRepository>()));
    gh.factory<_i10.GetRandomCatFactInteractor>(
        () => _i10.GetRandomCatFactInteractor(gh<_i7.CatFactsRepository>()));
    gh.factory<_i11.CatFactCubit>(
        () => _i11.CatFactCubit(gh<_i10.GetRandomCatFactInteractor>()));
    gh.factory<_i12.CatFactsListCubit>(
        () => _i12.CatFactsListCubit(gh<_i9.GetCatFactsListInteractor>()));
    return this;
  }
}

class _$DioModule extends _i13.DioModule {}
