uint64_t sub_100246684@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002462B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1002466D4()
{
  result = qword_1003B7D88;
  if (!qword_1003B7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7D88);
  }

  return result;
}

uint64_t sub_100246728(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BulletinAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10024684C()
{
  result = qword_1003B7DC8;
  if (!qword_1003B7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7DC8);
  }

  return result;
}

unint64_t sub_1002468A4()
{
  result = qword_1003B7DD0;
  if (!qword_1003B7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7DD0);
  }

  return result;
}

unint64_t sub_1002468FC()
{
  result = qword_1003B7DD8;
  if (!qword_1003B7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7DD8);
  }

  return result;
}

NSString sub_100246950()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100246970()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1002469B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    a1 = 0;
    a2 = 0;
  }

  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return v3;
}

void sub_1002469EC(uint64_t a1, uint64_t a2, char a3)
{
  os_unfair_lock_lock((v3 + 16));

  if (a3)
  {
    a1 = 0;
    a2 = 0;
  }

  else
  {
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  os_unfair_lock_unlock((v3 + 16));
}

uint64_t sub_100246A5C()
{
  sub_1001F6F1C(v0 + 24, &qword_1003B5D10);

  return _swift_deallocClassInstance(v0, 40, 7);
}

NSString sub_100246AC8()
{
  result = String._bridgeToObjectiveC()();
  static Bag.gamesMapTopicKey = result;
  return result;
}

uint64_t *Bag.gamesMapTopicKey.unsafeMutableAddressor()
{
  if (qword_1003B5518 != -1)
  {
    sub_10024AD88();
  }

  return &static Bag.gamesMapTopicKey;
}

id static Bag.gamesMapTopicKey.getter()
{
  if (qword_1003B5518 != -1)
  {
    sub_10024AD88();
  }

  v1 = static Bag.gamesMapTopicKey;

  return v1;
}

uint64_t Bag.gamesMapTopic.getter()
{
  v0 = sub_1001A6C04(&qword_1003B7DE8);
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  if (qword_1003B5518 != -1)
  {
    sub_10024AD88();
  }

  Bag.subscript.getter();
  sub_10024ADA8();
  Bag.Value.current(or:)();
  (*(v2 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100246CDC()
{
  sub_1001A6C04(&qword_1003B5B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C3280;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  result = sub_1001D4A04(inited);
  qword_1003B7DE0 = result;
  return result;
}

id sub_100246D78(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v25 = a4;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for MetricsPipeline();
  sub_1000043C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Bag();
  sub_1000043C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectRetain();
  Bag.init(from:)();
  (*(v16 + 16))(&v5[OBJC_IVAR____TtC14GameDaemonCore17GKMetricsPipeline_bag], v19, v14);
  type metadata accessor for PlayerIdProvider();
  swift_allocObject();
  v20 = sub_1002469B8(a2, a3, v25);
  *&v5[OBJC_IVAR____TtC14GameDaemonCore17GKMetricsPipeline_playerIdProvider] = v20;

  v21 = ObjectType;
  sub_100246FA8(v19, v20, v13);

  (*(v10 + 32))(&v5[OBJC_IVAR____TtC14GameDaemonCore17GKMetricsPipeline_metricsPipeline], v13, v8);
  v27.receiver = v5;
  v27.super_class = v21;
  v22 = objc_msgSendSuper2(&v27, "init");
  swift_unknownObjectRelease();
  (*(v16 + 8))(v19, v14);
  return v22;
}

uint64_t sub_100246FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v76 = a3;
  v4 = type metadata accessor for MetricsFieldExclusionRequest();
  v82 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Bag();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsFieldsAggregator();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v65 - v17;
  v19 = __chkstk_darwin(v16);
  v77 = v65 - v20;
  v21 = __chkstk_darwin(v19);
  v65[0] = v65 - v22;
  v23 = __chkstk_darwin(v21);
  v68 = v65 - v24;
  v25 = __chkstk_darwin(v23);
  v69 = v65 - v26;
  v27 = __chkstk_darwin(v25);
  v80 = v65 - v28;
  __chkstk_darwin(v27);
  v79 = v65 - v29;
  v30 = *(v8 + 16);
  v75 = a1;
  v72 = v8 + 16;
  v73 = v7;
  v71 = v30;
  v30(v10, a1, v7);
  v31 = [objc_opt_self() ams_sharedAccountStore];
  v87 = sub_10024AA38();
  v88 = &protocol witness table for ACAccountStore;
  v86[0] = v31;
  v32 = [objc_opt_self() mainBundle];
  v70 = v10;
  MetricsFieldsAggregator.init(bag:accountProvider:bundle:)();
  v87 = type metadata accessor for GKDaemonHostAppFieldsProvider();
  v88 = sub_10024AAD0(&qword_1003B7F38, type metadata accessor for GKDaemonHostAppFieldsProvider);
  v33 = sub_100005668(v86);
  v34 = enum case for MetricsFieldsProviderCategory.timeSensitive(_:);
  v35 = type metadata accessor for MetricsFieldsProviderCategory();
  v36 = *(v35 - 8);
  v37 = *(v36 + 104);
  v67 = v34;
  v66 = v35;
  v78 = v37;
  v65[1] = v36 + 104;
  (v37)(v33, v34);
  if (qword_1003B5530 != -1)
  {
    swift_once();
  }

  sub_10020F518(v4, qword_1003C0B10);
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v74 = v12;
  v38 = (v12 + 8);
  v39 = *(v12 + 8);
  v39(v15, v11);
  sub_100005BE0(v86);
  v84 = type metadata accessor for PlayerIdProvider();
  v85 = sub_10024AAD0(&qword_1003B7F40, type metadata accessor for PlayerIdProvider);
  v83 = v81;
  v87 = type metadata accessor for PrivateIdentifierFieldProvider();
  v88 = &protocol witness table for PrivateIdentifierFieldProvider;
  sub_100005668(v86);

  PrivateIdentifierFieldProvider.init(identifierProvider:)();
  MetricsFieldExclusionRequest.init(rawValue:)();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v40 = *(v82 + 1);
  v40(v6, v4);
  v82 = v39;
  v39(v18, v11);
  sub_100005BE0(v86);
  v87 = &type metadata for ArcadeStateMetricsFieldsProvider;
  v88 = sub_10024AA7C();
  if (qword_1003B5510 != -1)
  {
    swift_once();
  }

  sub_10020F518(v4, qword_1003C0AC8);
  v41 = v65[0];
  v42 = v77;
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v43 = v82;
  v82(v42, v11);
  sub_100005BE0(v86);
  static MetricsFieldExclusionRequest.page.getter();
  v44 = v68;
  MetricsFieldsAggregator.removingOptOutProvider(forRequest:)();
  v40(v6, v4);
  v43(v41, v11);
  static MetricsFieldExclusionRequest.app.getter();
  v45 = v69;
  MetricsFieldsAggregator.removingOptOutProvider(forRequest:)();
  v40(v6, v4);
  v43(v44, v11);
  v46 = type metadata accessor for MultiplayerActivityFieldsProvider(0);
  v47 = swift_allocObject();
  v48 = v67;
  v49 = v66;
  v78(v47 + OBJC_IVAR____TtC14GameDaemonCore33MultiplayerActivityFieldsProvider_category, v67, v66);
  v87 = v46;
  v88 = sub_10024AAD0(&qword_1003B7F50, type metadata accessor for MultiplayerActivityFieldsProvider);
  v86[0] = v47;
  if (qword_1003B5558 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for MetricsFieldInclusionRequest();
  sub_10020F518(v50, qword_1003C0B30);
  v51 = v80;
  MetricsFieldsAggregator.addingOptInProvider(_:forRequest:)();
  v82(v45, v11);
  sub_100005BE0(v86);
  v52 = type metadata accessor for GamesMappingFieldsProvider();
  v53 = swift_allocObject();
  v78(v53 + OBJC_IVAR____TtC14GameDaemonCore26GamesMappingFieldsProvider_category, v48, v49);
  v87 = v52;
  v88 = sub_10024AAD0(&qword_1003B7F58, type metadata accessor for GamesMappingFieldsProvider);
  v86[0] = v53;
  if (qword_1003B54E8 != -1)
  {
    swift_once();
  }

  sub_10020F518(v50, qword_1003C0A98);
  MetricsFieldsAggregator.addingOptInProvider(_:forRequest:)();
  v82(v51, v11);
  sub_100005BE0(v86);
  v54 = sub_1001A6C04(&qword_1003B7F60);
  v77 = v11;
  v78 = v38;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v70;
  v56 = v75;
  v57 = v73;
  v58 = v71;
  v71(v70, v75, v73);
  v59 = v54;
  v69 = LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)();
  v60 = type metadata accessor for AMSMetricsEventRecorder();
  v58(v55, v56, v57);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:)();

  v61 = AMSMetricsEventRecorder.withDecorator(_:)();

  type metadata accessor for StandardMetricsFieldsBuilder();
  v62 = v79;
  v63 = v77;
  (*(v74 + 16))(v80, v79, v77);
  v87 = v59;
  v88 = sub_10024AB20();
  v86[0] = v69;
  v84 = v60;
  v85 = &protocol witness table for AMSMetricsEventRecorder;
  v83 = v61;
  MetricsPipeline.init(builderType:aggregator:linter:recorder:)();
  return (v82)(v62, v63);
}

uint64_t sub_100247B28()
{
  sub_100005528();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 120) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for Logger();
  *(v1 + 64) = v8;
  sub_1001B6A00(v8);
  *(v1 + 72) = v9;
  *(v1 + 80) = sub_1001E41A0();
  v10 = type metadata accessor for MetricsData();
  *(v1 + 88) = v10;
  sub_1001B6A00(v10);
  *(v1 + 96) = v11;
  *(v1 + 104) = sub_1001E41A0();
  v12 = sub_10000448C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100247EF0()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100247FD4()
{
  sub_100005528();
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_1000046F8();

  return v1();
}

uint64_t sub_100248050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for LintedMetricsEvent();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for MetricsFieldsContext();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v9;
  v4[19] = v8;

  return _swift_task_switch(sub_100248200, v9, v8);
}

uint64_t sub_100248200()
{
  sub_100005528();
  v1 = v0[6];
  MetricsFieldsContext.init()();
  if (v1)
  {
    v2 = v0[6];
    v0[2] = v0[5];
    v0[3] = v2;
    if (qword_1003B5528 != -1)
    {
      swift_once();
    }

    v3 = sub_1001A6C04(&qword_1003B7EF0);
    sub_10020F518(v3, static GKDaemonHostAppFieldsProvider.HostAppKey);
    MetricsFieldsContext.addValue<A>(_:forProperty:)();
  }

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10024832C;
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[4];

  return MetricsPipeline.process(_:using:)(v6, v7, v5);
}

uint64_t sub_10024832C()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  v3[21] = v0;

  if (v0)
  {
    v6 = v3[18];
    v7 = v3[19];
    v8 = sub_1002484D4;
  }

  else
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
    v6 = v3[18];
    v7 = v3[19];
    v8 = sub_100248448;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100248448()
{

  v0 = sub_10024ADC0();
  v1(v0);

  sub_1000046F8();

  return v2();
}

uint64_t sub_1002484D4()
{

  static GKLog.general.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to process metric event with error: %@", v3, 0xCu);
    sub_1001F6F1C(v4, &unk_1003B6180);
    sub_1000043D8();
    sub_1000043D8();
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  (*(v7 + 8))(v6, v8);
  v9 = sub_10024ADC0();
  v10(v9);

  sub_1000046F8();

  return v11();
}

uint64_t sub_100248720(int a1, int a2, int a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v6[4] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v6[5] = v12;
  v6[6] = v10;
  a6;
  v13 = swift_task_alloc();
  v6[7] = v13;
  *v13 = v6;
  v13[1] = sub_10024886C;

  return sub_100247B28();
}

uint64_t sub_10024886C()
{
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v6();
}

uint64_t sub_1002489F8()
{
  sub_100005528();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for MetricsData();
  v1[6] = v5;
  sub_1001B6A00(v5);
  v1[7] = v6;
  v1[8] = sub_1001E41A0();
  v7 = sub_10000448C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100248AA0()
{
  sub_1001D1BD0();
  sub_1001A6C04(&qword_1003B7F10);
  v1 = type metadata accessor for MetricsFieldExclusionRequest();
  sub_1000043C4();
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002C3290;
  v8 = v7 + v6;
  static MetricsFieldExclusionRequest.amsMetricsID.getter();
  if (qword_1003B5510 != -1)
  {
    swift_once();
  }

  v9 = sub_10020F518(v1, qword_1003C0AC8);
  (*(v3 + 16))(v8 + v5, v9, v1);
  sub_10024A21C(v7);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001A6C04(&qword_1003B7EE8);
  v10 = type metadata accessor for MetricsFieldInclusionRequest();
  sub_1000043C4();
  v12 = v11;
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002C33A0;
  if (qword_1003B5558 != -1)
  {
    swift_once();
  }

  v15 = sub_10020F518(v10, qword_1003C0B30);
  (*(v12 + 16))(v14 + v13, v15, v10);
  sub_10024A560(v14);

  sub_100005540();
  MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_100248D7C;
  sub_100006084();

  return sub_100248050(v17, v18, v19);
}

uint64_t sub_100248D7C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100248E60()
{
  sub_100005528();
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_1000046F8();

  return v1();
}

uint64_t sub_100248F6C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  a4;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_10024907C;

  return sub_1002489F8();
}

uint64_t sub_10024907C()
{
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v6();
}

uint64_t sub_1002491E4()
{
  sub_100005528();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v1[39] = v5;
  v1[40] = v6;
  v1[37] = v7;
  v1[38] = v8;
  v1[36] = v9;
  v10 = sub_1001A6C04(&qword_1003B7DE8);
  v1[45] = v10;
  sub_1001B6A00(v10);
  v1[46] = v11;
  v1[47] = sub_1001E41A0();
  v12 = type metadata accessor for MetricsData();
  v1[48] = v12;
  sub_1001B6A00(v12);
  v1[49] = v13;
  v1[50] = sub_1001E41A0();
  v14 = type metadata accessor for Logger();
  v1[51] = v14;
  sub_1001B6A00(v14);
  v1[52] = v15;
  v1[53] = sub_1001E41A0();
  v16 = sub_10000448C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1002497A4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100249888()
{
  (*(v0[49] + 8))(v0[50], v0[48]);

  sub_1000046F8();

  return v1();
}

uint64_t sub_1002499DC(int a1, int a2, int a3, int a4, int a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9[4] = v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9[5] = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9[6] = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9[7] = v14;
  v9[8] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a7;
  v15 = swift_task_alloc();
  v9[9] = v15;
  *v15 = v9;
  v15[1] = sub_100249B5C;

  return sub_1002491E4();
}

uint64_t sub_100249B5C()
{
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v6();
}

id sub_100249D28(void *a1)
{
  sub_100246970();
  if (v1)
  {
  }

  else
  {
    [a1 setAnonymous:1];
    [a1 setAccount:0];
  }

  return a1;
}

uint64_t type metadata accessor for GKMetricsPipeline()
{
  result = qword_1003B7ED8;
  if (!qword_1003B7ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100249EDC()
{
  result = type metadata accessor for Bag();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MetricsPipeline();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100249FB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF9F8;
  v2 = sub_100005540();

  return v3(v2);
}

uint64_t sub_10024A08C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_1001A6C04(&qword_1003B6388);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10024A21C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldExclusionRequest();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1001A6C04(&qword_1003B7F18);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_10024AAD0(&qword_1003B7F20, &type metadata accessor for MetricsFieldExclusionRequest);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = ~(-1 << v8[32]);
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 6) + v16 * v12, v2);
      sub_10024AAD0(&qword_1003B7F28, &type metadata accessor for MetricsFieldExclusionRequest);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 6) + v16 * v12, v23, v2);
    v24 = *(v8 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 2) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10024A560(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1001A6C04(&qword_1003B7EF8);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_10024AAD0(&qword_1003B7F00, &type metadata accessor for MetricsFieldInclusionRequest);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = ~(-1 << v8[32]);
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 6) + v16 * v12, v2);
      sub_10024AAD0(&qword_1003B7F08, &type metadata accessor for MetricsFieldInclusionRequest);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 6) + v16 * v12, v23, v2);
    v24 = *(v8 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 2) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10024A8A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF9F8;
  v2 = sub_100005540();

  return v3(v2);
}

uint64_t sub_10024A960()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001AF328;

  return sub_100248720(v2, v3, v4, v5, v7, v6);
}

unint64_t sub_10024AA38()
{
  result = qword_1003B7F30;
  if (!qword_1003B7F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B7F30);
  }

  return result;
}

unint64_t sub_10024AA7C()
{
  result = qword_1003B7F48;
  if (!qword_1003B7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7F48);
  }

  return result;
}

uint64_t sub_10024AAD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10024AB20()
{
  result = qword_1003B7F68;
  if (!qword_1003B7F68)
  {
    sub_1001A6C4C(&qword_1003B7F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7F68);
  }

  return result;
}

void sub_10024AB84(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1001A6C04(&qword_1003B6488), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v25 = v6;
      String.hash(into:)();
      v7 = Hasher._finalize()();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_10024AD88()
{

  return swift_once();
}

void sub_10024ADE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10024AE04(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_100005C3C(v11, v10, &a10);
}

uint64_t GKDaemonHostAppFieldsProvider.HostAppKey.unsafeMutableAddressor()
{
  if (qword_1003B5528 != -1)
  {
    sub_10024B2C8();
    swift_once();
  }

  v0 = sub_1001A6C04(&qword_1003B7EF0);

  return sub_10020F518(v0, static GKDaemonHostAppFieldsProvider.HostAppKey);
}

uint64_t sub_10024AE88()
{
  v0 = sub_1001A6C04(&qword_1003B7EF0);
  sub_10020F4B4(v0, static GKDaemonHostAppFieldsProvider.HostAppKey);
  sub_10020F518(v0, static GKDaemonHostAppFieldsProvider.HostAppKey);
  return MetricsFieldsContext.Property.init(_:)();
}

uint64_t static GKDaemonHostAppFieldsProvider.HostAppKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1003B5528 != -1)
  {
    sub_10024B2C8();
    swift_once();
  }

  v2 = sub_1001A6C04(&qword_1003B7EF0);
  v3 = sub_10020F518(v2, static GKDaemonHostAppFieldsProvider.HostAppKey);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t GKDaemonHostAppFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MetricsFieldsProviderCategory();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GKDaemonHostAppFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  sub_100006454(a1, a1[3]);
  v2 = dispatch thunk of MetricsFieldsBuilder.allMetricsFields.getter();
  sub_1001AFB10(0x70704174736F68, 0xE700000000000000, v2, &v6);

  v3 = v7;
  result = sub_1001FCBA8(&v6);
  if (!v3)
  {
    if (qword_1003B5528 != -1)
    {
      sub_10024B2C8();
      swift_once();
    }

    v5 = sub_1001A6C04(&qword_1003B7EF0);
    sub_10020F518(v5, static GKDaemonHostAppFieldsProvider.HostAppKey);
    v7 = sub_1001A6C04(&qword_1003B5D10);
    MetricsFieldsContext.subscript.getter();
    sub_10020F3F8(a1, a1[3]);
    dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();
    return sub_100005BE0(&v6);
  }

  return result;
}

uint64_t type metadata accessor for GKDaemonHostAppFieldsProvider()
{
  result = qword_1003B7FC8;
  if (!qword_1003B7FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024B1F8()
{
  result = type metadata accessor for MetricsFieldsProviderCategory();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10024B264()
{
  v0 = type metadata accessor for MetricsFieldExclusionRequest();
  sub_10020F4B4(v0, qword_1003C0B10);
  sub_10020F518(v0, qword_1003C0B10);
  return MetricsFieldExclusionRequest.init(rawValue:)();
}

id sub_10024B2DC()
{
  result = [objc_allocWithZone(type metadata accessor for MatchReporter()) init];
  static MatchReporter.shared = result;
  return result;
}

uint64_t *MatchReporter.shared.unsafeMutableAddressor()
{
  if (qword_1003B5538 != -1)
  {
    sub_10024E758();
  }

  return &static MatchReporter.shared;
}

id static MatchReporter.shared.getter()
{
  if (qword_1003B5538 != -1)
  {
    sub_10024E758();
  }

  v1 = static MatchReporter.shared;

  return v1;
}

id sub_10024B3C0()
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR___GKMatchReporter_matchRecording] = 0;
  v8 = OBJC_IVAR___GKMatchReporter_matchQueue;
  v7[1] = sub_1001A7B44(0, &qword_1003B5578);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10024E624(&qword_1003B5580, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A6C04(&qword_1003B5588);
  sub_10020ED70(&qword_1003B5590, &qword_1003B5588);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *&v0[v8] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10024B68C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  sub_1001A6C04(&qword_1003B81E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C4280;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  *(inited + 88) = 0x707954686374616DLL;
  *(inited + 96) = 0xE900000000000065;

  AnyHashable.init<A>(_:)();
  *(inited + 144) = 0x6579616C506E696DLL;
  *(inited + 152) = 0xEA00000000007372;
  sub_1001A7B44(0, &qword_1003B6360);
  sub_10024E66C();
  v17 = a3;
  AnyHashable.init<A>(_:)();
  *(inited + 200) = 0x6579616C5078616DLL;
  *(inited + 208) = 0xEA00000000007372;
  v18 = a4;
  AnyHashable.init<A>(_:)();
  v19 = Dictionary.init(dictionaryLiteral:)();
  if (a6)
  {

    AnyHashable.init<A>(_:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001BA358();
  }

  if (a8)
  {

    AnyHashable.init<A>(_:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001BA358();
  }

  if (a9)
  {
    v20 = a9;
    AnyHashable.init<A>(_:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001BA358();
  }

  if (a10)
  {
    v21 = a10;
    AnyHashable.init<A>(_:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001BA358();
  }

  if (a11)
  {
    v22 = a11;
    AnyHashable.init<A>(_:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001BA358();
  }

  if (a12)
  {
    v23 = a12;
    AnyHashable.init<A>(_:)();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001BA358();
  }

  sub_1001C26A8(v19);
  v25 = v24;

  return v25;
}

Swift::Void __swiftcall MatchReporter.recordMatchStart(type:minPlayers:maxPlayers:)(Swift::String type, NSNumber minPlayers, NSNumber maxPlayers)
{
  sub_10000469C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000043C4();
  __chkstk_darwin(v12);
  sub_1000043B4();
  sub_1001A8174();
  sub_1000043C4();
  __chkstk_darwin(v13);
  sub_10024E720();
  sub_10024E7D8(OBJC_IVAR___GKMatchReporter_matchQueue);
  sub_1001AFA5C();
  v14 = swift_allocObject();
  sub_10024E798(v14);
  swift_unknownObjectUnownedInit();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = v11;
  v15[4] = v9;
  v15[5] = v7;
  v15[6] = v5;
  v26[4] = sub_10024BDF0;
  v26[5] = v15;
  sub_1000045E0();
  sub_10024E708(COERCE_DOUBLE(1107296256));
  v26[2] = v16;
  v26[3] = &unk_10036E218;
  v17 = _Block_copy(v26);

  v18 = v7;
  v19 = v5;
  static DispatchQoS.unspecified.getter();
  sub_100004918();
  sub_10024E624(v20, v21);
  sub_1001A6C04(&qword_1003B6C18);
  sub_10020ED70(&qword_1003B6C20, &qword_1003B6C18);
  sub_1000061B0();
  sub_10024E7A4();
  sub_10024E738();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v22 = sub_10000596C();
  v23(v22);
  v24 = sub_10024E748();
  v25(v24);
  sub_10024E7C0();

  sub_1000057D8();
}

uint64_t sub_10024BD04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];

  if (!v10)
  {
    v11 = swift_unknownObjectUnownedLoadStrong();
    type metadata accessor for MultiplayerRecording();
    swift_allocObject();

    *&v11[OBJC_IVAR___GKMatchReporter_matchRecording] = sub_10024E494(a2, a3, a4, a5);
  }
}

uint64_t sub_10024BE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall MatchReporter.recordMatchServer(type:)(Swift::String type)
{
  sub_10000469C();
  sub_10024E7E4();
  sub_1000043C4();
  __chkstk_darwin(v4);
  sub_1000043B4();
  sub_1001A8174();
  sub_1000043C4();
  __chkstk_darwin(v5);
  sub_10024E720();
  sub_1001AFA5C();
  v6 = swift_allocObject();
  sub_10024E798(v6);
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v1;
  v15[4] = sub_10024C180;
  v15[5] = v7;
  sub_1000045E0();
  sub_10024E708(COERCE_DOUBLE(1107296256));
  v15[2] = v8;
  v15[3] = &unk_10036E268;
  _Block_copy(v15);
  sub_10024E81C();

  static DispatchQoS.unspecified.getter();
  sub_100004918();
  sub_10024E624(v9, v10);
  sub_1001A6C04(&qword_1003B6C18);
  sub_10020ED70(&qword_1003B6C20, &qword_1003B6C18);
  sub_1000061B0();
  sub_10024E778();
  sub_10024E738();
  sub_10024E804();
  _Block_release(v3);
  v11 = sub_10000596C();
  v12(v11);
  v13 = sub_10024E748();
  v14(v13);
  sub_10024E7C0();

  sub_1000057D8();
}

void sub_10024C0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (v6)
  {
    v7 = Strong;

    *(v6 + 88) = a2;
    *(v6 + 96) = a3;
  }

  else
  {
  }
}

void sub_10024C21C(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (v4)
  {
    v6 = Strong;

    v7 = *(v4 + 104);
    *(v4 + 104) = a2;
    v5 = a2;

    Strong = v7;
  }
}

void sub_10024C334()
{
  sub_10000469C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000043C4();
  __chkstk_darwin(v7);
  sub_1000043B4();
  sub_1001A8174();
  sub_1000043C4();
  __chkstk_darwin(v8);
  sub_10024E720();
  sub_10024E7D8(OBJC_IVAR___GKMatchReporter_matchQueue);
  sub_1001AFA5C();
  v9 = swift_allocObject();
  sub_10024E798(v9);
  swift_unknownObjectUnownedInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v6;
  v19[4] = v4;
  v19[5] = v10;
  sub_1000045E0();
  sub_10024E708(COERCE_DOUBLE(1107296256));
  v19[2] = v11;
  v19[3] = v2;
  _Block_copy(v19);
  sub_10024E81C();
  v12 = v6;
  static DispatchQoS.unspecified.getter();
  sub_100004918();
  sub_10024E624(v13, v14);
  sub_1001A6C04(&qword_1003B6C18);
  sub_10020ED70(&qword_1003B6C20, &qword_1003B6C18);
  sub_1000061B0();
  sub_10024E7A4();
  sub_10024E738();
  sub_10024E804();
  _Block_release(v2);
  v15 = sub_10000596C();
  v16(v15);
  v17 = sub_10024E748();
  v18(v17);
  sub_10024E7C0();

  sub_1000057D8();
}

void sub_10024C548(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (v4)
  {
    v6 = Strong;

    v7 = *(v4 + 112);
    *(v4 + 112) = a2;
    v5 = a2;

    Strong = v7;
  }
}

uint64_t sub_10024C5C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void MatchReporter.recordMatchComplete(matchType:result:completion:)()
{
  sub_10000469C();
  v3 = v2;
  v24 = v5;
  v25 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000043C4();
  __chkstk_darwin(v12);
  sub_1000043B4();
  v26 = sub_1001A8174();
  sub_1000043C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10024E720();
  sub_10024E7D8(OBJC_IVAR___GKMatchReporter_matchQueue);
  sub_1001AFA5C();
  v16 = swift_allocObject();
  sub_10024E798(v16);
  swift_unknownObjectUnownedInit();
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v24;
  v17[4] = v3;
  v17[5] = v11;
  v17[6] = v9;
  v17[7] = v25;
  v17[8] = v7;
  v27[4] = sub_10024D0BC;
  v27[5] = v17;
  sub_1000045E0();
  sub_10024E708(COERCE_DOUBLE(1107296256));
  v27[2] = v18;
  v27[3] = &unk_10036E358;
  v19 = _Block_copy(v27);

  static DispatchQoS.unspecified.getter();
  sub_100004918();
  sub_10024E624(v20, v21);
  sub_1001A6C04(&qword_1003B6C18);
  sub_10020ED70(&qword_1003B6C20, &qword_1003B6C18);
  sub_1000061B0();
  sub_10024E7A4();
  sub_10024E738();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  v22 = sub_10000596C();
  v23(v22);
  (*(v14 + 8))(v0, v26);
  sub_10024E7C0();

  sub_1000057D8();
}

void sub_10024C8E8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = a5;
  v90 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];

  if (!v16)
  {
    goto LABEL_5;
  }

  v87 = a6;
  v17 = a7;
  v18 = a2;

  v19 = swift_unknownObjectUnownedLoadStrong();
  v20 = v19;
  v21 = *&v19[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (v21)
  {

    v22 = *(v21 + 56);
    v23 = v22;

    if (v22)
    {

      a2 = v18;
LABEL_5:
      static GKLog.daemon.getter();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v88 = a2;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v91 = v27;
        *v26 = 136315138;
        v28 = swift_unknownObjectUnownedLoadStrong();
        v29 = v28;
        v30 = *&v28[OBJC_IVAR___GKMatchReporter_matchRecording];
        if (v30)
        {

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
        }

        else
        {

          v31 = 0xE700000000000000;
          v32 = 0x6E776F6E6B6E55;
        }

        v48 = sub_100005C3C(v32, v31, &v91);

        *(v26 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v24, v25, "Match record not found for matchType: %s", v26, 0xCu);
        sub_100005BE0(v27);

        (*(v12 + 8))(v14, v11);
        a2 = v88;
      }

      else
      {

        (*(v12 + 8))(v14, v11);
      }

      a2(0);
      return;
    }
  }

  else
  {
  }

  v33 = swift_unknownObjectUnownedLoadStrong();
  v34 = *&v33[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (!v34)
  {
    goto LABEL_51;
  }

  v86 = v33;

  v35 = *(v34 + 16);
  v36 = *(v34 + 24);

  v86 = swift_unknownObjectUnownedLoadStrong();
  v37 = *&v86[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (!v37)
  {

LABEL_50:
    v33 = v86;
    goto LABEL_51;
  }

  v86 = *(v37 + 40);

  v85 = swift_unknownObjectUnownedLoadStrong();
  v38 = *&v85[OBJC_IVAR___GKMatchReporter_matchRecording];
  if (v38)
  {

    v39 = *(v38 + 48);

    v85 = swift_unknownObjectUnownedLoadStrong();
    v40 = *&v85[OBJC_IVAR___GKMatchReporter_matchRecording];
    if (v40)
    {
      v84 = v39;

      v41 = *(v40 + 32);

      Current = CFAbsoluteTimeGetCurrent();
      v43 = swift_unknownObjectUnownedLoadStrong();
      v44 = *&v43[OBJC_IVAR___GKMatchReporter_matchRecording];
      v88 = v18;
      if (v44)
      {

        v45 = [objc_allocWithZone(NSNumber) initWithDouble:Current - v41];
        v43 = *(v44 + 56);
        *(v44 + 56) = v45;
      }

      v46 = a4;
      v47 = v89;

      v89 = v17;
      if (v47)
      {

        v36 = v47;
      }

      else
      {
        v46 = v35;
      }

      v49 = v87;
      v50 = swift_unknownObjectUnownedLoadStrong();
      v51 = v50;
      v52 = *&v50[OBJC_IVAR___GKMatchReporter_matchRecording];
      if (v52)
      {

        *(v52 + 16) = v46;
        *(v52 + 24) = v36;
      }

      else
      {
      }

      v87 = swift_unknownObjectUnownedLoadStrong();
      v53 = swift_unknownObjectUnownedLoadStrong();
      v54 = v53;
      v55 = *&v53[OBJC_IVAR___GKMatchReporter_matchRecording];
      if (v55)
      {

        v56 = *(v55 + 96);
        v85 = *(v55 + 88);
        v57 = v56;
      }

      else
      {

        v85 = 0;
        v57 = 0;
      }

      v58 = swift_unknownObjectUnownedLoadStrong();
      v59 = v58;
      v60 = *&v58[OBJC_IVAR___GKMatchReporter_matchRecording];
      if (v60)
      {

        v61 = *(v60 + 56);
        v62 = v61;
      }

      else
      {

        v61 = 0;
      }

      v63 = swift_unknownObjectUnownedLoadStrong();
      v64 = v63;
      v65 = *&v63[OBJC_IVAR___GKMatchReporter_matchRecording];
      if (v65)
      {

        v66 = *(v65 + 104);
        v67 = v66;
      }

      else
      {

        v66 = 0;
      }

      v68 = swift_unknownObjectUnownedLoadStrong();
      v69 = v68;
      v70 = *&v68[OBJC_IVAR___GKMatchReporter_matchRecording];
      if (v70)
      {

        v71 = *(v70 + 112);
        v72 = v71;
      }

      else
      {

        v71 = 0;
      }

      v73 = v46;
      v74 = v49;
      v75 = v89;
      v76 = v49;
      v77 = v87;
      sub_10024B68C(v73, v36, v86, v84, v74, v89, v85, v57, v61, 0, v66, v71);

      v78.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v88(v78.super.isa);
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v75)
      {
        if (v79 == v76 && v80 == v75)
        {

LABEL_55:
          v83 = swift_unknownObjectUnownedLoadStrong();

          *&v83[OBJC_IVAR___GKMatchReporter_matchRecording] = 0;

          return;
        }

        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v82)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      goto LABEL_50;
    }
  }

  else
  {
  }

  v33 = v85;
LABEL_51:
}

Swift::Void __swiftcall MatchReporter.recordGameStart()()
{
  sub_10000469C();
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000043C4();
  __chkstk_darwin(v2);
  sub_1000043B4();
  sub_1001A8174();
  sub_1000043C4();
  __chkstk_darwin(v3);
  sub_10024E720();
  sub_10024E7D8(OBJC_IVAR___GKMatchReporter_matchQueue);
  sub_1001AFA5C();
  v4 = swift_allocObject();
  sub_10024E798(v4);
  swift_unknownObjectUnownedInit();
  v12[4] = sub_10024D694;
  v13 = v0;
  sub_1000045E0();
  sub_10024E708(COERCE_DOUBLE(1107296256));
  v12[2] = v5;
  v12[3] = &unk_10036E380;
  _Block_copy(v12);
  sub_10024E81C();
  static DispatchQoS.unspecified.getter();
  sub_100004918();
  sub_10024E624(v6, v7);
  sub_1001A6C04(&qword_1003B6C18);
  sub_10020ED70(&qword_1003B6C20, &qword_1003B6C18);
  sub_1000061B0();
  sub_10024E778();
  sub_10024E738();
  sub_10024E804();
  _Block_release(v1);
  v8 = sub_10000596C();
  v9(v8);
  v10 = sub_10024E748();
  v11(v10);
  sub_10024E7C0();

  sub_1000057D8();
}

void sub_10024D3CC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];

  if (v5)
  {

    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = *&v6[OBJC_IVAR___GKMatchReporter_matchRecording];
    if (v7)
    {
      v18 = v6;

      *(v7 + 32) = CFAbsoluteTimeGetCurrent();
    }

    else
    {
    }
  }

  else
  {
    static GKLog.daemon.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = swift_unknownObjectUnownedLoadStrong();
      v13 = v12;
      v14 = *&v12[OBJC_IVAR___GKMatchReporter_matchRecording];
      if (v14)
      {

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
      }

      else
      {

        v15 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E55;
      }

      v17 = sub_100005C3C(v16, v15, &v19);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Match record not found at start of game for matchType: %s", v10, 0xCu);
      sub_100005BE0(v11);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void MatchReporter.recordGameComplete(completion:)()
{
  sub_10000469C();
  sub_10024E7E4();
  sub_1000043C4();
  __chkstk_darwin(v3);
  sub_1000043B4();
  sub_1001A8174();
  sub_1000043C4();
  __chkstk_darwin(v4);
  sub_10024E720();
  sub_1001AFA5C();
  v5 = swift_allocObject();
  sub_10024E798(v5);
  swift_unknownObjectUnownedInit();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v0;
  v14[4] = sub_10024DF8C;
  v14[5] = v6;
  sub_1000045E0();
  sub_10024E708(COERCE_DOUBLE(1107296256));
  v14[2] = v7;
  v14[3] = &unk_10036E3D0;
  _Block_copy(v14);
  sub_10024E81C();

  static DispatchQoS.unspecified.getter();
  sub_100004918();
  sub_10024E624(v8, v9);
  sub_1001A6C04(&qword_1003B6C18);
  sub_10020ED70(&qword_1003B6C20, &qword_1003B6C18);
  sub_1000061B0();
  sub_10024E778();
  sub_10024E738();
  sub_10024E804();
  _Block_release(v2);
  v10 = sub_10000596C();
  v11(v10);
  v12 = sub_10024E748();
  v13(v12);
  sub_10024E7C0();

  sub_1000057D8();
}

uint64_t sub_10024D908(uint64_t a1, void (*a2)(Class))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *&Strong[OBJC_IVAR___GKMatchReporter_matchRecording];

  if (v8)
  {

    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = v9;
    v11 = *&v9[OBJC_IVAR___GKMatchReporter_matchRecording];
    if (v11)
    {

      v12 = *(v11 + 56);
      v13 = v12;

      if (v12)
      {

        v14 = swift_unknownObjectUnownedLoadStrong();
        v15 = *&v14[OBJC_IVAR___GKMatchReporter_matchRecording];
        if (v15)
        {

          v17 = *(v15 + 16);
          v16 = *(v15 + 24);

          v14 = swift_unknownObjectUnownedLoadStrong();
          v18 = *&v14[OBJC_IVAR___GKMatchReporter_matchRecording];
          if (v18)
          {

            v19 = *(v18 + 40);

            v14 = swift_unknownObjectUnownedLoadStrong();
            v20 = *&v14[OBJC_IVAR___GKMatchReporter_matchRecording];
            if (v20)
            {

              v21 = *(v20 + 48);

              v14 = swift_unknownObjectUnownedLoadStrong();
              v22 = *&v14[OBJC_IVAR___GKMatchReporter_matchRecording];
              if (v22)
              {
                v76 = v17;

                v23 = *(v22 + 32);

                Current = CFAbsoluteTimeGetCurrent();
                v25 = swift_unknownObjectUnownedLoadStrong();
                v26 = *&v25[OBJC_IVAR___GKMatchReporter_matchRecording];
                v77 = a2;
                if (v26)
                {

                  v27 = [objc_allocWithZone(NSNumber) initWithDouble:Current - v23];
                  v25 = *(v26 + 64);
                  *(v26 + 64) = v27;
                }

                v74 = v16;

                v75 = swift_unknownObjectUnownedLoadStrong();
                v28 = swift_unknownObjectUnownedLoadStrong();
                v29 = v28;
                v30 = *&v28[OBJC_IVAR___GKMatchReporter_matchRecording];
                if (v30)
                {

                  v31 = *(v30 + 80);
                  v73 = *(v30 + 72);
                  v70 = v31;
                }

                else
                {

                  v73 = 0;
                  v70 = 0;
                }

                v37 = swift_unknownObjectUnownedLoadStrong();
                v38 = v37;
                v39 = *&v37[OBJC_IVAR___GKMatchReporter_matchRecording];
                if (v39)
                {

                  v40 = *(v39 + 96);
                  v71 = *(v39 + 88);
                  v72 = v40;
                }

                else
                {

                  v71 = 0;
                  v72 = 0;
                }

                v41 = swift_unknownObjectUnownedLoadStrong();
                v42 = v41;
                v43 = *&v41[OBJC_IVAR___GKMatchReporter_matchRecording];
                v44 = v21;
                if (v43)
                {

                  v45 = *(v43 + 56);
                  v46 = v45;
                }

                else
                {

                  v45 = 0;
                }

                v47 = v19;
                v48 = swift_unknownObjectUnownedLoadStrong();
                v49 = v48;
                v50 = *&v48[OBJC_IVAR___GKMatchReporter_matchRecording];
                if (v50)
                {

                  v51 = *(v50 + 64);
                  v52 = v51;
                }

                else
                {

                  v51 = 0;
                }

                v53 = swift_unknownObjectUnownedLoadStrong();
                v54 = v53;
                v55 = *&v53[OBJC_IVAR___GKMatchReporter_matchRecording];
                if (v55)
                {

                  v56 = *(v55 + 104);
                  v57 = v56;
                }

                else
                {

                  v56 = 0;
                }

                v58 = swift_unknownObjectUnownedLoadStrong();
                v59 = v58;
                v60 = *&v58[OBJC_IVAR___GKMatchReporter_matchRecording];
                if (v60)
                {

                  v61 = *(v60 + 112);
                  v62 = v61;
                }

                else
                {

                  v61 = 0;
                }

                v67 = v45;
                v68 = v47;
                v63 = v47;
                v69 = v44;
                v64 = v75;
                v76 = sub_10024B68C(v76, v74, v63, v44, v73, v70, v71, v72, v45, v51, v56, v61);

                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                v77(isa);

                goto LABEL_20;
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        a2(0);
LABEL_20:
        v36 = swift_unknownObjectUnownedLoadStrong();
        *&v36[OBJC_IVAR___GKMatchReporter_matchRecording] = 0;
      }
    }

    else
    {
    }
  }

  static GKLog.daemon.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Match record not found at finish gameplay.", v34, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return (a2)(0);
}

uint64_t sub_10024DF3C(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void static MatchReporter.onInviteReceived(bulletin:)()
{
  sub_10000469C();
  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v8 = v7 - v6;
  v9 = [v1 gameDescriptor];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 bundleIdentifier];

    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    sub_1001AC844(v1, &selRef_receiverPlayerID);
    if (v12)
    {
      sub_1001AC844(v1, &selRef_originatorPlayerID);
      if (v13)
      {
        sub_1001AC844(v1, &selRef_sessionID);
        if (v14)
        {
          if (([v1 isMessageBasedInvite] & 1) == 0 && (objc_msgSend(v1, "isSharePlayInvite") & 1) == 0)
          {
            [v1 isNearbyInvite];
          }

          [v1 serverHosted];
          v21 = [v1 transportVersionToUse];
          v22 = v21;
          if (v21)
          {
            [v21 integerValue];
          }

          type metadata accessor for MultiplayerActivityReporter();
          static MultiplayerActivityReporter.makeInviteReceivedFields(approach:isHosted:localPlayerID:senderPlayerID:sessionID:transportVersion:)();

          v23 = [objc_opt_self() controller];
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v23 reportMultiplayerActivityEventWithHostAppBundleId:v11 metricsFields:isa];

          sub_1000057D8();

          return;
        }
      }
    }
  }

  static GKLog.daemon.getter();
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Not emitting MAF event for incomplete bulletin localPlayerID: %@", v18, 0xCu);
    sub_10024E560(v19);
  }

  (*(v4 + 8))(v8, v2);
  sub_1000057D8();
}

uint64_t sub_10024E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 32) = CFAbsoluteTimeGetCurrent();
  return v4;
}

id *sub_10024E4D0()
{

  return v0;
}

uint64_t sub_10024E530()
{
  v0 = sub_10024E4D0();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_10024E560(uint64_t a1)
{
  v2 = sub_1001A6C04(&unk_1003B6180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024E624(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10024E66C()
{
  result = qword_1003B81E8;
  if (!qword_1003B81E8)
  {
    sub_1001A7B44(255, &qword_1003B6360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B81E8);
  }

  return result;
}

uint64_t sub_10024E758()
{

  return swift_once();
}

uint64_t sub_10024E778()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10024E7A4()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10024E7C0()
{
}

uint64_t sub_10024E7E4()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t sub_10024E804()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_10024E81C()
{
}

void sub_10024E86C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.daemon.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "LeaderboardBeatFriendScoreBulletin: loadBulletinsForPushNotification:", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  v16 = type metadata accessor for TaskPriority();
  sub_1001A9674(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a1;

  sub_1001D1C0C();

  isa = Array._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, isa);

  _Block_release(a3);
}

uint64_t sub_10024EAB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10022394C;

  return sub_10024EBE8();
}

uint64_t sub_10024EBE8()
{
  sub_100005528();
  v0[60] = v1;
  v2 = type metadata accessor for Logger();
  v0[61] = v2;
  sub_1001B6A00(v2);
  v0[62] = v3;
  v0[63] = swift_task_alloc();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();
  v4 = type metadata accessor for InGameBannerData.BannerType();
  v0[70] = v4;
  sub_1001B6A00(v4);
  v0[71] = v5;
  v0[72] = swift_task_alloc();
  v6 = type metadata accessor for InGameBannerData();
  v0[73] = v6;
  sub_1001B6A00(v6);
  v0[74] = v7;
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v8 = sub_10000448C();

  return _swift_task_switch(v8, v9, v10);
}

void sub_10024ED90()
{
  sub_100223A5C(*(v0 + 480), (v0 + 216));
  memcpy((v0 + 16), (v0 + 216), 0xC8uLL);
  if (sub_1001FBC7C(v0 + 16) == 1)
  {
    static GKLog.daemon.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (sub_1000044B4(v2))
    {
      v3 = sub_100005B50();
      sub_100233484(v3);
      sub_100004894(&_mh_execute_header, v4, v5, "LeaderboardBeatFriendScoreBulletin: failed to decode relationships.");
      sub_1000043D8();
    }

    v6 = sub_10000595C();
    v7(v6);
    sub_10024FEAC();

    sub_1000046F8();
    sub_100006084();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 616) = *(v0 + 80);
  *(v0 + 640) = *(v0 + 112);
  *(v0 + 648) = *(v0 + 152);
  sub_10024FEFC(&dword_1002C6788);
  v10 = *(v0 + 32);
  *(v0 + 416) = *(v0 + 16);
  *(v0 + 432) = v10;
  v11 = *(v0 + 64);
  *(v0 + 448) = *(v0 + 48);
  *(v0 + 464) = v11;
  *(v0 + 624) = *(v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 664) = v12;
  *v12 = v0;
  sub_10024FEE0(v12);
  sub_100006084();

  __asm { BR              X2 }
}

uint64_t sub_10024EF6C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = v3;
  *(v1 + 680) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10024F05C()
{
  if (*(v0 + 680))
  {
    sub_10024FEFC(&unk_1002C6798);
    v1 = swift_task_alloc();
    *(v0 + 688) = v1;
    *v1 = v0;
    sub_10024FEE0(v1);
    sub_100006084();

    __asm { BR              X2 }
  }

  sub_10024FD2C(v0 + 216);
  static GKLog.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (sub_1000044B4(v5))
  {
    v6 = sub_100005B50();
    sub_100233484(v6);
    sub_100004894(&_mh_execute_header, v7, v8, "LeaderboardBeatFriendScoreBulletin: failed to get title or body.");
    sub_1000043D8();
  }

  v9 = sub_10000595C();
  v10(v9);
  sub_10024FEAC();

  sub_1000046F8();
  sub_100006084();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10024F1E8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 696) = v3;
  *(v1 + 704) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10024F2D8()
{
  v94 = v0;
  if (!v0[88])
  {
    sub_10024FD2C((v0 + 27));

    static GKLog.daemon.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!sub_1000044B4(v14))
    {
      goto LABEL_18;
    }

    v15 = sub_100005B50();
    sub_100233484(v15);
    v18 = "LeaderboardBeatFriendScoreBulletin: failed to get title or body.";
LABEL_17:
    sub_100004894(&_mh_execute_header, v16, v17, v18);
    sub_1000043D8();
    goto LABEL_18;
  }

  if (!v0[78])
  {

    sub_10024FD2C((v0 + 27));
    static GKLog.daemon.getter();
    v13 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (!sub_1000044B4(v19))
    {
      goto LABEL_18;
    }

    v20 = sub_100005B50();
    sub_100233484(v20);
    v18 = "LeaderboardBeatFriendScoreBulletin: failed to get game bundle identifier.";
    goto LABEL_17;
  }

  v1 = v0[82];
  v2 = v0[80];

  if (!v1)
  {

    sub_10024FD2C((v0 + 27));
    static GKLog.daemon.getter();
    v13 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (sub_1000044B4(v21))
    {
      v22 = sub_100005B50();
      sub_100233484(v22);
      v18 = "LeaderboardBeatFriendScoreBulletin: failed to get leaderboard identifier.";
      goto LABEL_17;
    }

LABEL_18:

    v23 = sub_10000595C();
    v24(v23);
    goto LABEL_19;
  }

  v3 = v0[77];

  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v91 = v2;
      v93 = _swiftEmptyArrayStorage;
      sub_1001B16C8(0, v4, 0);
      v5 = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 2 * v6;
      v8 = (v3 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v93 = v5;
        v11 = v5[3];

        if (v6 >= v11 >> 1)
        {
          sub_1001B16C8(v11 > 1, v6 + 1, 1);
          v5 = v93;
        }

        v5[2] = v6 + 1;
        v12 = &v5[v7];
        v12[4] = v9;
        v12[5] = v10;
        v7 += 2;
        v8 += 8;
        ++v6;
        --v4;
      }

      while (v4);
      sub_10024FD2C((v0 + 27));
      v2 = v91;
    }

    else
    {
      sub_10024FD2C((v0 + 27));
      v5 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_10024FD2C((v0 + 27));
    v5 = 0;
  }

  v27 = v0[79];
  v28 = objc_opt_self();
  v29 = sub_1001B6824(v27, v2, v28);
  if (!v29)
  {

    static GKLog.daemon.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v0[79];
      v37 = v0[67];
      v38 = v0[61];
      v39 = v0[62];
      v40 = v2;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v93 = v42;
      *v41 = 136315138;
      v43 = sub_100005C3C(v36, v40, &v93);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "LeaderboardBeatFriendScoreBulletin: No client process found for game bundle identifier: %s.", v41, 0xCu);
      sub_100005BE0(v42);
      sub_1000043D8();
      sub_1000043D8();

      (*(v39 + 8))(v37, v38);
    }

    else
    {
      v44 = v0[67];
      v46 = v0[61];
      v45 = v0[62];

      (*(v45 + 8))(v44, v46);
    }

    goto LABEL_19;
  }

  v30 = v29;

  if (v5)
  {
    if (v5[2])
    {
      v31 = v0[72];
      *v31 = v0[81];
      v31[1] = v1;
      v32 = &enum case for InGameBannerData.BannerType.youBeatFriendScore(_:);
      v33 = 16;
      v1 = v5;
      goto LABEL_33;
    }
  }

  *v0[72] = v0[81];
  v32 = &enum case for InGameBannerData.BannerType.topPercentageOnLeaderboard(_:);
  v33 = 8;
LABEL_33:
  v47 = v0[72];
  v48 = v0[71];
  v49 = v0[70];
  *(v47 + v33) = v1;
  (*(v48 + 104))(v47, *v32, v49);
  InGameBannerData.init(type:title:body:image:clipData:)();
  v50 = static InGameBannerData.encode(bannerData:)();
  if (v51 >> 60 == 15)
  {
    static GKLog.general.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[76];
    v56 = v0[74];
    v57 = v0[73];
    v58 = v0[68];
    v60 = v0[61];
    v59 = v0[62];
    if (v54)
    {
      v61 = sub_100005B50();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "LeaderboardBeatFriendScoreBulletin: InGameBannerData could not be encoded", v61, 2u);
      sub_1000043D8();
    }

    (*(v59 + 8))(v58, v60);
    (*(v56 + 8))(v55, v57);
  }

  else
  {
    v62 = v51;
    v92 = v50;
    v63 = v0[76];
    v64 = v0[75];
    v65 = v0[74];
    v66 = v0[73];
    static GKLog.daemon.getter();
    (*(v65 + 16))(v64, v63, v66);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v0[74];
    if (v69)
    {
      v87 = v68;
      v88 = v0[62];
      v89 = v0[61];
      v90 = v0[69];
      v71 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93 = v86;
      *v71 = 136315138;
      InGameBannerData.type.getter();
      v85 = String.init<A>(describing:)();
      v73 = v72;
      v74 = *(v70 + 8);
      v75 = sub_10024FF10();
      v74(v75);
      v76 = v74;
      v77 = sub_100005C3C(v85, v73, &v93);

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v67, v87, "LeaderboardBeatFriendScoreBulletin: Notifying client with banner %s.", v71, 0xCu);
      sub_100005BE0(v86);
      sub_1000043D8();
      sub_1000043D8();

      (*(v88 + 8))(v90, v89);
    }

    else
    {
      v78 = v0[69];
      v79 = v0[61];
      v80 = v0[62];

      v81 = *(v70 + 8);
      v82 = sub_10024FF10();
      v81(v82);
      v76 = v81;
      (*(v80 + 8))(v78, v79);
    }

    v83 = v0[76];
    v84 = v0[73];
    sub_10024FD94(v92, v62, v30);
    sub_1001B9874(v92, v62);

    (v76)(v83, v84);
  }

LABEL_19:
  sub_10024FEAC();

  sub_1000046F8();

  return v25();
}

id sub_10024FAFC(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LeaderboardBeatFriendScoreBulletin();
  v3 = objc_msgSendSuper2(&v5, "initWithPushNotification:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10024FBF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardBeatFriendScoreBulletin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10024FC48(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LeaderboardBeatFriendScoreBulletin();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10024FCD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardBeatFriendScoreBulletin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024FD2C(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B6578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10024FD94(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 presentBannerWithNotification:isa];
}

uint64_t sub_10024FDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10022394C;

  return sub_10024EAB4();
}

uint64_t sub_10024FEAC()
{
}

uint64_t InstallRecords.metadata(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1001A6C04(&qword_1003B8220);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100254324();
  v13 = objc_allocWithZone(LSApplicationRecord);

  v14 = sub_100254354();
  v16 = sub_10025352C(v14, v15, 0);
  if (!v16)
  {
    return 0;
  }

  v67 = a3;
  v18 = v16;
  v68 = static InstallRecords.convertedPlatform(_:)([v18 platform]);
  v69 = sub_10025047C();
  v19 = objc_opt_self();
  sub_100254354();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 applicationWithBundleIdentifier:v20];

  LOBYTE(v20) = [v21 isHidden];
  if ((v20 & 1) == 0 && (sub_1002504C0() & 1) == 0)
  {
    if (([v18 isGameCenterEnabled] & 1) == 0)
    {
      sub_100250530();
      if (!v24)
      {
        v23 = 0;
        v22 = 0;
        goto LABEL_14;
      }
    }

    sub_100254354();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v18 executableURL];
    if (v26)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v27);
      v26 = v28;
      (*(v12 + 8))(v3, v11);
    }

    v29 = [v67 isDevSignedWithBundleID:v25 executableURL:v26];

    v23 = 0;
    v22 = 12;
    if (!v29)
    {
      v22 = 9;
    }

    goto LABEL_14;
  }

  v22 = 0;
  v23 = 1;
LABEL_14:
  LODWORD(v67) = v23;
  v66 = v22;
  if (v69 >= 2)
  {
    if (v69 != 2)
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);
      v49._object = 0x800000010030DCF0;
      v49._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v49);
      v70 = v69;
      type metadata accessor for GKApplicationType(0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    sub_1002505B0();
  }

  else
  {
    v30 = type metadata accessor for Date();
    sub_1001A9674(v10, 1, 1, v30);
  }

  v31 = sub_100250530();
  v64 = v32;
  v65 = v31;
  v33 = sub_1001AC844(v18, &selRef_shortVersionString);
  v62 = v34;
  v63 = v33;
  v35 = [v18 localizedName];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v37;
  v61 = v36;

  v38 = [v18 localizedShortName];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v40;
  v59 = v39;

  sub_10023DA34(v10, v8);
  sub_1002507FC();
  v42 = v41;
  v43 = [v18 isArcadeApp];
  v44 = [v18 isBeta];
  v45 = [v18 persistentIdentifier];
  v46 = objc_allocWithZone(GKInstallMetadata);

  v57 = v69;
  v56 = v66;
  v55 = v67;
  v54 = v68;
  HIBYTE(v53) = v43;
  LOBYTE(v53) = v42 & 1;
  v52 = v58;
  v51 = v59;
  v47 = sub_100254354();
  v17 = sub_100253608(v47, v48, v65, v64, v63, v62, v61, v60, v51, v52, v8, v53, v54, v55, v56, v57, v44, v45);

  sub_1001A974C(v10, &qword_1003B8220);
  return v17;
}

uint64_t static InstallRecords.convertedPlatform(_:)(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1002C8CA8[a1 - 1];
  }
}

uint64_t sub_10025047C()
{
  if ([v0 developerType] == 1)
  {
    return 0;
  }

  if (sub_100253410())
  {
    return 1;
  }

  return 2;
}

id sub_1002504C0()
{
  v1 = [v0 iTunesMetadata];
  v2 = [v1 distributorInfo];

  v3 = [v2 distributorIsThirdParty];
  return v3;
}

uint64_t sub_100250530()
{
  v1 = [v0 iTunesMetadata];
  v2 = [v1 storeItemIdentifier];

  if (v2)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002505B0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001A6C04(&qword_1003B8390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C33A0;
  *(inited + 32) = NSURLCreationDateKey;
  v12 = NSURLCreationDateKey;
  sub_10024AB84(inited);
  URL.resourceValues(forKeys:)();
  (*(v3 + 8))(v5, v2);

  URLResourceValues.creationDate.getter();
  return (*(v7 + 8))(v9, v6);
}

void sub_1002507FC()
{
  v1 = [v0 supportedGameControllers];
  sub_1001A7B44(0, &qword_1003B8398);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1001E6E2C(v2);
  if (v3)
  {
    v4 = v3;
    sub_1001A7B44(0, &qword_1003B7DB0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 objectForKey:v10 ofClass:ObjCClassFromMetadata];

      if (v11)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      v18[0] = v16;
      v18[1] = v17;
      if (*(&v17 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v14 == 0x6465646E65747845 && v15 == 0xEF646170656D6147)
          {

            return;
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1001A974C(v18, &qword_1003B5808);
      }

      ++v6;
      if (v9 == v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

id sub_100250B68(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___GKInstallMetadataFetchRequestResult_metadatas] = a1;
  *&v2[OBJC_IVAR___GKInstallMetadataFetchRequestResult_cachedBundleIDs] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InstallMetadataFetchResult();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100250C58(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = objc_allocWithZone(type metadata accessor for InstallMetadataFetcher());
  v5 = sub_100253C0C(a1, a2, v4);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_100250D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_10020F3F8(a1, v10);
  __chkstk_darwin(v12);
  sub_100254324();
  (*(v13 + 16))(v5);
  ObjectType = swift_getObjectType();
  v15 = a4(v5, a2, v4, v10, ObjectType, v11, a3);
  sub_100005BE0(a1);
  return v15;
}

uint64_t InstallMetadataFetcher.fetch(bundleIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004548();
}

uint64_t sub_100250E60()
{
  sub_100005528();
  v1 = (v0[3] + OBJC_IVAR___GKInstallMetadataFetcher_cache);
  v0[4] = *v1;
  v2 = v1[1];
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v0[7] = *(v2 + 16);
  v0[8] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xA070000000000000;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v4;
  v0[10] = v3;

  return _swift_task_switch(sub_100250F08, v4, v3);
}

uint64_t sub_100250F08()
{
  sub_1000057FC();
  *(v0 + 88) = (*(v0 + 56))(*(v0 + 16), *(v0 + 48), *(v0 + 40));
  *(v0 + 96) = 0;
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100250FBC()
{
  v112 = v0;
  v110 = v0[11];
  v2 = v0[2];
  v1 = v0[3];
  sub_1001A7B44(0, &unk_1003B6D90);
  v104 = Dictionary.init(minimumCapacity:)();
  v3 = Dictionary.init(minimumCapacity:)();
  v4 = v2 + 56;
  sub_1001F7050();
  v7 = v6 & v5;
  v107 = (v1 + OBJC_IVAR___GKInstallMetadataFetcher_installRecords);
  v9 = (63 - v8) >> 6;
  v109 = v2;

  v10 = 0;
  v108 = v0;
LABEL_2:
  v105 = v3;
  v0[13] = v3;
LABEL_3:
  v0[14] = v104;
  v11 = v10;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
    v10 = v11;
LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(v109 + 48) + ((v10 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v110 + 16);

    if (v16)
    {
      v17 = sub_1001F77AC();
      v19 = sub_1001B247C(v17, v18);
      if (v20)
      {
        v99 = *(*(v110 + 56) + 8 * v19);
        LODWORD(isUnique) = swift_isUniquelyReferenced_nonNull_native();
        v111 = v104;
        v24 = sub_1001F77AC();
        sub_1001B247C(v24, v25);
        sub_1001E3D88();
        v31 = v29 + v30;
        if (!__OFADD__(v29, v30))
        {
          v32 = v26;
          v33 = v27;
          sub_1001A6C04(&unk_1003B8250);
          v34 = &v111;
          v35 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v31);
          if (v35)
          {
            v34 = v111;
            v43 = sub_1001F77AC();
            sub_1001B247C(v43, v44);
            sub_1002542AC();
            if (!v45)
            {
LABEL_49:
              sub_1001B6A68();

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            v32 = v35;
          }

          if (v33)
          {

            sub_100254360();
            *(v46 + 8 * v32) = v99;

            v0 = v108;
            goto LABEL_3;
          }

          sub_1000061C0(v35, v36, v37, v38, v39, v40, v41, v42, v99, isUnique, v104, v105, v107, v108, v109, v110, v111);
          *(v48 + 8 * v32) = v100;

          v49 = v34[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (!v50)
          {
            v104 = v34;
            v34[2] = v51;
            v0 = v108;
            goto LABEL_3;
          }

LABEL_57:
          __break(1u);
          return _swift_task_switch(v26, v27, v28);
        }

        goto LABEL_54;
      }
    }

    sub_100006454(v107, v107[3]);
    v21 = sub_1001F77AC();
    v23 = v22(v21);
    if (v23)
    {
      isUnique = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v105;
      v52 = sub_1001F77AC();
      sub_1001B247C(v52, v53);
      sub_1001E3D88();
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        __break(1u);
      }

      else
      {
        v57 = v26;
        v58 = v27;
        v59 = sub_1001A6C04(&unk_1003B8250);
        v60 = isUniquelyReferenced_nonNull_native;
        v102 = v59;
        v26 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v60, v56);
        v106 = v111;
        if (v26)
        {
          v61 = sub_1001F77AC();
          sub_1001B247C(v61, v62);
          sub_1002542AC();
          if (!v45)
          {
            goto LABEL_49;
          }

          v57 = v26;
        }

        if (v58)
        {
          v63 = v106[7];
          v64 = *(v63 + 8 * v57);
          *(v63 + 8 * v57) = isUnique;
        }

        else
        {
          v106[(v57 >> 6) + 8] |= 1 << v57;
          v65 = (v106[6] + 16 * v57);
          *v65 = v15;
          v65[1] = v14;
          *(v106[7] + 8 * v57) = isUnique;
          v66 = v106[2];
          v50 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v50)
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v106[2] = v67;
        }

        v68 = swift_isUniquelyReferenced_nonNull_native();
        v111 = v104;
        v69 = sub_1001F77AC();
        v26 = sub_1001B247C(v69, v70);
        v72 = v71;
        v73 = *(v104 + 16);
        v74 = (v71 & 1) == 0;
        v27 = v73 + v74;
        if (!__OFADD__(v73, v74))
        {
          v75 = v26;
          v76 = &v111;
          v77 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v68, v27);
          if (v77)
          {
            v76 = v111;
            v85 = sub_1001F77AC();
            sub_1001B247C(v85, v86);
            sub_1002542AC();
            if (!v45)
            {
              goto LABEL_49;
            }

            v75 = v77;
          }

          if (v72)
          {

            sub_100254360();
            *(v87 + 8 * v75) = isUnique;

LABEL_40:
            v0 = v108;
            v3 = v106;
            goto LABEL_2;
          }

          sub_1000061C0(v77, v78, v79, v80, v81, v82, v83, v84, v102, isUnique, v104, v106, v107, v108, v109, v110, v111);
          *(v89 + 8 * v75) = isUnique;

          v90 = v76[2];
          v50 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          if (!v50)
          {
            v104 = v76;
            v76[2] = v91;
            goto LABEL_40;
          }

          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v11 = v10;
    v0 = v108;
  }

  while (v7);
  while (1)
  {
LABEL_5:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v10 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (!*(v105 + 16))
  {

    sub_1001E3B20(v0[11]);
    v94 = objc_allocWithZone(type metadata accessor for InstallMetadataFetchResult());
    sub_100005B98();
    sub_1001B6A68();

    __asm { BRAA            X2, X16 }
  }

  v92 = v0[5];
  v0[15] = *(v92 + 24);
  v0[16] = (v92 + 24) & 0xFFFFFFFFFFFFLL | 0xBDC4000000000000;
  sub_1001B6A68();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_100251510()
{
  sub_1000057FC();
  v1 = *(v0 + 96);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 48), *(v0 + 40));
  *(v0 + 136) = v1;
  if (v1)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1002515C0()
{
  sub_100005528();
  sub_1001E3B20(*(v0 + 88));
  v1 = objc_allocWithZone(type metadata accessor for InstallMetadataFetchResult());
  v2 = sub_100005B98();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100251678(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100251754;

  return InstallMetadataFetcher.fetch(bundleIDs:)(v5);
}

uint64_t sub_100251754(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;
  sub_100004410();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_10020D2EC();
    v12(v11, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v13 = sub_10020D2EC();
    v14(v13, a1, 0);
    _Block_release(v9);
  }

  v15 = *(v7 + 8);

  return v15();
}

uint64_t InstallMetadataFetcher.refresh(bundleIDs:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_100004548();
}

uint64_t sub_10025190C()
{
  v52 = v0;
  v1 = v0[3];
  if (!*(v1 + 16))
  {
    goto LABEL_29;
  }

  v2 = v0[4];
  v0[2] = Set.init(minimumCapacity:)();
  v3 = v1 + 56;
  sub_1001F7050();
  v6 = v5 & v4;
  v50 = (v2 + OBJC_IVAR___GKInstallMetadataFetcher_installRecords);
  v8 = (63 - v7) >> 6;

  v9 = 0;
  v10 = _swiftEmptyDictionarySingleton;
  v48 = v1;
  v49 = v0;
  v47 = v1 + 56;
LABEL_3:
  v0[5] = v10;
  v11 = v9;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
    v9 = v11;
LABEL_8:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(v1 + 48) + ((v9 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v17 = v50[3];
    v16 = v50[4];
    sub_100006454(v50, v17);
    v18 = *(v16 + 8);

    v19 = v18(v15, v14, v17, v16);
    if (v19)
    {
      v20 = v19;
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v51 = v10;
      sub_1001B247C(v15, v14);
      sub_1001E3D88();
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return _swift_task_switch(v21, v22, v23);
      }

      v27 = v21;
      v28 = v22;
      sub_1001A6C04(&unk_1003B8250);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v26))
      {
        v29 = sub_1001B247C(v15, v14);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_33;
        }

        v27 = v29;
      }

      if (v28)
      {

        v10 = v51;
        v31 = v51[7];
        v32 = *(v31 + 8 * v27);
        *(v31 + 8 * v27) = v20;
      }

      else
      {
        v10 = v51;
        v51[(v27 >> 6) + 8] |= 1 << v27;
        v33 = (v10[6] + 16 * v27);
        *v33 = v15;
        v33[1] = v14;
        *(v10[7] + 8 * v27) = v20;

        v34 = v10[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_37;
        }

        v10[2] = v36;
      }

      v1 = v48;
      v0 = v49;
      v3 = v47;
      goto LABEL_3;
    }

    v0 = v49;
    sub_1001E8870(&v51, v15, v14);

    v11 = v9;
    v3 = v47;
    v1 = v48;
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v37 = v0[2];
      v0[6] = v37;
      if (*(v37 + 16))
      {
        v38 = swift_task_alloc();
        v0[7] = v38;
        *v38 = v0;
        v38[1] = sub_100251CF0;
        sub_1001B6A68();

        return sub_1002522A0();
      }

      v0[9] = 0;
      if (*(v0[5] + 16))
      {
        v41 = sub_1002542E4(v0[4]);
        sub_1002542BC(v41);
        sub_100254268();
        sub_1001B6A68();

        return _swift_task_switch(v21, v22, v23);
      }

LABEL_29:
      sub_100006ADC();
      sub_1001B6A68();

      __asm { BRAA            X2, X16 }
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  sub_1001B6A68();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100251CF0()
{
  sub_1000057FC();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100251E24()
{
  sub_100005528();
  v0[9] = v0[8];
  if (*(v0[5] + 16))
  {
    v1 = sub_1002542E4(v0[4]);
    sub_1002542BC(v1);
    v2 = sub_100254268();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    v5 = sub_100006ADC();

    return v6(v5);
  }
}

uint64_t sub_100251EC8()
{
  sub_1000057FC();
  v1 = *(v0 + 72);
  *(v0 + 128) = (*(v0 + 104))(*(v0 + 40), *(v0 + 96), *(v0 + 88)) & 1;
  *(v0 + 120) = v1;
  if (!v1)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100251FA4()
{
  sub_100005528();

  v0 = sub_100006ADC();

  return v1(v0);
}

uint64_t sub_100252020(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1002520FC;

  return InstallMetadataFetcher.refresh(bundleIDs:)(v5);
}

uint64_t sub_1002520FC(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v2;
  *v7 = *v2;

  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_10020D2EC();
    v12(v11, 0, v10);
  }

  else
  {
    (*(*(v5 + 24) + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_1002522A0()
{
  sub_100005528();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  type metadata accessor for InstallMetadataCache.DeleteRequest(0);
  v0[6] = sub_1001E41A0();
  v4 = sub_1001A6C04(&qword_1003B7850);
  v0[7] = v4;
  v0[8] = *(v4 - 8);
  v0[9] = sub_1001E41A0();
  sub_1001B6A34();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100252384()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  v0[2] = &type metadata for String;
  Predicate.init(_:)();
  v0[11] = swift_getObjectType();
  v4 = sub_10000632C();
  v5(v4);
  v0[12] = *(v1 + 32);
  v0[13] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0xC27A000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100252498, v7, v6);
}

uint64_t sub_100252498()
{
  sub_1000057FC();
  (*(v0 + 96))(*(v0 + 48), *(v0 + 88), *(v0 + 40));
  *(v0 + 112) = 0;
  sub_100253D84(*(v0 + 48));
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100252530()
{
  sub_1000057FC();
  v0 = sub_10025433C();
  v1(v0);

  sub_1000046F8();

  return v2();
}

uint64_t sub_1002525B4()
{
  sub_1000057FC();
  v0 = sub_10025433C();
  v1(v0);

  sub_1000046F8();

  return v2();
}

uint64_t sub_100252638@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1001A6C04(&qword_1003B8318);
  v12[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  v7 = sub_1001A6C04(&qword_1003B8320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  v12[1] = a1;
  sub_1001A6C04(&qword_1003B8330);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1001AC7E4(&qword_1003B8338, &qword_1003B8318);
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1001A6C04(&qword_1003B8328);
  a2[4] = sub_100254100();
  sub_100005668(a2);
  sub_1001AC7E4(&unk_1003B8340, &qword_1003B8320);
  sub_1001AC7E4(&qword_1003B7BA0, &qword_1003B8330);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v12[0] + 8))(v6, v4);
  return (*(v8 + 8))(v10, v7);
}

uint64_t InstallMetadataFetcher.deleteNonmatchingBundleIDs(_:)()
{
  sub_100005528();
  v1[3] = v2;
  v1[4] = v0;
  type metadata accessor for InstallMetadataCache.DeleteRequest(0);
  v1[5] = sub_1001E41A0();
  v3 = sub_1001A6C04(&qword_1003B7850);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = sub_1001E41A0();
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002529CC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  v0[2] = &type metadata for String;
  Predicate.init(_:)();
  v4 = v1 + OBJC_IVAR___GKInstallMetadataFetcher_cache;
  v0[10] = *(v1 + OBJC_IVAR___GKInstallMetadataFetcher_cache);
  v5 = *(v4 + 8);
  v0[11] = v5;
  v0[12] = swift_getObjectType();
  v6 = sub_10000632C();
  v7(v6);
  v0[13] = *(v5 + 32);
  v0[14] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0xC27A000000000000;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100252AF8, v9, v8);
}

uint64_t sub_100252AF8()
{
  sub_1000057FC();
  (*(v0 + 104))(*(v0 + 40), *(v0 + 96), *(v0 + 88));
  *(v0 + 120) = 0;
  sub_100253D84(*(v0 + 40));
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100252B90()
{
  sub_1000057FC();
  v0 = sub_10025430C();
  v1(v0);

  sub_1000046F8();

  return v2();
}

uint64_t sub_100252C14()
{
  sub_1000057FC();
  v0 = sub_10025430C();
  v1(v0);

  sub_1000046F8();

  return v2();
}

uint64_t sub_100252C98@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = sub_1001A6C04(&qword_1003B8318);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_1001A6C04(&qword_1003B8320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v19 = sub_1001A6C04(&qword_1003B8328);
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - v12;
  v21 = a1;
  sub_1001A6C04(&qword_1003B8330);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1001AC7E4(&qword_1003B8338, &qword_1003B8318);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1001AC7E4(&unk_1003B8340, &qword_1003B8320);
  sub_1001AC7E4(&qword_1003B7BA0, &qword_1003B8330);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = sub_1001A6C04(&qword_1003B8350);
  v15 = v20;
  v20[3] = v14;
  v15[4] = sub_10025407C();
  sub_100005668(v15);
  sub_1001AC7E4(&qword_1003B8388, &qword_1003B8328);
  v16 = v19;
  static PredicateExpressions.build_Negation<A>(_:)();
  return (*(v11 + 8))(v13, v16);
}

uint64_t sub_10025304C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_10028022C(a6, v10);
}

uint64_t sub_1002530D0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1002531AC;

  return InstallMetadataFetcher.deleteNonmatchingBundleIDs(_:)();
}

uint64_t sub_1002531AC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_10020D2EC();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_10020D2EC();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v7 + 8);

  return v13();
}

id sub_10025338C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100253410()
{
  v1 = sub_1001AC844(v0, &selRef_typeForInstallMachinery);
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {

LABEL_16:

      return 1;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = sub_1001AC844(v0, &selRef_bundleIdentifier);
  if (v9)
  {
    if (v8 != 0xD000000000000018 || v9 != 0x800000010030DEB0)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v11 & 1;
    }

    goto LABEL_16;
  }

  return 0;
}

id sub_10025352C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_100253608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, void *a18)
{
  v31 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  if (a6)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v28 = String._bridgeToObjectiveC()();

  if (a10)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v20 = type metadata accessor for Date();
  isa = 0;
  if (sub_1001A969C(a11, 1, v20) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v20 - 8) + 8))(a11, v20);
  }

  LOBYTE(v26) = a17 & 1;
  LOBYTE(v25) = a14 & 1;
  LOWORD(v24) = a12 & 0x101;
  v22 = [v32 initWithBundleID:v31 adamID:v30 bundleShortVersion:v29 name:v28 shortName:v27 estimatedInstallDate:isa supportsGameController:v24 isArcade:a13 platform:v25 isHidden:a15 metadataEligibility:a16 applicationType:v26 isBeta:a18 persistentRecordID:?];

  return v22;
}

void sub_10025380C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100254238(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1002542A4(v6, v11);
  }
}

uint64_t sub_100253838(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10025428C(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_100253884(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10025428C(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void sub_1002538C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100004600(a1, a2, a3, a4, a5);
  v8 = v7 + 16 * v5;
  *v8 = v9;
  *(v8 + 8) = v10 & 1;
  *(*(v6 + 56) + 8 * v5) = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1002542A4(v6, v14);
  }
}

uint64_t sub_100253908(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10025428C(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for NWEndpoint();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_1002539B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10025428C(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

_OWORD *sub_1002539FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100254238(a1, a2, a3, a4, a5);
  result = sub_100005C2C(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_100253A40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100254238(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1002542A4(v6, v13);
  }
}

void sub_100253A80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100004600(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = (*(v6 + 56) + 16 * v5);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1002542A4(v6, v14);
  }
}

id sub_100253ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a4 - 8);
  __chkstk_darwin(a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for InstallMetadataFetcher());
  (*(v13 + 16))(v15, a1, a4);
  v17 = sub_100253CAC(v15, a2, v16, a4, a5, a6, a7);
  (*(v13 + 8))(a1, a4);
  return v17;
}

id sub_100253C0C(uint64_t a1, uint64_t a2, char *a3)
{
  v10[3] = &type metadata for InstallRecords;
  v10[4] = &protocol witness table for InstallRecords;
  v10[0] = a1;
  v5 = sub_100254024();
  sub_1001E07C4(v10, &a3[OBJC_IVAR___GKInstallMetadataFetcher_installRecords]);
  v6 = &a3[OBJC_IVAR___GKInstallMetadataFetcher_cache];
  *v6 = a2;
  *(v6 + 1) = v5;
  v9.receiver = a3;
  v9.super_class = type metadata accessor for InstallMetadataFetcher();
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_100005BE0(v10);
  return v7;
}

id sub_100253CAC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[3] = a4;
  v17[4] = a6;
  v12 = sub_100005668(v17);
  (*(*(a4 - 8) + 32))(v12, a1, a4);
  sub_1001E07C4(v17, &a3[OBJC_IVAR___GKInstallMetadataFetcher_installRecords]);
  v13 = &a3[OBJC_IVAR___GKInstallMetadataFetcher_cache];
  *v13 = a2;
  *(v13 + 1) = a7;
  v16.receiver = a3;
  v16.super_class = type metadata accessor for InstallMetadataFetcher();
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_100005BE0(v17);
  return v14;
}

uint64_t sub_100253D84(uint64_t a1)
{
  v2 = type metadata accessor for InstallMetadataCache.DeleteRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100253E14()
{
  sub_1000057FC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100004930(v1);

  return v3(v2);
}

uint64_t sub_100253EAC()
{
  sub_1000057FC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100004930(v1);

  return v3(v2);
}

uint64_t sub_100253F44()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100253F8C()
{
  sub_1000057FC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100004930(v1);

  return v3(v2);
}

unint64_t sub_100254024()
{
  result = qword_1003B8310;
  if (!qword_1003B8310)
  {
    type metadata accessor for InstallMetadataCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8310);
  }

  return result;
}

unint64_t sub_10025407C()
{
  result = qword_1003B8358;
  if (!qword_1003B8358)
  {
    sub_1001A6C4C(&qword_1003B8350);
    sub_100254100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8358);
  }

  return result;
}

unint64_t sub_100254100()
{
  result = qword_1003B8360;
  if (!qword_1003B8360)
  {
    sub_1001A6C4C(&qword_1003B8328);
    sub_10023DD90();
    sub_1001AC7E4(&qword_1003B8380, &qword_1003B8318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8360);
  }

  return result;
}

uint64_t sub_1002541B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B8330);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100254238(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1002542BC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = *(v1 + 24);
  v2[14] = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0xBDC4000000000000;

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_1002542E4@<X0>(uint64_t a1@<X8>)
{
  v4 = (a1 + v1);
  *(v2 + 80) = *v4;
  *(v2 + 88) = v4[1];

  return swift_getObjectType();
}

void sub_100254374(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.general.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100005C3C(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_100005BE0(v11);
  }

  (*(v5 + 8))(v7, v4);
  exit(-1);
}

uint64_t sub_100254564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v53 = sub_1001A6C04(&qword_1003B6080);
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v36 - v9;
  v52 = sub_1001A6C04(&qword_1003B8410);
  v11 = __chkstk_darwin(v52);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v36 - v13;
  v14 = sub_1001A6C04(&qword_1003B6088);
  v50 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v55 = &v36 - v15;
  v43 = sub_1001A6C04(&qword_1003B8418);
  __chkstk_darwin(v43);
  v42 = &v36 - v16;
  v37 = _swiftEmptyArrayStorage;
  v57 = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  v49 = v8;
  v41 = (v8 + 32);
  v51 = a1;

  v56 = a3;

  v19 = 0;
  v46 = a2;
  v39 = v17;
  v40 = v10;
  while (1)
  {
    if (v17 == v19)
    {
      goto LABEL_16;
    }

    if (v19 >= v17)
    {
      break;
    }

    result = sub_100268798(v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v19, v55, &qword_1003B6088);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_20;
    }

    v20 = *(a2 + 16);
    if (v19 == v20)
    {
      goto LABEL_15;
    }

    if (v19 >= v20)
    {
      goto LABEL_21;
    }

    v21 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v22 = *(v49 + 72) * v19;
    v23 = *(v49 + 16);
    result = v23(v10, a2 + v21 + v22, v53);
    v24 = *(v56 + 16);
    if (v19 == v24)
    {
      (*(v49 + 8))(v10, v53);
LABEL_15:
      sub_1001F6F1C(v55, &qword_1003B6088);
LABEL_16:

      return v37;
    }

    if (v19 >= v24)
    {
      goto LABEL_22;
    }

    v38 = v19 + 1;
    v25 = v56 + v21;
    v26 = *(v52 + 48);
    v27 = v45;
    v28 = v10;
    v29 = v53;
    (*v41)(v45, v28, v53);
    v23((v27 + v26), v25 + v22, v29);
    v30 = v44;
    sub_1002687E4(v27, v44, &qword_1003B8410);
    v31 = v42;
    v32 = v42 + *(v43 + 48);
    sub_1002687E4(v55, v42, &qword_1003B6088);
    sub_1002687E4(v30, v32, &qword_1003B8410);
    v33 = v54;
    v34 = v47(v31, v32, v32 + *(v52 + 48));
    result = sub_1001F6F1C(v31, &qword_1003B8418);
    v54 = v33;
    if (v33)
    {
      v35 = v37;

      return v35;
    }

    ++v19;
    a2 = v46;
    v17 = v39;
    v10 = v40;
    if (v34)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v37 = v57;
      v19 = v38;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_100254A90(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = a3;
    v35 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = sub_100268954();
    v10 = v9;
    v11 = 0;
    v12 = v6 + 56;
    v28 = v7;
    v29 = v4;
    v27 = v6 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v6 + 36) != v7)
      {
        goto LABEL_25;
      }

      v31 = v11;
      v32 = v7;
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v8);
      v16 = v15[1];
      v33[0] = *v15;
      v33[1] = v16;

      a1(&v34, v33);
      if (v3)
      {
        goto LABEL_29;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_1001F761C();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v10)
      {
        goto LABEL_30;
      }

      v17 = 1 << *(v14 + 32);
      if (v8 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v12 + 8 * v13);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      v6 = v14;
      if (*(v14 + 36) != v32)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
        v20 = v31;
        v21 = v29;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v24 = (v27 + 8 * v13);
        v21 = v29;
        while (v23 < (v17 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1001EB7FC(v8, v32, 0);
            v3 = 0;
            v17 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_1001EB7FC(v8, v32, 0);
        v3 = 0;
LABEL_19:
        v20 = v31;
      }

      v10 = 0;
      v11 = v20 + 1;
      v8 = v17;
      v7 = v28;
      if (v11 == v21)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

void sub_100254CF8()
{
  sub_10023332C();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v22 = v6;
  v21 = v7(0);
  sub_1000043C4();
  v9 = v8;
  sub_100006AB0();
  __chkstk_darwin(v10);
  sub_100268EA8();
  v23 = v11;
  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_17:
      sub_1002333A4();
      return;
    }

    v2(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v20 = i;
    v19 = v2;
    while (1)
    {
      v2 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v15 = v14;
      v25 = v14;
      v22(&v25, &v24);
      if (v3)
      {

        goto LABEL_17;
      }

      v3 = 0;

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        v19(v16 > 1, v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      sub_1001E3E5C();
      (*(v9 + 32))(_swiftEmptyArrayStorage + v18 + *(v9 + 72) * v17, v23, v21);
      ++v13;
      if (v2 == v20)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

void sub_100254F2C()
{
  sub_10023332C();
  v2 = v1;
  v45 = v3;
  v5 = v4;
  v42 = type metadata accessor for Date();
  sub_1000043C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000043B4();
  v11 = v10 - v9;
  v12 = sub_1001A6C04(&qword_1003B5FC0);
  sub_100006A0C(v12);
  sub_100006AB0();
  __chkstk_darwin(v13);
  sub_100269234();
  v14 = type metadata accessor for LeaderboardEntry();
  sub_1000043C4();
  v43 = v15;
  __chkstk_darwin(v16);
  sub_1000043B4();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v44 = v2;
  [v20 setPlayer:v2];
  LeaderboardDescription.baseLeaderboardId.getter();
  v21 = String._bridgeToObjectiveC()();

  sub_100269328(v22, "setLeaderboardIdentifier:");

  v23 = LeaderboardDescription.groupId.getter();
  if (!v24)
  {
    v23 = LeaderboardDescription.baseLeaderboardId.getter();
  }

  sub_1002681F8(v23, v24, v20, &selRef_setGroupLeaderboardIdentifier_);

  v25 = sub_1001F761C();
  sub_100268798(v25, v26, v27);
  v28 = sub_100268E04();
  sub_100268D18(v28, v29, v14);
  if (v30)
  {

    sub_1001F6F1C(v45, &qword_1003B5FC0);
    type metadata accessor for LeaderboardDescription();
    sub_1000047C0();
    (*(v31 + 8))(v5);
    v32 = sub_1001ACA00();
    sub_1001F6F1C(v32, v33);
LABEL_12:
    sub_1002333A4();
    return;
  }

  (*(v43 + 32))(v19, v0, v14);
  v34 = LeaderboardEntry.formattedScore.getter();
  sub_1002681F8(v34, v35, v20, &selRef_setFormattedValue_);
  LeaderboardEntry.dateEarned.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v11, v42);
  [v20 setDate:isa];

  [v20 setValue:LeaderboardEntry.score.getter()];
  v37 = LeaderboardEntry.context.getter();
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  if (v39 < 0)
  {
    __break(1u);
  }

  else
  {
    [v20 setContext:?];
    v40 = LeaderboardEntry.rank.getter();
    if (!HIDWORD(v40))
    {
      [v20 setRank:v40];
      [v20 setValueSet:1];

      sub_1001F6F1C(v45, &qword_1003B5FC0);
      type metadata accessor for LeaderboardDescription();
      sub_1000047C0();
      (*(v41 + 8))(v5);
      (*(v43 + 8))(v19, v14);
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1002552F4()
{
  sub_10023332C();
  v123 = v3;
  v124 = v0;
  v126 = v4;
  v128 = v5;
  v7 = v6;
  v8 = sub_1001A6C04(&qword_1003B83C8);
  sub_100006A0C(v8);
  sub_100006AB0();
  __chkstk_darwin(v9);
  sub_100268EA8();
  v114 = v10;
  sub_100269228();
  type metadata accessor for RecurringLeaderboardProperties();
  sub_1000043C4();
  v116 = v12;
  v117 = v11;
  __chkstk_darwin(v11);
  sub_1000043B4();
  v113 = v14 - v13;
  sub_100269228();
  type metadata accessor for LeaderboardType();
  sub_1000043C4();
  v118 = v16;
  v119 = v15;
  __chkstk_darwin(v15);
  sub_1000043B4();
  v120 = v18 - v17;
  sub_100269228();
  type metadata accessor for LeaderboardDescription();
  sub_1000043C4();
  v129 = v20;
  v130 = v19;
  __chkstk_darwin(v19);
  sub_1000043B4();
  v122 = v22 - v21;
  v23 = sub_1001A6C04(&qword_1003B5FC0);
  v24 = sub_100006A0C(v23);
  __chkstk_darwin(v24);
  sub_1000043F0();
  v115 = v25 - v26;
  sub_100005874();
  __chkstk_darwin(v27);
  sub_100269080();
  v121 = v28;
  sub_100005874();
  __chkstk_darwin(v29);
  sub_100269080();
  v125 = v30;
  sub_100005874();
  v32 = __chkstk_darwin(v31);
  v34 = &v111 - v33;
  __chkstk_darwin(v32);
  v36 = &v111 - v35;
  v37 = sub_1001A6C04(&qword_1003B8220);
  sub_100006A0C(v37);
  sub_100006AB0();
  __chkstk_darwin(v38);
  sub_100269234();
  v127 = type metadata accessor for Date();
  sub_1000043C4();
  v131 = v39;
  __chkstk_darwin(v40);
  sub_1000043F0();
  v112 = v41 - v42;
  sub_100005874();
  __chkstk_darwin(v43);
  v45 = &v111 - v44;
  v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LeaderboardDescription.baseLeaderboardId.getter();
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v47, "setRecordID:");

  LeaderboardDescription.baseLeaderboardId.getter();
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v48, "setAscResourceID:");

  LeaderboardDescription.baseLeaderboardId.getter();
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v49, "setIdentifier:");

  LeaderboardDescription.baseLeaderboardId.getter();
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v50, "setBaseLeaderboardID:");

  LeaderboardDescription.groupId.getter();
  if (!v51)
  {
    LeaderboardDescription.baseLeaderboardId.getter();
  }

  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v52, "setBaseLeaderboardID:");

  LeaderboardDescription.title.getter();
  if (!v53)
  {
    LeaderboardDescription.baseLeaderboardId.getter();
  }

  v54 = v128;
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v55, "setTitle:");

  sub_100268798(v54, v36, &qword_1003B5FC0);
  v56 = type metadata accessor for LeaderboardEntry();
  sub_100268A5C(v36);
  if (v57)
  {
    sub_1001F6F1C(v36, &qword_1003B5FC0);
    sub_1001E4070();
    v58 = v127;
    sub_1001A9674(v59, v60, v61, v127);
    Date.init()();
    v62 = sub_100268E04();
    sub_100268D18(v62, v63, v58);
    if (!v57)
    {
      sub_1001F6F1C(v2, &qword_1003B8220);
    }
  }

  else
  {
    LeaderboardEntry.dateEarned.getter();
    sub_100268A7C();
    (*(v64 + 8))(v36, v56);
    v65 = v127;
    sub_1001A9674(v2, 0, 1, v127);
    (*(v131 + 32))(v45, v2, v65);
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v67 = *(v131 + 8);
  v68 = sub_100268E9C();
  v131 = v69;
  v70 = v67(v68);
  sub_100268E60(v70, "setLastSubmittedDate:");

  [v46 setReleaseState:2];
  sub_100268798(v54, v34, &qword_1003B5FC0);
  sub_100268A5C(v34);
  if (v57)
  {
    sub_1001F6F1C(v34, &qword_1003B5FC0);
    v72 = 0;
    v71 = v130;
  }

  else
  {
    v72 = LeaderboardEntry.rank.getter();
    sub_100268A7C();
    (*(v73 + 8))(v34, v56);
    v71 = v130;
    if (HIDWORD(v72))
    {
      __break(1u);
      goto LABEL_35;
    }
  }

  [v46 setOverallRank:{v72, v67}];
  v74 = v126;
  if ((v126 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v126))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v46 setOverallRankCount:v126];
  v75 = v125;
  sub_100268798(v54, v125, &qword_1003B5FC0);
  sub_100268A5C(v75);
  if (v57)
  {
    sub_1001F6F1C(v75, &qword_1003B5FC0);
    LOWORD(v76) = 0;
    goto LABEL_19;
  }

  v76 = LeaderboardEntry.rank.getter();
  sub_100268A7C();
  (*(v77 + 8))(v75, v56);
  if (v76 >> 16)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_19:
  [v46 setFriendRank:v76];
  if (v74 >> 16)
  {
LABEL_38:
    __break(1u);
    return;
  }

  [v46 setFriendRankCount:v74];
  sub_1001A7B44(0, &qword_1003B5A68);
  v78 = v7;
  v79 = v129;
  sub_100269184();
  v80();
  v81 = v71;
  sub_100268798(v54, v121, &qword_1003B5FC0);
  v82 = v123;
  v83 = v124;
  sub_100254F2C();
  if (v83)
  {

    sub_1001F6F1C(v54, &qword_1003B5FC0);
    (*(v79 + 8))(v78, v81);
  }

  else
  {
    v85 = v84;
    sub_100268E60(v84, "setPlayerScore:");

    v86 = v120;
    LeaderboardDescription.type.getter();
    sub_10026742C();
    v87 = (*(v118 + 8))(v86, v119);
    sub_100268E60(v87, "setType:");
    v88 = v114;
    v126 = v78;
    LeaderboardDescription.recurringProperties.getter();
    v89 = sub_100268C98();
    v90 = v117;
    sub_100268D18(v89, v91, v117);
    if (v57)
    {
      sub_1001F6F1C(v88, &qword_1003B83C8);
    }

    else
    {
      v92 = v88;
      v93 = v113;
      (*(v116 + 32))(v113, v92, v90);
      v94 = v112;
      RecurringLeaderboardProperties.startDate.getter();
      v95 = Date._bridgeToObjectiveC()().super.isa;
      v125 = v82;
      v96 = v111;
      v97 = v111(v94, v127);
      sub_100268E60(v97, "setStartDate:");

      RecurringLeaderboardProperties.nextStartDate.getter();
      v98 = Date._bridgeToObjectiveC()().super.isa;
      v99 = v96(v94, v127);
      v82 = v125;
      sub_100268E60(v99, "setNextStartDate:");

      RecurringLeaderboardProperties.duration.getter();
      [v46 setDuration:?];
      (*(v116 + 8))(v93, v117);
    }

    v100 = v82;
    [v46 setCreator:v82];
    v101 = v115;
    sub_100268798(v54, v115, &qword_1003B5FC0);
    sub_100268A5C(v101);
    v102 = v129;
    if (v57)
    {
      sub_1001F6F1C(v101, &qword_1003B5FC0);
    }

    else
    {
      LeaderboardEntry.context.getter();
      sub_100268A7C();
      (*(v103 + 8))(v101, v56);
    }

    v104 = v130;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_1002681F8(v105, v106, v46, &selRef_setContext_);
    [v46 setSupportsChallenges:0];
    v107 = LeaderboardDescription.description.getter();
    v108 = v128;
    if (v109)
    {
      v110 = String._bridgeToObjectiveC()();
    }

    else
    {
      v110 = 0;
    }

    sub_100268E60(v107, "setLeaderboardDescription:");

    sub_1001F6F1C(v108, &qword_1003B5FC0);
    (*(v102 + 8))(v126, v104);
  }

  sub_1002333A4();
}

void *sub_100255E24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1001DFD08(*(a1 + 16), 0);
  sub_100268FF0();
  v7 = sub_100267638(v3, v4, v5, v6);
  sub_10000838C();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_100255EA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1001DFD70(*(a1 + 16), 0);
  sub_100268FF0();
  v7 = sub_100267794(v3, v4, v5, v6);
  sub_10000838C();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

char *sub_100255F24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1001DFDE8(*(a1 + 16), 0);
  v4 = *(sub_1001A6C04(&qword_1003B6260) - 8);
  v5 = sub_100267A48(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_10000838C();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_100255FF8()
{
  sub_10023332C();
  v58 = v0;
  v54 = v1;
  v55 = v2;
  v4 = v3;
  v6 = v5;
  v59 = type metadata accessor for AchievementProgress();
  sub_1000043C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000043F0();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v50 = &v46 - v14;
  v52 = sub_1001A6C04(&qword_1003B8498);
  sub_100005780();
  __chkstk_darwin(v15);
  sub_1000043F0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  sub_100269080();
  v47 = v20;
  sub_100005874();
  __chkstk_darwin(v21);
  v46 = &v46 - v22;
  v23 = *(v6 + 16);
  v53 = v4;
  v56 = *(v4 + 16);
  v57 = v6;
  if (v56 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v56;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v51 = v23;
  if (v24)
  {
    v25 = 0;
    v48 = (v8 + 32);
    v49 = v8 + 16;
    while (v23 != v25)
    {
      sub_1001E3E5C();
      (*(v8 + 16))(v12, v57 + v26 + *(v8 + 72) * v25, v59);
      if (v56 == v25)
      {
        goto LABEL_24;
      }

      v27 = sub_1001A6C04(&qword_1003B84A0);
      sub_1001B6A00(v27);
      v30 = v53 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v29 + 72) * v25;
      v31 = *(v52 + 48);
      (*v48)();
      sub_100268798(v30, v18 + v31, &qword_1003B84A0);
      v32 = v58;
      v54(v18, v18 + v31);
      if (v32)
      {

        sub_1001F6F1C(v18, &qword_1003B8498);
        goto LABEL_22;
      }

      v58 = 0;
      ++v25;
      sub_1001F6F1C(v18, &qword_1003B8498);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_1001F77AC();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 = v51;
      if (v24 == v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_10:
    v48 = (v8 + 32);
    v49 = v8 + 16;
    v33 = v58;
    while (v23 != v24)
    {
      if (v24 >= v23)
      {
        goto LABEL_25;
      }

      sub_1001E3E5C();
      (*(v8 + 16))(v50, v57 + v34 + *(v8 + 72) * v24, v59);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_26;
      }

      if (v56 == v24)
      {
        (*(v8 + 8))(v50, v59);
        break;
      }

      if (v24 >= v56)
      {
        goto LABEL_27;
      }

      v35 = sub_1001A6C04(&qword_1003B84A0);
      sub_1001B6A00(v35);
      v37 = v52;
      v39 = v53 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v38 + 72) * v24;
      v40 = *(v52 + 48);
      v41 = v33;
      v42 = v47;
      (*v48)(v47, v50, v59);
      sub_100268798(v39, v42 + v40, &qword_1003B84A0);
      v43 = v46;
      sub_1002687E4(v42, v46, &qword_1003B8498);
      v54(v43, v43 + *(v37 + 48));
      v33 = v41;
      v44 = sub_1001F77B8();
      sub_1001F6F1C(v44, v45);
      if (v41)
      {

        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v24;
      v23 = v51;
    }

LABEL_22:
    sub_1002333A4();
  }
}

uint64_t sub_100256520@<X0>(uint64_t *a1@<X8>)
{
  v4 = type metadata accessor for GameServicesActorID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameKitService();
  static GameServicesActorID.gameKit.getter();
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for GameServicesActorSystem();
  swift_allocObject();
  v9 = v1;
  GameServicesActorSystem.init(invoker:)();
  v10 = static GameKitService.resolve(id:using:)();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = v10;
    (*(v5 + 8))(v7, v4);

    a1[3] = v8;
    result = sub_100267F68(&qword_1003B83D0, &type metadata accessor for GameKitService);
    a1[4] = result;
    *a1 = v12;
  }

  return result;
}

uint64_t sub_1002566F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  return _swift_task_switch(sub_10025671C, 0, 0);
}

uint64_t sub_10025671C()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = [*(v0 + 176) clientProxy];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 192) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_100256868;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_1001A6C04(&qword_1003B83D8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100256A4C;
    *(v0 + 104) = &unk_10036E570;
    *(v0 + 112) = v4;
    [v2 gameServicesRemoteCall:isa completionHandler:v0 + 80];
    sub_1001D18C4();
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100256868()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100256968()
{
  sub_1000057FC();
  v1 = *(v0 + 192);

  v2 = sub_1001E4240();

  return v3(v2);
}

uint64_t sub_1002569DC()
{
  sub_1000057FC();
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  swift_willThrow();

  sub_1000046F8();

  return v3();
}

uint64_t sub_100256A4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001D1394(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    return sub_1001BAEAC(v5, v9, v11);
  }
}

uint64_t sub_100256AF0()
{
  sub_100005528();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_1001A6C04(&qword_1003B8478);
  v1[25] = v4;
  sub_1001B6A00(v4);
  v1[26] = v5;
  v1[27] = sub_1001E41A0();
  v6 = sub_1001A6C04(&qword_1003B8480);
  sub_100006A0C(v6);
  v1[28] = sub_1001E41A0();
  v7 = sub_1001A6C04(&qword_1003B6260);
  v1[29] = v7;
  sub_1001B6A00(v7);
  v1[30] = v8;
  v1[31] = sub_1001E41A0();
  v9 = sub_1001A6C04(&qword_1003B5FC8);
  v1[32] = v9;
  sub_1001B6A00(v9);
  v1[33] = v10;
  v1[34] = sub_1001E41A0();
  v11 = sub_10000448C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100256C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v15 = v14[22];
  v16 = v14[23];
  sub_1001A6C04(&qword_1003B84B8);
  Dictionary.init(dictionaryLiteral:)();
  v17 = [v15 bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100268FA8();

  sub_1002335A8();
  Ref<A>.init(bundleID:)();
  v18 = *(v16 + 16);
  v14[35] = v18;
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      sub_100268F64(v19);
      sub_1001A7B44(0, &qword_1003B6038);
      if (sub_1002690E0())
      {
        break;
      }

      sub_100269208();
      if (v20)
      {
        goto LABEL_6;
      }
    }

    sub_1002691F4();
    v32 = [&type metadata for Any playerID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100268B9C();
    Ref<A>.init(internalID:)();
    sub_100269138();
    if (GKPlayerInternal_ptr)
    {
      v33 = sub_100268B2C();
      v34(v33);

      v35 = sub_100268AF4();
      v36(v35);

      sub_1002689D0();
      sub_100006084();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    else
    {
      sub_100268A40(v14 + 2);
      sub_1001A6C04(&qword_1003B8400);
      v45 = sub_100268A08();
      v14[40] = v45;
      v46 = sub_100268ADC(v45, xmmword_1002C33A0);
      v47(v46);
      type metadata accessor for Cursor();
      v48 = sub_100268B3C();
      sub_1001A9674(v48, v49, v50, v51);
      v52 = swift_task_alloc();
      v14[41] = v52;
      *v52 = v14;
      v52[1] = sub_100256F68;
      sub_100268B60();
      sub_100006084();

      return dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
LABEL_6:
    v21 = sub_100268C80();
    v22(v21);

    sub_100268B4C();
    sub_100006084();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_100256F68()
{
  sub_1000057FC();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;
  v4 = *v1;
  sub_1001D14B0();
  *v5 = v4;
  v2[42] = v6;
  v2[43] = v0;

  sub_1001F6F1C(v2[28], &qword_1003B8480);
  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1002570D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v17 = v13[42];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v13[26];
    v20 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v15 = *(v19 + 72);
    v16 = *(v19 + 16);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v14 = v13[25];
      v22 = sub_100268F2C();
      v16(v22);
      v12 = Page.elements.getter();
      v23 = sub_1002335A8();
      v24(v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100006AEC();
        sub_1001DF7EC();
        v21 = v26;
      }

      sub_100268F1C();
      if (v25)
      {
        sub_100268CE8();
        v21 = v27;
      }

      sub_100268F0C();
      v20 += v15;
      --v18;
    }

    while (v18);
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  v28 = sub_100269308();
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13[44] = v36;
    if (v16 == v15)
    {
      break;
    }

    if (v15 >= v21[2])
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return dispatch thunk of GameKitServiceProtocol.describeAchievements(achievements:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    sub_100268C0C();
    if (v37)
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v12 > v36[3] >> 1)
    {
      sub_1001DF708();
      v36 = v38;
    }

    if (MEMORY[0x10])
    {
      sub_100268EFC();
      v28 = sub_1001A6C04(&qword_1003B6270);
      if (v12 < v14)
      {
        goto LABEL_34;
      }

      sub_1002690A8();

      if (v14)
      {
        v39 = v36[2];
        v37 = __OFADD__(v39, v14);
        v40 = v39 + v14;
        if (v37)
        {
          goto LABEL_35;
        }

        v36[2] = v40;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_33;
      }
    }

    ++v15;
  }

  v41 = v13[43];

  sub_100256520(v13 + 7);
  if (!v41)
  {
    sub_100268A40(v13 + 7);
    v56 = swift_task_alloc();
    v13[45] = v56;
    *v56 = v13;
    sub_1002332C8(v56);
    sub_100268D0C();
    sub_100006084();

    return dispatch thunk of GameKitServiceProtocol.describeAchievements(achievements:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  v42 = v13[39];
  v43 = sub_100268B2C();
  v44(v43);

  v45 = sub_100268AF4();
  v46(v45);

  sub_1002689D0();
  sub_100006084();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_100257400()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100257514()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = v0[47];
  sub_100269190();
  if (v1)
  {
    v2 = v0[39];
    v3 = sub_100268B2C();
    v4(v3);

    v5 = sub_100268AF4();
    v6(v5);

    sub_1002689D0();
    sub_1001D18C4();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    sub_100268A40(v0 + 12);
    v16 = swift_task_alloc();
    v0[48] = v16;
    *v16 = v0;
    v16[1] = sub_10025766C;
    sub_1001D1934(v0[44]);
    sub_1001D18C4();

    return dispatch thunk of GameKitServiceProtocol.getAchievementsProgresses(achievements:player:)(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_10025766C()
{
  sub_1000057FC();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 392) = v5;
  *(v3 + 400) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10025779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = v14[50];
  v16 = v14[39];
  v17 = v14[34];
  sub_100005BE0((v14 + 12));
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  sub_100269008();
  sub_100255FF8();
  v19 = v14[39];
  v21 = v14[30];
  v20 = v14[31];
  v22 = v14[29];
  if (v15)
  {
    (*(v21 + 8))(v14[31], v14[29]);

LABEL_3:
    v23 = sub_100268AF4();
    v24(v23);

    sub_1002689D0();
    sub_100005B0C();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v34 = v14[36];

    v35 = [v19 playerID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_isUniquelyReferenced_nonNull_native();
    a10 = v34;
    sub_100268B9C();
    sub_1001BA460();

    (*(v21 + 8))(v20, v22);
    do
    {
      sub_100269208();
      if (v37)
      {
        v41 = sub_100268C80();
        v42(v41);

        sub_100268B4C();
        sub_100005B0C();

        return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, v34, a11, a12, a13, a14);
      }

      sub_100268F64(v36);
      sub_1001A7B44(0, &qword_1003B6038);
    }

    while (!sub_1002690E0());
    sub_1002691F4();
    v38 = [&type metadata for Any playerID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100268B9C();
    Ref<A>.init(internalID:)();
    sub_100269138();
    if (GKPlayerInternal_ptr)
    {
      v39 = sub_100268B2C();
      v40(v39);

      goto LABEL_3;
    }

    sub_100268A40(v14 + 2);
    sub_1001A6C04(&qword_1003B8400);
    v51 = sub_100268A08();
    v14[40] = v51;
    v52 = sub_100268ADC(v51, xmmword_1002C33A0);
    v53(v52);
    type metadata accessor for Cursor();
    v54 = sub_100268B3C();
    sub_1001A9674(v54, v55, v56, v57);
    v58 = swift_task_alloc();
    v14[41] = v58;
    *v58 = v14;
    v58[1] = sub_100256F68;
    sub_100268B60();
    sub_100005B0C();

    return dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(v59, v60, v61, v62, v63, v64, v65, v66, a9, v34, a11, a12, a13, a14);
  }
}

uint64_t sub_100257B38()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10026908C();
  v1 = sub_100244B7C();
  v2(v1);
  sub_100005BE0(v0 + 16);
  v3 = sub_1000063EC();
  v4(v3);

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100257BE0()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10026908C();
  v1 = sub_100244B7C();
  v2(v1);
  sub_100005BE0(v0 + 56);
  v3 = sub_1000063EC();
  v4(v3);

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100257C88()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_10026908C();
  v1 = sub_100244B7C();
  v2(v1);
  sub_100005BE0(v0 + 96);
  v3 = sub_1000063EC();
  v4(v3);

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_100257D30()
{
  sub_10023332C();
  v53 = v2;
  v55 = v3;
  v5 = v4;
  v6 = sub_1001A6C04(&qword_1003B8220);
  sub_100006A0C(v6);
  sub_100006AB0();
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v54 = sub_1001A6C04(&qword_1003B6270);
  sub_1000043C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000043F0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  sub_100268EEC();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AchievementProgress.achievement.getter();
  v18 = Ref<A>.id.getter();
  if (v0)
  {

    type metadata accessor for AchievementDescription();
    sub_1000047C0();
    (*(v19 + 8))(v55);
    type metadata accessor for AchievementProgress();
    sub_1000047C0();
    (*(v20 + 8))(v5);
    (*(v11 + 8))(v1, v54);
LABEL_16:
    sub_1002333A4();
    return;
  }

  v21 = v18;
  v52[0] = v9;
  v22 = v1;
  v23 = v54;
  v24 = *(v11 + 8);
  v24(v22, v54);
  String._bridgeToObjectiveC()();
  sub_100268D88();

  sub_100269120(v25, "setIdentifier:");

  AchievementProgress.achievement.getter();
  v26 = Ref<A>.id.getter();
  v52[1] = 0;
  v27 = v26;
  v24(v15, v23);
  String._bridgeToObjectiveC()();
  sub_100268D88();

  sub_100269120(v28, "setAscResourceID:");

  v29 = AchievementDescription.groupId.getter();
  if (v30)
  {
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v27 = [v17 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v33;
  }

  sub_1002681F8(v31, v32, v17, &selRef_setGroupIdentifier_);
  AchievementDescription.title.getter();
  String._bridgeToObjectiveC()();
  sub_100268D88();

  sub_100269120(v34, "setTitle:");

  AchievementDescription.achievedDescription.getter();
  String._bridgeToObjectiveC()();
  sub_100268D88();

  sub_100269120(v35, "setAchievedDescription:");

  AchievementDescription.unachievedDescription.getter();
  String._bridgeToObjectiveC()();
  sub_100268D88();

  sub_100269120(v36, "setUnachievedDescription:");

  v37 = AchievementDescription.maximumPoints.getter();
  v39 = 100;
  if ((v38 & 1) == 0)
  {
    v39 = v37;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v52[0];
    if (!(v39 >> 16))
    {
      [v17 setMaximumPoints:v39];
      [v17 setHidden:AchievementDescription.isHidden.getter() & 1];
      [v17 setReleaseState:2];
      [v17 setReplayable:AchievementDescription.isReplayable.getter() & 1];
      AchievementProgress.lastReportedDate.getter();
      v41 = type metadata accessor for Date();
      v42 = sub_100268E04();
      isa = 0;
      if (sub_1001A969C(v42, v43, v41) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100005534();
        (*(v45 + 8))(v40, v41);
      }

      [v17 setLastReportedDate:isa];

      AchievementProgress.percentComplete.getter();
      [v17 setPercentComplete:?];
      v46 = v53;
      [v17 setPlayer:v53];
      AchievementDescription.rarityPercent.getter();
      if (v47)
      {
        sub_1001A7B44(0, &qword_1003B6360);
        v48.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      }

      else
      {
        v48.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      }

      v49 = v48.super.super.isa;
      [v17 setRarityPercent:v48.super.super.isa];

      type metadata accessor for AchievementDescription();
      sub_1000047C0();
      (*(v50 + 8))(v55);
      type metadata accessor for AchievementProgress();
      sub_1000047C0();
      (*(v51 + 8))(v5);
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_100258328(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_100258410;

  return sub_100256AF0();
}

uint64_t sub_100258410()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_100268C34();
  v3 = *v2;
  sub_1001D14B0();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v2;
  sub_100004410();
  *v9 = v8;

  if (v1)
  {
    _convertErrorToNSError(_:)();
    sub_1002691BC();

    v10 = v0;
  }

  else
  {
    sub_1001A6C04(&qword_1003B84B8);
    Dictionary._bridgeToObjectiveC()();
    sub_100268C8C();

    v10 = 0;
  }

  v11 = *(v3 + 32);
  v12 = sub_100268B74();
  v13(v12);

  _Block_release(v11);
  sub_1000046F8();
  sub_1001D19B8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1002585BC()
{
  sub_100005528();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_1001A6C04(&qword_1003B8478);
  v1[20] = v4;
  sub_1001B6A00(v4);
  v1[21] = v5;
  v1[22] = sub_1001E41A0();
  v6 = sub_1001A6C04(&qword_1003B8480);
  sub_100006A0C(v6);
  v1[23] = sub_1001E41A0();
  v7 = sub_1001A6C04(&qword_1003B6260);
  v1[24] = v7;
  sub_1001B6A00(v7);
  v1[25] = v8;
  v1[26] = sub_1001E41A0();
  v9 = sub_1001A6C04(&qword_1003B5FC8);
  v1[27] = v9;
  sub_1001B6A00(v9);
  v1[28] = v10;
  v1[29] = sub_1001E41A0();
  v11 = sub_10000448C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10025874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v15 = *(v14 + 144);
  v16 = [*(v14 + 136) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100268B9C();
  Ref<A>.init(bundleID:)();
  v17 = [v15 playerID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100268FA8();

  sub_1002335A8();
  Ref<A>.init(internalID:)();
  sub_100269138();
  if (v17)
  {
    v18 = sub_100268B0C();
    v19(v18);
    v20 = sub_100268AC4();
    v21(v20);

    sub_1002689D0();
    sub_100006084();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    sub_100268A40((v14 + 16));
    sub_1001A6C04(&qword_1003B8400);
    v31 = sub_100268A08();
    *(v14 + 240) = v31;
    v32 = sub_100268ADC(v31, xmmword_1002C33A0);
    v33(v32);
    type metadata accessor for Cursor();
    v34 = sub_100268B3C();
    sub_1001A9674(v34, v35, v36, v37);
    v38 = swift_task_alloc();
    *(v14 + 248) = v38;
    *v38 = v14;
    v38[1] = sub_100258938;
    sub_100268B60();
    sub_100006084();

    return dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100258938()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v2;
  sub_100006028();
  *v6 = v5;
  *(v8 + 256) = v7;
  *(v8 + 264) = v0;

  sub_100268D7C();
  sub_1001F6F1C(*(v1 + 184), &qword_1003B8480);

  sub_100268AB4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100258A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v19 = *(v15[32] + 16);
  if (v19)
  {
    v20 = v15[21];
    v21 = *(v20 + 16);
    v17 = v20 + 16;
    a10 = v21;
    sub_1001E3E5C();
    v24 = v22 + v23;
    v25 = *(v17 + 56);
    v18 = v17 - 8;
    v26 = _swiftEmptyArrayStorage;
    do
    {
      v16 = v15[20];
      v27 = sub_100268F2C();
      a10(v27);
      v14 = Page.elements.getter();
      v28 = sub_1002335A8();
      v29(v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100006AEC();
        sub_1001DF7EC();
        v26 = v31;
      }

      sub_100268F1C();
      if (v30)
      {
        sub_100268CE8();
        v26 = v32;
      }

      sub_100268F0C();
      v24 += v25;
      --v19;
    }

    while (v19);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  v33 = sub_100269308();
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15[34] = v41;
    if (v18 == v17)
    {
      break;
    }

    if (v17 >= v26[2])
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return dispatch thunk of GameKitServiceProtocol.describeAchievements(achievements:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }

    sub_100268C0C();
    if (v42)
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 > v41[3] >> 1)
    {
      sub_1001DF708();
      v41 = v43;
    }

    if (MEMORY[0x10])
    {
      sub_100268EFC();
      v33 = sub_1001A6C04(&qword_1003B6270);
      if (v14 < v16)
      {
        goto LABEL_34;
      }

      sub_1002690A8();

      if (v16)
      {
        v44 = v41[2];
        v42 = __OFADD__(v44, v16);
        v45 = v44 + v16;
        if (v42)
        {
          goto LABEL_35;
        }

        v41[2] = v45;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_33;
      }
    }

    ++v17;
  }

  v46 = v15[33];

  sub_100256520(v15 + 7);
  if (!v46)
  {
    sub_100268A40(v15 + 7);
    v60 = swift_task_alloc();
    v15[35] = v60;
    *v60 = v15;
    sub_1002332C8(v60);
    sub_100268D0C();
    sub_100005B0C();

    return dispatch thunk of GameKitServiceProtocol.describeAchievements(achievements:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }

  v47 = sub_100268B0C();
  v48(v47);

  v49 = sub_100268AC4();
  v50(v49);

  sub_1002689D0();
  sub_100005B0C();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100258DA0()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100258EA8()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = v0[37];
  sub_100269190();
  if (v1)
  {
    v2 = sub_100268B0C();
    v3(v2);

    v4 = sub_100268AC4();
    v5(v4);

    sub_1002689D0();
    sub_1001D18C4();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    sub_100268A40(v0 + 12);
    v15 = swift_task_alloc();
    v0[38] = v15;
    *v15 = v0;
    v15[1] = sub_100258FF0;
    sub_1001D1934(v0[34]);
    sub_1001D18C4();

    return dispatch thunk of GameKitServiceProtocol.getAchievementsProgresses(achievements:player:)(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_100258FF0()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10025910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = v14[40];
  v16 = v14[29];
  v17 = v14[18];
  sub_100005BE0((v14 + 12));
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  sub_100269008();
  sub_100255FF8();
  if (v15)
  {
    v19 = sub_100268B0C();
    v20(v19);

    v21 = sub_100268AC4();
    v22(v21);

    sub_1002689D0();
    sub_100005B0C();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v33 = v14[28];
    v32 = v14[29];
    v34 = v14[27];
    v43 = v14[22];
    (*(v14[25] + 8))(v14[26], v14[24]);

    (*(v33 + 8))(v32, v34);

    sub_100268B4C();
    sub_100005B0C();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v43, a11, a12, a13, a14);
  }
}

uint64_t sub_1002592BC()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = sub_100268B0C();
  v2(v1);
  sub_100005BE0(v0 + 16);
  v3 = sub_100268C5C();
  v4(v3);

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100259360()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = sub_100268B0C();
  v2(v1);
  sub_100005BE0(v0 + 56);
  v3 = sub_100268C5C();
  v4(v3);

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100259404()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = sub_100268B0C();
  v2(v1);
  sub_100005BE0(v0 + 96);
  v3 = sub_100268C5C();
  v4(v3);

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1002594A8()
{
  sub_10023332C();
  v66 = v1;
  v67 = v2;
  v68 = v3;
  v62 = v4;
  v70 = v5;
  v7 = v6;
  v8 = sub_1001A6C04(&qword_1003B84A8);
  sub_100006A0C(v8);
  sub_100006AB0();
  __chkstk_darwin(v9);
  sub_100268EA8();
  v63 = v10;
  v11 = sub_1001A6C04(&qword_1003B84B0);
  sub_100006A0C(v11);
  sub_100006AB0();
  __chkstk_darwin(v12);
  sub_100268EA8();
  v61 = v13;
  sub_1001A6C04(&qword_1003B5FC8);
  sub_1000043C4();
  v58 = v15;
  v59 = v14;
  sub_100006AB0();
  __chkstk_darwin(v16);
  sub_100268EA8();
  v60 = v17;
  v69 = sub_1001A6C04(&qword_1003B6270);
  sub_1000043C4();
  v65 = v18;
  __chkstk_darwin(v19);
  sub_1000043F0();
  v64 = v20 - v21;
  sub_100005874();
  __chkstk_darwin(v22);
  sub_100268EEC();
  v23 = sub_1001A6C04(&qword_1003B84A0);
  sub_100006A0C(v23);
  sub_100006AB0();
  __chkstk_darwin(v24);
  v26 = v57 - v25;
  v27 = type metadata accessor for AchievementDescription();
  sub_1000043C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000043B4();
  v33 = v32 - v31;
  v34 = type metadata accessor for AchievementProgress();
  sub_1000043C4();
  __chkstk_darwin(v35);
  sub_1000043B4();
  v37 = sub_100269050(v36);
  v38(v37, v7, v34);
  sub_100268798(v70, v26, &qword_1003B84A0);
  sub_100268D18(v26, 1, v27);
  if (!v39)
  {
    (*(v29 + 32))(v33, v26, v27);
LABEL_5:
    sub_1001A7B44(0, v66);
    v43 = v68;
    sub_100257D30();
    goto LABEL_9;
  }

  v70 = v27;
  v57[2] = v33;
  AchievementProgress.achievement.getter();
  v40 = Ref<A>.id.getter();
  if (!v0)
  {
    v57[1] = v40;
    v44 = sub_10026921C();
    v65 = v45;
    v45(v44);
    AchievementProgress.achievement.getter();
    Ref<A>.id.getter();
    v48 = sub_10026921C();
    v65(v48);
    (*(v58 + 16))(v60, v62, v59);
    sub_1001A6C04(&qword_1003B6DD0);
    sub_1001E4070();
    sub_1001A9674(v49, v50, v51, v52);
    type metadata accessor for ReleaseState();
    sub_1001E4070();
    sub_1001A9674(v53, v54, v55, v56);
    AchievementDescription.init(game:id:groupId:title:unachievedDescription:achievedDescription:maximumPoints:isHidden:isReplayable:rarityPercent:image:activityIdentifier:activityProperties:releaseState:)();
    sub_100268D18(v26, 1, v70);
    if (!v39)
    {
      sub_1001F6F1C(v26, &qword_1003B84A0);
    }

    goto LABEL_5;
  }

  v41 = sub_10026921C();
  v42(v41);
  v46 = sub_1002335A8();
  v47(v46);
  sub_100268D18(v26, 1, v70);
  if (!v39)
  {
    sub_1001F6F1C(v26, &qword_1003B84A0);
  }

LABEL_9:
  sub_1002333A4();
}

uint64_t sub_100259A38(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_1001B6ACC();

  return sub_10028022C(v13, v14);
}

uint64_t sub_100259AC0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100259B98;

  return sub_1002585BC();
}

uint64_t sub_100259B98()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_100268C34();
  v3 = *v2;
  sub_1001D14B0();
  *v4 = v3;
  v6 = v5[4];
  v7 = v5[3];
  v8 = v5[2];
  v9 = *v2;
  sub_100004410();
  *v10 = v9;

  if (v1)
  {
    _convertErrorToNSError(_:)();
    sub_1002691BC();

    v11 = v0;
  }

  else
  {
    sub_1001A7B44(0, &qword_1003B8490);
    sub_100269014();
    Array._bridgeToObjectiveC()();
    sub_100268C8C();

    v11 = 0;
  }

  v12 = *(v3 + 40);
  v13 = sub_100268B74();
  v14(v13);

  _Block_release(v12);
  sub_1000046F8();
  sub_1001D19B8();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_100259D30()
{
  sub_100005528();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1001A6C04(&qword_1003B5FC8);
  v1[9] = v3;
  sub_1001B6A00(v3);
  v1[10] = v4;
  v1[11] = sub_1001E41A0();
  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100259DE0()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = [*(v0 + 64) clientProxy];
  if (!v1)
  {
    __break(1u);
    return dispatch thunk of GameKitServiceProtocol.submitAchievementsProgress(progress:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  sub_100268188(v1);
  if (v9)
  {
    v10 = *(v0 + 88);
    Ref<A>.init(bundleID:)();
    *(swift_task_alloc() + 16) = v10;
    sub_100254CF8();
    *(v0 + 96) = v11;

    sub_100256520((v0 + 16));
    sub_100268A40((v0 + 16));
    v23 = swift_task_alloc();
    *(v0 + 104) = v23;
    *v23 = v0;
    sub_1002332C8(v23);
    sub_100268D0C();
    sub_1001D18C4();

    return dispatch thunk of GameKitServiceProtocol.submitAchievementsProgress(progress:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  type metadata accessor for GameServicesError();
  sub_10026899C();
  sub_100267F68(v12, v13);
  sub_1001D1528();
  sub_100268D48();
  swift_willThrow();

  sub_1000046F8();
  sub_1001D18C4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_10025A018()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_1001D14B0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  sub_100268D7C();

  sub_100268AB4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10025A130()
{
  sub_1000057FC();
  sub_100005BE0(v0 + 16);
  v1 = sub_100244B7C();
  v2(v1);

  sub_1000046F8();

  return v3();
}

uint64_t sub_10025A1B4()
{
  sub_1000057FC();
  sub_100005BE0(v0 + 16);
  v1 = sub_100244B7C();
  v2(v1);

  sub_1000046F8();

  return v3();
}

uint64_t sub_10025A238@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a2;
  v22[1] = a3;
  v4 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v4 - 8);
  v22[0] = v22 - v5;
  v6 = sub_1001A6C04(&qword_1003B6270);
  __chkstk_darwin(v6 - 8);
  v7 = sub_1001A6C04(&qword_1003B6260);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v11 = *a1;
  v12 = [v11 player];
  v13 = [v12 playerID];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Ref<A>.init(internalID:)();
  v14 = [v11 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = v24;
  Ref<A>.achievement(id:)();
  if (v15)
  {
    (*(v8 + 8))(v10, v7);

    *v23 = v15;
  }

  else
  {
    v17 = v22[0];

    [v11 percentComplete];
    [v11 isCompleted];
    v18 = [v11 lastReportedDate];
    if (v18)
    {
      v19 = v18;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = type metadata accessor for Date();
    sub_1001A9674(v17, v20, 1, v21);
    return AchievementProgress.init(player:achievement:percentComplete:isCompleted:lastReportedDate:)();
  }

  return result;
}

uint64_t sub_10025A550(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1001A7B44(0, &qword_1003B8488);
  v3[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_10025A638;

  return sub_100259D30();
}

uint64_t sub_10025A638()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_100005B68();
  sub_100004410();
  *v3 = v2;
  v4 = *(v2 + 16);
  *v3 = *v1;

  sub_1000062BC();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v5 = sub_10020D2EC();
    v6(v5, v2);
  }

  else
  {
    v7 = sub_10020D2EC();
    v8(v7, 0);
  }

  _Block_release(*(v2 + 24));
  sub_10000629C();
  sub_1001D19B8();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10025A79C()
{
  sub_100005528();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1001A6C04(&qword_1003B8478);
  v1[14] = v3;
  sub_1001B6A00(v3);
  v1[15] = v4;
  v1[16] = sub_1001E41A0();
  v5 = sub_1001A6C04(&qword_1003B8480);
  sub_100006A0C(v5);
  v1[17] = sub_1001E41A0();
  v6 = sub_1001A6C04(&qword_1003B6260);
  v1[18] = v6;
  sub_1001B6A00(v6);
  v1[19] = v7;
  v1[20] = sub_1001E41A0();
  v8 = sub_1001A6C04(&qword_1003B5FC8);
  v1[21] = v8;
  sub_1001B6A00(v8);
  v1[22] = v9;
  v1[23] = sub_1001E41A0();
  v10 = sub_10000448C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10025A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v15 = [*(v14 + 104) clientProxy];
  if (!v15)
  {
    __break(1u);
    return dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }

  sub_100268188(v15);
  if (!v23)
  {
    type metadata accessor for GameServicesError();
    sub_10026899C();
    sub_100267F68(v28, v29);
    sub_1001D1528();
    sub_100268D48();
    swift_willThrow();
    goto LABEL_6;
  }

  v24 = *(v14 + 96);
  Ref<A>.init(bundleID:)();
  v25 = [v24 playerID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100268FA8();

  sub_1002335A8();
  Ref<A>.init(internalID:)();
  sub_100269138();
  if (!v25)
  {
    sub_100268A40((v14 + 16));
    sub_1001A6C04(&qword_1003B8400);
    v39 = sub_100268A08();
    *(v14 + 192) = v39;
    v40 = sub_100268ADC(v39, xmmword_1002C33A0);
    v41(v40);
    type metadata accessor for Cursor();
    v42 = sub_100268B3C();
    sub_1001A9674(v42, v43, v44, v45);
    v46 = swift_task_alloc();
    *(v14 + 200) = v46;
    *v46 = v14;
    v46[1] = sub_10025AB5C;
    sub_100268B60();
    sub_100006084();

    return dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }

  (*(*(v14 + 152) + 8))(*(v14 + 160), *(v14 + 144));
  v26 = sub_1002335A8();
  v27(v26);
LABEL_6:
  sub_1002690C4();

  sub_1000046F8();
  sub_100006084();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_10025AB5C()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v2;
  sub_100006028();
  *v6 = v5;
  *(v8 + 208) = v7;
  *(v8 + 216) = v0;

  sub_100268D7C();
  sub_1001F6F1C(*(v1 + 136), &qword_1003B8480);

  sub_100268AB4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10025ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v19 = *(v15[26] + 16);
  if (v19)
  {
    v20 = v15[15];
    v21 = *(v20 + 16);
    v17 = v20 + 16;
    a10 = v21;
    sub_1001E3E5C();
    v24 = v22 + v23;
    v25 = *(v17 + 56);
    v18 = v17 - 8;
    v26 = _swiftEmptyArrayStorage;
    do
    {
      v16 = v15[14];
      v27 = sub_100268F2C();
      a10(v27);
      v14 = Page.elements.getter();
      v28 = sub_1002335A8();
      v29(v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100006AEC();
        sub_1001DF7EC();
        v26 = v31;
      }

      sub_100268F1C();
      if (v30)
      {
        sub_100268CE8();
        v26 = v32;
      }

      sub_100268F0C();
      v24 += v25;
      --v19;
    }

    while (v19);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  v33 = sub_100269308();
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15[28] = v41;
    if (v18 == v17)
    {
      break;
    }

    if (v17 >= v26[2])
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return dispatch thunk of GameKitServiceProtocol.resetAchievementsProgress(achievements:players:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
    }

    sub_100268C0C();
    if (v42)
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 > v41[3] >> 1)
    {
      sub_1001DF708();
      v41 = v43;
    }

    if (MEMORY[0x10])
    {
      sub_100268EFC();
      v33 = sub_1001A6C04(&qword_1003B6270);
      if (v14 < v16)
      {
        goto LABEL_34;
      }

      sub_1002690A8();

      if (v16)
      {
        v44 = v41[2];
        v42 = __OFADD__(v44, v16);
        v45 = v44 + v16;
        if (v42)
        {
          goto LABEL_35;
        }

        v41[2] = v45;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_33;
      }
    }

    ++v17;
  }

  v46 = v15[27];

  sub_100256520(v15 + 7);
  if (!v46)
  {
    sub_100268A40(v15 + 7);
    sub_1001A6C04(&qword_1003B5B38);
    v60 = sub_100268A08();
    v15[29] = v60;
    v61 = sub_100269068(v60, xmmword_1002C33A0);
    v62(v61);
    v63 = swift_task_alloc();
    v15[30] = v63;
    *v63 = v15;
    sub_1002332C8(v63);
    sub_100005B0C();

    return dispatch thunk of GameKitServiceProtocol.resetAchievementsProgress(achievements:players:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  v47 = sub_1001F77B8();
  v48(v47);
  v49 = sub_1001E4240();
  v50(v49);

  sub_1002689D0();
  sub_100005B0C();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10025B028()
{
  sub_1000057FC();
  sub_1001D14B0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10025B17C()
{
  sub_1001D19CC();
  sub_1001AFA50();
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = sub_1001E4240();
  v2(v1);
  sub_100005BE0((v0 + 7));

  sub_1000046F8();
  sub_1001D19B8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10025B238()
{
  sub_1000057FC();
  v1 = sub_1002691E0();
  v2(v1);
  v3 = sub_100244B7C();
  v4(v3);
  sub_100005BE0(v0 + 16);
  sub_1002690C4();

  sub_1000046F8();

  return v5();
}

uint64_t sub_10025B2D8()
{
  sub_1000057FC();
  v1 = sub_1002691E0();
  v2(v1);
  v3 = sub_100244B7C();
  v4(v3);
  sub_100005BE0(v0 + 56);
  sub_1002690C4();

  sub_1000046F8();

  return v5();
}

uint64_t sub_10025B398(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10025B45C;

  return sub_10025A79C();
}

uint64_t sub_10025B45C()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_100005B68();
  sub_100004410();
  *v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  *v3 = *v1;

  sub_1000062BC();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v6 = sub_10020D2EC();
    v7(v6, v2);
  }

  else
  {
    v8 = sub_10020D2EC();
    v9(v8, 0);
  }

  _Block_release(*(v2 + 32));
  sub_10000629C();
  sub_1001D19B8();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10025B5BC()
{
  sub_100005528();
  v1[20] = v27;
  v1[21] = v0;
  v1[18] = v2;
  v1[19] = v3;
  v1[16] = v4;
  v1[17] = v5;
  v1[14] = v6;
  v1[15] = v7;
  v1[13] = v8;
  v9 = type metadata accessor for LeaderboardEntry();
  v1[22] = v9;
  sub_1001B6A00(v9);
  v1[23] = v10;
  v1[24] = sub_1001E41A0();
  v11 = sub_1001A6C04(&qword_1003B83E8);
  sub_100006A0C(v11);
  v1[25] = sub_1002335CC();
  v1[26] = swift_task_alloc();
  v12 = sub_1001A6C04(&qword_1003B8470);
  sub_100006A0C(v12);
  v1[27] = sub_1002335CC();
  v1[28] = swift_task_alloc();
  v13 = type metadata accessor for Locale();
  v1[29] = v13;
  sub_1001B6A00(v13);
  v1[30] = v14;
  v1[31] = sub_1002335CC();
  v1[32] = swift_task_alloc();
  v15 = sub_1001A6C04(&qword_1003B8420);
  sub_100006A0C(v15);
  v1[33] = sub_1002335CC();
  v1[34] = swift_task_alloc();
  v16 = sub_1001A6C04(&qword_1003B6260);
  v1[35] = v16;
  sub_1001B6A00(v16);
  v1[36] = v17;
  v1[37] = sub_1001E41A0();
  v18 = sub_1001A6C04(&qword_1003B83E0);
  v1[38] = v18;
  sub_1001B6A00(v18);
  v1[39] = v19;
  v1[40] = sub_1001E41A0();
  v20 = sub_1001A6C04(&qword_1003B5FC8);
  v1[41] = v20;
  sub_1001B6A00(v20);
  v1[42] = v21;
  v1[43] = sub_1001E41A0();
  v22 = sub_10000448C();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_10025C124()
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 376) = v0;

  v7 = *(v4 + 208);

  if (!v0)
  {
    *(v5 + 384) = v3;
  }

  sub_1001F6F1C(v7, &qword_1003B83E8);
  v8 = sub_1001F77B8();
  v9(v8);
  sub_1001B6A34();
  sub_100006084();

  return _swift_task_switch(v10, v11, v12);
}

void sub_10025C318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001F77D8();
  sub_100268E78();
  sub_100268D94();
  sub_1001BAAA4();

  v19 = sub_1001A6C04(&qword_1003B6080);
  v20 = sub_100268BEC(v19);
  v21 = v18[34];
  if (v20 == 1)
  {
    sub_100005BE0((v18 + 2));
    sub_1001F6F1C(v21, &qword_1003B8420);
    v22 = _swiftEmptyArrayStorage;
  }

  else
  {
    v22 = Page.elements.getter();
    sub_100005534();
    v23 = sub_100005558();
    v24(v23);
    sub_100005BE0((v18 + 2));
  }

  if (v22[2])
  {
    v25 = v18[47];
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_1001E3E5C();
    sub_100269150();
    while (1)
    {
      if (!*(a12 + 16))
      {
        __break(1u);
        return;
      }

      v26 = sub_100268DA0();
      v28 = v27(v26);
      sub_1002692C8(v28, v29, v30, v31, v32);
      if (v25)
      {
        break;
      }

      v33 = sub_100269254();
      v34(v33);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100269164();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100269164();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v25 = 0;
    }

    sub_100268F3C();
    v47 = sub_100268B9C();
    v48(v47);
    v49 = sub_1002335A8();
    v50(v49);
    v51 = sub_100268B1C();
    v52(v51);

    sub_1002689B4();
    sub_100269268();

    sub_1000046F8();
    sub_1001F7484();

    v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, _swiftEmptyArrayStorage, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_100268CA4();

    v35 = sub_1001F7550();
    v36(v35);
    v37 = sub_100268B1C();
    v38(v37);
    sub_1002689B4();
    v61 = v18[25];
    v62 = v18[24];

    sub_1001D17DC();
    sub_1001F7484();

    v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v61, v62, _swiftEmptyArrayStorage, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_10025C680()
{
  sub_10020D578();
  sub_100005838();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 408) = v0;

  v7 = *(v4 + 200);

  if (!v0)
  {
    *(v5 + 416) = v3;
  }

  sub_1001F6F1C(v7, &qword_1003B83E8);
  v8 = sub_1001F77B8();
  v9(v8);
  sub_1001B6A34();
  sub_10020D590();

  return _swift_task_switch(v10, v11, v12);
}

void sub_10025C858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001F77D8();
  sub_100268E78();
  sub_100268D94();
  sub_1001BAAA4();

  v19 = sub_1001A6C04(&qword_1003B6080);
  v20 = sub_100268BEC(v19);
  v21 = v18[33];
  if (v20 == 1)
  {
    sub_100005BE0((v18 + 7));
    sub_1001F6F1C(v21, &qword_1003B8420);
    v22 = _swiftEmptyArrayStorage;
  }

  else
  {
    v22 = Page.elements.getter();
    sub_100005534();
    v23 = sub_100005558();
    v24(v23);
    sub_100005BE0((v18 + 7));
  }

  if (v22[2])
  {
    v25 = v18[51];
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_1001E3E5C();
    sub_100269150();
    while (1)
    {
      if (!*(a12 + 16))
      {
        __break(1u);
        return;
      }

      v26 = sub_100268DA0();
      v28 = v27(v26);
      sub_1002692C8(v28, v29, v30, v31, v32);
      if (v25)
      {
        break;
      }

      v33 = sub_100269254();
      v34(v33);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100269164();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_100269164();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v25 = 0;
    }

    sub_100268F3C();
    v47 = sub_100268B9C();
    v48(v47);
    v49 = sub_1002335A8();
    v50(v49);
    v51 = sub_100268B1C();
    v52(v51);

    sub_1002689B4();
    sub_100269268();

    sub_1000046F8();
    sub_1001F7484();

    v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, _swiftEmptyArrayStorage, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_100268CA4();

    v35 = sub_1001F7550();
    v36(v35);
    v37 = sub_100268B1C();
    v38(v37);
    sub_1002689B4();
    v61 = v18[25];
    v62 = v18[24];

    sub_1001D17DC();
    sub_1001F7484();

    v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v61, v62, _swiftEmptyArrayStorage, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_10025CBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = sub_100268CD4();
  v16(v15);
  v17 = sub_100244B7C();
  v18(v17);
  sub_100005BE0(v14 + 16);
  sub_1002689B4();
  sub_100269288();

  sub_1000046F8();
  sub_100005B0C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10025CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = sub_100268CD4();
  v16(v15);
  v17 = sub_100244B7C();
  v18(v17);
  sub_100005BE0(v14 + 56);
  sub_1002689B4();
  sub_100269288();

  sub_1000046F8();
  sub_100005B0C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10025CD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 2:
      v4 = &enum case for LeaderboardTimeScope.allTime(_:);
      goto LABEL_7;
    case 1:
      v4 = &enum case for LeaderboardTimeScope.pastWeek(_:);
      goto LABEL_7;
    case 0:
      v4 = &enum case for LeaderboardTimeScope.past24h(_:);
LABEL_7:
      v5 = *v4;
      type metadata accessor for LeaderboardTimeScope();
      sub_100005780();
      return (*(v6 + 104))(a2, v5);
  }

  type metadata accessor for GameServicesError();
  sub_10026899C();
  sub_100267F68(v8, v9);
  sub_100269014();
  swift_allocError();
  sub_100268FA8();
  _StringGuts.grow(_:)(30);
  v10._object = 0x800000010030E370;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v10);
  type metadata accessor for GKLeaderboardTimeScope(0);
  _print_unlocked<A, B>(_:_:)();
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  sub_100005534();
  (*(v11 + 104))(v2);
  return swift_willThrow();
}

void sub_10025CF3C(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v43 = a2;
  v38 = a3;
  v39 = a1;
  v4 = sub_1001A6C04(&qword_1003B6260);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v36 - v10;
  __chkstk_darwin(v9);
  v13 = v36 - v12;
  v14 = type metadata accessor for LeaderboardEntry();
  __chkstk_darwin(v14);
  v40 = v17;
  v41 = v16;
  v18 = *(v17 + 16);
  v42 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18();
  LeaderboardEntry.player.getter();
  v19 = Ref<A>.internalID.getter();
  if (v3)
  {
    (*(v5 + 8))(v13, v4);
    v21 = v43;
    (*(v40 + 8))(v42, v41);
    *v21 = v3;
    return;
  }

  v22 = v19;
  v23 = v20;
  v36[0] = v11;
  v24 = *(v5 + 8);
  v36[1] = v5 + 8;
  v37 = v4;
  v24(v13, v4);
  v25 = v24;
  v26 = [v39 playerID];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v22 == v27 && v23 == v29)
  {

    v32 = v38;
    goto LABEL_10;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v32 = v38;
  if (v31)
  {
LABEL_10:
    v33 = v39;
    goto LABEL_11;
  }

  LeaderboardEntry.player.getter();
  Ref<A>.internalID.getter();
  sub_1001A7B44(0, &qword_1003B6038);
  v25(v8, v37);
  v35 = v36[0];
  Ref<A>.init(internalID:)();
  sub_10025D2F4(v35);
  v32 = v38;
LABEL_11:
  sub_1001A7B44(0, &qword_1003B8468);
  sub_10025D43C();
  *v32 = v34;
}

id sub_10025D2F4(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  Ref<A>.internalID.getter();
  if (v1)
  {
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();

    [v3 setPlayerID:v5];

    v6 = Ref<A>.internalID.getter();
    sub_1002681F8(v6, v8, v3, &selRef_setAlias_);
  }

  sub_1001A6C04(&qword_1003B6260);
  sub_1000047C0();
  (*(v4 + 8))(a1);
  return v3;
}

void sub_10025D43C()
{
  sub_10023332C();
  v2 = v1;
  v4 = v3;
  v25 = sub_1001A6C04(&qword_1003B83E0);
  sub_1000043C4();
  v6 = v5;
  sub_100006AB0();
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  type metadata accessor for Date();
  sub_1000043C4();
  __chkstk_darwin(v10);
  sub_1000043B4();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setPlayer:v2];
  v12 = LeaderboardEntry.rank.getter();
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = v2;
    [v11 setRank:v12];
    [v11 setScore:LeaderboardEntry.score.getter()];
    LeaderboardEntry.formattedScore.getter();
    v13 = String._bridgeToObjectiveC()();

    [v11 setFormattedScore:v13];

    v14 = LeaderboardEntry.context.getter();
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    [v11 setContext:v16];
    LeaderboardEntry.dateEarned.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = sub_1001F77AC();
    v20 = v19(v18);
    sub_100268E60(v20, "setDate:");

    [v11 setState:4];
    LeaderboardEntry.leaderboard.getter();
    Ref<A>.id.getter();
    if (v0)
    {

      type metadata accessor for LeaderboardEntry();
      sub_1000047C0();
      (*(v21 + 8))(v4);
      (*(v6 + 8))(v9, v25);
    }

    else
    {
      (*(v6 + 8))(v9, v25);
      v22 = String._bridgeToObjectiveC()();

      [v11 setBaseLeaderboardID:v22];

      type metadata accessor for LeaderboardEntry();
      sub_1000047C0();
      (*(v23 + 8))(v4);
    }

    sub_1002333A4();
  }
}

uint64_t sub_10025D84C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v9[4] = a3;
  v9[5] = a9;
  v9[2] = a1;
  v9[3] = a2;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  v14 = swift_task_alloc();
  v9[6] = v14;
  sub_1001A6C04(&qword_1003B8470);
  v15 = swift_task_alloc();
  v9[7] = v15;
  v9[8] = _Block_copy(v25);
  sub_1001A7B44(0, &qword_1003B6038);
  v9[9] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v24)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v13 + 32))(v15, v14, v12);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1001A9674(v15, v16, 1, v12);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  a9;
  v20 = swift_task_alloc();
  v9[10] = v20;
  *v20 = v9;
  v20[1] = sub_10025DA90;

  return sub_10025B5BC();
}

uint64_t sub_10025DA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  sub_100268C34();
  v14 = *v13;
  v15 = *v13;
  sub_100004410();
  *v16 = v15;
  *v16 = *v13;

  sub_100268DEC();
  v17 = v14[5];
  v18 = v14[4];
  v19 = v14[3];
  v20 = v14[2];
  sub_1001F6F1C(v14[7], &qword_1003B8470);

  if (v12)
  {
    v21 = _convertErrorToNSError(_:)();

    v22 = v21;
  }

  else
  {
    sub_1001A7B44(0, &qword_1003B8468);
    sub_100269014();
    Array._bridgeToObjectiveC()();
    sub_100268C8C();

    v21 = 0;
    v22 = 0;
  }

  v23 = v15[8];
  v23[2](v23, 0, v21);

  _Block_release(v23);

  sub_100006084();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_10025DCB0()
{
  sub_100005528();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for Date();
  sub_100006A0C(v3);
  v1[9] = sub_1001E41A0();
  v4 = sub_1001A6C04(&qword_1003B83E8);
  sub_100006A0C(v4);
  v1[10] = sub_1001E41A0();
  v5 = type metadata accessor for Locale();
  v1[11] = v5;
  sub_1001B6A00(v5);
  v1[12] = v6;
  v1[13] = sub_1001E41A0();
  v7 = sub_1001A6C04(&qword_1003B8420);
  sub_100006A0C(v7);
  v1[14] = sub_1001E41A0();
  v8 = sub_1001A6C04(&qword_1003B5FC0);
  sub_100006A0C(v8);
  v1[15] = sub_1001E41A0();
  v9 = type metadata accessor for LeaderboardEntry();
  v1[16] = v9;
  sub_1001B6A00(v9);
  v1[17] = v10;
  v1[18] = sub_1002335CC();
  v1[19] = swift_task_alloc();
  v11 = sub_1001A6C04(&qword_1003B6260);
  v1[20] = v11;
  sub_1001B6A00(v11);
  v1[21] = v12;
  v1[22] = sub_1002335CC();
  v1[23] = swift_task_alloc();
  v13 = sub_1001A6C04(&qword_1003B83E0);
  v1[24] = v13;
  sub_1001B6A00(v13);
  v1[25] = v14;
  v1[26] = sub_1002335CC();
  v1[27] = swift_task_alloc();
  v15 = sub_1001A6C04(&qword_1003B5FC8);
  v1[28] = v15;
  sub_1001B6A00(v15);
  v1[29] = v16;
  v1[30] = sub_1001E41A0();
  v17 = sub_10000448C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_10025E350()
{
  sub_1001D1970();
  sub_100005838();
  v4 = v3;
  sub_100268DF8();
  sub_100004410();
  *v5 = v1;
  *v5 = *v2;
  v1[38] = v0;

  sub_100268D7C();
  if (v0)
  {
    sub_1001F6F1C(v1[10], &qword_1003B83E8);
  }

  else
  {
    v6 = v1[10];
    v1[39] = v4;
    sub_1001F6F1C(v6, &qword_1003B83E8);

    v7 = sub_1002204F8();
    v8(v7);
  }

  sub_1001B6A34();
  sub_1001D185C();

  return _swift_task_switch(v9, v10, v11);
}

id sub_10025E4EC()
{
  sub_100268D94();
  sub_1001BAAA4();

  v1 = sub_1001A6C04(&qword_1003B6080);
  v2 = sub_100268C98();
  v4 = sub_1001A969C(v2, v3, v1);
  v5 = v0[16];
  v6 = v0[14];
  if (v4 == 1)
  {
    sub_100005BE0((v0 + 2));
    sub_1001F6F1C(v6, &qword_1003B8420);
    sub_1001E4070();
    sub_1001A9674(v7, v8, v9, v5);
  }

  else
  {
    Page.elements.getter();
    sub_100005534();
    v10 = sub_1001F72F8();
    v11(v10);
    sub_1001BAAB8();

    sub_100005BE0((v0 + 2));
    sub_100268FB4();
    if (!v12)
    {
      (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
      goto LABEL_7;
    }
  }

  v37 = v0[35];
  v13 = v0[32];
  v38 = v0[15];
  v39 = v0[16];
  static Date.now.getter();
  v14 = sub_1001B6ACC();
  v13(v14);
  v15 = sub_1001F761C();
  v37(v15);
  LeaderboardEntry.init(context:dateEarned:formattedScore:leaderboard:player:rank:score:)();
  if (sub_1001A969C(v38, 1, v39) != 1)
  {
    sub_1001F6F1C(v0[15], &qword_1003B5FC0);
  }

LABEL_7:
  v16 = v0[7];
  (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
  result = [v16 playerInternal];
  if (result)
  {
    v18 = v0[38];
    sub_1001A7B44(0, &qword_1003B8468);
    sub_1001B6ACC();
    sub_10025D43C();
    v19 = v0[27];
    if (v18)
    {
      v20 = v0[24];
      v21 = v0[25];
      (*(v0[17] + 8))(v0[19], v0[16]);
      v22 = sub_100268B9C();
      v23(v22);
      (*(v21 + 8))(v19, v20);
      v24 = sub_100269008();
      v25(v24);
      sub_100268DCC();

      sub_1000046F8();
      sub_1001E4448();

      __asm { BRAA            X1, X16 }
    }

    v28 = v0[25];
    v29 = v0[23];
    v36 = v0[24];
    v30 = v0[21];
    v31 = v0[20];
    (*(v0[17] + 8))(v0[19], v0[16]);
    (*(v30 + 8))(v29, v31);
    (*(v28 + 8))(v19, v36);
    v32 = sub_100269008();
    v33(v32);

    sub_1001D17DC();
    sub_1001E4448();

    __asm { BRAA            X2, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_10025E968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  (*(v14[21] + 8))(v14[23], v14[20]);
  v15 = sub_1001F72BC();
  v16(v15);
  v17 = sub_1001E4240();
  v18(v17);
  v19 = sub_1001F77B8();
  v20(v19);
  sub_100005BE0((v14 + 2));
  v30 = v14[10];
  v31 = v14[9];
  v32 = v14[38];

  sub_1000046F8();
  sub_100005B0C();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, a12, a13, a14);
}

uint64_t sub_10025EAD8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10025EB9C;

  return sub_10025DCB0();
}

uint64_t sub_10025EB9C()
{
  sub_1001D19CC();
  sub_1001AFA50();
  v3 = v0;
  v5 = v4;
  sub_100268D3C();
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);
  v8 = *v1;
  sub_100004410();
  *v9 = v8;

  sub_1000062BC();
  v11 = *(v10 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = sub_10020D2EC();
    v14(v13, 0, v12);

    _Block_release(v11);
  }

  else
  {
    v15 = sub_10020D2EC();
    v16(v15, v5, 0);
    _Block_release(v11);
  }

  sub_10000629C();
  sub_1001D19B8();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_10025ED20()
{
  sub_100005528();
  v1[23] = v2;
  v1[24] = v0;
  v3 = type metadata accessor for LeaderboardSetDescription();
  v1[25] = v3;
  sub_1001B6A00(v3);
  v1[26] = v4;
  v1[27] = sub_1002335CC();
  v1[28] = swift_task_alloc();
  v5 = sub_1001A6C04(&qword_1003B6078);
  v1[29] = v5;
  sub_1001B6A00(v5);
  v1[30] = v6;
  v1[31] = sub_1001E41A0();
  v7 = sub_1001A6C04(&qword_1003B8448);
  sub_1001B6A00(v7);
  v1[32] = v8;
  v1[33] = sub_1002335CC();
  v1[34] = swift_task_alloc();
  v9 = sub_1001A6C04(&qword_1003B8450);
  v1[35] = v9;
  sub_100006A0C(v9);
  v1[36] = sub_1001E41A0();
  v10 = sub_1001A6C04(&qword_1003B8458);
  sub_100006A0C(v10);
  v1[37] = sub_1001E41A0();
  v11 = sub_1001A6C04(&qword_1003B5FC8);
  v1[38] = v11;
  sub_1001B6A00(v11);
  v1[39] = v12;
  v1[40] = sub_1001E41A0();
  v13 = sub_10000448C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10025EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001F77F4();
  sub_1001D18F8();
  v13 = [*(v12 + 184) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100268FA8();

  sub_1002335A8();
  Ref<A>.init(bundleID:)();
  *(v12 + 176) = _swiftEmptyArrayStorage;
  sub_100256520((v12 + 16));
  sub_100268A40((v12 + 16));
  sub_1001A6C04(&qword_1003B8400);
  v14 = sub_100268E40();
  *(v12 + 328) = v14;
  *(v14 + 16) = xmmword_1002C33A0;
  sub_100268D30();
  v15();
  v16 = swift_task_alloc();
  *(v12 + 336) = v16;
  *v16 = v12;
  sub_1002332C8(v16);
  sub_100268D0C();
  sub_1001F75B8();

  return dispatch thunk of GameKitServiceProtocol.listLeaderboardSets(games:)(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_10025F11C()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_100268BDC();
  sub_100004410();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 344) = v0;

  sub_100268DEC();

  if (!v0)
  {
    *(v3 + 352) = v1;
  }

  sub_100268AB4();
  sub_1001D18C4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10025F238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001F77F4();
  sub_1001D18F8();
  sub_100268D94();
  sub_1001BAB58();

  v13 = sub_1001A6C04(&qword_1003B6090);
  v14 = sub_100268BEC(v13);
  v15 = v12[37];
  if (v14 == 1)
  {
    sub_100005BE0((v12 + 2));
    sub_1001F6F1C(v15, &qword_1003B8458);
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = Page.elements.getter();
    sub_100005534();
    v17 = sub_100005558();
    v18(v17);
    sub_100005BE0((v12 + 2));
  }

  v12[45] = v16;
  v19 = v12[43];
  sub_100256520(v12 + 7);
  if (v19)
  {
    v20 = sub_100268C24();
    v21(v20);

    sub_100268A30();

    sub_1002689D0();
    sub_1001F75B8();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    sub_100269020();
    v31 = swift_task_alloc();
    v12[46] = v31;
    *v31 = v12;
    v31[1] = sub_10025F41C;
    sub_1000047F0();
    sub_1001F75B8();

    return dispatch thunk of GameKitServiceProtocol.describeLeaderboardSets(leaderboardSets:)(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }
}

uint64_t sub_10025F41C()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 376) = v5;
  *(v3 + 384) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10025F524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001F77F4();
  sub_1001D18F8();
  v13 = v12[48];
  sub_100269190();
  if (v13)
  {
    v14 = sub_100268C24();
    v15(v14);

    sub_100268A30();

    sub_1002689D0();
    sub_1001F75B8();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    sub_100268A40(v12 + 12);
    v25 = swift_task_alloc();
    v12[49] = v25;
    *v25 = v12;
    v25[1] = sub_10025F67C;
    sub_1001D1934(v12[45]);
    sub_100268D0C();
    sub_1001F75B8();

    return dispatch thunk of GameKitServiceProtocol.listLeaderboards(leaderboardSets:)(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }
}

uint64_t sub_10025F67C()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10025F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  v17 = v16[47];
  v18 = sub_100005BE0((v16 + 12));
  v26 = 0;
  v27 = *(v17 + 16);
  v80 = v16[51];
  v16[52] = v27;
  v16[53] = _swiftEmptyArrayStorage;
  while (1)
  {
    v16[54] = v26;
    if (v26 == v27)
    {
      sub_100268E84();

      goto LABEL_10;
    }

    if (v26 >= *(v16[47] + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)(v18, v19, v20, v21, v22, v23, v24, v25, a9, v80, a11, a12, a13, a14, a15, a16);
    }

    v28 = v16[50];
    sub_100268CC4();
    sub_100268E90();
    v18 = sub_100268798(v29, v30, v31);
    v32 = *(v28 + 16);
    if (v26 == v32)
    {
      break;
    }

    if (v26 >= v32)
    {
      goto LABEL_21;
    }

    v33 = v16[36];
    v34 = v16[30];
    v35 = v16[29];
    a11 = v16[31];
    a12 = v16[25];
    sub_100268CC4();
    v37 = v36 + *(v34 + 72) * v26;
    v39 = *(v38 + 48);
    sub_100268E90();
    sub_1002687E4(v40, v41, v42);
    (*(v34 + 16))(v33 + v39, v37, v35);
    (*(v34 + 32))(a11, v33 + v39, v35);
    sub_1002335A8();
    sub_100268E90();
    sub_1002687E4(v43, v44, v45);
    v46 = sub_100269248();
    v48 = sub_1001A969C(v46, v47, a12);
    v49 = v16[33];
    if (v48 != 1)
    {
      v64 = sub_100268FD8();
      v65(v64);
      sub_100256520(v16 + 17);
      if (v80)
      {
        sub_100268E84();
        v66 = v16[39];
        v81 = v16[38];
        v82 = v16[40];

        v67 = sub_100268DC0();
        v68(v67);
        v69 = sub_1001F77B8();
        v70(v69);
        (*(v66 + 8))(v82, v81);

        sub_100268A30();

        sub_1002689D0();
        sub_1001E41B8();

        return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, v80, v81, v82, a13, a14, a15, a16);
      }

      sub_100006454(v16 + 17, v16[20]);
      sub_100269044();
      v16[55] = Page.elements.getter();
      v79 = swift_task_alloc();
      v16[56] = v79;
      *v79 = v16;
      sub_100268BA8(v79);
      sub_1001E41B8();

      return dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)(v18, v19, v20, v21, v22, v23, v24, v25, a9, v80, a11, a12, a13, a14, a15, a16);
    }

    v50 = sub_100268B2C();
    v51(v50);
    v18 = sub_1001F6F1C(v49, &qword_1003B8448);
    v27 = v16[52];
    ++v26;
  }

  sub_100268E84();
  v52 = v16[34];

  sub_1001F6F1C(v52, &qword_1003B8448);
LABEL_10:
  sub_100268A30();
  v53 = sub_100268C80();
  v54(v53);

  sub_1001D17DC();
  sub_1001E41B8();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, v80, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10025FB78()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_100268BDC();
  sub_100004410();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 456) = v0;

  sub_100268DEC();

  if (v0)
  {
  }

  else
  {
    *(v3 + 464) = v1;
  }

  sub_1001B6A34();
  sub_1001D18C4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10025FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  v17 = v16[57];
  sub_100005BE0((v16 + 17));
  sub_1001A7B44(0, &qword_1003B8440);
  v18 = sub_1001ACA00();
  v19(v18);
  sub_10026051C();
  v90 = v17;
  if (v17)
  {
    v20 = v16[39];
    v87 = v16[40];
    v89 = v16[53];
    v21 = v16[38];

    v22 = sub_100268E9C();
    v23(v22);
    v24 = sub_100268B9C();
    v25(v24);
    (*(v20 + 8))(v87, v21);

    sub_100268A30();

    sub_1000046F8();
    sub_1001E41B8();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v87, v89, v17, a13, a14, a15, a16);
  }

  else
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v16[22] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16[22] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v35 = sub_100268B9C();
    v36(v35);
    v37 = sub_1002335A8();
    v38(v37);
    v39 = v16[54];
    v88 = v16[22];
    v16[53] = v88;
    for (i = v39 + 1; ; ++i)
    {
      v16[54] = i;
      if (i == v16[52])
      {
        sub_100268E84();

        goto LABEL_15;
      }

      if (i >= *(v16[47] + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v41 = v16[50];
      sub_100268CC4();
      sub_100268E90();
      sub_100268798(v42, v43, v44);
      v45 = *(v41 + 16);
      if (i == v45)
      {
        break;
      }

      if (i >= v45)
      {
        goto LABEL_22;
      }

      v46 = v16[36];
      v47 = v16[30];
      v48 = v16[29];
      a11 = v16[31];
      v90 = v16[25];
      sub_100268CC4();
      v50 = v49 + *(v47 + 72) * i;
      v52 = *(v51 + 48);
      sub_100268E90();
      sub_1002687E4(v53, v54, v55);
      (*(v47 + 16))(v46 + v52, v50, v48);
      (*(v47 + 32))(a11, v46 + v52, v48);
      sub_1002335A8();
      sub_100268E90();
      sub_1002687E4(v56, v57, v58);
      v59 = sub_100269248();
      v61 = sub_1001A969C(v59, v60, v90);
      v62 = v16[33];
      if (v61 != 1)
      {
        v76 = sub_100268FD8();
        v77(v76);
        sub_100256520(v16 + 17);
        sub_100006454(v16 + 17, v16[20]);
        sub_100269044();
        v16[55] = Page.elements.getter();
        v78 = swift_task_alloc();
        v16[56] = v78;
        *v78 = v16;
        sub_100268BA8();
        sub_1001E41B8();

        return dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)(v79, v80, v81, v82, v83, v84, v85, v86, a9, v88, a11, 0, a13, a14, a15, a16);
      }

      v63 = sub_100268B2C();
      v64(v63);
      sub_1001F6F1C(v62, &qword_1003B8448);
    }

    sub_100268E84();
    v65 = v16[34];

    sub_1001F6F1C(v65, &qword_1003B8448);
LABEL_15:
    v66 = sub_100268C80();
    v67(v66);

    sub_1001D17DC();
    sub_1001E41B8();

    return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, v88, a11, v90, a13, a14, a15, a16);
  }
}

uint64_t sub_1002601F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  v11 = sub_100268C24();
  v12(v11);
  sub_100005BE0(v10 + 16);
  sub_100268A30();

  sub_1000046F8();
  sub_10020D590();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1002602AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  v11 = sub_100268C24();
  v12(v11);
  sub_100005BE0(v10 + 56);
  sub_100268A30();

  sub_1000046F8();
  sub_10020D590();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100260368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  v11 = sub_100268C24();
  v12(v11);
  sub_100005BE0(v10 + 96);
  sub_100268A30();

  sub_1000046F8();
  sub_10020D590();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100260424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  (*(v10[26] + 8))(v10[28], v10[25]);
  v11 = sub_1001F72BC();
  v12(v11);
  v13 = sub_1001E4240();
  v14(v13);
  sub_100005BE0((v10 + 17));
  sub_100268A30();

  sub_1000046F8();
  sub_10020D590();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_10026051C()
{
  sub_10023332C();
  v80 = v0;
  v81 = v3;
  v5 = v4;
  v6 = type metadata accessor for LeaderboardDescription();
  sub_1000043C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000043F0();
  v86 = (v10 - v11);
  sub_100005874();
  __chkstk_darwin(v12);
  sub_100268EEC();
  v13 = sub_1001A6C04(&qword_1003B6088);
  v14 = sub_1001B6A00(v13);
  v16 = v15;
  __chkstk_darwin(v14);
  sub_1000043F0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v85 = v79 - v21;
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LeaderboardSetDescription.id.getter();
  String._bridgeToObjectiveC()();
  sub_100269044();

  sub_100269328(v23, "setIdentifier:");

  LeaderboardSetDescription.groupId.getter();
  String._bridgeToObjectiveC()();
  sub_100269044();

  sub_100269328(v24, "setGroupIdentifier:");

  LeaderboardSetDescription.title.getter();
  String._bridgeToObjectiveC()();
  sub_100269044();

  v89 = v22;
  sub_100269328(v25, "setTitle:");

  v26 = *(v81 + 16);
  v87 = v2;
  v88 = v6;
  v79[1] = v5;
  if (v26)
  {
    v27 = v6;
    sub_1001E3E5C();
    v5 = (v28 + v29);
    v30 = *(v16 + 72);
    v83 = (v8 + 32);
    v84 = v30;
    v31 = _swiftEmptyArrayStorage;
    v32 = v8;
    v82 = v8;
    do
    {
      sub_100268798(v5, v85, &qword_1003B6088);
      sub_100269184();
      sub_1002687E4(v33, v34, v35);
      sub_100268D18(v19, 1, v27);
      if (v36)
      {
        sub_1001F6F1C(v19, &qword_1003B6088);
      }

      else
      {
        v37 = *v83;
        sub_100269184();
        v37();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = v31;
        }

        else
        {
          sub_100006AEC();
          sub_1001DF998();
          v39 = v43;
        }

        v40 = v39[2];
        if (v40 >= v39[3] >> 1)
        {
          sub_1001DF998();
          v39 = v44;
        }

        v39[2] = v40 + 1;
        v32 = v82;
        sub_1001E3E5C();
        v31 = v41;
        v27 = v88;
        (v37)(v41 + v42 + *(v32 + 72) * v40, v86);
      }

      v5 = (v5 + v84);
      --v26;
    }

    while (v26);

    sub_100269170();
    v45 = v31;
    v6 = v27;
  }

  else
  {

    v45 = _swiftEmptyArrayStorage;
    v32 = v8;
  }

  v46 = v45[2];
  if (!v46)
  {

LABEL_37:
    type metadata accessor for LeaderboardSetDescription();
    sub_1000047C0();
    (*(v78 + 8))(v5);
    sub_1002333A4();
    return;
  }

  v48 = *(v32 + 16);
  v47 = v32 + 16;
  v86 = v48;
  sub_1001E3E5C();
  v84 = v49;
  v51 = v49 + v50;
  v52 = (v47 - 8);
  v85 = *(v47 + 56);
  while (1)
  {
    sub_100269184();
    v86();
    *&v91 = LeaderboardDescription.baseLeaderboardId.getter();
    *(&v91 + 1) = v53;
    AnyHashable.init<A>(_:)();
    v54 = LeaderboardDescription.title.getter();
    if (v55)
    {
      *(&v92 + 1) = &type metadata for String;
      *&v91 = v54;
      *(&v91 + 1) = v55;
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
    }

    v56 = [v89 leaderboardIdentifiers];
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(&v92 + 1))
    {
      sub_1001F6F1C(&v91, &qword_1003B5808);
      v68 = sub_1001B24EC();
      if (v69)
      {
        v70 = v68;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v5[3];
        sub_1001A6C04(&qword_1003B8460);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v71, v72);
        sub_1001B2E34(v5[6] + 40 * v70);
        sub_100005C2C((v5[7] + 32 * v70), v90);
        _NativeDictionary._delete(at:)();
        sub_1001B2E34(v93);
      }

      else
      {
        sub_1001B2E34(v93);
        memset(v90, 0, sizeof(v90));
      }

      v76 = v87;
      sub_1001F6F1C(v90, &qword_1003B5808);
      goto LABEL_34;
    }

    sub_100005C2C(&v91, v90);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_1001B24EC();
    v60 = v5[2];
    v61 = (v59 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      break;
    }

    v63 = v58;
    v64 = v59;
    sub_1001A6C04(&qword_1003B8460);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v57, v62))
    {
      v65 = sub_1001B24EC();
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_40;
      }

      v63 = v65;
    }

    if (v64)
    {
      v67 = (v5[7] + 32 * v63);
      sub_100005BE0(v67);
      sub_100005C2C(v90, v67);
    }

    else
    {
      v5[(v63 >> 6) + 8] |= 1 << v63;
      sub_1001B2F38(v93, v5[6] + 40 * v63);
      sub_100005C2C(v90, (v5[7] + 32 * v63));
      v73 = v5[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_39;
      }

      v5[2] = v75;
    }

    sub_1001B2E34(v93);
    v76 = v87;
    v6 = v88;
LABEL_34:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v89 setLeaderboardIdentifiers:isa];

    (*v52)(v76, v6);
    v51 += v85;
    if (!--v46)
    {

      sub_100269170();
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}