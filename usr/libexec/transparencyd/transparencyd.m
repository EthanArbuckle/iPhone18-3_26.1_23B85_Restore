id sub_1000025EC(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setTimeoutCanOccur:0];
  }

  return result;
}

void sub_10000263C(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Keybag unlocked", v1, 2u);
  }
}

void sub_1000026A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  [WeakRetained setFinishDate:v1];
}

void sub_10000288C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  status = nw_path_get_status(v3);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"unavailable";
    if (status == nw_path_status_satisfied)
    {
      v6 = @"available";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "nw_path update: network is %@", &v7, 0xCu);
  }

  [WeakRetained _onqueueSetNetworkReachability:status == nw_path_status_satisfied];
}

void sub_10000299C(id a1)
{
  if (+[TransparencyFollowup isFollowupEnabled])
  {
    qword_10038BC40 = [[TransparencyFollowup alloc] initWithAnalytics:0];

    _objc_release_x1();
  }
}

void sub_100002A00(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002AD4(id a1)
{
  byte_10038BC48 = _os_feature_enabled_impl();
  if (qword_10038BC58 != -1)
  {
    sub_100002C18();
  }

  v1 = qword_10038BC60;
  if (os_log_type_enabled(qword_10038BC60, OS_LOG_TYPE_INFO))
  {
    if (byte_10038BC48)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Transparency CFUs are %s (via feature flags)", &v3, 0xCu);
  }
}

uint64_t sub_100002D78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002DCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_100002DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1000049D0(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t sub_100002F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10000300C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          v7 = *(type metadata accessor for DewValue(0) + 28);
          type metadata accessor for Conditions(0);
          v5 = type metadata accessor for Conditions;
          v6 = &unk_100387CF8;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v3 = v0;
          v4 = *(type metadata accessor for DewValue(0) + 32);
          type metadata accessor for ConfigurationValue(0);
          v5 = type metadata accessor for ConfigurationValue;
          v6 = &unk_100387D28;
        }

        sub_1000049D0(v6, v5);
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

unint64_t sub_1000031DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100383F88, &qword_1002D6B30);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000AB050(v4, &v13, &qword_100383F90, &qword_1002D6B38);
      v5 = v13;
      v6 = v14;
      result = sub_10000574C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000AB038(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_100003354(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  *&v2[OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides] = a1;
  *&v2[OBJC_IVAR____TtC13transparencyd16DewConfiguration_settings] = a2;
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC13transparencyd16DewConfiguration_logger], v12, v5);
  v13 = type metadata accessor for DewConfiguration();
  v29.receiver = v2;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "init");
  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC13transparencyd16DewConfiguration_settings];
  if (v16)
  {
    v17 = v14;
    swift_unknownObjectRetain();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 getSettingsData:v18];

    swift_unknownObjectRelease();
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v21;

    (*(v6 + 16))(v10, &v17[OBJC_IVAR____TtC13transparencyd16DewConfiguration_logger], v5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27 = v20;
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "dew loading cached cloud configuration", v24, 2u);
      v20 = v27;
    }

    (*(v6 + 8))(v10, v5);
    v25 = v28;
    (*((swift_isaMask & *v17) + 0x80))(v20, v28);

    swift_unknownObjectRelease();

    sub_1000956CC(v20, v25);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v15;
}

uint64_t type metadata accessor for DewConfiguration()
{
  result = qword_10038F840;
  if (!qword_10038F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003754(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DewValue(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BinaryDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100095820(&qword_1003834E8, &qword_1002D6728);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29[-v15];
  v17 = type metadata accessor for CloudConfiguration(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = a1;
  v32 = a2;
  v30 = 0;
  memset(&v29[16], 0, 32);
  sub_100002D78(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100004940(&qword_1003834F0, type metadata accessor for CloudConfiguration);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1000AAF40(v16, v21, type metadata accessor for CloudConfiguration);
  v22 = *v21;
  v23 = *(*v21 + 16);
  if (v23)
  {
    v24 = 0;
    while (v24 < *(v22 + 16))
    {
      sub_1000AA9CC(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v10);
      sub_1000A776C(v10, v3);
      ++v24;
      sub_1000AAFA8(v10, type metadata accessor for DewValue);
      if (v23 == v24)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    result = sub_1000AAFA8(v10, type metadata accessor for DewValue);
    __break(1u);
  }

  else
  {
LABEL_5:
    v25 = *(v3 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_settings);
    if (v25)
    {
      v26 = String._bridgeToObjectiveC()();
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v25 setSettingsData:v26 data:isa];
    }

    return sub_1000AAFA8(v21, type metadata accessor for CloudConfiguration);
  }

  return result;
}

uint64_t sub_100003B6C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003BA4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_10000467C(319, &qword_100387E58, type metadata accessor for Conditions, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000467C(319, &unk_100387E60, type metadata accessor for ConfigurationValue, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100003CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_10000467C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_100003D68(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for DewConfiguration());
  ObjectType = swift_getObjectType();
  type metadata accessor for DewGlobalOverrides();
  v6 = swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + 16) = sub_1000031DC(&_swiftEmptyArrayStorage);
  *(v6 + 24) = 0;
  v7 = (*(ObjectType + 104))(v6, a1);
  v8 = *((swift_isaMask & *v4) + 0x30);
  v9 = *((swift_isaMask & *v4) + 0x34);
  swift_deallocPartialClassInstance();
  v66 = v2;
  v67 = OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_config;
  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_config] = v7;
  sub_100095820(&qword_100383F70, &qword_1002D6B00);
  v10 = swift_allocObject();
  swift_beginAccess();
  v11 = aTimeinterval_1[0];
  v12 = aTimeinterval_1[1];
  v10[2] = 0xD000000000000026;
  v10[3] = 0x800000010029A1A0;
  v10[4] = 0xD000000000000090;
  v10[5] = 0x800000010029A1D0;
  v10[6] = 0;
  v10[7] = v11;
  v10[8] = v12;
  v10[9] = 0;
  v10[10] = 0x4024000000000000;
  v10[11] = 0;
  v10[12] = v7;
  v13 = qword_10038F730;
  v14 = v7;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = *(v10 + 2);
  v85[0] = *(v10 + 1);
  v85[1] = v15;
  v85[2] = *(v10 + 3);
  v86 = v10[8];
  v65 = *(*qword_10038F738 + 152);
  v65(0xD000000000000026, 0x800000010029A1A0, v85);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_selfValidsationEnrollment] = v10;
  swift_beginAccess();
  v16 = *&v2[v67];
  v17 = swift_allocObject();
  v18 = aTimeinterval_1[0];
  v19 = aTimeinterval_1[1];
  v17[2] = 0xD00000000000001ALL;
  v17[3] = 0x800000010029A270;
  v17[4] = 0xD000000000000089;
  v17[5] = 0x800000010029A290;
  v17[6] = 1;
  v17[7] = v18;
  v17[8] = v19;
  v17[9] = 1;
  v17[10] = 0x4024000000000000;
  v17[11] = 0;
  v17[12] = v16;
  v84 = v19;
  v20 = *(v17 + 2);
  v83[0] = *(v17 + 1);
  v83[1] = v20;
  v83[2] = *(v17 + 3);
  v21 = v16;

  v65(0xD00000000000001ALL, 0x800000010029A270, v83);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_initialDelaySync] = v17;
  v22 = *&v2[v67];
  sub_100095820(&unk_100387C00, &unk_1002D6B08);
  v23 = swift_allocObject();
  swift_beginAccess();
  v24 = *aInt64;
  v25 = qword_100383478;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x800000010029A320;
  *(v23 + 32) = 0xD00000000000003CLL;
  *(v23 + 40) = 0x800000010029A340;
  *(v23 + 48) = 1;
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 72) = xmmword_1002D66E0;
  *(v23 + 88) = 0;
  *(v23 + 96) = v22;
  v82 = v25;
  v26 = *(v23 + 32);
  v81[0] = *(v23 + 16);
  v81[1] = v26;
  v81[2] = *(v23 + 48);
  v27 = v22;

  v65(0xD000000000000019, 0x800000010029A320, v81);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_validatePendingURILimitConfig] = v23;
  v28 = *&v2[v67];
  v29 = swift_allocObject();
  v30 = *aInt64;
  v31 = qword_100383478;
  *(v29 + 16) = 0xD000000000000019;
  *(v29 + 24) = 0x800000010029A380;
  *(v29 + 32) = 0xD00000000000003CLL;
  *(v29 + 40) = 0x800000010029A3A0;
  *(v29 + 48) = 1;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  *(v29 + 72) = xmmword_1002D66E0;
  *(v29 + 88) = 0;
  *(v29 + 96) = v28;
  v80 = v31;
  v32 = *(v29 + 32);
  v79[0] = *(v29 + 16);
  v79[1] = v32;
  v79[2] = *(v29 + 48);
  v33 = v28;

  v65(0xD000000000000019, 0x800000010029A380, v79);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_validatePendingSMTLimitConfig] = v29;
  v34 = *&v2[v67];
  v35 = swift_allocObject();
  v36 = aTimeinterval_1[0];
  v37 = aTimeinterval_1[1];
  v35[2] = 0xD00000000000001ALL;
  v35[3] = 0x800000010029A270;
  v35[4] = 0xD000000000000089;
  v35[5] = 0x800000010029A290;
  v35[6] = 1;
  v35[7] = v36;
  v35[8] = v37;
  v35[9] = 1;
  v35[10] = 0x4024000000000000;
  v35[11] = 0;
  v35[12] = v34;
  v78 = v37;
  v38 = *(v35 + 2);
  v77[0] = *(v35 + 1);
  v77[1] = v38;
  v77[2] = *(v35 + 3);
  v39 = v34;

  v65(0xD00000000000001ALL, 0x800000010029A270, v77);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_selfValidateCloudKitTimeoutConfig] = v35;
  v40 = *&v2[v67];
  v41 = swift_allocObject();
  v42 = aTimeinterval_1[0];
  v43 = aTimeinterval_1[1];
  v41[2] = 0xD000000000000021;
  v41[3] = 0x800000010029A3E0;
  v41[4] = 0xD000000000000046;
  v41[5] = 0x800000010029A410;
  v41[6] = 1;
  v41[7] = v42;
  v41[8] = v43;
  v41[9] = 1;
  v41[10] = 0x403E000000000000;
  v41[11] = 0;
  v41[12] = v40;
  v76 = v43;
  v44 = *(v41 + 2);
  v75[0] = *(v41 + 1);
  v75[1] = v44;
  v75[2] = *(v41 + 3);
  v45 = v40;

  v65(0xD000000000000021, 0x800000010029A3E0, v75);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_resetEnvLogClientNetworkTimeoutConfig] = v41;
  v46 = *&v2[v67];
  sub_100095820(&unk_100383130, &unk_1002D60A0);
  v47 = swift_allocObject();
  swift_beginAccess();
  v48 = *aBool_1;
  v49 = qword_1003834A8;
  *(v47 + 16) = 0xD000000000000014;
  *(v47 + 24) = 0x800000010029A460;
  *(v47 + 32) = 0xD00000000000002DLL;
  *(v47 + 40) = 0x800000010029A480;
  *(v47 + 48) = 1;
  *(v47 + 56) = v48;
  *(v47 + 64) = v49;
  *(v47 + 72) = 1;
  *(v47 + 80) = 1;
  *(v47 + 88) = 0;
  *(v47 + 96) = v46;
  v74 = v49;
  v50 = *(v47 + 32);
  v73[0] = *(v47 + 16);
  v73[1] = v50;
  v73[2] = *(v47 + 48);
  v51 = v46;

  v65(0xD000000000000014, 0x800000010029A460, v73);

  *&v2[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_reportPeerFailuresConfig] = v47;
  v52 = *&v2[v67];
  v53 = swift_allocObject();
  v54 = *aBool_1;
  v55 = qword_1003834A8;
  *(v53 + 16) = 0xD000000000000012;
  *(v53 + 24) = 0x800000010029A4B0;
  *(v53 + 32) = 0xD00000000000002DLL;
  *(v53 + 40) = 0x800000010029A4D0;
  *(v53 + 48) = 1;
  *(v53 + 56) = v54;
  *(v53 + 64) = v55;
  *(v53 + 72) = 1;
  *(v53 + 80) = 1;
  *(v53 + 88) = 0;
  *(v53 + 96) = v52;
  v72 = v55;
  v56 = *(v53 + 32);
  v71[0] = *(v53 + 16);
  v71[1] = v56;
  v71[2] = *(v53 + 48);
  v57 = v52;

  v65(0xD000000000000012, 0x800000010029A4B0, v71);

  *&v66[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_fastWatchDogExit] = v53;
  v58 = *&v66[v67];
  v59 = swift_allocObject();
  v60 = aTimeinterval_1[0];
  v61 = aTimeinterval_1[1];
  v59[2] = 0xD000000000000021;
  v59[3] = 0x800000010029A500;
  v59[4] = 0xD00000000000004ELL;
  v59[5] = 0x800000010029A530;
  v59[6] = 1;
  v59[7] = v60;
  v59[8] = v61;
  v59[9] = 1;
  v59[10] = 0x4024000000000000;
  v59[11] = 0;
  v59[12] = v58;
  v70 = v61;
  v62 = *(v59 + 2);
  v69[0] = *(v59 + 1);
  v69[1] = v62;
  v69[2] = *(v59 + 3);
  v63 = v58;

  v65(0xD000000000000021, 0x800000010029A500, v69);

  *&v66[OBJC_IVAR____TtC13transparencyd26DewConfigurationObjectiveC_coalesceStaticKeyUpdateIntervalConfig] = v59;
  v68.receiver = v66;
  v68.super_class = type metadata accessor for DewConfigurationObjectiveC();
  return objc_msgSendSuper2(&v68, "init");
}

void sub_10000467C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100004728@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  v4 = &a2[a1[6]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for Conditions(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for ConfigurationValue(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_100004834()
{
  result = type metadata accessor for Conditions(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConditionDSID(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ConditionVersion(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1000048BC()
{
  sub_100005990();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100004940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000049D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100004B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 101)
    {
      if (result == 100)
      {
        sub_1001594A8(a1, v5);
      }

      else if (result == 101)
      {
        sub_100159684(a1, v5);
      }
    }

    else
    {
      switch(result)
      {
        case 'f':
          sub_100159878(a1, v5);
          break;
        case 'g':
          sub_100159A4C(a1, v5);
          break;
        case 'h':
          sub_100004C4C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_100004C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Strings(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = sub_100095820(&qword_100383F78, &qword_1002D6B18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = sub_100095820(&qword_100388368, &qword_1002DDD88);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1000AB050(a1, v14, &qword_100383F78, &qword_1002D6B18);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1000057C4(v14, &qword_100383F78, &qword_1002D6B18);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_10015E628(v14, v22, type metadata accessor for ConfigurationValue.OneOf_Value);
    sub_10015E628(v22, v20, type metadata accessor for ConfigurationValue.OneOf_Value);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1000057C4(v28, &qword_100388368, &qword_1002DDD88);
      v35 = v44;
      sub_10015E628(v20, v44, type metadata accessor for Strings);
      sub_10015E628(v35, v28, type metadata accessor for Strings);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_10015E6F8(v20, type metadata accessor for ConfigurationValue.OneOf_Value);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1000049D0(&qword_100387D10, type metadata accessor for Strings);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return sub_1000057C4(v28, &qword_100388368, &qword_1002DDD88);
  }

  sub_1000AB050(v28, v36, &qword_100388368, &qword_1002DDD88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1000057C4(v28, &qword_100388368, &qword_1002DDD88);
    return sub_1000057C4(v36, &qword_100388368, &qword_1002DDD88);
  }

  else
  {
    v39 = v43;
    sub_10015E628(v36, v43, type metadata accessor for Strings);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    sub_1000057C4(v28, &qword_100388368, &qword_1002DDD88);
    v40 = v42;
    sub_1000057C4(v42, &qword_100383F78, &qword_1002D6B18);
    sub_10015E628(v39, v40, type metadata accessor for Strings);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

double sub_100005220(char *a1, uint64_t a2, void *a3)
{
  v3 = *(**&a1[*a3] + 200);
  v4 = a1;
  v3(&v6);

  return v6;
}

uint64_t sub_10000528C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v17 = v4[15];
  if (*&v2[v17] == -1)
  {
    v29 = &v2[v4[14]];
    swift_beginAccess();
  }

  else
  {
    v36 = v16;
    v37 = &v36 - v14;
    v38 = v13;
    v39 = v15;
    v40 = a1;
    v18 = *&v2[v4[16]];
    v19 = OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides;
    v20 = *(**(v18 + OBJC_IVAR____TtC13transparencyd16DewConfiguration_dewOverrides) + 120);

    v22 = v20(v21);

    if (*&v2[v17] < v22)
    {
      *&v2[v17] = v22;
      v23 = *(v2 + 2);
      v24 = *(v2 + 3);
      v25 = *(**(v18 + v19) + 160);

      v25(v41, v23, v24);

      v26 = v42;
      if (v42)
      {
        v27 = v43;
        sub_1000A0E50(v41, v42);
        v28 = *(v27 + 16);
        *(&v45 + 1) = swift_getAssociatedTypeWitness();
        sub_1000AA7F4(&v44);
        v28(v26, v27);
        sub_10009A9E8(v41);
      }

      else
      {
        sub_1000057C4(v41, &qword_1003834D0, &qword_1002D6700);
        v44 = 0u;
        v45 = 0u;
      }

      sub_100095820(&qword_1003834D8, &qword_1002D6708);
      v30 = v39;
      v31 = swift_dynamicCast();
      v32 = *(v11 + 56);
      if (v31)
      {
        v32(v30, 0, 1, AssociatedTypeWitness);
        v33 = v37;
        (*(v11 + 32))(v37, v30, AssociatedTypeWitness);
        v34 = *(*v2 + 112);
        swift_beginAccess();
        (*(v11 + 24))(&v2[v34], v33, AssociatedTypeWitness);
        swift_endAccess();
        (*(v11 + 8))(v33, AssociatedTypeWitness);
      }

      else
      {
        v32(v30, 1, 1, AssociatedTypeWitness);
        (*(v36 + 8))(v30, v38);
      }
    }

    v29 = &v2[*(*v2 + 112)];
    swift_beginAccess();
    a1 = v40;
  }

  return (*(v11 + 16))(a1, v29, AssociatedTypeWitness);
}

uint64_t sub_100005714()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

unint64_t sub_10000574C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005C68(a1, a2, v6);
}

uint64_t sub_1000057C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100095820(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005824()
{
  sub_10000467C(319, &unk_100388120, type metadata accessor for Condition.OneOf_Condition, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100005908()
{
  result = type metadata accessor for Strings(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100005990()
{
  if (!qword_100387350)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100387350);
    }
  }
}

uint64_t sub_100005A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfigurationValue.OneOf_Value(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

double sub_100005B3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*(*v3 + 96))();
  if (*(v7 + 16) && (v8 = sub_10000574C(a1, a2), (v9 & 1) != 0))
  {
    sub_1000AA520(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_100005C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_100005F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000064D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained initializedComplete];
  [v5 fulfill];

  v6 = [WeakRetained deps];
  v7 = [v6 lockStateTracker];
  v8 = [v7 hasBeenUnlocked];

  if (v8)
  {
    v9 = [WeakRetained statusReporting];

    v10 = &off_10038B000;
    v11 = &off_10038B000;
    if (!v9)
    {
      v12 = [WeakRetained deps];
      v13 = [v12 eligibilitySupport];
      v181 = 0;
      v14 = [v13 eligibilityContainerPathAndReturnError:&v181];
      v15 = v181;

      if (!v14 || v15)
      {
        if (qword_10038BD00 != -1)
        {
          sub_100249E6C();
        }

        v24 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v183 = v15;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error initializing eligibility status reporter %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = [_TtC13transparencyd28KTEligibilityStatusReporting alloc];
        v167 = [WeakRetained deps];
        v17 = [v167 idsReporting];
        v18 = [WeakRetained deps];
        v19 = [v18 eligibilitySupport];
        v20 = [WeakRetained deps];
        [v20 idsConfigBag];
        v22 = v21 = v3;
        v180 = 0;
        v23 = [(KTEligibilityStatusReporting *)v16 initWithPath:v14 idsReporting:v17 eligibilitySupport:v19 configBag:v22 error:&v180];
        v15 = v180;
        [WeakRetained setStatusReporting:v23];

        v3 = v21;
        v10 = &off_10038B000;

        v11 = &off_10038B000;
      }
    }

    v25 = [WeakRetained deps];
    v26 = [v25 accountOperations];
    v179 = 0;
    v27 = [v26 primaryAccount:&v179];
    v28 = v179;

    if (v10[416] != -1)
    {
      sub_100249E94();
    }

    v29 = v11[417];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (v27)
      {
        v30 = @"yes";
      }

      else
      {
        v30 = @"no";
      }

      v31 = v29;
      v32 = [v27 aa_personID];
      v33 = [v27 aa_altDSID];
      *buf = 138544130;
      *v183 = v30;
      *&v183[8] = 2112;
      *&v183[10] = v32;
      v184 = 2112;
      v185 = v33;
      v186 = 2112;
      v187 = v28;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "TransparencyAccount Primary account found %{public}@ %@ %@: %@", buf, 0x2Au);
    }

    v34 = [WeakRetained deps];
    v35 = v34;
    if (!v27)
    {
      v49 = [v34 accountStateHolder];
      v50 = [v49 loadAccountMetadata];

      v51 = [WeakRetained deps];
      v52 = [v51 logger];
      [v52 logResultForEvent:@"KTPrimaryAccount" hardFailure:1 result:v28];

      if (+[TransparencyAccount isAccountsErrorRetryable:](TransparencyAccount, "isAccountsErrorRetryable:", v28) || [v28 code] == 10002 && (objc_msgSend(v28, "domain"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isEqual:", ACErrorDomain), v58, v59))
      {
        if (v10[416] != -1)
        {
          sub_10024A0C4();
        }

        v53 = v11[417];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to get primary account due to XPC issue; triggering retry", buf, 2u);
        }

        if (v50 && ([v50 altDSID], v54 = objc_claimAutoreleasedReturnValue(), v54, v54))
        {
          v55 = 3;
        }

        else
        {
          v55 = 5;
        }

        v82 = [WeakRetained deps];
        v83 = [v82 stateMonitor];
        [v83 setAccountStatus:v55];

        [v3 setNextState:@"NoAccount"];
        v84 = [WeakRetained retryGetPrimaryAccount];
        [v84 trigger];
      }

      else
      {
        v60 = [WeakRetained deps];
        v61 = [v60 stateMonitor];
        [v61 setAccountStatus:5];

        if (v50 && ([v50 altDSID], v62 = objc_claimAutoreleasedReturnValue(), v62, v62))
        {
          if (v10[416] != -1)
          {
            sub_10024A074();
          }

          v63 = v11[417];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "User seems to have logged out, cleaning state", buf, 2u);
          }

          v64 = off_10032D0E0;
        }

        else
        {
          if (v10[416] != -1)
          {
            sub_10024A09C();
          }

          v85 = v11[417];
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Still no account", buf, 2u);
          }

          v64 = off_10032D010;
        }

        [v3 setNextState:*v64];
      }

      goto LABEL_116;
    }

    v36 = v10;
    v37 = [v34 accountOperations];
    v38 = [WeakRetained deps];
    v39 = [v38 idsAccountTracker];
    v178 = v28;
    v40 = [v37 ktAccountStatus:v27 idsAccountsTracker:v39 error:&v178];
    v168 = v178;

    v41 = [WeakRetained deps];
    v42 = [v41 stateMonitor];
    v43 = [WeakRetained deps];
    v44 = [v43 idsAccountTracker];
    [v42 setIDSAccountStatus:{objc_msgSend(v44, "idsAccountType")}];

    if ((v40 - 1) < 2)
    {
      if (v36[416] != -1)
      {
        sub_100249EBC();
      }

      v45 = qword_10038BD08;
      v46 = v168;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        *v183 = v40;
        *&v183[4] = 2112;
        *&v183[6] = v168;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "TransparencyAccount no account: %d: %@", buf, 0x12u);
      }

      v47 = [WeakRetained deps];
      v48 = [v47 stateMonitor];
      [v48 setAccountStatus:5];

      [v3 setNextState:@"NoAccount"];
      goto LABEL_115;
    }

    if (v40 == 3)
    {
      v56 = [WeakRetained deps];
      v57 = [v56 stateMonitor];
      [v57 setAccountStatus:5];

      [WeakRetained newServerOptInFetch:@"noCloudKitAccount"];
      [v3 setNextState:@"NoAccount"];
      v28 = v168;
LABEL_116:

      goto LABEL_117;
    }

    v65 = [v27 aa_altDSID];
    if (!v65)
    {
      if (v36[416] != -1)
      {
        sub_10024A04C();
      }

      v126 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "TransparencyAccount no altDSID", buf, 2u);
      }

      v127 = [WeakRetained deps];
      v128 = [v127 stateMonitor];
      [v128 setAccountStatus:5];

      [v3 setNextState:@"NoAccount"];
      v46 = v168;
      goto LABEL_114;
    }

    v66 = [WeakRetained deps];
    v67 = [v66 settings];
    v68 = [v67 getEnvironment];

    if (v36[416] != -1)
    {
      sub_100249EE4();
    }

    v69 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v183 = v68;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Environment at start time: %d", buf, 8u);
    }

    v70 = [WeakRetained deps];
    v71 = [v70 settings];
    v72 = [v71 systemFailureFeatureEnabled];

    v73 = [WeakRetained deps];
    v74 = [v73 accountStateHolder];
    v75 = [v74 loadAccountMetadata];

    if (v75 && ([v75 altDSID], v76 = objc_claimAutoreleasedReturnValue(), v76, v76))
    {
      v77 = [v75 altDSID];
      v78 = [v77 isEqual:v65];

      if ((v78 & 1) == 0)
      {
        if (v36[416] != -1)
        {
          sub_100249F0C();
        }

        v138 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "Account have switch since last load, start over", buf, 2u);
        }

        v139 = off_10032D0E0;
LABEL_105:
        [v3 setNextState:*v139];
LABEL_112:
        v46 = v168;
LABEL_113:

LABEL_114:
LABEL_115:
        v28 = v46;
        goto LABEL_116;
      }

      if ([v75 environment] != v68)
      {
        if (v36[416] != -1)
        {
          sub_100249F34();
        }

        v143 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "Environment switched since last load, starting over", buf, 2u);
        }

        [v3 setNextState:@"EnvironmentSwitch"];
        v134 = [WeakRetained deps];
        v135 = [v134 accountStateHolder];
        v136 = v135;
        v173[0] = _NSConcreteStackBlock;
        v173[1] = 3221225472;
        v173[2] = sub_1000592B8;
        v173[3] = &unk_10031B298;
        v173[4] = v68;
        v137 = v173;
        goto LABEL_111;
      }

      if (v72 != [v75 hasBeenEnabled])
      {
        if (v36[416] != -1)
        {
          sub_100249F5C();
        }

        v79 = qword_10038BD08;
        if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Feature state changed", buf, 2u);
        }

        v80 = [WeakRetained deps];
        v81 = [v80 accountStateHolder];
        v171[0] = _NSConcreteStackBlock;
        v171[1] = 3221225472;
        v171[2] = sub_100059340;
        v171[3] = &unk_10031B2D8;
        v172 = v72;
        [v81 persistAccountChanges:v171];

        if ((v72 & 1) == 0)
        {
          [WeakRetained clearAllFollowups:@"clear all CFU since feature is now off"];
        }
      }
    }

    else
    {
      v86 = [WeakRetained deps];
      v87 = [v86 accountStateHolder];
      v174[0] = _NSConcreteStackBlock;
      v174[1] = 3221225472;
      v174[2] = sub_1000591D4;
      v174[3] = &unk_10031B238;
      v177 = v72;
      v175 = v65;
      v176 = v68;
      [v87 persistAccountChanges:v174];
    }

    v88 = [WeakRetained deps];
    v89 = [v88 logClient];
    v90 = [v89 currentEnvironment];

    if (v90 == v68)
    {
      [WeakRetained addEvent:@"AccountPresent"];
      v91 = [WeakRetained specificUser];

      v92 = v36;
      if (!v91)
      {
        v93 = [[KTActualSpecificUser alloc] initWithACAccount:v27];
        [WeakRetained setSpecificUser:v93];

        v94 = [WeakRetained deps];
        v95 = [objc_msgSend(v94 "pcsOperationsClass")];
        v96 = [WeakRetained specificUser];
        v97 = [v95 initWithSpecificUser:v96];
        [WeakRetained setPcsOperation:v97];

        v98 = [_TtC13transparencyd8KTCKZone alloc];
        v99 = [WeakRetained deps];
        v100 = [v99 dataStore];
        v101 = [v100 controller];
        [v101 backgroundContext];
        v102 = v165 = v3;
        v103 = [(KTCKZone *)v98 initWithContext:v102];
        [WeakRetained setZoneHandler:v103];

        v104 = [KTZoneFetcher alloc];
        v105 = [WeakRetained deps];
        v106 = [WeakRetained zoneHandler];
        v107 = [WeakRetained operationQueue];
        v108 = [WeakRetained ckFetchScheduler];
        v109 = [(KTZoneFetcher *)v104 initWithDeps:v105 zoneHandler:v106 operationQueue:v107 ckFetchScheduler:v108];
        [WeakRetained setZoneFetcher:v109];

        v3 = v165;
        v92 = v36;

        [WeakRetained setRepair:0];
        [WeakRetained newServerOptInFetch:@"accountPresent"];
      }

      v110 = [WeakRetained deps];
      v111 = [v110 octagonOperations];
      v112 = [v111 getCachedOctagonStatus:1.0];

      if (v112)
      {
        [WeakRetained storeEligiblilitySuccess:@"octagon"];
        [WeakRetained addEvent:@"OctagonReady"];
        v113 = [WeakRetained deps];
        v114 = [v113 octagonOperations];
        v169 = 0;
        v115 = [v114 ckksViewReady:@"Manatee" error:&v169];
        v116 = v169;

        if (v115)
        {
          v164 = v116;
          [WeakRetained addEvent:@"CKKSManateeReady"];
          [WeakRetained storeEligiblilitySuccess:@"ckks"];
          v163 = [WeakRetained accountFirstSeenDate];
          if (!v163)
          {
            v117 = [WeakRetained deps];
            v118 = [v117 logger];
            v119 = +[NSDate date];
            [v118 setDateProperty:v119 forKey:off_100381D10];
          }

          if (v36[416] != -1)
          {
            sub_100249FFC();
          }

          v120 = qword_10038BD08;
          if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "initializingOperation: Checking for a cached BAA certificate and triggering a network fetch if cert is missing or expired.", buf, 2u);
          }

          v121 = [WeakRetained deps];
          v122 = [v121 certFetcher];
          [v122 getDeviceCertWithForcedFetch:0 completionHandler:&stru_10031B398];

          v123 = [WeakRetained repair];
          if (v123 && (v124 = v123, v125 = _os_feature_enabled_impl(), v124, v125))
          {
            [v3 setNextState:@"RepairCKV"];
          }

          else
          {
            v166 = v3;
            v151 = [WeakRetained deps];
            v152 = [v151 rebootTracker];
            v153 = [v152 getLastRebootTime];

            v154 = [WeakRetained deps];
            v155 = [v154 smDataStore];
            v156 = [v155 getSettingsDate:off_100381D20];

            if (!v156 || v153 != v156 && ([v153 earlierDate:v156], v157 = objc_claimAutoreleasedReturnValue(), v157, v157 == v156))
            {
              if (v36[416] != -1)
              {
                sub_10024A024();
              }

              v158 = qword_10038BD08;
              if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Device has rebooted since last initializing, fetching CK records", buf, 2u);
              }

              v159 = [[KTPendingFlag alloc] initWithFlag:@"CloudKitReboot" conditions:2 delayInSeconds:0.0];
              v160 = [WeakRetained stateMachine];
              [v160 handlePendingFlag:v159];

              v161 = [WeakRetained deps];
              v162 = [v161 smDataStore];
              [v162 setSettingsDate:off_100381D20 date:v153];

              v116 = v164;
            }

            [v166 setNextState:@"KTStateFixups"];

            v3 = v166;
          }

          v46 = v168;
        }

        else
        {
          if (v36[416] != -1)
          {
            sub_100249FD4();
          }

          v144 = qword_10038BD08;
          if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v183 = v116;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "TransparencyAccount waiting for Manatee view: %@", buf, 0xCu);
          }

          v145 = [WeakRetained deps];
          v146 = [v145 octagonOperations];
          v147 = [v146 ckksGetKnownBadState:@"Manatee"];

          v46 = v168;
          if (v147 <= 4)
          {
            v148 = qword_1002D4718[v147];
            v149 = [WeakRetained deps];
            v150 = [v149 stateMonitor];
            [v150 setAccountStatus:v148];
          }

          [v3 setNextState:@"WaitForCKKS"];
        }

        goto LABEL_113;
      }

      if (v92[416] != -1)
      {
        sub_100249FAC();
      }

      v140 = qword_10038BD08;
      if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "TransparencyAccount waiting for Octagon", buf, 2u);
      }

      v141 = [WeakRetained deps];
      v142 = [v141 stateMonitor];
      [v142 setAccountStatus:2];

      [WeakRetained triggerCheckCKKSOctagonEligibilityWithCompletion:&stru_10031B338];
      v139 = off_10032D068;
      goto LABEL_105;
    }

    if (v36[416] != -1)
    {
      sub_100249F84();
    }

    v129 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v130 = v129;
      v131 = [WeakRetained deps];
      v132 = [v131 logClient];
      v133 = [v132 currentEnvironment];
      *buf = 134218240;
      *v183 = v133;
      *&v183[8] = 2048;
      *&v183[10] = v68;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "Environment for logClient (%lu) != current environment (%lu). Clearing state & reconfiguring", buf, 0x16u);
    }

    [v3 setNextState:@"EnvironmentSwitch"];
    v134 = [WeakRetained deps];
    v135 = [v134 accountStateHolder];
    v136 = v135;
    v170[0] = _NSConcreteStackBlock;
    v170[1] = 3221225472;
    v170[2] = sub_1000593C8;
    v170[3] = &unk_10031B298;
    v170[4] = v68;
    v137 = v170;
LABEL_111:
    [v135 persistAccountChanges:v137];

    goto LABEL_112;
  }

  [v3 setNextState:@"WaitForUnlock"];
LABEL_117:
}

uint64_t sub_100007A3C()
{
  if (qword_10039C590 != -1)
  {
    sub_100007A28();
  }

  dispatch_sync(qword_10039C598, &stru_100324BD0);
  return dword_10039C580;
}

uint64_t sub_100007A84()
{
  sub_100007B64();
  sub_100007DD4(__stack_chk_guard);
  if (sub_100007A3C())
  {
    if (v1)
    {
      sub_1000080A0();
      sub_100008060();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_10000803C();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_10016261C();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 889, "", "");
  }

  return v0;
}

uint64_t sub_100007B70()
{

  return ccder_sizeof();
}

void sub_100007BB8(id a1)
{
  if (!dword_10039C580)
  {
    dword_10039C580 = sub_100007C10("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_100007C10(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

void sub_100007DF8()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 containerURLForSecurityApplicationGroupIdentifier:v1];

  if (v2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_1000BCE18();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }
}

void sub_1000080A0()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t sub_1000080F8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100008300(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v94 = a4;
  v95 = a3;
  v96 = a2;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v97 = *(v12 - 8);
  v13 = *(v97 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v89 - v17;
  swift_defaultActor_initialize();
  v91 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_logger;
  Logger.init(subsystem:category:)();
  v100 = 0xD000000000000012;
  v101 = 0x800000010029CE40;
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_100008D30();
  v93 = a1;
  v19 = v97;
  URL.appending<A>(path:directoryHint:)();
  (*(v8 + 8))(v11, v7);
  type metadata accessor for KTEligibilityDB();
  (*(v19 + 16))(v16, v18, v12);
  v20 = v92;
  v21 = KTEligibilityDB.__allocating_init(path:)(v16);
  if (v20)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v70 = *(v19 + 8);
    v70(v93, v12);
    v70(v18, v12);
    v71 = type metadata accessor for Logger();
    v72 = v4;
    (*(*(v71 - 8) + 8))(v4 + v91, v71);
    type metadata accessor for KTEligibilityStatusReporting(0);
    swift_defaultActor_destroy();
    v73 = *((swift_isaMask & *v4) + 0x30);
    v74 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v92 = v18;
    v22 = OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_db;
    *(v4 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_db) = v21;
    type metadata accessor for EligibilityOverrides();
    *(v4 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_eligibilityOverrides) = KTUpdateCloudStorageOperation.__allocating_init()();
    v23 = v95;
    *(v4 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_idsEventReportingManager) = v96;
    *(v4 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_support) = v23;
    v24 = v94;
    *(v4 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_configBag) = v94;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = [swift_unknownObjectRetain() eligibilityReportInterval];
    v26 = [v25 integerValue];

    if (v26 >= 999)
    {
      v28 = v24;
    }

    else
    {
      swift_beginAccess();
      v27 = *(v5 + v22);

      v28 = v24;
      v90 = sub_1000BA1B4();
      v38 = v37;

      if (v38)
      {
        v39 = sub_100132810(v90, v38);
        if (v40)
        {
          v26 = 30;
        }

        else
        {
          v26 = v39;
        }
      }

      else if (v26 < 0)
      {
        v26 = 30;
      }
    }

    *(v5 + OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_timeBetweenReportsDays) = v26;
    swift_beginAccess();
    v29 = *(v5 + v22);

    v30 = sub_1000BA1B4();
    v90 = v5;
    v31 = v30;
    v33 = v32;

    if (v33)
    {
      v34 = sub_100132810(v31, v33);
      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = v34;
      }
    }

    else
    {
      v41 = [v28 eligibilitySampleInterval];
      v42 = [v41 integerValue];

      if ((v42 & 0x8000000000000000) != 0)
      {
        v36 = 1;
      }

      else
      {
        v43 = [v28 eligibilitySampleInterval];
        v36 = [v43 integerValue];
      }
    }

    v44 = v90;
    *&v90[OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_samplesPerDay] = v36;
    v45 = *&v44[v22];

    v46 = sub_1000BA1B4();
    v48 = v47;

    if (v48)
    {
      v49 = sub_100132810(v46, v48);
      if (v50)
      {
        v51 = 60;
      }

      else
      {
        v51 = v49;
      }
    }

    else
    {
      v52 = v94;
      v53 = [v94 eligibilitySampleNumber];
      v54 = [v53 integerValue];

      if ((v54 & 0x8000000000000000) != 0)
      {
        v51 = 60;
      }

      else
      {
        v55 = [v52 eligibilitySampleNumber];
        v51 = [v55 integerValue];
      }
    }

    *&v44[OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_numberOfSamples] = v51;
    v56 = *&v44[v22];

    v57 = sub_1000BA1B4();
    v59 = v58;
    v90 = v57;

    if (v59)
    {
      v98 = 0.0;
      v60 = sub_1001431C0(v90, v59);

      if (v60)
      {
        v61 = v98;
      }

      else
      {
        v61 = 100.0;
      }
    }

    else
    {
      v62 = v94;
      v63 = [v94 eligibilityPresentRate];
      [v63 doubleValue];
      v65 = v64;

      if (v65 >= 0.0)
      {
        v66 = [v62 eligibilityPresentRate];
        [v66 doubleValue];
        v61 = v67;
      }

      else
      {
        v61 = 100.0;
      }
    }

    *&v44[OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_presentRate] = v61;
    v68 = *&v44[v22];

    v69 = sub_1000BA1B4();
    v77 = v76;
    v78 = v69;

    if (v77)
    {
      v98 = 0.0;
      v79 = sub_1001431C0(v78, v77);

      v80 = *(v97 + 8);
      v80(v92, v12);
      if (v79)
      {
        v81 = v98;
      }

      else
      {
        v81 = 50.0;
      }
    }

    else
    {
      v82 = v94;
      v83 = [v94 eligibilityPeerPresentRate];
      [v83 doubleValue];
      v85 = v84;

      if (v85 >= 0.0)
      {
        v86 = [v82 eligibilityPeerPresentRate];
        [v86 doubleValue];
        v81 = v87;
      }

      else
      {
        v81 = 50.0;
      }

      v80 = *(v97 + 8);
      v80(v92, v12);
    }

    *&v44[OBJC_IVAR____TtC13transparencyd28KTEligibilityStatusReporting_peerPresentRate] = v81;
    v88 = type metadata accessor for KTEligibilityStatusReporting(0);
    v99.receiver = v44;
    v99.super_class = v88;
    v72 = objc_msgSendSuper2(&v99, "init");
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v80(v93, v12);
  }

  return v72;
}

unint64_t sub_100008D30()
{
  result = qword_1003834C0;
  if (!qword_1003834C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003834C0);
  }

  return result;
}

uint64_t type metadata accessor for KTEligibilityDB()
{
  result = qword_100390130;
  if (!qword_100390130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008DD0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t KTEligibilityDB.__allocating_init(path:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  KTEligibilityDB.init(path:)(a1);
  return v5;
}

char *KTEligibilityDB.init(path:)(uint64_t a1)
{
  v2 = v1;
  v45[1] = *v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = v51[8];
  __chkstk_darwin(v4);
  v50 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v7 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v49 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v55 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Logger();
  v57 = *(v46 - 8);
  v16 = v57[8];
  __chkstk_darwin(v46);
  v56 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v45 - v20;
  *(v2 + 2) = 1;
  v22 = OBJC_IVAR____TtC13transparencyd15KTEligibilityDB_logger;
  Logger.init(subsystem:category:)();
  type metadata accessor for KTSwiftDB();
  v23 = *(v13 + 16);
  v23(v21, a1, v12);
  (*(v13 + 56))(v21, 0, 1, v12);
  v24 = KTSwiftDB.__allocating_init(url:)(v21);
  if (v24)
  {
    v57 = v12;
    v54 = a1;
    *(v2 + 3) = v24;
    sub_1000BCE6C();

    static DispatchQoS.unspecified.getter();
    v58 = &_swiftEmptyArrayStorage;
    sub_1000BE710(&unk_100384BF0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
    sub_100095820(&qword_100384520, &qword_1002D74D0);
    sub_1000BCEB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v51[13])(v50, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v52);
    *(v2 + 4) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v25 = v53;
    OS_dispatch_queue.sync<A>(execute:)();
    (*(v13 + 8))(v54, v57);
    if (v25)
    {
    }
  }

  else
  {
    v26 = v57[2];
    v53 = v22;
    v27 = v46;
    v26(v56, &v2[v22], v46);
    v28 = static os_log_type_t.error.getter();
    v23(v55, a1, v12);
    v29 = Logger.logObject.getter();
    LODWORD(v52) = v28;
    v30 = v12;
    if (os_log_type_enabled(v29, v28))
    {
      v31 = swift_slowAlloc();
      v54 = a1;
      v32 = v31;
      v51 = swift_slowAlloc();
      v58 = v51;
      *v32 = 136315138;
      sub_1000BE710(&qword_100384510, &type metadata accessor for URL);
      v33 = v29;
      v34 = v55;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v55 = *(v13 + 8);
      (v55)(v34, v30);
      v38 = sub_1000999E4(v35, v37, &v58);
      v27 = v46;

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v33, v52, "No database at path %s", v32, 0xCu);
      sub_10009A9E8(v51);

      a1 = v54;
    }

    else
    {

      v39 = v55;
      v55 = *(v13 + 8);
      (v55)(v39, v12);
    }

    v40 = v57[1];
    v40(v56, v27);
    sub_1000BCE18();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    (v55)(a1, v30);
    v40(&v2[v53], v27);
    v42 = *(*v2 + 48);
    v43 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t KTSwiftDB.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  *(v2 + 16) = 0;
  sub_100009840(a1, &v16 - v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v13 = [objc_allocWithZone(KTSDBObjc) initDatabaseWithURL:v11];

  sub_1000057C4(a1, &qword_100382DC0, &unk_1002D5BC0);
  if (v13)
  {
    swift_beginAccess();
    v14 = *(v2 + 16);
    *(v2 + 16) = v13;
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_100009840(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000098B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100009964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100009A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100009AC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100009B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100009C2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100009CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100009D90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100009E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100009EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100009F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10000A0C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_1003825A8, &qword_1002D4888);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000A200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A2AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A360()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);
  sub_1000956CC(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000A454()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A490()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A4CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A504()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000A564()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000A5BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A5F4()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000A644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A67C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A6B4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A6F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A73C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000A7A8()
{
  v1 = *(v0 + 24);

  sub_1000956CC(*(v0 + 32), *(v0 + 40));
  sub_1000956CC(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000A800()
{
  sub_1000956CC(*(v0 + 32), *(v0 + 40));
  sub_1000956CC(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000A858()
{
  sub_1000956CC(*(v0 + 24), *(v0 + 32));
  sub_1000956CC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A8A0()
{
  sub_1000956CC(*(v0 + 24), *(v0 + 32));
  sub_1000956CC(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000A900()
{
  v1 = *(v0 + 24);

  sub_1000956CC(*(v0 + 32), *(v0 + 40));
  sub_1000956CC(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A954()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A98C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A9D4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AA1C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10000AB38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_10000ACA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ACDC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AD24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AD64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ADB4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AE04()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000AE68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10000AEB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000AF00()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AF38()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000AF88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AFD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B010()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B048()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B090()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B18C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000B240()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B2B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B2E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000B300()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B338()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B378()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B3D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B410()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B448()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B49C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B4E4()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B548()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B58C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B5D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B608()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B650()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B6EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B724()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B760()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B7B0()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000B874()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B8AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B900()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B938()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B97C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B9C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000BAAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000BBFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000BCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000BD58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000BE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000BF00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100095820(&qword_100385890, &unk_1002D81E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10000C010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000C0BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000C20C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000C39C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10000C500(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100386238, &unk_1002D9560);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10000C6E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100386238, &unk_1002D9560);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000C820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000C8D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000CAB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 80);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 48);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_100095820(&qword_100386240, &qword_1002D9570);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 52);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_10000CD14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 80) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100386240, &qword_1002D9570);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000CE40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10000CF70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100385898, &unk_1002DB9A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000D160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000D214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100386258, &qword_1002D9588);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10000D350(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100095820(&qword_100386258, &qword_1002D9588);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10000D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10000D59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000D734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000D7E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000D884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000D940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000DA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000DAEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000DB90()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DBD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DC14()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DC60()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DCB0()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DCF8()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DE40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DE78()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DEC0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_10000DF00()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100095820(&qword_1003878D0, &unk_1002DCC30);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000DF30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DF68()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DFA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E064()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E09C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10000E1C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_10000E290(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100095820(&qword_100387C40, &unk_1002DCFF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_10000E414(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100095820(&qword_100387C38, &qword_1002DCFE8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100095820(&qword_100387C40, &unk_1002DCFF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10000E598(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100095820(&qword_100387C48, &qword_1002DD000);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_10000E6C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_100095820(&qword_100387C48, &qword_1002DD000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000E7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10000E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10000E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000E994(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_10000F1B0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10000F1C8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_10000F650(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    if (qword_10038BB80 != -1)
    {
      sub_100246BE4();
    }

    v16 = qword_10038BB88;
    if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_ERROR))
    {
      v21 = 141558530;
      v22 = 1752392040;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "verification failed for %{mask.hash}@: %@", &v21, 0x20u);
    }

    v17 = [*(a1 + 32) verifier];
    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) data];
    LOBYTE(v18) = [v17 failSMTsIfOverMMD:v18 skipOptInOut:0 proof:v19 underlyingError:v15 errorCode:-306 analyticsData:*(a1 + 56)];

    if ((v18 & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    v20 = [*(a1 + 32) verifier];
    *(*(*(a1 + 64) + 8) + 24) = [v20 verifyKTSMTsMerged:*(a1 + 40) mapLeaf:v13 analyticsData:*(a1 + 56)];
  }
}

void sub_10000F828(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000FAC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = 0;
  v5 = [v3 validatePendingSMTs:a2 singleQuery:v4 error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    if (qword_10038BB80 != -1)
    {
      sub_100246C48();
    }

    v7 = qword_10038BB88;
    if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 rpcId];
      *buf = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to validate pending SMTs with rpcId %{public}@: %@", buf, 0x16u);
    }
  }
}

void sub_10000FBE0(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000FC24(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000FC68(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000FD34(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000FED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 rpcType])
  {
    if ([v3 rpcType] == 1)
    {
      [*(a1 + 32) validatePendingSMTsForBatchQuery:v3];
    }

    else
    {
      if (qword_10038BB80 != -1)
      {
        sub_100246CAC();
      }

      v4 = qword_10038BB88;
      if (os_log_type_enabled(qword_10038BB88, OS_LOG_TYPE_ERROR))
      {
        v5 = v4;
        v6 = 134217984;
        v7 = [v3 rpcType];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "unknown server rpc type: %lld", &v6, 0xCu);
      }
    }
  }

  else
  {
    [*(a1 + 32) validatePendingSMTsForSingleQuery:v3];
  }
}

void sub_10000FFE4(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010028(id a1)
{
  qword_10038BB88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010610(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010654(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010698(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000106DC(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010720(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010764(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000107A8(uint64_t a1)
{
  v2 = [*(a1 + 32) errors];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) errors];
    v5 = [v4 allKeys];

    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [NSString stringWithFormat:@"Consistency failed for applications: %@", v6];

    v50[0] = NSMultipleUnderlyingErrorsKey;
    v8 = [*(a1 + 32) errors];
    v9 = [v8 allValues];
    v50[1] = NSLocalizedDescriptionKey;
    v51[0] = v9;
    v51[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];

    v37 = v10;
    v11 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-382 userInfo:v10];
    v39 = v5;
    v36 = v11;
    if (([v5 containsObject:kKTApplicationIdentifierIDS] & 1) != 0 || objc_msgSend(v5, "containsObject:", kKTApplicationIdentifierTLT))
    {
      [*(a1 + 32) setError:v11];
    }

    else
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246D9C();
      }

      v31 = qword_10038BB98;
      if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        v33 = v31;
        v34 = [v32 errors];
        v35 = [v34 allValues];
        *buf = 138543618;
        v47 = v7;
        v48 = 2112;
        v49 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@: %@", buf, 0x16u);
      }
    }

    v38 = v7;
    v12 = +[NSMutableString string];
    v13 = +[NSMutableString string];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [*(a1 + 32) failedRevs];
    v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = [*(a1 + 32) serverHints];
          v20 = [v19 objectForKeyedSubscript:v18];
          [v12 appendFormat:@"%@/%@, ", v18, v20];

          v21 = [*(a1 + 32) failedRevs];
          v22 = [v21 objectForKeyedSubscript:v18];
          v23 = [v22 componentsJoinedByString:{@", "}];
          [v13 appendFormat:@"%@:%@", v18, v23];
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v15);
    }

    v24 = [*(a1 + 32) backgroundOpId];
    v25 = [*(a1 + 32) deps];
    v26 = [v25 smDataStore];
    v27 = [*(a1 + 32) name];
    [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:v24 smDataStore:v26 failureDataString:v13 type:v27 serverHint:v12 failure:v36];
  }

  if (qword_10038BB90 != -1)
  {
    sub_100246DC4();
  }

  v28 = qword_10038BB98;
  if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "VerifyConsistency: end", buf, 2u);
  }

  v29 = [*(a1 + 32) operationQueue];
  v30 = [*(a1 + 32) finishedOp];
  [v29 addOperation:v30];
}

void sub_100010C90(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010CD4(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000112E8(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001132C(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100011370(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000113B4(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100011784(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1000117C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000117E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 deps];
  v6 = [v5 dataStore];
  v7 = [v6 createDownloadRecord:3 moc:v4 application:*(a1 + 40)];

  [v7 setStartSLHRevision:{objc_msgSend(*(a1 + 48), "longLongValue")}];
  v8 = *(a1 + 56);
  v23 = 0;
  v9 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v23];
  v10 = v23;
  [v7 setRevisions:v9];

  if (qword_10038BB90 != -1)
  {
    sub_100246EA0();
  }

  v11 = qword_10038BB98;
  if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v14 = v11;
    v15 = [v7 downloadId];
    *buf = 138543874;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fetching consistency proof for %{public}@ %{public}@ with downloadId %{public}@", buf, 0x20u);
  }

  v16 = [v7 downloadId];
  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = [*(a1 + 32) deps];
  v20 = [v19 dataStore];
  v22 = v10;
  [v20 persistWithError:&v22];
  v21 = v22;
}

void sub_1000119F4(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100011A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained deps];
  v9 = [v8 publicKeyStore];
  v10 = [v9 applicationPublicKeyStore:*(a1 + 32)];

  if ([*(a1 + 32) isEqual:kKTApplicationIdentifierTLT])
  {
    v11 = [WeakRetained deps];
    v12 = [v11 publicKeyStore];
    v13 = [v12 tltKeyStore];

    v10 = v13;
  }

  v14 = [KTContextVerifier alloc];
  v15 = [WeakRetained deps];
  v16 = [v15 dataStore];
  v57 = [(KTContextVerifier *)v14 initWithApplicationKeyStore:v10 dataStore:v16 applicationID:*(a1 + 32)];

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_1000117C8;
  v72 = sub_1000117D8;
  v73 = 0;
  if (!v5 || v6)
  {
    if (qword_10038BB90 != -1)
    {
      sub_100246EC8();
    }

    v26 = qword_10038BB98;
    if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v75 = v27;
      v76 = 2112;
      v77 = v6;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to fetch consistency proof downloadId %{public}@: %@", buf, 0x16u);
    }

    if (!v6)
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-145 description:@"empty consistency proof response"];
    }

    v28 = [WeakRetained deps];
    v29 = [v28 dataStore];
    v30 = *(*(*(a1 + 48) + 8) + 40);
    v31 = [WeakRetained deps];
    v32 = [v31 logClient];
    [v29 failHeadDownload:v30 failure:v6 logClient:v32];

    v33 = v69;
    v34 = v6;
    v23 = v33[5];
    v33[5] = v34;
  }

  else
  {
    if ([v5 status] == 1)
    {
      v17 = [WeakRetained deps];
      v18 = [v17 dataStore];
      v19 = *(*(*(a1 + 48) + 8) + 40);
      v67 = 0;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100012200;
      v59[3] = &unk_100317170;
      v60 = v57;
      v20 = v5;
      v21 = *(a1 + 48);
      v65 = &v68;
      v66 = v21;
      v61 = v20;
      v62 = WeakRetained;
      v63 = *(a1 + 32);
      v64 = *(a1 + 40);
      v22 = [v18 performAndWaitForDownloadId:v19 error:&v67 block:v59];
      v23 = v67;

      if ((v22 & 1) == 0)
      {
        if (qword_10038BB90 != -1)
        {
          sub_100246F18();
        }

        v24 = qword_10038BB98;
        if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
        {
          v25 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 138543618;
          v75 = v25;
          v76 = 2112;
          v77 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to find downloadId %{public}@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (qword_10038BB90 != -1)
      {
        sub_100246EF0();
      }

      v35 = qword_10038BB98;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*(*(a1 + 48) + 8) + 40);
        v37 = [v5 status];
        *buf = 138543618;
        v75 = v36;
        v76 = 1024;
        LODWORD(v77) = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "server failed to produce consistency proof downloadId %{public}@: %d", buf, 0x12u);
      }

      v38 = [v5 status];
      v39 = [v5 status];
      v40 = [TransparencyError errorWithDomain:kTransparencyErrorServer code:v38 description:@"server failed to produce consistency proof: %d", v39];
      v41 = v69[5];
      v69[5] = v40;

      v23 = [WeakRetained deps];
      v42 = [v23 dataStore];
      v43 = *(*(*(a1 + 48) + 8) + 40);
      v44 = v69[5];
      v45 = [WeakRetained deps];
      v46 = [v45 logClient];
      [v42 failHeadDownload:v43 failure:v44 logClient:v46];
    }

    v34 = 0;
  }

  v47 = (v69 + 5);
  obj = v69[5];
  v48 = [(KTContextVerifier *)v57 failExpiredSTHsForType:2 error:&obj];
  objc_storeStrong(v47, obj);
  if (v48 && [v48 count])
  {
    if (v5)
    {
      v49 = [v5 metadata];
      v50 = [v49 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
    }

    else
    {
      v50 = 0;
    }

    v51 = [WeakRetained errors];
    objc_sync_enter(v51);
    v52 = [WeakRetained serverHints];
    [v52 setObject:v50 forKeyedSubscript:*(a1 + 32)];

    v53 = v69[5];
    v54 = [WeakRetained errors];
    [v54 setObject:v53 forKeyedSubscript:*(a1 + 32)];

    v55 = [WeakRetained failedRevs];
    [v55 setObject:v48 forKeyedSubscript:*(a1 + 32)];

    objc_sync_exit(v51);
  }

  v56 = [WeakRetained fetchGroup];
  dispatch_group_leave(v56);

  _Block_object_dispose(&v68, 8);
}

void sub_100012138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012178(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000121BC(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012200(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [v3 startSLHRevision];

  v8 = *(*(a1 + 72) + 8);
  obj = *(v8 + 40);
  v9 = [v5 verifyConsistencyProofResponse:v6 startRevision:v7 receivedRevisions:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    v10 = [*(a1 + 48) deps];
    v11 = [v10 settings];
    v12 = [v11 allowsInternalSecurityPolicies];

    if (v12)
    {
      v13 = [TransparencyAnalytics formatEventName:@"ConsistencyDownload" application:*(a1 + 56)];
      v14 = *(a1 + 64);
      v38[0] = @"requestedRevisions";
      v38[1] = @"receivedRevisions";
      v39[0] = v14;
      v39[1] = v4;
      v15 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      v16 = [v15 mutableCopy];

      v17 = [*(a1 + 40) metadata];
      v18 = kTransparencyResponseMetadataKeyServerHint;
      v19 = [v17 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

      if (v19)
      {
        v20 = [*(a1 + 40) metadata];
        v21 = [v20 objectForKeyedSubscript:v18];
        [v16 setObject:v21 forKeyedSubscript:v18];
      }

      v22 = [*(a1 + 40) metadata];
      v23 = [v22 objectForKeyedSubscript:@"APS"];

      if (v23)
      {
        [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"APS"];
      }

      v24 = [*(a1 + 48) deps];
      v25 = [v24 logger];
      [v25 logHardFailureForEventNamed:v13 withAttributes:v16];
    }

    if (qword_10038BB90 != -1)
    {
      sub_100246F40();
    }

    v26 = qword_10038BB98;
    if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138543362;
      v41 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "consistency proof downloadId %{public}@: verification succeeded", buf, 0xCu);
    }

    v28 = [*(a1 + 48) deps];
    v29 = [v28 logClient];
    [v29 deleteDownloadId:*(*(*(a1 + 80) + 8) + 40)];
  }

  else
  {
    if (qword_10038BB90 != -1)
    {
      sub_100246F68();
    }

    v30 = qword_10038BB98;
    if (os_log_type_enabled(qword_10038BB98, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(*(a1 + 80) + 8) + 40);
      v32 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Consistency proof response verification failed for downloadId %{public}@: %@", buf, 0x16u);
    }

    v28 = [*(a1 + 48) deps];
    v29 = [v28 dataStore];
    v33 = *(*(*(a1 + 80) + 8) + 40);
    v34 = *(*(*(a1 + 72) + 8) + 40);
    v35 = [*(a1 + 48) deps];
    v36 = [v35 logClient];
    [v29 failHeadDownload:v33 failure:v34 logClient:v36];
  }
}

void sub_100012600(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012644(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012688(id a1)
{
  qword_10038BB98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012D80(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012DC4(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012E08(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013174(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000131B8(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013490(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013EE0(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013F24(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013F68(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013FAC(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013FF0(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100014034(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100014078(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000140BC(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1000142C8(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ResponseTime"];
  v7 = [NSDate kt_dateFromString:v6];

  v8 = *(a1 + 88);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v31 = 0;
  v15 = [v9 validatePeer:v10 transparentData:v11 accountKey:v12 loggableDatas:v13 selfVerificationInfo:0 enforceStaticKey:(v8 < 6) & (0x31u >> v8) idsResponseTime:v14 responseTime:v7 error:&v31];
  v16 = v31;
  v17 = [*(a1 + 40) settings];
  v18 = [v17 testingPeerValidationFailing];

  if (v18)
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 72);
    v30 = v16;
    v21 = [v19 injectVerificationFailure:v20 failing:v18 error:&v30];
    v22 = v30;

    if (v21)
    {
      v15 = 0;
      goto LABEL_10;
    }

    v29 = a2;
    v23 = a3;
    v16 = v22;
  }

  else
  {
    v29 = a2;
    v23 = a3;
  }

  [*(a1 + 40) reportValidationTime:*(a1 + 88) initialResult:*(a1 + 96) result:v15 idsResponseTime:*(a1 + 80)];
  v24 = *(a1 + 88);
  v25 = [*(a1 + 40) analyticsLogger];
  v26 = [*(a1 + 40) applicationID];
  [KTContext metricsForResult:v15 type:v24 logger:v25 applicationID:v26];

  *v23 = [*(a1 + 40) analyticsForType:*(a1 + 88) uri:*(a1 + 48) accountKey:*(a1 + 64) serverLoggableDatas:*(a1 + 72) syncedLoggableDatas:0 transparentData:*(a1 + 56) selfVerificationInfo:0 responseTime:v7 result:v15 failure:v16 responseMetadata:*(a1 + 32)];
  if (v29 && v16)
  {
    v27 = v16;
    *v29 = v16;
  }

  v22 = v16;
LABEL_10:

  return v15;
}

void sub_1000147D4(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100014818(id a1)
{
  qword_10038BBA8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100014BA8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = *(a1 + 128);
  v16 = *(a1 + 104);
  v32 = 0;
  LOBYTE(v31) = 0;
  LOBYTE(v30) = v15;
  v17 = [v6 validateSelf:v7 transparentData:v8 accountKey:v9 serverloggableDatas:v10 syncedLoggableDatas:v11 selfVerificationInfo:v12 idsResponseTime:v13 responseTime:v14 optInCheck:v30 cloudDevices:v16 pcsAccountKey:0 kvsOptInHistory:0 isReplay:v31 error:&v32];
  v18 = v32;
  if (v17 == 1)
  {
    [*(a1 + 32) clearSelfTicketState:*(a1 + 40) responseTime:*(a1 + 96)];
  }

  [*(a1 + 32) reportValidationTime:1 initialResult:*(a1 + 120) result:v17 idsResponseTime:*(a1 + 88)];
  v19 = [*(a1 + 32) analyticsLogger];
  v20 = [*(a1 + 32) applicationID];
  [KTContext metricsForResult:v17 type:1 logger:v19 applicationID:v20];

  v21 = +[TransparencyAnalytics logger];
  v22 = [*(a1 + 32) applicationID];
  [KTContext checkAndLogHardErrorIfNecessary:v17 type:1 logger:v21 error:v18 applicationID:v22];

  v23 = *(a1 + 32);
  v24 = *(a1 + 64);
  v25 = *(a1 + 48);
  v26 = [*(a1 + 80) selfDeviceID];
  v27 = +[TransparencyAnalytics logger];
  [v23 selfValidationURIStatus:v24 transparentData:v25 selfDeviceID:v26 logger:v27];

  *a3 = [*(a1 + 32) analyticsForType:1 uri:*(a1 + 40) accountKey:*(a1 + 56) serverLoggableDatas:*(a1 + 64) syncedLoggableDatas:*(a1 + 72) transparentData:*(a1 + 48) selfVerificationInfo:*(a1 + 80) responseTime:*(a1 + 96) result:v17 failure:v18 responseMetadata:*(a1 + 112)];
  if (a2 && v18)
  {
    v28 = v18;
    *a2 = v18;
  }

  return v17;
}

id sub_1000152CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 32) verifier];
  v7 = [v6 handleInsertResponse:*(a1 + 40) uri:*(a1 + 48) fetchId:*(a1 + 56) error:a2 transparentDataHandler:*(a1 + 64)];

  v8 = *(a1 + 32);
  v9 = [v8 metadataForInsertResponse:*(a1 + 40)];
  *a3 = [v8 analyticsForResponse:v9 type:2 uri:*(a1 + 48) result:v7 ktCapable:1];

  return v7;
}

void sub_100015920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015948(id a1)
{
  qword_10038BBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001598C(id a1)
{
  qword_10038BBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000159D0(id a1)
{
  qword_10038BBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100015A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (qword_10038BBB0 != -1)
  {
    sub_100247288();
  }

  v3 = qword_10038BBB8;
  if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Completed fixup %@", &v12, 0xCu);
  }

  v5 = [WeakRetained deps];
  v6 = [v5 logger];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) error];
  [v6 logResultForEvent:v7 hardFailure:1 result:v8];

  v9 = [*(a1 + 40) error];

  if (!v9)
  {
    v10 = [WeakRetained deps];
    v11 = [v10 smDataStore];
    [v11 storeFixup:*(a1 + 32)];
  }
}

void sub_100015B80(id a1)
{
  qword_10038BBB8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016798(id a1)
{
  qword_10038BBC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016BE8(id a1)
{
  qword_10038BBC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016CF4(id a1)
{
  qword_10038BBC8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000177C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000177FC(id a1)
{
  qword_10038BBD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017840(id a1)
{
  qword_10038BBD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017884(id a1)
{
  qword_10038BBD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000178C8(id a1)
{
  qword_10038BBD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001790C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTransaction:0];
}

void sub_100017950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    if (qword_10038BBD0 != -1)
    {
      sub_100247378();
    }

    v10 = qword_10038BBD8;
    if (os_log_type_enabled(qword_10038BBD8, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [WeakRetained application];
      v13 = [*(a1 + 32) allObjects];
      v14 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v20 = v12;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "ValidatePendingURIs: failed to get validation context for fetch for %@ for uris %{mask.hash}@: %@", buf, 0x2Au);
    }

    v15 = [WeakRetained operationQueue];
    v16 = [WeakRetained finishedOp];
    [v15 addOperation:v16];
  }

  else
  {
    v8 = [*(a1 + 32) allObjects];
    v9 = [WeakRetained opUUID];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100017BE4;
    v17[3] = &unk_100317648;
    v17[4] = WeakRetained;
    v18 = *(a1 + 32);
    [v5 queryForUris:v8 userInitiated:0 cachedYoungerThan:0 backgroundOpId:v9 completionHandler:v17];
  }
}

void sub_100017BA0(id a1)
{
  qword_10038BBD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_10038BBD0 != -1)
    {
      sub_10024738C();
    }

    v4 = qword_10038BBD8;
    if (os_log_type_enabled(qword_10038BBD8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 application];
      v8 = [*(a1 + 40) allObjects];
      v9 = [v8 componentsJoinedByString:{@", "}];
      v12 = 138413058;
      v13 = v7;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ValidatePendingURIs: failed to trigger query for %@ for uris %{mask.hash}@: %@", &v12, 0x2Au);
    }
  }

  v10 = [*(a1 + 32) operationQueue];
  v11 = [*(a1 + 32) finishedOp];
  [v10 addOperation:v11];
}

void sub_100017D68(id a1)
{
  qword_10038BBD8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000180F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_10038BBE0 != -1)
  {
    sub_1002473A0();
  }

  v7 = qword_10038BBE8;
  if (os_log_type_enabled(qword_10038BBE8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "reportResultWithSuccess: IDS returned result %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000181E4(id a1)
{
  qword_10038BBE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100018668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_10038BBE0 != -1)
  {
    sub_1002473B4();
  }

  v7 = qword_10038BBE8;
  if (os_log_type_enabled(qword_10038BBE8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "reportRemotePeerKTFailureWithPushToken: IDS returned result %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001875C(id a1)
{
  qword_10038BBE8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019204(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019248(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001928C(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000192D0(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019314(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019358(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001939C(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000193E0(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019424(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019738(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100019750(uint64_t a1, void *a2, _BYTE *a3, id *a4)
{
  v7 = a2;
  if (a4 && *a4)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_10024751C();
    }

    v8 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a4;
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "VerifyPendingSignatures: failed to get pending SMTs: %@", buf, 0xCu);
    }

    if (*a4)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), *a4);
    }

    *a3 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    v25 = 0;
    v11 = [v10 verifyKTSMTSignatures:v7 error:&v25];
    v12 = v25;
    v13 = v25;
    if (v11 && [v11 count])
    {
      if (qword_10038BBF0 != -1)
      {
        sub_100247530();
      }

      v14 = qword_10038BBF8;
      if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v27 = v15;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "VerifyPendingSignatures: %@ SMT signature validation failed: %@", buf, 0x16u);
      }

      if (v13)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
      }

      [*(a1 + 48) addObjectsFromArray:v11];
    }

    else
    {
      if (qword_10038BBF0 != -1)
      {
        sub_100247558();
      }

      v16 = qword_10038BBF8;
      if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 40);
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "VerifyPendingSignatures: %@ SMT signature validation succeeded", buf, 0xCu);
      }
    }

    v18 = [*(a1 + 56) deps];
    v19 = [v18 dataStore];
    v24 = 0;
    v20 = [v19 persistAndRefaultObjects:v7 error:&v24];
    v21 = v24;
    v22 = v24;

    if ((v20 & 1) == 0)
    {
      if (qword_10038BBF0 != -1)
      {
        sub_100247580();
      }

      v23 = qword_10038BBF8;
      if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "VerifyPendingSignatures: failed to persist signature verified SMTs: %@", buf, 0xCu);
      }

      if (v22)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
      }

      *a3 = 1;
    }
  }
}

void sub_100019A84(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019AC8(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019B0C(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019B50(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100019F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019FB0(uint64_t a1, void *a2, _BYTE *a3, id *a4)
{
  v7 = a2;
  if (a4 && *a4)
  {
    if (qword_10038BBF0 != -1)
    {
      sub_1002475A8();
    }

    v8 = qword_10038BBF8;
    if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a4;
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "VerifyPendingSignatures: failed to get pending STH/SMH: %@", buf, 0xCu);
    }

    if (*a4)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), *a4);
    }

    *a3 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    v25 = 0;
    v11 = [v10 verifySTHs:v7 error:&v25];
    v12 = v25;
    v13 = v25;
    if (v11 && [v11 count])
    {
      if (qword_10038BBF0 != -1)
      {
        sub_1002475BC();
      }

      v14 = qword_10038BBF8;
      if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v27 = v15;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "VerifyPendingSignatures: %@ STH/SMH signature validation failed: %@", buf, 0x16u);
      }

      if (v13)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
      }

      [*(a1 + 48) addObjectsFromArray:v11];
    }

    else
    {
      if (qword_10038BBF0 != -1)
      {
        sub_1002475E4();
      }

      v16 = qword_10038BBF8;
      if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 40);
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "VerifyPendingSignatures: %@ STH/SMH signature validation succeeded", buf, 0xCu);
      }
    }

    v18 = [*(a1 + 56) deps];
    v19 = [v18 dataStore];
    v24 = 0;
    v20 = [v19 persistAndRefaultObjects:v7 error:&v24];
    v21 = v24;
    v22 = v24;

    if ((v20 & 1) == 0)
    {
      if (qword_10038BBF0 != -1)
      {
        sub_10024760C();
      }

      v23 = qword_10038BBF8;
      if (os_log_type_enabled(qword_10038BBF8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "VerifyPendingSignatures: failed to persist signature verified STHs/SMHs: %@", buf, 0xCu);
      }

      if (v22)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
      }

      *a3 = 1;
    }
  }
}

void sub_10001A2E4(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001A328(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001A36C(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001A3B0(id a1)
{
  qword_10038BBF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001A834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A858(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001A89C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v5 || v6)
  {
    if (qword_10038BC00 != -1)
    {
      sub_100247670();
    }

    v16 = qword_10038BC08;
    if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ValidatePendingRequests: failed to get validation context for validating pending requests: %@", buf, 0xCu);
    }

    v12 = [WeakRetained operationQueue];
    v17 = [WeakRetained finishedOp];
    [v12 addOperation:v17];
  }

  else
  {
    v8 = dispatch_group_create();
    [WeakRetained setFetchGroup:v8];

    v9 = [WeakRetained deps];
    v10 = [v9 dataStore];
    v11 = [WeakRetained application];
    v21 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001ABC0;
    v19[3] = &unk_1003179A8;
    v19[4] = WeakRetained;
    v20 = v5;
    [v10 performForRequestsWithPendingResponses:v11 error:&v21 block:v19];
    v12 = v21;

    if (qword_10038BC00 != -1)
    {
      sub_100247648();
    }

    v13 = qword_10038BC08;
    if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "ValidatePendingRequests: waiting for fetches to finish validating", buf, 2u);
    }

    v14 = [WeakRetained fetchGroup];
    v15 = [WeakRetained fetchQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001AE6C;
    v18[3] = &unk_100316FE0;
    v18[4] = WeakRetained;
    dispatch_group_notify(v14, v15, v18);
  }
}

void sub_10001AB7C(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001ABC0(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v7 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [*(a1 + 32) fetchGroup];
        dispatch_group_enter(v14);

        [*(a1 + 32) handleKTRequestDownload:v13 context:*(a1 + 40)];
        v15 = [*(a1 + 32) deps];
        v16 = [v15 dataStore];
        LOBYTE(v13) = [v16 persistAndRefaultObject:v13 error:a4];

        if ((v13 & 1) == 0)
        {
          if (qword_10038BC00 != -1)
          {
            sub_100247684();
          }

          v17 = qword_10038BC08;
          if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
          {
            if (a4)
            {
              v18 = *a4;
            }

            else
            {
              v18 = 0;
            }

            *buf = v21;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to persist pending requests: %@", buf, 0xCu);
          }

          if (a4 && *a4)
          {
            v19 = [*(a1 + 32) deps];
            v20 = [v19 dataStore];
            [v20 reportCoreDataPersistEventForLocation:@"handlePendingQueryRequests" underlyingError:*a4];
          }

          *a3 = 1;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }
}

void sub_10001ADE4(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001AE28(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001AE6C(uint64_t a1)
{
  v2 = [*(a1 + 32) errors];
  v3 = [v2 count];

  if (v3)
  {
    v30 = NSMultipleUnderlyingErrorsKey;
    v4 = [*(a1 + 32) errors];
    v31 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v6 = [NSError errorWithDomain:@"TransparencyErrorVerify" code:-381 userInfo:v5];
    [*(a1 + 32) setError:v6];

    v7 = [*(a1 + 32) serverHints];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = +[NSMutableString string];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [*(a1 + 32) requestIds];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v25 + 1) + 8 * i) UUIDString];
          [v9 appendFormat:@"%@, ", v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v16 = [*(a1 + 32) backgroundOpId];
    v17 = [*(a1 + 32) deps];
    v18 = [v17 smDataStore];
    v19 = [*(a1 + 32) name];
    v20 = [*(a1 + 32) error];
    [KTBackgroundSystemValidationOperation addErrorToBackgroundOp:v16 smDataStore:v18 failureDataString:v9 type:v19 serverHint:v8 failure:v20];
  }

  if (qword_10038BC00 != -1)
  {
    sub_1002476AC();
  }

  v21 = qword_10038BC08;
  if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "ValidatePendingRequests: end", buf, 2u);
  }

  v22 = [*(a1 + 32) operationQueue];
  v23 = [*(a1 + 32) finishedOp];
  [v22 addOperation:v23];
}

void sub_10001B190(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001B2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B2BC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [v11 metadata];
  v15 = [v14 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

  if (v9 && v10 && v11 && !v12)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001B61C;
    v26[3] = &unk_100317A38;
    objc_copyWeak(&v29, (a1 + 32));
    v27 = v9;
    v28 = v15;
    [WeakRetained handleKTRequest:v27 queryRequest:v10 queryResponse:v11 completionHandler:v26];

    objc_destroyWeak(&v29);
  }

  else
  {
    v16 = [v9 type];
    v17 = [WeakRetained application];
    v18 = [KTContext validateEventName:v16 application:v17];

    v19 = +[TransparencyAnalytics logger];
    [v19 logResultForEvent:v18 hardFailure:objc_msgSend(v9 result:{"isDeleted"), v12}];

    if (qword_10038BC00 != -1)
    {
      sub_1002476D4();
    }

    v20 = qword_10038BC08;
    if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "ValidatePendingRequests:background fetch error: %@", buf, 0xCu);
    }

    if (!v12)
    {
      v12 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-145 description:@"empty inclusion proof response"];
    }

    [WeakRetained saveRequestFailure:v9 failure:v12];
    v21 = [WeakRetained onRequestMOCFailExpiredRequest:v9 error:v12];
    if (v21)
    {
      v22 = [WeakRetained errors];
      [v22 addObject:v12];

      v23 = [WeakRetained requestIds];
      [v23 addObject:v21];

      if (v15)
      {
        v24 = [WeakRetained serverHints];
        [v24 addObject:v15];
      }
    }

    v25 = [WeakRetained fetchGroup];
    dispatch_group_leave(v25);
  }
}

void sub_10001B61C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (a2 == 2)
  {
    v7 = [WeakRetained onRequestMOCFailExpiredRequest:*(a1 + 32) error:v12];
    if (v7)
    {
      v8 = [v6 errors];
      [v8 addObject:v12];

      v9 = [v6 requestIds];
      [v9 addObject:v7];

      if (*(a1 + 40))
      {
        v10 = [v6 serverHints];
        [v10 addObject:*(a1 + 40)];
      }
    }
  }

  v11 = [v6 fetchGroup];
  dispatch_group_leave(v11);
}

void sub_10001B718(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001B92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (!v5 || v6)
  {
    if (qword_10038BC00 != -1)
    {
      sub_1002476E8();
    }

    v12 = qword_10038BC08;
    if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "ValidatePendingRequests: failed to get validation context for validating pending request %{public}@: %@", buf, 0x16u);
    }

    if (!v6)
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-167 description:@"no context for handling pending requestId %@", *(a1 + 32)];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = [WeakRetained deps];
    v10 = [v9 dataStore];
    v11 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001BBBC;
    v14[3] = &unk_100317AE8;
    v15 = v5;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = v8;
    v19 = *(a1 + 56);
    [v10 performAndWaitForRequestId:v11 error:0 block:v14];

    v6 = v15;
  }
}

void sub_10001BB78(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001BBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4 == 2)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    v9 = [*(a1 + 56) deps];
    v10 = [v9 cloudRecords];

    if (v10)
    {
      v11 = [_TtC13transparencyd19KTCloudRecordsCache alloc];
      v12 = [*(a1 + 56) deps];
      v13 = [v12 cloudRecords];
      v10 = [(KTCloudRecordsCache *)v11 initWithRecords:v13];
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v28 = 0;
    [v14 validateSelfKTRequest:v3 queryRequest:v15 queryResponse:v16 selfVerificationInfo:0 optInCheck:0 cloudDevices:v10 transparentData:0 loggableDatas:0 error:&v28];
    v8 = v28;
  }

  else
  {
    if (!v4)
    {
LABEL_4:
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v29 = 0;
      [v5 validatePeerOrEnrollKTRequest:v3 queryRequest:v6 queryResponse:v7 transparentData:0 loggableDatas:0 error:&v29];
      v8 = v29;
      goto LABEL_13;
    }

    if (qword_10038BC00 != -1)
    {
      sub_1002476FC();
    }

    v17 = qword_10038BC08;
    if (os_log_type_enabled(qword_10038BC08, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = [v3 requestId];
      *buf = 138543618;
      v31 = v19;
      v32 = 2048;
      v33 = [v3 type];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "ValidatePendingRequests:deleting requestId %{public}@ with unknown type %lld", buf, 0x16u);
    }

    v20 = kTransparencyErrorDecode;
    v21 = [v3 requestId];
    v8 = [TransparencyError errorWithDomain:v20 code:-206 description:@"deleting requestId %@ with unknown type", v21];

    v22 = [*(a1 + 56) deps];
    v23 = [v22 dataStore];
    [v23 deleteObject:v3];

    v24 = [v3 type];
    v25 = [*(a1 + 56) application];
    v26 = [KTContext validateEventName:v24 application:v25];

    v27 = +[TransparencyAnalytics logger];
    [v27 logResultForEvent:v26 hardFailure:1 result:v8];
  }

LABEL_13:
  (*(*(a1 + 64) + 16))();
}

void sub_10001BEC4(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001C240(id a1)
{
  qword_10038BC08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001CC2C(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001CC70(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001CCB4(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D00C(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D050(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D534(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D578(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D5BC(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D600(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001D644(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001DD40(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001DD84(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001DDC8(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001DE0C(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001DF98(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001E424(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001E468(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001E4AC(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001E810(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001EC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001EC30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001EC48(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 fetchPeer:v3 application:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = *(a1[8] + 8);
    v15 = *(v10 + 40);
    v6 = [v7 createPeerState:v8 application:v9 error:&v15];
    objc_storeStrong((v10 + 40), v15);
  }

  v11 = a1[4];
  v12 = objc_opt_class();
  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  [v12 cleanseError:&v14];
  objc_storeStrong((v13 + 40), v14);
  (*(a1[7] + 16))();
  *(*(a1[9] + 8) + 24) = 1;
}

void sub_10001EEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EF18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = +[PeerState fetchRequest];
    v6 = [NSPredicate predicateWithFormat:@"application = %@ && (failure != nil || mostRecentSuccess != nil || mostRecentCompleted != nil)", *(a1 + 40)];
    [v5 setPredicate:v6];

    v7 = [*(a1 + 32) context];
    v8 = *(*(a1 + 48) + 8);
    v27 = *(v8 + 40);
    v9 = [v7 executeFetchRequest:v5 error:&v27];
    objc_storeStrong((v8 + 40), v27);

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          [v15 setMostRecentCompleted:0];
          [v15 setMostRecentSuccess:0];
          [v15 setFailure:0];
          [v15 setSeenDate:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v12);
    }

    v16 = *(a1 + 32);
    v17 = *(*(a1 + 48) + 8);
    v22 = *(v17 + 40);
    [v16 persistWithError:&v22];
    objc_storeStrong((v17 + 40), v22);
    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    [v19 cleanseError:&v21];
    objc_storeStrong((v20 + 40), v21);
  }
}

void sub_10001F150(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001F280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F298(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = +[PeerState fetchRequest];
    v6 = [*(a1 + 32) context];
    v7 = *(*(a1 + 48) + 8);
    v18 = *(v7 + 40);
    v8 = [v6 executeFetchRequest:v5 error:&v18];
    objc_storeStrong((v7 + 40), v18);

    v9 = *(a1 + 32);
    v10 = *(*(a1 + 48) + 8);
    v17 = *(v10 + 40);
    [v9 persistWithError:&v17];
    objc_storeStrong((v10 + 40), v17);
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = *(*(a1 + 48) + 8);
    v16 = *(v13 + 40);
    [v12 cleanseError:&v16];
    objc_storeStrong((v13 + 40), v16);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (qword_10038BC10 != -1)
      {
        sub_100247940();
      }

      v14 = qword_10038BC18;
      if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to retrieve peer states: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10001F490(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"PeerState"];
    v6 = [NSPredicate predicateWithFormat:@"uri IN %@ && application = %@ && failure != nil && seenDate == nil", *(a1 + 40), *(a1 + 48)];
    [v5 setPredicate:v6];

    v24 = @"seenDate";
    v25 = *(a1 + 56);
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v5 setPropertiesToUpdate:v7];

    [v5 setResultType:1];
    v8 = [*(a1 + 32) context];
    v9 = *(*(a1 + 64) + 8);
    v20 = *(v9 + 40);
    v10 = [v8 executeRequest:v5 error:&v20];
    objc_storeStrong((v9 + 40), v20);

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 64) + 8);
    v19 = *(v12 + 40);
    [v11 persistWithError:&v19];
    objc_storeStrong((v12 + 40), v19);
    if (!v10)
    {
      if (qword_10038BC10 != -1)
      {
        sub_100247990();
      }

      v13 = qword_10038BC18;
      if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412290;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setSeenDate delete: %@", buf, 0xCu);
      }
    }
  }

  v15 = *(a1 + 32);
  v16 = objc_opt_class();
  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  [v16 cleanseError:&v18];
  objc_storeStrong((v17 + 40), v18);
}

void sub_10001F950(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001F994(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001FF70(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setUnsigned:"lastIDSCacheUIStatus" value:{objc_msgSend(v3, "uiStatus")}];
  v5 = a1[5];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  [v5 persistAndRefaultObject:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  v7 = a1[5];
  v8 = objc_opt_class();
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  [v8 cleanseError:&v10];
  objc_storeStrong((v9 + 40), v10);
}

void sub_100020024(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100020068(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000200AC(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000203A0(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002060C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002062C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[8];
  if (v5 <= 0xD)
  {
    if (((1 << v5) & 0x20C1) != 0)
    {
      +[TransparencySettings failureIgnorePeriod];
      v6 = [NSDate dateWithTimeIntervalSinceNow:?];
      [v4 setIgnoredFailureExpiry:v6];
    }

    else
    {
      if (v5 != 10)
      {
        goto LABEL_16;
      }

      if (([v3 optedIn] & 1) == 0)
      {
        [v4 setTurnedOffIgnored:1];
      }
    }

    v7 = a1[4];
    v17 = 0;
    v8 = [v7 persistWithError:&v17];
    v9 = v17;
    if ((v8 & 1) == 0)
    {
      if (qword_10038BC10 != -1)
      {
        sub_100247A80();
      }

      v10 = qword_10038BC18;
      if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
      {
        v11 = a1[5];
        v12 = a1[6];
        *buf = 138544130;
        v19 = v11;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to save ignore error for application=%{public}@ uri=%{mask.hash}@: %@", buf, 0x2Au);
      }

      v13 = a1[4];
      v16 = v9;
      [objc_opt_class() cleanseError:&v16];
      v14 = v16;
      v15 = v16;

      if (v15)
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v14);
        v9 = v15;
      }

      else
      {
        v9 = 0;
      }
    }
  }

LABEL_16:
}

void sub_100020814(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100020858(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000209C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000209D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(KTOptInStatus);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 32) + 8) + 40) setEverOptedIn:{objc_msgSend(v3, "everOptedIn")}];
  [*(*(*(a1 + 32) + 8) + 40) setOptedIn:{objc_msgSend(v3, "optedIn")}];
  v7 = [v3 everCompletedVerification];

  v8 = *(*(*(a1 + 32) + 8) + 40);

  return [v8 setEverCompletedVerification:v7];
}

void sub_100020C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020C28(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDataStore:*(a1 + 32)];
  v4 = [*(a1 + 32) staticKeyStore];
  v5 = [v3 verifierResultWithStaticKeyStore:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(*(a1 + 48) + 8) + 40) uiStatus];
  if (v8 != [v3 lastIDSCacheUIStatus])
  {
    if (qword_10038BC10 != -1)
    {
      sub_100247AA8();
    }

    v9 = qword_10038BC18;
    if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v3 lastIDSCacheUIStatus];
      v12 = [*(*(*(a1 + 48) + 8) + 40) uiStatus];
      v13 = *(a1 + 40);
      *buf = 134218754;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "verifierResultForPeer cached UI status changed %lld->%llu for %{mask.hash}@, will update IDS cache", buf, 0x2Au);
    }

    v14 = *(a1 + 32);
    v17 = *(*(*(a1 + 48) + 8) + 40);
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [v14 updateIDSCacheWithResults:v15];

    [*(*(*(a1 + 48) + 8) + 40) setSentToIDS:1];
  }

  v16 = [*(a1 + 32) peerOverridesStore];
  [v16 applyPeerOverrides:*(*(*(a1 + 48) + 8) + 40) peer:v3];

  [*(a1 + 32) persistAndRefaultObject:v3 error:0];
}

void sub_100020E3C(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100020FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained verifierResultForPeer:*(a1 + 32) application:*(a1 + 40)];
}

void sub_100021300(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100021560(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000215A4(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000219D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000219F4(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100021A38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = +[PeerState fetchRequest];
    v6 = [NSPredicate predicateWithFormat:@"application = %@ && (failure != nil)", *(a1 + 40)];
    [v5 setPredicate:v6];

    v7 = [*(a1 + 32) context];
    v8 = *(*(a1 + 48) + 8);
    v26 = *(v8 + 40);
    v9 = [v7 executeFetchRequest:v5 error:&v26];
    objc_storeStrong((v8 + 40), v26);

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v22 + 1) + 8 * v14) setFailure:0];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v12);
    }

    v15 = *(a1 + 32);
    v16 = *(*(a1 + 48) + 8);
    v21 = *(v16 + 40);
    [v15 persistWithError:&v21];
    objc_storeStrong((v16 + 40), v21);
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    [v18 cleanseError:&v20];
    objc_storeStrong((v19 + 40), v20);
  }
}

void sub_100021C48(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100021FDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"PeerState"];
    v6 = [NSPredicate predicateWithFormat:@"uri IN %@ && application = %@", *(a1 + 40), *(a1 + 48)];
    [v5 setPredicate:v6];

    v27 = @"optedIn";
    v7 = [NSNumber numberWithBool:*(a1 + 64)];
    v28 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v9 = [v8 mutableCopy];

    if (*(a1 + 64) == 1)
    {
      v10 = [NSNumber numberWithBool:1];
      [v9 setObject:v10 forKeyedSubscript:@"everOptedIn"];
    }

    [v5 setPropertiesToUpdate:v9];
    [v5 setResultType:1];
    v11 = [*(a1 + 32) context];
    v12 = *(*(a1 + 56) + 8);
    v23 = *(v12 + 40);
    v13 = [v11 executeRequest:v5 error:&v23];
    objc_storeStrong((v12 + 40), v23);

    v14 = *(a1 + 32);
    v15 = *(*(a1 + 56) + 8);
    v22 = *(v15 + 40);
    [v14 persistWithError:&v22];
    objc_storeStrong((v15 + 40), v22);
    if (!v13)
    {
      if (qword_10038BC10 != -1)
      {
        sub_100247B5C();
      }

      v16 = qword_10038BC18;
      if (os_log_type_enabled(qword_10038BC18, OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "onQueueSetCachedPeerOptInState delete: %@", buf, 0xCu);
      }
    }
  }

  v18 = *(a1 + 32);
  v19 = objc_opt_class();
  v20 = *(*(a1 + 56) + 8);
  v21 = *(v20 + 40);
  [v19 cleanseError:&v21];
  objc_storeStrong((v20 + 40), v21);
}

void sub_100022280(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000222C4(id a1)
{
  qword_10038BC18 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100023A4C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) objectAtColumn:a2];
  v6 = v4;
  if (v4)
  {
    [*(a1 + 32) setObject:v4 atIndexedSubscript:a2];
  }

  else
  {
    v5 = +[NSNull null];
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];
  }
}

void sub_100023BA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectAtColumn:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_100024120(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000248B8(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000248FC(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024940(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024984(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000249C8(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024A0C(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024A50(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024A94(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024AD8(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024B1C(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024B60(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100024BA4(id a1)
{
  qword_10038BC28 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

const __CFString *sub_100024C18(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"Failed";
  }

  else
  {
    return *(&off_1003185B8 + a1);
  }
}

const __CFString *sub_100024C3C(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown type";
  }

  else
  {
    return *(&off_1003185E8 + a1);
  }
}

void sub_100025368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained idsControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025410;
  block[3] = &unk_100316FE0;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void sub_100025410(uint64_t a1)
{
  [*(a1 + 32) checkAccountChange];
  v2 = [*(a1 + 32) accountStateFetched];
  [v2 fulfill];
}

void sub_100025820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025860(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) idsQueue];
  dispatch_assert_queue_V2(v7);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    if (qword_10038BC30 != -1)
    {
      sub_100247D64();
    }

    v9 = qword_10038BC38;
    if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "KTIDSActualOperations: statusOfUsersOnService error: %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (qword_10038BC30 != -1)
  {
    sub_100247D78();
  }

  v10 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "KTIDSActualOperations: statusOfUsersOnService %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v5 serviceUserInfos];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v12)
  {

    goto LABEL_25;
  }

  v13 = v12;
  v20 = v5;
  v14 = 0;
  v15 = *v22;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v21 + 1) + 8 * i);
      if ([v17 type] == 1)
      {
        v18 = [[KTIDSSignInServiceUserInfo alloc] initWithUserInfo:v17];
        v14 = 1;
      }

      else
      {
        if ([v17 type])
        {
          continue;
        }

        v18 = -[KTIDSSignInServiceUserInfo initWithType:status:]([KTIDSSignInServiceUserInfo alloc], "initWithType:status:", 0, [v17 status]);
      }

      [WeakRetained onQueueProcessStatus:v18];
    }

    v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v13);

  v5 = v20;
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_25:
  v19 = [[KTIDSSignInServiceUserInfo alloc] initWithType:1 status:0];
  [WeakRetained onQueueProcessStatus:v19];

LABEL_26:
}

void sub_100025B20(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100025B64(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1000260C4(uint64_t a1, int a2)
{
  if (qword_10038BC30 != -1)
  {
    sub_100247D8C();
  }

  v4 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDS self heal returned: %{BOOL}d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000261A4(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100026598(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_alloc_init(IDSKTOptInOutStatusData);
  v7 = [v5 optInStatus];
  [v6 setOptInStatus:v7];

  v8 = [v5 publicAccountKey];
  [v6 setPublicAccountKey:v8];

  v9 = [v5 ktApplication];
  [v6 setKtApplication:v9];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 optChangeReason])
  {
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 optChangeReason]);
    [v6 setOptChangeReason:v10];
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v11];
}

void sub_1000267B0(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100026D0C(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100026D50(uint64_t a1)
{
  if (qword_10038BC30 != -1)
  {
    sub_100247DC8();
  }

  v2 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "worker: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) idsObserver];
  v4[2](v4, *(a1 + 32));
}

void sub_100026E30(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100026F80(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100027118(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100027284(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000273F0(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002755C(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000276C8(id a1)
{
  qword_10038BC38 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100027C38(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100029158(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002919C(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000291E0(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100029224(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100029268(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000292AC(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000292F0(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000294E0(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100029524(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000298D0(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100029E08(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A32C(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A370(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A3B4(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A3F8(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A43C(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A480(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A4C4(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A8DC(id a1)
{
  qword_10038BC60 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002A9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10002AA18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained ktFollowupStatus];

  return v2;
}

void sub_10002B2C0(id a1)
{
  qword_10038BC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002B304(id a1)
{
  qword_10038BC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002B348(id a1)
{
  qword_10038BC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002BA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BA88(id a1)
{
  qword_10038BC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002BACC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 error];

  [WeakRetained setError:v4];
  [WeakRetained setTransaction:0];
}

void sub_10002C404(id a1)
{
  qword_10038BC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002C448(id a1)
{
  qword_10038BC78 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002C680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_10002CA18;
    v36 = sub_10002CA28;
    v37 = 0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) ktLogClient];
    v7 = [v6 batchQueryMaxURIs];
    v8 = (v33 + 5);
    obj = v33[5];
    v9 = [TransparencyRPCRequestBuilder buildBatchQueryRequests:v4 application:v5 maxURIsPerBatch:v7 error:&obj];
    objc_storeStrong(v8, obj);

    if (v9)
    {
      v10 = +[NSMutableDictionary dictionary];
      v11 = +[NSMutableDictionary dictionary];
      v12 = [*(a1 + 48) ktLogClient];
      v13 = *(a1 + 64);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10002CA74;
      v26[3] = &unk_100318AC8;
      v30 = &v32;
      v27 = v10;
      v20 = *(a1 + 40);
      v14 = v20.i64[0];
      v28 = vextq_s8(v20, v20, 8uLL);
      v29 = v11;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002D268;
      v21[3] = &unk_100318AF0;
      v15 = v27;
      v22 = v15;
      v16 = v29;
      v23 = v16;
      v24 = *(a1 + 56);
      v25 = &v32;
      [v12 fetchBatchQueries:v9 userInitiated:v13 responseHandler:v26 completionHandler:v21];
    }

    else
    {
      if (qword_10038BC80 != -1)
      {
        sub_10024819C();
      }

      v17 = qword_10038BC88;
      if (os_log_type_enabled(qword_10038BC88, OS_LOG_TYPE_ERROR))
      {
        v18 = v33[5];
        *buf = 138412290;
        v39 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create query request: %@", buf, 0xCu);
      }

      v19 = *(a1 + 56);
      v15 = [SecXPCHelper cleanseErrorForXPC:v33[5]];
      (*(v19 + 16))(v19, 0, v15);
    }

    _Block_object_dispose(&v32, 8);
  }
}

uint64_t sub_10002CA18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002CA30(id a1)
{
  qword_10038BC88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002CA74(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (qword_10038BC80 != -1)
    {
      sub_1002481C4();
    }

    v13 = qword_10038BC88;
    if (os_log_type_enabled(qword_10038BC88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "fetch batch query succeeded", buf, 2u);
    }

    v31 = @"responseDebugDescription";
    v14 = [v10 diagnosticsJsonDictionary];
    v32 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v16 = *(a1 + 32);
    v17 = [v11 UUIDString];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = [*(a1 + 40) xpcContextStore];
    v19 = +[NSDate date];
    v20 = *(a1 + 48);
    v21 = [*(a1 + 40) ktLogClient];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002CE64;
    v29[3] = &unk_100318A58;
    v30 = *(a1 + 56);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002D148;
    v27[3] = &unk_100318AA0;
    v28 = v11;
    [v18 handleBatchQueryResponse:v10 queryRequest:v9 receiptDate:v19 fetchId:v28 application:v20 logClient:v21 transparentDataHandler:v29 completionHandler:v27];

    v22 = v30;
  }

  else
  {
    if (qword_10038BC80 != -1)
    {
      sub_1002481D8();
    }

    v23 = qword_10038BC88;
    if (os_log_type_enabled(qword_10038BC88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "fetch batch query failed: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a5);
    v33 = @"error";
    v22 = [v12 description];
    v34 = v22;
    v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v25 = *(a1 + 32);
    v26 = [v11 UUIDString];
    [v25 setObject:v24 forKeyedSubscript:v26];
  }
}

void sub_10002CDDC(id a1)
{
  qword_10038BC88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002CE20(id a1)
{
  qword_10038BC88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002CE64(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSMutableDictionary dictionary];
  if (v10)
  {
    v14 = [v10 mapEntry];
    v15 = [v14 mapLeaf];

    if (v15)
    {
      v16 = [v10 mapEntry];
      v17 = [v16 mapLeaf];
      v18 = [IdsMapLeaf parseFromData:v17 error:0];

      if (v18)
      {
        v19 = [v18 diagnosticsJsonDictionary];
        [v13 setObject:v19 forKeyedSubscript:@"mapLeaf"];
      }
    }

    if ([v10 pendingSmtsArray_Count])
    {
      v30 = v12;
      v31 = a1;
      v32 = v9;
      v20 = +[NSMutableArray array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = [v10 pendingSmtsArray];
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [SignedMutationTimestamp signedTypeWithObject:*(*(&v33 + 1) + 8 * i)];
            v27 = [v26 diagnosticsJsonDictionary];
            [v20 addObject:v27];
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v23);
      }

      if ([v20 count])
      {
        [v13 setObject:v20 forKeyedSubscript:@"pendingSmts"];
      }

      a1 = v31;
      v9 = v32;
      v12 = v30;
    }
  }

  if (v11)
  {
    v28 = [v11 diagnosticsJsonDictionary];
    [v13 setObject:v28 forKeyedSubscript:@"transparentData"];
  }

  if (v12)
  {
    v29 = [v12 description];
    [v13 setObject:v29 forKeyedSubscript:@"error"];
  }

  [*(a1 + 32) setObject:v13 forKeyedSubscript:v9];
}

void sub_10002D148(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_10038BC80 != -1)
  {
    sub_1002481EC();
  }

  v5 = qword_10038BC88;
  if (os_log_type_enabled(qword_10038BC88, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "failed to handle fetchId %{public}@ batch query: %@", &v7, 0x16u);
  }
}

void sub_10002D224(id a1)
{
  qword_10038BC88 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002D268(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"uriData"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 56) + 8) + 40)];
  (*(v3 + 16))(v3, v2, v4);
}

void sub_10002D7E8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002D82C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002D870(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002D8B4(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002DF68(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002DFAC(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002DFF0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002E23C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002E904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E95C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002E974(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v41 = a3;
    v40 = *(a1 + 88);
    v11 = v8;
    v12 = v7;
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) accountKey];
    v15 = *(*(*(a1 + 72) + 8) + 40);
    v16 = *(a1 + 96);
    v17 = [*(a1 + 40) idsResponseTime];
    v18 = [*(a1 + 48) metadata];
    v19 = *(*(a1 + 56) + 8);
    obj = *(v19 + 40);
    v20 = v13;
    v7 = v12;
    v8 = v11;
    v21 = [v20 validateAndReportPeerOrEnroll:v7 type:v40 transparentData:v11 accountKey:v14 loggableDatas:v15 initialResult:v16 idsResponseTime:v17 responseMetadata:v18 error:&obj];
    objc_storeStrong((v19 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v21;

    if (*(a1 + 96) == 3)
    {
      [*(a1 + 40) setVerificationResult:3];
      *(*(*(a1 + 64) + 8) + 24) = 3;
    }

    v22 = *(*(*(a1 + 64) + 8) + 24);
    if (v22 == 3)
    {
      v23 = v41;
      v9 = 0;
      if (qword_10038BC90 != -1)
      {
        sub_100248368();
      }

      v30 = qword_10038BC98;
      if (!os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      if (*(a1 + 88))
      {
        v31 = @"enroll";
      }

      else
      {
        v31 = @"peer";
      }

      v32 = *(a1 + 40);
      v27 = v30;
      v28 = [v32 requestId];
      *buf = 138412546;
      v44 = v31;
      v45 = 2114;
      v46 = v28;
      v29 = "Ignoring validate %@ result for requestId %{public}@";
    }

    else
    {
      v23 = v41;
      v9 = 0;
      if (v22 != 1)
      {
        if (qword_10038BC90 != -1)
        {
          sub_1002483B8();
        }

        v36 = qword_10038BC98;
        if (!os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        if (*(a1 + 88))
        {
          v37 = @"enroll";
        }

        else
        {
          v37 = @"peer";
        }

        v38 = *(a1 + 40);
        v27 = v36;
        v28 = [v38 requestId];
        v39 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412802;
        v44 = v37;
        v45 = 2114;
        v46 = v28;
        v47 = 2112;
        v48 = v39;
        v29 = "Validate %@ failed for requestId %{public}@: %@";
        v33 = v27;
        v34 = OS_LOG_TYPE_ERROR;
        v35 = 32;
        goto LABEL_33;
      }

      if (qword_10038BC90 != -1)
      {
        sub_100248390();
      }

      v24 = qword_10038BC98;
      if (!os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      if (*(a1 + 88))
      {
        v25 = @"enroll";
      }

      else
      {
        v25 = @"peer";
      }

      v26 = *(a1 + 40);
      v27 = v24;
      v28 = [v26 requestId];
      *buf = 138412546;
      v44 = v25;
      v45 = 2114;
      v46 = v28;
      v29 = "Validate %@ succeeded for requestId %{public}@";
    }

    v33 = v27;
    v34 = OS_LOG_TYPE_DEFAULT;
    v35 = 22;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v33, v34, v29, buf, v35);

LABEL_34:
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v23);
    goto LABEL_35;
  }

  if (qword_10038BC90 != -1)
  {
    sub_100248354();
  }

  v10 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
  {
    *buf = 141558530;
    v44 = 1752392040;
    v45 = 2112;
    v46 = v7;
    v47 = 2112;
    v48 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "verification failed for %{mask.hash}@: %@", buf, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_35:
}

void sub_10002EDD4(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002EE18(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002EE5C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002EEA0(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002EEE4(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002F280(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10002F9C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002FA1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 88) + 8);
    v71 = *(v13 + 40);
    v72 = 0;
    v14 = [v11 deserializeSyncedLoggableDatas:v12 loggableDatas:&v72 error:&v71];
    v15 = v72;
    objc_storeStrong((v13 + 40), v71);
    *(*(*(a1 + 96) + 8) + 24) = v14;
    if (v14 != 1)
    {
LABEL_33:

      goto LABEL_34;
    }

    v67 = a3;
    v16 = *(a1 + 48);
    v17 = [v8 uriVRFOutput];
    [v16 setWithUriVRFHash:v17];

    v66 = *(a1 + 32);
    v18 = [*(a1 + 40) accountKey];
    v64 = *(*(*(a1 + 104) + 8) + 40);
    v65 = v18;
    v62 = *(a1 + 128);
    v19 = *(a1 + 48);
    v63 = *(a1 + 56);
    v68 = v7;
    v69 = v15;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 129);
    v23 = v8;
    v24 = *(a1 + 120);
    v25 = [*(a1 + 40) idsResponseTime];
    v26 = [*(a1 + 80) metadata];
    v27 = *(*(a1 + 88) + 8);
    obj = *(v27 + 40);
    v61 = v24;
    v8 = v23;
    LOBYTE(v60) = v22;
    v59 = v20;
    v7 = v68;
    LOBYTE(v58) = v62;
    v28 = [v66 validateAndReportSelf:v68 transparentData:v23 accountKey:v65 serverloggableDatas:v64 syncedLoggableDatas:v69 selfVerificationInfo:v63 optInCheck:v58 cloudDevices:v19 pcsAccountKey:v59 kvsOptInHistory:v21 isReplay:v60 initialResult:v61 idsResponseTime:v25 responseMetadata:v26 error:&obj];
    objc_storeStrong((v27 + 40), obj);
    *(*(*(a1 + 96) + 8) + 24) = v28;

    if (*(a1 + 120) == 3)
    {
      [*(a1 + 40) setVerificationResult:3];
      *(*(*(a1 + 96) + 8) + 24) = 3;
    }

    v29 = *(*(*(a1 + 96) + 8) + 24);
    if (v29 == 3)
    {
      if (qword_10038BC90 != -1)
      {
        sub_100248444();
      }

      v9 = 0;
      v38 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 40);
        v40 = v38;
        v41 = [v39 requestId];
        *buf = 138543362;
        v74 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Ignoring validate self result for requestId %{public}@", buf, 0xCu);
      }

      goto LABEL_32;
    }

    if (v29 == 1)
    {
      v9 = 0;
      if (qword_10038BC90 != -1)
      {
        sub_10024846C();
      }

      v30 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 40);
        v32 = v30;
        v33 = [v31 requestId];
        *buf = 138543362;
        v74 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Validate self succeeded for requestId %{public}@", buf, 0xCu);
      }

      v34 = [*(a1 + 32) dataStore];
      v35 = [*(a1 + 32) applicationID];
      [v34 clearSelfValidationFollowups:v35 uri:v68 error:0];

      v36 = [*(a1 + 32) dataStore];
      v37 = [*(a1 + 32) applicationID];
      [v36 clearSelfFailureRelatedData:v37 uri:v68 error:0];
    }

    else
    {
      v9 = 0;
      if (qword_10038BC90 != -1)
      {
        sub_100248494();
      }

      v42 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 40);
        v44 = v42;
        v45 = [v43 requestId];
        v46 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138543618;
        v74 = v45;
        v75 = 2112;
        v76 = v46;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Validate self failed for requestId %{public}@: %@", buf, 0x16u);
      }

      v47 = [*(a1 + 40) idsResponseTime];
      v48 = [*(a1 + 40) accountKey];
      v49 = [v8 optInAfter:v47 accountKey:v48];

      if (!v49)
      {
        goto LABEL_32;
      }

      if (qword_10038BC90 != -1)
      {
        sub_1002484BC();
      }

      v50 = qword_10038BC98;
      if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(a1 + 32);
        v52 = v50;
        v53 = [v51 applicationID];
        *buf = 141558530;
        v74 = 1752392040;
        v75 = 2112;
        v76 = v68;
        v77 = 2112;
        v78 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Clearing IDS cache for %{mask.hash}@[%@]", buf, 0x20u);
      }

      v54 = [*(a1 + 32) stateMachine];
      v55 = [*(a1 + 40) uri];
      v56 = [*(a1 + 32) applicationID];
      [v54 clearIDSCacheForUri:v55 application:v56];

      v36 = [*(a1 + 32) stateMachine];
      [v36 triggerSelfValidate:1.0];
    }

LABEL_32:
    v57 = [TransparencyManagedDataStore serializeLoggableDatas:*(*(*(a1 + 104) + 8) + 40)];
    [*(a1 + 40) setServerLoggableDatas:v57];

    [*(a1 + 32) writeLoggableDatas:*(*(*(a1 + 104) + 8) + 40) request:*(a1 + 40)];
    objc_storeStrong((*(*(a1 + 112) + 8) + 40), v67);
    v15 = v69;
    goto LABEL_33;
  }

  if (qword_10038BC90 != -1)
  {
    sub_100248430();
  }

  v10 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
  {
    *buf = 141558530;
    v74 = 1752392040;
    v75 = 2112;
    v76 = v7;
    v77 = 2112;
    v78 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "verification failed for %{mask.hash}@: %@", buf, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 88) + 8) + 40), a4);
  *(*(*(a1 + 96) + 8) + 24) = 0;
LABEL_34:
}

void sub_1000300C8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003010C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030150(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030194(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000301D8(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10003021C(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000304F4(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030538(id a1)
{
  qword_10038BC98 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100030A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100030AAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v37 = a3;
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) accountKey];
    v13 = *(a1 + 96);
    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) idsResponseTime];
    v16 = [*(a1 + 32) metadataForInsertResponse:*(a1 + 56)];
    v17 = *(*(a1 + 72) + 8);
    v38 = v7;
    obj = *(v17 + 40);
    v18 = [v11 validateAndReportEnroll:v7 transparentData:v8 accountKey:v12 loggableDatas:v14 initialResult:v13 idsResponseTime:v15 responseMetadata:v16 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    *(*(*(a1 + 80) + 8) + 24) = v18;

    if (*(a1 + 96) == 3)
    {
      [*(a1 + 40) setVerificationResult:3];
      *(*(*(a1 + 80) + 8) + 24) = 3;
    }

    v19 = *(*(*(a1 + 80) + 8) + 24);
    v9 = 0;
    if (v19 == 3)
    {
      v7 = v38;
      if (qword_10038BC90 != -1)
      {
        sub_10024855C();
      }

      v20 = v37;
      v27 = qword_10038BC98;
      if (!os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v28 = *(a1 + 40);
      v26 = v27;
      v29 = [v28 requestId];
      *buf = 138543362;
      v41 = v29;
      v30 = "Ignoring validate enrollment result for requestId %{public}@";
      v31 = v26;
      v32 = OS_LOG_TYPE_DEFAULT;
      v33 = 12;
    }

    else
    {
      v7 = v38;
      if (v19 == 1)
      {
        v20 = v37;
        if (qword_10038BC90 != -1)
        {
          sub_100248584();
        }

        v21 = qword_10038BC98;
        if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 40);
          v23 = v21;
          v24 = [v22 requestId];
          *buf = 138543362;
          v41 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Validate enrollment succeeded for requestId %{public}@", buf, 0xCu);
        }

        v25 = *(a1 + 32);
        v26 = [*(a1 + 40) accountKey];
        [v25 recordEnrollOptInRecord:v38 accountKey:v26 transparentData:v8 cloudOptIn:*(a1 + 64)];
        goto LABEL_25;
      }

      v20 = v37;
      if (qword_10038BC90 != -1)
      {
        sub_1002485AC();
      }

      v34 = qword_10038BC98;
      if (!os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v35 = *(a1 + 40);
      v26 = v34;
      v29 = [v35 requestId];
      v36 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v41 = v29;
      v42 = 2112;
      v43 = v36;
      v30 = "Validate enrollment failed for requestId %{public}@: %@";
      v31 = v26;
      v32 = OS_LOG_TYPE_ERROR;
      v33 = 22;
    }

    _os_log_impl(&_mh_execute_header, v31, v32, v30, buf, v33);

LABEL_25:
LABEL_26:
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v20);
    goto LABEL_27;
  }

  if (qword_10038BC90 != -1)
  {
    sub_100248548();
  }

  v10 = qword_10038BC98;
  if (os_log_type_enabled(qword_10038BC98, OS_LOG_TYPE_ERROR))
  {
    *buf = 141558530;
    v41 = 1752392040;
    v42 = 2112;
    v43 = v7;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "verification failed for %{mask.hash}@: %@", buf, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
  *(*(*(a1 + 80) + 8) + 24) = 0;
LABEL_27:
}