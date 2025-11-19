@interface MOEventEntityInviteProvider
- (_TtC8momentsd27MOEventEntityInviteProvider)init;
- (void)fetchEventEntityPropertiesWithSpotlightIdentifiers:(id)a3 startDateFetch:(id)a4 endDateFetch:(id)a5 bundleIdentifier:(id)a6 completion:(id)a7;
@end

@implementation MOEventEntityInviteProvider

- (void)fetchEventEntityPropertiesWithSpotlightIdentifiers:(id)a3 startDateFetch:(id)a4 endDateFetch:(id)a5 bundleIdentifier:(id)a6 completion:(id)a7
{
  v51 = a4;
  v52 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v46 - v11;
  v46 = &v46 - v11;
  v53 = type metadata accessor for Date();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v53, v15);
  v18 = __chkstk_darwin(v16, v17);
  v48 = &v46 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v46 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v46 - v25;
  v27 = _Block_copy(a7);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v26;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v29;
  v52 = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  v32 = *(v13 + 16);
  v33 = v48;
  v34 = v53;
  v32(v48, v26, v53);
  v35 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v23;
  v37 = v34;
  v32(v35, v36, v34);
  v38 = *(v13 + 80);
  v39 = (v38 + 72) & ~v38;
  v40 = (v14 + v38 + v39) & ~v38;
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v49;
  *(v41 + 5) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v42 = v51;
  v43 = v52;
  *(v41 + 6) = v30;
  *(v41 + 7) = v43;
  *(v41 + 8) = v42;
  v44 = *(v13 + 32);
  v44(&v41[v39], v33, v37);
  v44(&v41[v40], v35, v37);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &closure #1 in MOEventEntityInviteProvider.fetchEventEntityProperties(spotlightIdentifiers:startDateFetch:endDateFetch:bundleIdentifier:completion:)partial apply, v41);

  v45 = *(v13 + 8);
  v45(v47, v37);
  v45(v50, v37);
}

- (_TtC8momentsd27MOEventEntityInviteProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOEventEntityInviteProvider();
  return [(MOEventEntityInviteProvider *)&v3 init];
}

@end