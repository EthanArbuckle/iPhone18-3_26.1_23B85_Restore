@interface MOWeatherDataProvider
- (_TtC8momentsd21MOWeatherDataProvider)init;
- (void)fetchCurrentWeatherFor:(id)a3 completion:(id)a4;
- (void)fetchHourlyWeatherFor:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6;
@end

@implementation MOWeatherDataProvider

- (void)fetchCurrentWeatherFor:(id)a3 completion:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MOWeatherData?, @unowned NSError?) -> ();
  v14[6] = v12;
  v15 = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in MOWeatherDataProvider.fetchCurrentWeather(for:completion:)partial apply, v14);
}

- (void)fetchHourlyWeatherFor:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6
{
  v44 = a5;
  v48 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v41 - v10;
  v45 = &v41 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16, v17);
  v20 = &v41 - v19;
  v42 = &v41 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v41 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v41 - v26;
  v28 = _Block_copy(a6);
  v47 = v27;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v24;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = *(v13 + 16);
  v31(v20, v27, v12);
  v31(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v12);
  v32 = *(v13 + 80);
  v33 = (v32 + 40) & ~v32;
  v34 = (v14 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  v36 = v48;
  *(v35 + 4) = v48;
  v37 = *(v13 + 32);
  v37(&v35[v33], v42, v12);
  v37(&v35[v34], v43, v12);
  v38 = &v35[(v14 + v34 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v38 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v38[1] = v29;
  v39 = v36;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v45, &closure #1 in MOWeatherDataProvider.fetchHourlyWeather(for:startDate:endDate:completion:)partial apply, v35);

  v40 = *(v13 + 8);
  v40(v46, v12);
  v40(v47, v12);
}

- (_TtC8momentsd21MOWeatherDataProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOWeatherDataProvider();
  return [(MOWeatherDataProvider *)&v3 init];
}

@end