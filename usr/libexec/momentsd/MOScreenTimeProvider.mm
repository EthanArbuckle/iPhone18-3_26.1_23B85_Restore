@interface MOScreenTimeProvider
- (_TtC8momentsd20MOScreenTimeProvider)init;
- (void)fetchHourlyAppUsageWithStartDate:(id)a3 endDate:(id)a4 completion:(id)a5;
@end

@implementation MOScreenTimeProvider

- (void)fetchHourlyAppUsageWithStartDate:(id)a3 endDate:(id)a4 completion:(id)a5
{
  v44 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v40 - v9;
  v42 = &v40 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = __chkstk_darwin(v15, v16);
  v19 = &v40 - v18;
  v41 = &v40 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v40 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v40 - v25;
  v27 = _Block_copy(a5);
  v45 = v26;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  v30 = *(v12 + 16);
  v30(v19, v26, v11);
  v31 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30(v31, v23, v11);
  v32 = *(v12 + 80);
  v33 = (v32 + 32) & ~v32;
  v34 = (v13 + v32 + v33) & ~v32;
  v35 = (v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v37 = *(v12 + 32);
  v37(v36 + v33, v41, v11);
  v37(v36 + v34, v31, v11);
  v38 = (v36 + v35);
  *v38 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v38[1] = v28;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v42, &closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)partial apply, v36);

  v39 = *(v12 + 8);
  v39(v43, v11);
  v39(v45, v11);
}

- (_TtC8momentsd20MOScreenTimeProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOScreenTimeProvider();
  return [(MOScreenTimeProvider *)&v3 init];
}

@end