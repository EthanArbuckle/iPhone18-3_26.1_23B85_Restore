uint64_t sub_10005E5E4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v10 = *(v2 + 24);
    v4 = sub_100035D04(a1, a2);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    v7 = v2;
    v3 = CurrentValueSubject.init(_:)();
    v8 = *(v2 + 16);
    *(v7 + 16) = v3;
  }

  return v3;
}

uint64_t sub_10005E680()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&qword_10033C358, &qword_100272B70);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E744()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&qword_10033BA70, &qword_1002722F0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();

    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E7E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&qword_10033BA90, &unk_100272350);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();

    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E8B4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (v3[2])
  {
    v4 = v3[2];
  }

  else
  {
    v6 = v3[3];
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    v13 = sub_100035D04(a1, a2);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    a3(v6, v7, v8, v9, v10, v11, v12);
    v16 = v3;
    v4 = CurrentValueSubject.init(_:)();
    v17 = v3[2];
    v16[2] = v4;
  }

  return v4;
}

uint64_t sub_10005E99C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&qword_10033C2C8, &qword_100272AC0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005EA38()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&qword_10033C2E0, &qword_100272AD8);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005EAD4()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v8 = v0[3];
    v9 = v0[4];
    v2 = sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();

    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = v0[2];
    v5[2] = v1;
  }

  return v1;
}

uint64_t sub_10005EB78()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v38, v37);
  sub_100035D04(&qword_10033C300, &unk_100272B00);
  if (swift_dynamicCast())
  {
    sub_10000903C(v38);

    return v36;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    v16 = _findStringSwitchCase(cases:string:)(&off_100300020, v15);

    swift_bridgeObjectRelease_n();
    if (!v16)
    {
      v17 = 0;
      goto LABEL_16;
    }

    if (v16 == 1)
    {
      v17 = 1;
LABEL_16:
      sub_10000903C(v38);
      return v17;
    }

    sub_10000903C(v38);
    return 2;
  }

  else
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v6 dataForKey:v18];

    if (v19)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = *((swift_isaMask & *v0) + 0x80);
      v24 = v0;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v35 = v22;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v37[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_100017494(v5, v4, v37);
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v27, 0xCu);
        sub_10000903C(v28);

        sub_100010708(v20, v35);
      }

      else
      {

        sub_100010708(v20, v22);
      }

      sub_10000903C(v38);
      return *(v24 + *((swift_isaMask & *v24) + 0x60));
    }

    else
    {
      v29 = *((swift_isaMask & *v0) + 0x80);
      v30 = v0;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_100017494(v5, v4, v37);
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v33, 0xCu);
        sub_10000903C(v34);
      }

      sub_10000903C(v38);
      return *(v30 + *((swift_isaMask & *v30) + 0x60));
    }
  }
}

uint64_t sub_10005F048()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = (v0 + *(v1 + 96));
LABEL_7:
    v9 = *v10;
    v11 = v10[1];

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v35, v34);
  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = [v6 stringForKey:v13];

    if (v14)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000903C(v35);
      return v9;
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = [v6 dataForKey:v15];

    if (v16)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = *((swift_isaMask & *v0) + 0x80);
      v21 = v0;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v32 = v19;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100017494(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v24, 0xCu);
        sub_10000903C(v25);

        sub_100010708(v17, v32);
      }

      else
      {

        sub_100010708(v17, v19);
      }

      sub_10000903C(v35);
      v31 = *((swift_isaMask & *v21) + 0x60);
    }

    else
    {
      v26 = *((swift_isaMask & *v0) + 0x80);
      v21 = v0;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100017494(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
        sub_10000903C(v30);
      }

      sub_10000903C(v35);
      v31 = *((swift_isaMask & *v21) + 0x60);
    }

    v10 = (v21 + v31);
    goto LABEL_7;
  }

  sub_10000903C(v35);

  return v33;
}

uint64_t sub_10005F504(uint64_t a1, Swift::OpaquePointer a2)
{
  v3 = swift_isaMask & *v2;
  v4 = *(v2 + *(v3 + 0x70));
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = (v2 + *((swift_isaMask & *v2) + 0x68));
  v8 = *v6;
  v7 = v6[1];
  v9 = v4;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {

    v3 = swift_isaMask & *v2;
LABEL_6:
    v12 = *(v2 + *(v3 + 96));
    return v12 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v43, v42);
  if (swift_dynamicCast())
  {
    sub_10000903C(v43);

    v12 = v41;
    return v12 & 1;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v9 stringForKey:v14];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    v20 = _findStringSwitchCase(cases:string:)(a2, v19);

    if (!v20)
    {
      v12 = 0;
      goto LABEL_16;
    }

    if (v20 == 1)
    {
      v12 = 1;
LABEL_16:
      sub_10000903C(v43);

      return v12 & 1;
    }

    v32 = *((swift_isaMask & *v2) + 0x80);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100017494(v8, v7, v42);
      v38 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v34, v35, v38, v36, 0xCu);
      sub_10000903C(v37);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v9 dataForKey:v21];

  if (!v22)
  {
    v39 = *((swift_isaMask & *v2) + 0x80);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100017494(v8, v7, v42);
      v38 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_21;
    }

LABEL_22:

    sub_10000903C(v43);
    v12 = *(v33 + *((swift_isaMask & *v33) + 0x60));
    return v12 & 1;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = *((swift_isaMask & *v2) + 0x80);
  v27 = v2;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v40 = v25;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100017494(v8, v7, v42);
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v30, 0xCu);
    sub_10000903C(v31);

    sub_100010708(v23, v40);
  }

  else
  {

    sub_100010708(v23, v25);
  }

  sub_10000903C(v43);
  v12 = *(v27 + *((swift_isaMask & *v27) + 0x60));
  return v12 & 1;
}

void sub_10005FA50()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v39, v38);
  if (swift_dynamicCast())
  {
    sub_10000903C(v39);

    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    LODWORD(v38[0]) = 0;
    v15 = sub_10006B384(v12, v14, v38, &_swift_stdlib_strtof_clocale);

    if (v15)
    {

      sub_10000903C(v39);
      return;
    }

    v27 = *((swift_isaMask & *v0) + 0x80);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v5, v4, v38);
    v33 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_17;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [v6 dataForKey:v16];

  if (!v17)
  {
    v34 = *((swift_isaMask & *v0) + 0x80);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
LABEL_18:

      sub_10000903C(v39);
      v35 = *(v28 + *((swift_isaMask & *v28) + 0x60));
      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v5, v4, v38);
    v33 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v29, v30, v33, v31, 0xCu);
    sub_10000903C(v32);

    goto LABEL_18;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = *((swift_isaMask & *v0) + 0x80);
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v37 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100017494(v5, v4, v38);
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v25, 0xCu);
    sub_10000903C(v26);

    sub_100010708(v18, v37);
  }

  else
  {

    sub_100010708(v18, v20);
  }

  sub_10000903C(v39);
  v36 = *(v22 + *((swift_isaMask & *v22) + 0x60));
}

uint64_t sub_10005FFC0()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = v0 + *(v1 + 96);
    goto LABEL_7;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v38, v37);
  sub_100035D04(&unk_10034B520, &qword_1002702E0);
  if (swift_dynamicCast())
  {
    sub_10000903C(v38);

    return v36;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [v6 stringForKey:v12];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100165238(v14, v16);
    sub_10000903C(v38);
    return v17;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [v6 dataForKey:v18];

  if (v19)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = *((swift_isaMask & *v0) + 0x80);
    v24 = v0;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v35 = v22;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100017494(v5, v4, v37);
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v27, 0xCu);
      sub_10000903C(v28);

      sub_100010708(v20, v35);
    }

    else
    {

      sub_100010708(v20, v22);
    }

    sub_10000903C(v38);
    v34 = *((swift_isaMask & *v24) + 0x60);
  }

  else
  {
    v29 = *((swift_isaMask & *v0) + 0x80);
    v24 = v0;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100017494(v5, v4, v37);
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v32, 0xCu);
      sub_10000903C(v33);
    }

    sub_10000903C(v38);
    v34 = *((swift_isaMask & *v24) + 0x60);
  }

  v10 = v24 + v34;
LABEL_7:
  result = *v10;
  v11 = v10[8];
  return result;
}

uint64_t sub_10006045C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v40, v39);
  if (swift_dynamicCast())
  {
    sub_10000903C(v40);

    return v38;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100165238(v12, v14);
    if ((v16 & 1) == 0)
    {
      v35 = v15;
      sub_10000903C(v40);

      return v35;
    }

    v17 = *((swift_isaMask & *v0) + 0x80);
    v18 = v0;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100017494(v5, v4, v39);
    v23 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_18;
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = [v6 dataForKey:v24];

  if (!v25)
  {
    v36 = *((swift_isaMask & *v0) + 0x80);
    v18 = v0;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {
LABEL_19:

      sub_10000903C(v40);
      return *(v18 + *((swift_isaMask & *v18) + 0x60));
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100017494(v5, v4, v39);
    v23 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v19, v20, v23, v21, 0xCu);
    sub_10000903C(v22);

    goto LABEL_19;
  }

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = *((swift_isaMask & *v0) + 0x80);
  v30 = v0;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v37 = v28;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100017494(v5, v4, v39);
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v33, 0xCu);
    sub_10000903C(v34);

    sub_100010708(v26, v37);
  }

  else
  {

    sub_100010708(v26, v28);
  }

  sub_10000903C(v40);
  return *(v30 + *((swift_isaMask & *v30) + 0x60));
}

uint64_t sub_100060984@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100035D04(&qword_10033C278, &qword_100272A78);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = swift_isaMask & *v1;
  v11 = *(v1 + *(v10 + 0x70));
  if (!v11)
  {
LABEL_6:
    v21 = v1 + *(v10 + 96);
    v22 = a1;

    return sub_10006C4AC(v21, v22);
  }

  v12 = (v1 + *((swift_isaMask & *v1) + 0x68));
  v14 = *v12;
  v13 = v12[1];
  v15 = v11;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 objectForKey:v16];

  if (!v17)
  {

    v10 = swift_isaMask & *v1;
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v54, v53);
  v18 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  if (swift_dynamicCast())
  {
    sub_10000903C(v54);

    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    v19 = v9;
    v20 = a1;
    return sub_10006C51C(v19, v20);
  }

  v23 = *(v18 - 8);
  (*(v23 + 56))(v9, 1, 1, v18);
  sub_1000097E8(v9, &qword_10033C278, &qword_100272A78);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v15 stringForKey:v24];

  if (v25)
  {
    v52 = a1;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_100063878(v26, v28, v7);
    if ((*(v23 + 48))(v7, 1, v18) != 1)
    {
      sub_10000903C(v54);

      v19 = v7;
      v20 = v52;
      return sub_10006C51C(v19, v20);
    }

    sub_1000097E8(v7, &qword_10033C278, &qword_100272A78);
    v29 = *((swift_isaMask & *v1) + 0x80);
    v30 = v1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_21;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100017494(v14, v13, v53);
    v35 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_20;
  }

  v36 = String._bridgeToObjectiveC()();
  v37 = [v15 dataForKey:v36];

  if (v37)
  {
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = *((swift_isaMask & *v1) + 0x80);
    v42 = v1;
    v52 = v1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = a1;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v40;
      v48 = v47;
      v53[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_100017494(v14, v13, v53);
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v46, 0xCu);
      sub_10000903C(v48);

      a1 = v45;

      sub_100010708(v38, v51);
    }

    else
    {

      sub_100010708(v38, v40);
    }

    sub_10000903C(v54);
    v21 = v42 + *((swift_isaMask & *v42) + 0x60);
    v22 = a1;
    return sub_10006C4AC(v21, v22);
  }

  v52 = a1;
  v50 = *((swift_isaMask & *v1) + 0x80);
  v30 = v1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100017494(v14, v13, v53);
    v35 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v31, v32, v35, v33, 0xCu);
    sub_10000903C(v34);
  }

LABEL_21:

  sub_10000903C(v54);
  v21 = v30 + *((swift_isaMask & *v30) + 0x60);
  v22 = v52;
  return sub_10006C4AC(v21, v22);
}

void sub_1000610B4(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v1 + *(v3 + 0x70));
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = (v1 + *((swift_isaMask & *v1) + 0x68));
  v7 = *v5;
  v6 = v5[1];
  v8 = v4;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {

    v3 = swift_isaMask & *v1;
LABEL_6:
    v12 = (v1 + *(v3 + 96));
    v13 = *v12;
    v14 = v12[1];
    *a1 = *v12;
    a1[1] = v14;

    sub_10006DADC(v13, v14);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v39, v38);
  sub_100035D04(&qword_10033C330, &qword_100272B48);
  if (swift_dynamicCast())
  {
    sub_10000903C(v39);

    v11 = v37;
LABEL_11:
    *a1 = v11;
    return;
  }

  sub_10006DAF0(0, 0xB000000000000000);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v8 stringForKey:v15];

  if (v16)
  {

    sub_10000903C(v39);
    v11 = xmmword_100272810;
    goto LABEL_11;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 dataForKey:v17];

  if (v18)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = *((swift_isaMask & *v1) + 0x80);
    v22 = v1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v35 = v20;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100017494(v7, v6, v38);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v25, 0xCu);
      sub_10000903C(v26);

      sub_100010708(v36, v35);
    }

    else
    {

      sub_100010708(v36, v20);
    }
  }

  else
  {
    v27 = *((swift_isaMask & *v1) + 0x80);
    v22 = v1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100017494(v7, v6, v38);
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v30, 0xCu);
      sub_10000903C(v31);
    }
  }

  sub_10000903C(v39);
  v32 = (v22 + *((swift_isaMask & *v22) + 0x60));
  v33 = *v32;
  v34 = v32[1];
  *a1 = *v32;
  a1[1] = v34;
  sub_10006DADC(v33, v34);
}

uint64_t sub_100061554()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
LABEL_7:

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v31, v30);
  sub_100035D04(&qword_10033C320, &qword_100272B40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v6 stringForKey:v11];

    if (v12)
    {

      v13 = *((swift_isaMask & *v0) + 0x80);
      v14 = v0;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v15, v16))
      {
LABEL_13:

        sub_10000903C(v31);
        v9 = *(v14 + *((swift_isaMask & *v14) + 0x60));
        goto LABEL_7;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100017494(v5, v4, v30);
      v19 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    }

    else
    {
      v20 = String._bridgeToObjectiveC()();
      v21 = [v6 dataForKey:v20];

      if (v21)
      {
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = type metadata accessor for JSONDecoder();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        swift_allocObject();
        sub_10006DA04(v22, v24);
        JSONDecoder.init()();
        sub_10006DA58();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_100010708(v22, v24);

        sub_100010708(v22, v24);
        v9 = v30[0];
        sub_10000903C(v31);
        return v9;
      }

      v28 = *((swift_isaMask & *v0) + 0x80);
      v14 = v0;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_13;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100017494(v5, v4, v30);
      v19 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
    }

    _os_log_impl(&_mh_execute_header, v15, v16, v19, v17, 0xCu);
    sub_10000903C(v18);

    goto LABEL_13;
  }

  sub_10000903C(v31);

  return v29;
}

NSString sub_100061B10()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
LABEL_7:
    v10 = v9;
    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v34, v33);
  sub_100035D04(&qword_10033C380, &qword_100272B98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 stringForKey:v12];

    if (v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = String._bridgeToObjectiveC()();

      sub_10000903C(v34);
      return v9;
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v6 dataForKey:v14];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = *((swift_isaMask & *v0) + 0x80);
      v20 = v0;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v31 = v18;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v33[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100017494(v5, v4, v33);
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v23, 0xCu);
        sub_10000903C(v24);

        sub_100010708(v16, v31);
      }

      else
      {

        sub_100010708(v16, v18);
      }

      sub_10000903C(v34);
      v30 = *((swift_isaMask & *v20) + 0x60);
    }

    else
    {
      v25 = *((swift_isaMask & *v0) + 0x80);
      v20 = v0;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100017494(v5, v4, v33);
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v28, 0xCu);
        sub_10000903C(v29);
      }

      sub_10000903C(v34);
      v30 = *((swift_isaMask & *v20) + 0x60);
    }

    v9 = *(v20 + v30);
    goto LABEL_7;
  }

  sub_10000903C(v34);

  return v32;
}

unint64_t sub_100061FA4()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v39, v38);
  if (swift_dynamicCast())
  {
    sub_10000903C(v39);

    return v37;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v40._countAndFlagsBits = v12;
    v40._object = v14;
    v15 = sub_1000C7FEC(v40);
    if (v15 != 5)
    {
      v34 = v15;
      sub_10000903C(v39);

      return v34;
    }

    v16 = *((swift_isaMask & *v0) + 0x80);
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(v5, v4, v38);
    v22 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_18;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 dataForKey:v23];

  if (!v24)
  {
    v35 = *((swift_isaMask & *v0) + 0x80);
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
LABEL_19:

      sub_10000903C(v39);
      return *(v17 + *((swift_isaMask & *v17) + 0x60));
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(v5, v4, v38);
    v22 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
    sub_10000903C(v21);

    goto LABEL_19;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = *((swift_isaMask & *v0) + 0x80);
  v29 = v0;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v36 = v27;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100017494(v5, v4, v38);
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v32, 0xCu);
    sub_10000903C(v33);

    sub_100010708(v25, v36);
  }

  else
  {

    sub_100010708(v25, v27);
  }

  sub_10000903C(v39);
  return *(v29 + *((swift_isaMask & *v29) + 0x60));
}

void sub_1000624E0()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v39, v38);
  if (swift_dynamicCast())
  {
    sub_10000903C(v39);

    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v38[0] = 0;
    v15 = sub_10006B384(v12, v14, v38, &_swift_stdlib_strtod_clocale);

    if (v15)
    {

      sub_10000903C(v39);
      return;
    }

    v27 = *((swift_isaMask & *v0) + 0x80);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v5, v4, v38);
    v33 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_17;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [v6 dataForKey:v16];

  if (!v17)
  {
    v34 = *((swift_isaMask & *v0) + 0x80);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
LABEL_18:

      sub_10000903C(v39);
      v35 = *(v28 + *((swift_isaMask & *v28) + 0x60));
      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v5, v4, v38);
    v33 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v29, v30, v33, v31, 0xCu);
    sub_10000903C(v32);

    goto LABEL_18;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = *((swift_isaMask & *v0) + 0x80);
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v37 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100017494(v5, v4, v38);
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v25, 0xCu);
    sub_10000903C(v26);

    sub_100010708(v18, v37);
  }

  else
  {

    sub_100010708(v18, v20);
  }

  sub_10000903C(v39);
  v36 = *(v22 + *((swift_isaMask & *v22) + 0x60));
}

uint64_t sub_100062A50()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v39, v38);
  sub_100035D04(&qword_100339988, &qword_100272B60);
  if (swift_dynamicCast())
  {
    sub_10000903C(v39);

    return v37;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v6 stringForKey:v10];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100165238(v12, v14);
      LOBYTE(v14) = v16;

      if ((v14 & 1) != 0 || (v17 = sub_1000CB020(v15), v17 == 5))
      {
        sub_10000903C(v39);
        return 5;
      }

      else
      {
        v29 = v17;
        sub_10000903C(v39);
        return v29;
      }
    }

    else
    {
      v18 = String._bridgeToObjectiveC()();
      v19 = [v6 dataForKey:v18];

      if (v19)
      {
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = *((swift_isaMask & *v0) + 0x80);
        v24 = v0;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v36 = v22;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v38[0] = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_100017494(v5, v4, v38);
          _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v27, 0xCu);
          sub_10000903C(v28);

          sub_100010708(v20, v36);
        }

        else
        {

          sub_100010708(v20, v22);
        }

        sub_10000903C(v39);
        return *(v24 + *((swift_isaMask & *v24) + 0x60));
      }

      else
      {
        v30 = *((swift_isaMask & *v0) + 0x80);
        v31 = v0;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v38[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_100017494(v5, v4, v38);
          _os_log_impl(&_mh_execute_header, v32, v33, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v34, 0xCu);
          sub_10000903C(v35);
        }

        sub_10000903C(v39);
        return *(v31 + *((swift_isaMask & *v31) + 0x60));
      }
    }
  }
}

uint64_t sub_100062F0C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = v0 + *(v1 + 96);
LABEL_7:
    result = *v10;
    v11 = v10[8];
    return result;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v38, v37);
  sub_100035D04(&qword_10033C348, &qword_100272B68);
  if (swift_dynamicCast())
  {
    sub_10000903C(v38);

    return v36;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [v6 stringForKey:v12];

  if (!v13)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v6 dataForKey:v18];

    if (v19)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = *((swift_isaMask & *v0) + 0x80);
      v24 = v0;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v35 = v22;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v37[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_100017494(v5, v4, v37);
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v27, 0xCu);
        sub_10000903C(v28);

        sub_100010708(v20, v35);
      }

      else
      {

        sub_100010708(v20, v22);
      }

      sub_10000903C(v38);
      v34 = *((swift_isaMask & *v24) + 0x60);
    }

    else
    {
      v29 = *((swift_isaMask & *v0) + 0x80);
      v24 = v0;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v37[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100017494(v5, v4, v37);
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v32, 0xCu);
        sub_10000903C(v33);
      }

      sub_10000903C(v38);
      v34 = *((swift_isaMask & *v24) + 0x60);
    }

    v10 = v24 + v34;
    goto LABEL_7;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v37[0] = 0;
  LOBYTE(v14) = sub_10006B384(v14, v16, v37, &_swift_stdlib_strtod_clocale);

  if (v14)
  {
    v17 = v37[0];
    sub_10000903C(v38);
    return v17;
  }

  else
  {
    sub_10000903C(v38);
    return 0;
  }
}

uint64_t sub_100063400()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = (v0 + *(v1 + 96));
LABEL_7:
    v9 = *v10;
    v11 = v10[1];

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v35, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = [v6 stringForKey:v13];

    if (v14)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000903C(v35);
      return v9;
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = [v6 dataForKey:v15];

    if (v16)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = *((swift_isaMask & *v0) + 0x80);
      v21 = v0;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v32 = v19;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100017494(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v24, 0xCu);
        sub_10000903C(v25);

        sub_100010708(v17, v32);
      }

      else
      {

        sub_100010708(v17, v19);
      }

      sub_10000903C(v35);
      v31 = *((swift_isaMask & *v21) + 0x60);
    }

    else
    {
      v26 = *((swift_isaMask & *v0) + 0x80);
      v21 = v0;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100017494(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
        sub_10000903C(v30);
      }

      sub_10000903C(v35);
      v31 = *((swift_isaMask & *v21) + 0x60);
    }

    v10 = (v21 + v31);
    goto LABEL_7;
  }

  sub_10000903C(v35);

  return v33;
}

uint64_t sub_100063878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v4 = type metadata accessor for Date.ISO8601FormatStyle();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  v25 = a1;
  v26 = v23;
  static ParseStrategy<>.iso8601.getter();
  sub_10005E4C4(&qword_10033C288, 255, &type metadata accessor for Date.ISO8601FormatStyle);
  Date.init<A>(_:strategy:)();
  v19 = *(v7 + 32);
  v19(v13, v11, v6);
  v19(v18, v13, v6);
  (*(v7 + 56))(v18, 0, 1, v6);
  v20 = v24;
  sub_10006C51C(v18, v24);
  return (*(v15 + 56))(v20, 0, 1, v14);
}

uint64_t sub_100063B28(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for HandoffDevice();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_100064A10(v7, result + 1, &qword_10033C1D0, &qword_1002729A8, type metadata accessor for HandoffDevice, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_100065728(v21 + 1, &qword_10033C1D0, &qword_1002729A8, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
        }

        sub_100065AB8(v22, v20, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = static UUID.== infix(_:_:)();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_1000661B8(v19, v13, isUniquelyReferenced_nonNull_native, &qword_10033C1D0, &qword_1002729A8, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, type metadata accessor for HandoffDevice);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100063E3C(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100065BB0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100063F34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100065D0C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10006421C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1000647D8(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100065490(v19 + 1);
    }

    sub_1000659CC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  v10 = *(v6 + 40);
  sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100065FB8(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_10005E4C4(&unk_10034B600, 255, &type metadata accessor for AnyCancellable);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1000644C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for TimedTaskStorage();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_100064A10(v7, result + 1, &qword_10033C308, &unk_100272B18, type metadata accessor for TimedTaskStorage, &OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_100065728(v21 + 1, &qword_10033C308, &unk_100272B18, &OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier);
        }

        sub_100065AB8(v22, v20, &OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = static UUID.== infix(_:_:)();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_1000661B8(v19, v13, isUniquelyReferenced_nonNull_native, &qword_10033C308, &unk_100272B18, &OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier, type metadata accessor for TimedTaskStorage);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000647D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100035D04(&unk_10034B5F0, &qword_100272B10);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100065490(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100064A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), uint64_t *a6)
{
  if (a2)
  {
    sub_100035D04(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v25 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v19 = *(v10 + 16);
        if (*(v10 + 24) <= v19)
        {
          sub_100065728(v19 + 1, a3, a4, a6);
        }

        v10 = v25;
        v11 = *(v25 + 40);
        Hasher.init(_seed:)();
        v12 = *a6;
        type metadata accessor for UUID();
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v14 = v25 + 56;
        v15 = -1 << *(v25 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v25 + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v25 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v17 == v21;
            if (v17 == v21)
            {
              v17 = 0;
            }

            v20 |= v22;
            v23 = *(v14 + 8 * v17);
          }

          while (v23 == -1);
          v18 = __clz(__rbit64(~v23)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v25 + 48) + 8 * v18) = v24;
        ++*(v25 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_100064C80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100035D04(&qword_10033C2E8, &unk_100272AE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100064ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100065130(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100035D04(&qword_10033C310, &qword_100272B28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100065490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100035D04(&unk_10034B5F0, &qword_100272B10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100065728(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  sub_100035D04(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v6 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + 8 * (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      Hasher.init(_seed:)();
      v23 = *a4;
      type metadata accessor for UUID();
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v6 + 32);
    if (v31 >= 64)
    {
      bzero((v6 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    v5 = v32;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

unint64_t sub_1000659CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for AnyCancellable();
  sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100065AB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 40);
  Hasher.init(_seed:)();
  v7 = *a3;
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v8 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100065BB0(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100064C80(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000663C0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000669D4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for PCActivityAssetType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100065D0C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100065130(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10006665C();
      goto LABEL_12;
    }

    sub_100066E2C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100065FB8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100065490(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100066894(&unk_10034B5F0, &qword_100272B10);
      goto LABEL_12;
    }

    sub_10006714C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for AnyCancellable();
  sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10005E4C4(&unk_10034B600, 255, &type metadata accessor for AnyCancellable);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000661B8(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v9 = v7;
  v11 = result;
  v12 = *(*v7 + 16);
  v13 = *(*v7 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v14 = a7;
    sub_100065728(v12 + 1, a4, a5, a6);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_100066894(a4, a5);
      goto LABEL_12;
    }

    v14 = a7;
    sub_1000673C8(v12 + 1, a4, a5, a6);
  }

  v15 = *v7;
  v16 = *(*v7 + 40);
  Hasher.init(_seed:)();
  v17 = *a6;
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  v18 = -1 << *(v15 + 32);
  a2 = result & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v14(0);
    do
    {
      v20 = *(*(v15 + 48) + 8 * a2);
      v21 = *a6;

      LOBYTE(v21) = static UUID.== infix(_:_:)();

      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v9;
  *(*v9 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v11;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000663C0()
{
  v1 = v0;
  sub_100035D04(&qword_10033C2E8, &unk_100272AE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100066500()
{
  v1 = v0;
  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10006665C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033C310, &qword_100272B28);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_100066894(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1000669D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100035D04(&qword_10033C2E8, &unk_100272AE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100066BF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100066E2C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100035D04(&qword_10033C310, &qword_100272B28);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10006714C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100035D04(&unk_10034B5F0, &qword_100272B10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000673C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  sub_100035D04(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v6 + 16))
  {
    v31 = v5;
    v32 = v6;
    v10 = 0;
    v11 = v6 + 56;
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + 8 * (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      Hasher.init(_seed:)();
      v23 = *a4;
      type metadata accessor for UUID();
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);

      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
      v6 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v5 = v31;
        goto LABEL_28;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v5 = v9;
  }

  return result;
}

uint64_t sub_10006764C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100035D04(&qword_10033C1D0, &qword_1002729A8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v27 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v28 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);

    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v27;
    v10 = v28;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v28 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000678C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100035D04(&qword_10033C310, &qword_100272B28);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100067BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006665C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_100068414(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_100067ED4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v10 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *v5;

    v14 = __CocoaSet.contains(_:)();

    if (v14)
    {
      v15 = sub_100068230(v12, a1, a3, a4, a5, a2);

      return v15;
    }

    return 0;
  }

  v30 = v5;
  v17 = *(v10 + 40);
  Hasher.init(_seed:)();
  v18 = *a2;
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v19 = Hasher._finalize()();
  v20 = -1 << *(v10 + 32);
  v21 = v19 & ~v20;
  if (((*(v10 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v29 = a4;
  v22 = ~v20;
  while (1)
  {
    v23 = *(*(v10 + 48) + 8 * v21);
    v24 = *a2;

    LOBYTE(v24) = static UUID.== infix(_:_:)();

    if (v24)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v10 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v30;
  v31 = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100066894(a3, v29);
    v27 = v31;
  }

  v28 = *(*(v27 + 48) + 8 * v21);
  sub_100068720(v21, a2);
  result = v28;
  *v30 = v31;
  return result;
}

uint64_t sub_1000680F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100066500();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_100068940(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_100068230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;

  v13 = __CocoaSet.count.getter();
  v14 = swift_unknownObjectRetain();
  v15 = sub_100064A10(v14, v13, a3, a4, a5, a6);
  v27 = v15;
  v16 = *(v15 + 40);
  Hasher.init(_seed:)();
  v17 = *a6;
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);

  dispatch thunk of Hashable.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v15 + 32);
  v20 = v18 & ~v19;
  if ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    while (1)
    {
      v22 = *(*(v15 + 48) + 8 * v20);
      v23 = *a6;

      LOBYTE(v23) = static UUID.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v24 = *(*(v15 + 48) + 8 * v20);
  sub_100068720(v20, a6);
  v25 = *a6;
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    *v11 = v27;
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100068414(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_100068720(unint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *v2;
  v5 = *v2 + 56;
  v6 = -1 << *(*v2 + 32);
  v7 = (result + 1) & ~v6;
  if (((1 << v7) & *(v5 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v6;
    v9 = *v2;

    v10 = _HashTable.previousHole(before:)();
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v11 = (v10 + 1) & v8;
      do
      {
        v12 = *(v4 + 40);
        v13 = *(*(v4 + 48) + 8 * v7);
        Hasher.init(_seed:)();
        v14 = *a2;
        type metadata accessor for UUID();
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v8;
        if (v3 >= v11)
        {
          if (v16 < v11)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v11)
        {
          goto LABEL_11;
        }

        if (v3 >= v16)
        {
LABEL_11:
          v17 = *(v4 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v7);
          if (v3 != v7 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v7;
          }
        }

LABEL_5:
        v7 = (v7 + 1) & v8;
      }

      while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    *(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  }

  else
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v4 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v22;
    ++*(v4 + 36);
  }

  return result;
}

unint64_t sub_100068940(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100068B04(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for HandoffDevice();
    sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_100004F98();
    }

    while (1)
    {
      sub_100067ED4(v17, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, &qword_10033C1D0, &qword_1002729A8, type metadata accessor for HandoffDevice);

      v8 = v15;
      v9 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for HandoffDevice();
        swift_dynamicCast();
        v17 = v18;
        v15 = v8;
        v16 = v9;
        if (v18)
        {
          continue;
        }
      }

      return sub_100004F98();
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      return sub_100004F98();
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100068D6C(uint64_t a1)
{
  v3 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1000097E8(v6, &unk_100348F30, &unk_100272540))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_100067BF4(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100068F88(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000680F4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000690B4(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  v69 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = __CocoaSet.makeIterator()();
    v3 = type metadata accessor for HandoffDevice();
    sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v62 = v8;
  v15 = (v8 + 64) >> 6;
  v70 = (v69 + 56);
  v77 = v10;
  v65 = v15;
  v67 = v5;
  v66 = v7;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_64;
      }

      v71 = v22;
      type metadata accessor for HandoffDevice();
      swift_dynamicCast();
      v21 = v72;
      v19 = v9;
      v3 = v10;
      if (!v72)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v16 = v10;
      v17 = v9;
      if (v10)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v21 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v15 <= (v9 + 1))
        {
          v18 = v9 + 1;
        }

        else
        {
          v18 = v15;
        }

        v19 = v18 - 1;
        v20 = v9;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_66;
          }

          if (v17 >= v15)
          {
            break;
          }

          v16 = *(v7 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v21 = 0;
        v3 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v62;
      v76 = v19;
      v77 = v3;
      if (!v21)
      {
LABEL_64:
        sub_100004F98();
        return v69;
      }
    }

    v23 = *(v69 + 40);
    Hasher.init(_seed:)();
    v68 = v21;
    v64 = type metadata accessor for UUID();
    v63 = sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v69 + 32);
    v2 = v24 & ~v25;
    v5 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v70[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v19;
    v10 = v3;
    v5 = v67;
    v7 = v66;
    v15 = v65;
  }

  v26 = ~v25;
  v27 = *(*(v69 + 48) + 8 * v2);

  v28 = static UUID.== infix(_:_:)();

  if ((v28 & 1) == 0)
  {
    do
    {
      v2 = (v2 + 1) & v26;
      v5 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v70[v2 >> 6]) == 0)
      {
        goto LABEL_10;
      }

      v29 = *(*(v69 + 48) + 8 * v2);

      v30 = static UUID.== infix(_:_:)();
    }

    while ((v30 & 1) == 0);
  }

  v10 = v69;

  v32 = *(v69 + 32);
  v9 = ((1 << v32) + 63) >> 6;
  v6 = 8 * v9;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v59 = v9;
    v60 = &v58;
    __chkstk_darwin(v31);
    v34 = &v58 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v34, v70, v33);
    v35 = *&v34[8 * v5] & ~v4;
    v36 = *(v10 + 16);
    v61 = v34;
    *&v34[8 * v5] = v35;
    v37 = v36 - 1;
    v2 = v67;
    v5 = v66;
    v38 = v65;
    while (2)
    {
      v68 = v37;
LABEL_35:
      if ((v2 & 0x8000000000000000) != 0)
      {
        v40 = __CocoaSet.Iterator.next()();
        if (!v40)
        {
          goto LABEL_61;
        }

        v71 = v40;
        type metadata accessor for HandoffDevice();
        swift_dynamicCast();
        v9 = v72;
        if (!v72)
        {
          goto LABEL_61;
        }

        goto LABEL_50;
      }

      if (v3)
      {
        v39 = v19;
LABEL_48:
        v43 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v9 = *(*(v2 + 48) + ((v39 << 9) | (8 * v43)));

        v42 = v39;
LABEL_49:
        v73 = v2;
        v74 = v5;
        v75 = v62;
        v76 = v42;
        v19 = v42;
        v77 = v3;
        if (!v9)
        {
LABEL_61:
          v11 = sub_10006764C(v61, v59, v37, v10);
          goto LABEL_62;
        }

LABEL_50:
        v44 = *(v10 + 40);
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v45 = Hasher._finalize()();
        v46 = -1 << *(v10 + 32);
        v47 = v45 & ~v46;
        v4 = v47 >> 6;
        v48 = 1 << v47;
        if (((1 << v47) & v70[v47 >> 6]) != 0)
        {
          v49 = ~v46;
          while (1)
          {
            v50 = *(*(v10 + 48) + 8 * v47);

            v51 = static UUID.== infix(_:_:)();

            if (v51)
            {
              break;
            }

            v47 = (v47 + 1) & v49;
            v4 = v47 >> 6;
            v48 = 1 << v47;
            v10 = v69;
            if (((1 << v47) & v70[v47 >> 6]) == 0)
            {
              goto LABEL_34;
            }
          }

          v37 = v68;

          v52 = v61[v4];
          v61[v4] = v52 & ~v48;
          v10 = v69;
          v2 = v67;
          v5 = v66;
          v38 = v65;
          if ((v52 & v48) != 0)
          {
            if (__OFSUB__(v37--, 1))
            {
              __break(1u);
            }

            if (!v37)
            {

              v11 = &_swiftEmptySetSingleton;
              goto LABEL_62;
            }

            continue;
          }
        }

        else
        {
LABEL_34:

          v2 = v67;
          v5 = v66;
          v38 = v65;
          v37 = v68;
        }

        goto LABEL_35;
      }

      break;
    }

    if (v38 <= (v19 + 1))
    {
      v41 = v19 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v39 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v39 >= v38)
      {
        v9 = 0;
        v3 = 0;
        goto LABEL_49;
      }

      v3 = *(v5 + 8 * v39);
      ++v19;
      if (v3)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v10;
    v56 = v6;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v10 = v55;
      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  v11 = sub_10006A8FC(v57, v9, v55, v2, &v73);

LABEL_62:
  sub_100004F98();
  return v11;
}

void *sub_100069920(uint64_t a1, void *a2)
{
  v5 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_1000097E8(v32, &unk_100348F30, &unk_100272540);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_1000097E8(v26, &unk_100348F30, &unk_100272540);
        a2 = sub_1000678C8(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_10006ABDC(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_100004F98();
  return a2;
}

void *sub_10006A38C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_100008BC0(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10006B0B8(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100004F98();
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10006A8FC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  v29 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v31 = a3 + 56;
  while (2)
  {
    v28 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for HandoffDevice();
          swift_dynamicCast();
          if (!v32)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v12 = (v5[2] + 64) >> 6;
            if (v12 <= v9 + 1)
            {
              v13 = v9 + 1;
            }

            else
            {
              v13 = (v5[2] + 64) >> 6;
            }

            v14 = v13 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v12)
              {
                v5[3] = v14;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v15 = (v10 - 1) & v10;
          v16 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

          v5[3] = v11;
          v5[4] = v15;
          if (!v16)
          {
LABEL_29:

            return sub_10006764C(v29, a2, v28, a3);
          }
        }

        v17 = *(a3 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v31 + 8 * (v20 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      v23 = ~v19;
      while (1)
      {
        v24 = *(*(a3 + 48) + 8 * v20);

        v25 = static UUID.== infix(_:_:)();

        if (v25)
        {
          break;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v31 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      v5 = a5;
      v26 = v29[v21];
      v29[v21] = v26 & ~v22;
    }

    while ((v26 & v22) == 0);
    v8 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    if (v28 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_10006ABDC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000097E8(v12, &unk_100348F30, &unk_100272540);
          v48 = v64;

          return sub_1000678C8(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

unint64_t *sub_10006B0B8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_100008BC0(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

BOOL sub_10006B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t *sub_10006B474(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033B400, &qword_100271F70);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C270, &unk_100272A68);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024CBF0(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006B6A4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C258, &qword_100272A58);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C260, &qword_100272A60);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024CD10(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006B8D4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C248, &qword_100272A40);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C250, &unk_100272A48);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D038(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006BB04(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_100339828, &unk_100270300);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C240, &qword_100272A38);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D04C(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006BD34(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_1003452D0, &qword_10027C230);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C238, &qword_100272A30);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D060(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006BF64(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C228, &qword_10027E240);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C230, &unk_100272A20);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D264(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006C194(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C218, &qword_100272A08);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C220, &unk_100272A10);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D278(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t sub_10006C458(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

uint64_t sub_10006C4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10006C58C(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C2B8, &qword_100272AB0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C2C0, &qword_100272AB8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D4F8(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006C7BC(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C2A8, &qword_100272AA0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C2B0, &qword_100272AA8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D4E4(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006C9EC(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C298, &qword_100272A90);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C2A0, &qword_100272A98);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D4D0(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

_BYTE *sub_10006CC48@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_10006CCD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 != 3)
  {
    return sub_10006C458(a1, a2, a3);
  }

  return a1;
}

uint64_t *sub_10006CCE4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C388, &qword_100272BA0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C390, &qword_100272BA8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D71C(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006CF14(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_100339828, &unk_100270300);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C240, &qword_100272A38);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024D394(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006D144(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C370, &qword_10027E1D0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C378, &qword_100272B90);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024DE08(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006D374(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C360, &qword_100272B78);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C368, &unk_100272B80);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024DF18(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006D5A4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&qword_10033C338, &qword_100272B50);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C340, &qword_100272B58);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024E038(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t *sub_10006D7D4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v26) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  v11 = sub_100035D04(&unk_100348F50, &qword_100272B30);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = sub_100035D04(&qword_10033C318, &qword_100272B38);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PassthroughSubject.init()();
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v2[4] = v14;
  v2[5] = v18;
  v2[6] = v21;
  v22 = v2 + qword_100346AF8;
  v23 = sub_10024E6AC(_swiftEmptyArrayStorage);
  *v22 = 0;
  *(v22 + 8) = v23;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v26);
  v27 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v24;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v10, v6);
  return v3;
}

uint64_t sub_10006DA04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10006DA58()
{
  result = qword_10033C328;
  if (!qword_10033C328)
  {
    sub_100035D4C(&qword_10033C320, &qword_100272B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C328);
  }

  return result;
}

uint64_t sub_10006DADC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10006DA04(a1, a2);
  }

  return a1;
}

uint64_t sub_10006DAF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10006DB04(a1, a2);
  }

  return a1;
}

uint64_t sub_10006DB04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010708(a1, a2);
  }

  return a1;
}

uint64_t sub_10006DB20()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006DB70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10006DC00()
{
  result = qword_10033C408;
  if (!qword_10033C408)
  {
    sub_100035D4C(&qword_10033C410, qword_100272CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C408);
  }

  return result;
}

unint64_t sub_10006DC68()
{
  result = qword_10033C418;
  if (!qword_10033C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C418);
  }

  return result;
}

uint64_t sub_10006DCCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18DebugHandoffDevice_timer);
  if (*(v1 + 40) == 1)
  {
    *(v1 + 40) = 0;

    sub_1001787F4();
    swift_getObjectType();
    OS_dispatch_source.suspend()();
    swift_unknownObjectRelease();
  }

  v2 = sub_10006DED8();
  v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold18DebugHandoffDevice_timer);

  v4 = *(*v2 + 48);
  v5 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugHandoffDevice()
{
  result = qword_10033C450;
  if (!qword_10033C450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_10006DE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000104F8();
  v6 = v5;
  v7 = (*(*(a3 + 8) + 8))(a2);
  v8 = sub_1000089FC(v7, v6);

  v9 = *(v8 + 16);

  return v9 != 0;
}

uint64_t sub_10006DED8()
{
  v1 = v0;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_100072F14();
  v6 = *(v1 + 24);

  v7 = *(v1 + 32);

  v8 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__identity;
  v11 = sub_100035D04(&qword_10033C3C8, &unk_100272C80);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive + 8);

  v13 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);

  v14 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher);

  v15 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_tasks);

  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher);

  v17 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy);

  v18 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__handoffTargetStatus);

  v19 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed);

  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate);
  v20 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDeliveryModeStateMachine);

  v21 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__legacyEvent;
  v22 = sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v23 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext);

  v24 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher);

  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate);
  swift_weakDestroy();
  v25 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer);

  v26 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher);

  v27 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_transferrableActivityPublisherKicker);

  v28 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferStatePublisher);

  v29 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__v1TransferState);

  v30 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_activityStreamErrorSubject);

  v31 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_currentActivitySubject);

  v32 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);

  v33 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenStateMachine);

  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncDelegate);
  v34 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncTask);

  v35 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__executedThisSession);

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastTokenSyncAttempt, &qword_10033C280, &qword_100272A80);
  v36 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_localDeviceActivity);

  v37 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher);

  v38 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture);

  v39 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask);

  v40 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher);

  return v1;
}

uint64_t sub_10006E2CC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v5 = *(v0 + 24);
    sub_100035D04(&qword_10033D400, &unk_100274950);
    sub_10000E244(&qword_10033D780, &qword_10033D400, &unk_100274950);
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10006E390()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10006E404()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10033D738, &qword_100273480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = sub_100035D04(&qword_10033D740, &unk_100273488);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher))
  {
    v15 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher);
  }

  else
  {
    v26 = v12;
    v27 = v6;
    v28 = v5;
    v29 = v0;
    v30 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher;
    v31 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
    sub_100035D04(&qword_10033D408, &qword_100273060);
    sub_10000E244(&qword_10033D748, &qword_10033D408, &qword_100273060);
    sub_1000773C0(&qword_10033D750, &qword_100339988, &qword_100272B60, sub_10007743C);
    Publisher<>.removeDuplicates()();
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v16 = sub_100003078(v1, qword_10033CBC8);
    v17 = static os_log_type_t.info.getter();
    (*(v2 + 16))(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v1);
    v18 = (*(v2 + 80) + 64) & ~*(v2 + 80);
    v19 = v18 + v3;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100073CBC;
    *(v20 + 24) = xmmword_100272E80;
    *(v20 + 40) = 0xEC000000203A6E6FLL;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0xE000000000000000;
    (*(v2 + 32))(v20 + v18, v4, v1);
    *(v20 + v19) = v17;
    sub_100035D04(&qword_100339988, &qword_100272B60);
    sub_10000E244(&qword_10033D760, &qword_10033D740, &unk_100273488);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D768, &qword_10033D738, &qword_100273480);
    v21 = v28;
    v22 = Publisher.eraseToAnyPublisher()();
    (*(v27 + 8))(v9, v21);
    (*(v26 + 8))(v14, v10);
    v31 = v22;
    sub_100035D04(&qword_1003398B0, &qword_100273280);
    sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280);
    v23 = Publisher.share()();

    v31 = v23;
    sub_100035D04(&qword_10033D770, qword_100273498);
    sub_10000E244(&qword_10033D778, &qword_10033D770, qword_100273498);
    v15 = Publisher.eraseToAnyPublisher()();

    v24 = *(v29 + v30);
    *(v29 + v30) = v15;
  }

  return v15;
}

uint64_t sub_10006E96C()
{
  v1 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v74 = *(v1 - 8);
  v2 = *(v74 + 64);
  __chkstk_darwin(v1);
  v73 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10033D6E8, &qword_100273458);
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  __chkstk_darwin(v4);
  v70 = &v52 - v6;
  v7 = sub_100035D04(&qword_10033D6F0, &unk_100273460);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v66 = &v52 - v9;
  v10 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = sub_100035D04(&qword_10033D6F8, &unk_100274940);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v69 = &v52 - v21;
  v22 = sub_100035D04(&qword_10033D700, &qword_100273470);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v52 - v25;
  v27 = sub_100035D04(&qword_10033D708, &qword_100273478);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher))
  {
    v32 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher);
  }

  else
  {
    v52 = v19;
    v53 = v18;
    v54 = v26;
    v55 = &v52 - v29;
    v56 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher;
    v57 = v23;
    v58 = v31;
    v59 = v22;
    v60 = v30;
    v61 = v1;
    v62 = v0;
    v33 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
    v76 = sub_1001EF664();
    sub_100035D04(&unk_10034D910, &unk_100273390);
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380);
    Publisher.removeDuplicates(by:)();
    sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510);
    v34 = v65;
    v35 = Publisher.eraseToAnyPublisher()();
    (*(v64 + 8))(v13, v34);
    (*(v63 + 8))(v17, v14);
    v76 = v35;
    sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
    sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0);
    v36 = v66;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033D710, &qword_10033D6F0, &unk_100273460);
    v37 = v68;
    v38 = Publisher.eraseToAnyPublisher()();
    v39 = v62;

    (*(v67 + 8))(v36, v37);
    v76 = v38;
    v75 = sub_10006FD08();
    sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
    sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40);
    v40 = v73;
    v41 = v70;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033D718, &qword_10033D6E8, &qword_100273458);
    v42 = v72;
    v43 = Publisher.eraseToAnyPublisher()();

    (*(v71 + 8))(v41, v42);
    v75 = v43;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
    v44 = v69;
    Publishers.Merge.init(_:_:)();
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v76 = qword_10038B5B8;
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10033D720, &qword_10033D6F8, &unk_100274940);
    sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr);
    v45 = v54;
    v46 = v53;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v74 + 8))(v40, v61);
    (*(v52 + 8))(v44, v46);
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityDisplayContext(0);
    sub_10000E244(&qword_10033D728, &qword_10033D700, &qword_100273470);
    v47 = v55;
    v48 = v59;
    Publisher.compactMap<A>(_:)();

    (*(v57 + 8))(v45, v48);
    sub_10000E244(&qword_10033D730, &qword_10033D708, &qword_100273478);
    v49 = v60;
    v32 = Publisher.eraseToAnyPublisher()();
    (*(v58 + 8))(v47, v49);
    v50 = *(v39 + v56);
    *(v39 + v56) = v32;
  }

  return v32;
}

uint64_t sub_10006F430@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  sub_1000704E8(v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    v6 = v8;
  }

  else
  {
    v33 = a1;
    v18 = v8;
    v19 = *(v10 + 32);
    v19(v16, v18, v9);
    sub_10007037C(v6);
    if (v17(v6, 1, v9) != 1)
    {
      v19(v14, v6, v9);
      v31 = *(sub_100035D04(&qword_10033D6E0, &qword_100273450) + 48);
      v32 = v33;
      v19(v33, v16, v9);
      v19(v32 + v31, v14, v9);
      v26 = _s8CardInfoOMa();
      swift_storeEnumTagMultiPayload();
      v27 = *(*(v26 - 8) + 56);
      v28 = v32;
      return v27(v28, 0, 1, v26);
    }

    (*(v10 + 8))(v16, v9);
    a1 = v33;
  }

  sub_1000097E8(v6, &unk_100348F30, &unk_100272540);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = sub_10000DF0C();
  v22 = v21;

  if (!v22)
  {
    v29 = _s8CardInfoOMa();
    return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = sub_10000C868();
  v25 = v24;

  *a1 = v20;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v25;
  v26 = _s8CardInfoOMa();
  swift_storeEnumTagMultiPayload();
  v27 = *(*(v26 - 8) + 56);
  v28 = a1;
  return v27(v28, 0, 1, v26);
}

uint64_t sub_10006F838()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy);
  }

  else
  {
    v3 = v0;
    type metadata accessor for HandoffEducationFlowPolicy();
    swift_allocObject();

    v2 = sub_1001DFCD4();

    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10006F8C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v14;
  if (v14)
  {
    if (([v14 nearbyActionFlags]& 0x10) != 0)
    {
      if (qword_100338E88 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003078(v7, qword_10033CBC8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "isHandoffReady: isAdvertisingDeviceClose", v10, 2u);
      }

      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(&v14->isa + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
  v2 = v1;

  if (v1)
  {

    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_10033CBC8);
    v0 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v0, v4))
    {
      goto LABEL_20;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "isHandoffReady: nearbyID exists";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v0, v4, v6, v5, 2u);

LABEL_20:

    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = *(&v14->isa + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities);

  if (v11 == 1)
  {
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_10033CBC8);
    v0 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v0, v4))
    {
      goto LABEL_20;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "isHandoffReady: enableModelBasedRangingCapabilities";
    goto LABEL_19;
  }

  return 0;
}

double sub_10006FC84@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_10006FD08()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext);

    v4 = v0;
    sub_10001D430();
    sub_100035D04(&qword_10033C398, &unk_100272BB0);
    sub_10000E244(&qword_10033D518, &qword_10033C398, &unk_100272BB0);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
    sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40);
    v2 = Publisher.eraseToAnyPublisher()();

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10006FE7C()
{
  v1 = v0;
  LODWORD(v0) = *(v0 + 16);
  if (v0 != 7)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_10000A0B4();
  v3 = v2;

  if (v3)
  {
    LOBYTE(v0) = sub_100011F00(v0, v3);
  }

  else
  {
    LOBYTE(v0) = 7;
  }

  if ((*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) & 1) == 0)
  {
    *(v1 + 16) = v0;
  }

  if (v0 == 7)
  {
    v4 = 0;
  }

  else
  {
LABEL_9:
    if (v0 >= 3u)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

uint64_t sub_10006FFBC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer);
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;

  sub_10005E5A8();
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

uint64_t sub_10007005C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer);

    v4 = v0;
    sub_10005E5A8();
    sub_100035D04(&qword_10033C3A0, &qword_1002733B0);
    sub_10000E244(&qword_10033D6D8, &qword_10033C3A0, &qword_1002733B0);
    v2 = Publisher.eraseToAnyPublisher()();

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

char *sub_100070168()
{
  v1 = sub_10009F1DC(v0, &off_100300700);
  v3 = v2;
  v5 = v4;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033CBC8);
  sub_10007732C(v1, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100077374(v1, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000015, 0x8000000100299590, &v16);
    *(v9 + 12) = 2080;
    if (v5 == 1)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {

      v12 = v1;
      v11 = String.init<A>(describing:)();
      v10 = v13;
    }

    v14 = sub_100017494(v11, v10, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

uint64_t sub_10007037C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 && (v2 = [v7 home], v7, v2))
  {
    v3 = [v2 uniqueIdentifier];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_1000704E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    v2 = [v6 uniqueIdentifier];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t sub_100070630()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = sub_100035D04(&qword_10033D6A8, &qword_100273378);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - v7;
  v9 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher))
  {
    v18 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher);
  }

  else
  {
    v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v17;
    v41 = v16;
    v42 = v2;
    v43 = v1;
    v44 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher;
    v45 = v8;
    v46 = v5;
    v47 = v4;
    v38 = v0;
    v19 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_localDeviceActivity);
    v20 = &v36 - v15;
    v49 = sub_1001EF03C();
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&unk_10034D910, &unk_100273390);
    v21 = sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390);
    v36 = v21;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380);
    v37 = v20;
    Publisher.removeDuplicates(by:)();
    (*(v48 + 8))(v12, v9);
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v22 = v43;
    v23 = sub_100003078(v43, qword_10033CBC8);
    v24 = static os_log_type_t.info.getter();
    v25 = v42;
    v26 = v39;
    (*(v42 + 16))(v39, v23, v22);
    v27 = (*(v25 + 80) + 64) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_100073E5C;
    *(v28 + 24) = xmmword_100272E90;
    *(v28 + 40) = 0x8000000100299570;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0xE000000000000000;
    (*(v25 + 32))(v28 + v27, v26, v22);
    *(v28 + v27 + v3) = v24;
    sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510);
    v29 = v45;
    v30 = v41;
    v31 = v37;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6C0, &qword_10033D6A8, &qword_100273378);
    v32 = v47;
    v33 = Publisher.eraseToAnyPublisher()();
    (*(v46 + 8))(v29, v32);
    (*(v40 + 8))(v31, v30);
    v49 = v33;
    sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
    sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0);
    v18 = Publisher.eraseToAnyPublisher()();

    v34 = *(v38 + v44);
    *(v38 + v44) = v18;
  }

  return v18;
}

uint64_t sub_100070C80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v3)
  {
    return 0;
  }

  v0 = [v3 firmwareVersion];

  if (!v0)
  {
    return 0;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_100070D94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v1;
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return 0;
  }

  return result;
}

unint64_t sub_100070EF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
  v2 = *(v1 + 24);

  CurrentValueSubject.value.getter();
  v3 = v6;
  if (v6 == 6)
  {
    v4 = *(v1 + 16);
    CurrentValueSubject.value.getter();

    v3 = v7;
  }

  else
  {
  }

  return 0x40302010000uLL >> (8 * v3);
}

uint64_t sub_100070F78()
{
  v1 = type metadata accessor for Logger();
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v3 = sub_100035D04(&qword_10033D640, &qword_100273268);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v35 - v6;
  v8 = sub_100035D04(&qword_10033D648, &qword_100273270);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v35 - v11;
  v13 = sub_100035D04(&qword_10033D650, &qword_100273278);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher))
  {
    v18 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher);
  }

  else
  {
    v36 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v17;
    v38 = v16;
    v39 = v7;
    v35[0] = v1;
    v41 = v4;
    v42 = v3;
    v43 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher;
    v40 = v0;
    v19 = v35 - v15;
    v45 = sub_10006E404();
    sub_100035D04(&qword_1003398B0, &qword_100273280);
    v20 = sub_100035D04(&qword_10034B640, &qword_100273288);
    sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280);
    v35[1] = v20;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D658, &qword_10033D648, &qword_100273270);
    sub_1000773C0(&qword_10033D660, &qword_10034B640, &qword_100273288, sub_1000771B0);
    Publisher<>.removeDuplicates()();
    (*(v9 + 8))(v12, v8);
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v21 = v35[0];
    v22 = sub_100003078(v35[0], qword_10033CBC8);
    v23 = static os_log_type_t.info.getter();
    v24 = v44;
    v25 = v36;
    (*(v44 + 16))(v36, v22, v21);
    v26 = (*(v24 + 80) + 64) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    strcpy((v27 + 32), "New UXRegion: ");
    *(v27 + 47) = -18;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0xE000000000000000;
    (*(v24 + 32))(v27 + v26, v25, v21);
    *(v27 + v26 + v2) = v23;
    sub_10000E244(&qword_10033D670, &qword_10033D650, &qword_100273278);
    v29 = v38;
    v28 = v39;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D678, &qword_10033D640, &qword_100273268);
    v30 = v42;
    v31 = Publisher.eraseToAnyPublisher()();
    (*(v41 + 8))(v28, v30);
    (*(v37 + 8))(v19, v29);
    v45 = v31;
    sub_100035D04(&qword_10033D680, &qword_100273290);
    sub_10000E244(&qword_10033D688, &qword_10033D680, &qword_100273290);
    v32 = Publisher.share()();

    v45 = v32;
    sub_100035D04(&qword_10033D690, &qword_100273298);
    sub_10000E244(&qword_10033D698, &qword_10033D690, &qword_100273298);
    v18 = Publisher.eraseToAnyPublisher()();

    v33 = *(v40 + v43);
    *(v40 + v43) = v18;
  }

  return v18;
}

uint64_t sub_1000715FC()
{
  v1 = sub_100035D04(&qword_10033D448, &qword_100273110);
  v128 = *(v1 - 8);
  v129 = v1;
  v2 = *(v128 + 64);
  __chkstk_darwin(v1);
  v127 = v95 - v3;
  v4 = sub_100035D04(&qword_10033D450, &qword_100273118);
  v125 = *(v4 - 8);
  v126 = v4;
  v5 = *(v125 + 64);
  __chkstk_darwin(v4);
  v124 = v95 - v6;
  v133 = sub_100035D04(&qword_10033D458, &qword_100273120);
  v131 = *(v133 - 8);
  v7 = *(v131 + 64);
  __chkstk_darwin(v133);
  v130 = v95 - v8;
  v9 = sub_100035D04(&qword_10033D460, &qword_100273128);
  v134 = *(v9 - 8);
  v135 = v9;
  v10 = *(v134 + 64);
  __chkstk_darwin(v9);
  v132 = v95 - v11;
  v117 = sub_100035D04(&qword_10033D468, &qword_100273130);
  v116 = *(v117 - 1);
  v12 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = v95 - v13;
  v120 = sub_100035D04(&qword_10033D470, &qword_100273138);
  v119 = *(v120 - 1);
  v14 = *(v119 + 64);
  __chkstk_darwin(v120);
  v118 = v95 - v15;
  v123 = sub_100035D04(&qword_10033D478, &unk_100273140);
  v122 = *(v123 - 8);
  v16 = *(v122 + 64);
  __chkstk_darwin(v123);
  v121 = v95 - v17;
  v111 = sub_100035D04(&qword_100339868, &qword_100270370);
  v110 = *(v111 - 1);
  v18 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = v95 - v19;
  v114 = sub_100035D04(&qword_10033D480, &qword_100273150);
  v113 = *(v114 - 8);
  v20 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = v95 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v138 = v22;
  v139 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v105 = v25;
  v137 = v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100035D04(&qword_10033D488, &qword_100273158);
  v100 = *(v104 - 1);
  v26 = *(v100 + 64);
  __chkstk_darwin(v104);
  v99 = v95 - v27;
  v98 = sub_100035D04(&qword_10033D490, &unk_100273160);
  v96 = *(v98 - 8);
  v28 = *(v96 + 64);
  __chkstk_darwin(v98);
  v95[0] = v95 - v29;
  v101 = sub_100035D04(&qword_10033C3B0, &qword_100272C68);
  v30 = *(v101 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v101);
  v33 = v95 - v32;
  v102 = sub_100035D04(&qword_10033D498, &qword_100273170);
  v103 = *(v102 - 1);
  v34 = *(v103 + 64);
  __chkstk_darwin(v102);
  v36 = v95 - v35;
  v107 = sub_100035D04(&qword_10033D4A0, &qword_100273178);
  v108 = *(v107 - 8);
  v37 = *(v108 + 8);
  __chkstk_darwin(v107);
  v39 = v95 - v38;
  v40 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenStateMachine;
  swift_beginAccess();
  v140 = *(*(v0 + v40) + 40);
  sub_100035D04(&qword_10033AAE0, &qword_100273180);
  sub_10000E244(&qword_10033D4A8, &qword_10033AAE0, &qword_100273180);
  v140 = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033D4B0, &qword_100273188);
  v106 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033D4B8, &qword_10033D4B0, &qword_100273188);
  Publisher<>.sink(receiveValue:)();

  v41 = v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100035D04(&qword_10033C3C8, &unk_100272C80);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100035D04(&qword_10033D4C0, &unk_100273190);
  sub_10000E244(&qword_10033C3D0, &qword_10033C3B0, &qword_100272C68);
  v42 = v101;
  Publisher.map<A>(_:)();
  (*(v30 + 8))(v33, v42);
  sub_10000E244(&qword_10033D4C8, &qword_10033D498, &qword_100273170);
  sub_10000E244(&qword_10033D4D0, &qword_10033D4C0, &unk_100273190);
  v43 = v102;
  Publisher<>.switchToLatest()();
  v44 = v0;
  (*(v103 + 8))(v36, v43);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100007458;
  *(v46 + 24) = v45;
  sub_10000E244(&qword_10033D4D8, &qword_10033D4A0, &qword_100273178);
  v47 = v107;
  Publisher<>.sink(receiveValue:)();

  v48 = v39;
  v49 = v95[0];
  (*(v108 + 1))(v48, v47);
  swift_beginAccess();
  v136 = v41;
  AnyCancellable.store(in:)();
  swift_endAccess();

  v140 = sub_10006FD08();
  v50 = sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
  sub_100035D04(&qword_1003396B0, &qword_1002731A0);
  v51 = sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40);
  v95[2] = v50;
  v95[1] = v51;
  Publisher.map<A>(_:)();

  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v52 = v138;
  v53 = sub_100003078(v138, qword_10033CBC8);
  v107 = v53;
  v54 = static os_log_type_t.info.getter();
  v55 = v139;
  v56 = *(v139 + 16);
  v106 = (v139 + 16);
  v108 = v56;
  v57 = v137;
  v56(v137, v53, v52);
  v58 = v55;
  v103 = *(v55 + 80);
  v59 = (v103 + 64) & ~v103;
  v101 = v59;
  v60 = &v105[v59];
  v97 = &v105[v59];
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10001D60C;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = 0xE000000000000000;
  *(v61 + 48) = 0;
  *(v61 + 56) = 0xE000000000000000;
  v62 = *(v58 + 32);
  v139 = v58 + 32;
  v102 = v62;
  (v62)(v61 + v59, v57, v52);
  v60[v61] = v54;
  v105 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033D4F0, &qword_10033D490, &unk_100273160);
  v63 = v99;
  v64 = v98;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033D4F8, &qword_10033D488, &qword_100273158);
  v65 = v104;
  v66 = Publisher.eraseToAnyPublisher()();
  (*(v100 + 8))(v63, v65);
  (*(v96 + 8))(v49, v64);
  v140 = v66;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033D500, &qword_1002731A8);
  v104 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033D508, &qword_10033D500, &qword_1002731A8);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  v67 = v109;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_1003398F0, &qword_100339868, &qword_100270370);
  v68 = v112;
  v69 = v111;
  Publisher.dropFirst(_:)();
  (*(v110 + 8))(v67, v69);
  swift_allocObject();
  swift_weakInit();
  v111 = &protocol conformance descriptor for Publishers.Drop<A>;
  sub_10000E244(&qword_10033D510, &qword_10033D480, &qword_100273150);
  v70 = v114;
  Publisher<>.sink(receiveValue:)();

  (*(v113 + 8))(v68, v70);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v71 = *(v44 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext);

  v140 = sub_10001D430();
  sub_100035D04(&qword_10033C398, &unk_100272BB0);
  sub_10000E244(&qword_10033D518, &qword_10033C398, &unk_100272BB0);
  v72 = Publisher.eraseToAnyPublisher()();

  v140 = v72;
  v73 = v115;
  Publisher.dropFirst(_:)();

  sub_100003118(0, &qword_10033D520, PCMediaRemoteDisplayContext_ptr);
  sub_10000E244(&qword_10033D528, &qword_10033D468, &qword_100273130);
  v74 = v118;
  v75 = v117;
  Publisher.compactMap<A>(_:)();
  (*(v116 + 8))(v73, v75);
  swift_allocObject();
  swift_weakInit();
  v117 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_10033D530, &qword_10033D470, &qword_100273138);
  v76 = v121;
  v77 = v120;
  Publisher.filter(_:)();

  (*(v119 + 8))(v74, v77);
  swift_allocObject();
  swift_weakInit();
  v120 = &protocol conformance descriptor for Publishers.Filter<A>;
  sub_10000E244(&qword_10033D538, &qword_10033D478, &unk_100273140);
  v78 = v123;
  Publisher<>.sink(receiveValue:)();

  (*(v122 + 8))(v76, v78);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v79 = *(v44 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__v1TransferState);

  v140 = sub_10005E88C();
  sub_100035D04(&qword_10033C2D8, &qword_100272AD0);
  sub_10000E244(&qword_10033D540, &qword_10033C2D8, &qword_100272AD0);
  v80 = Publisher.eraseToAnyPublisher()();

  v140 = v80;
  sub_100035D04(&qword_10033D548, &unk_1002731B0);
  sub_10000E244(&qword_10033D550, &qword_10033D548, &unk_1002731B0);
  v81 = v124;
  Publisher.dropFirst(_:)();

  LOBYTE(v79) = static os_log_type_t.info.getter();
  v82 = v137;
  v83 = v138;
  v108(v137, v107, v138);
  v84 = v97;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_100075360;
  *(v85 + 24) = xmmword_100272EA0;
  *(v85 + 40) = 0x8000000100299440;
  *(v85 + 48) = 0;
  *(v85 + 56) = 0xE000000000000000;
  (v102)(v85 + v101, v82, v83);
  v84[v85] = v79;
  sub_100035D04(&qword_10033D558, qword_100289880);
  sub_10000E244(&qword_10033D560, &qword_10033D450, &qword_100273118);
  v86 = v126;
  v87 = v127;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033D568, &qword_10033D448, &qword_100273110);
  v88 = v129;
  v89 = Publisher.eraseToAnyPublisher()();
  (*(v128 + 8))(v87, v88);
  (*(v125 + 8))(v81, v86);
  v140 = v89;
  v90 = v130;
  Publisher.compactMap<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033D570, &qword_10033D458, &qword_100273120);
  v92 = v132;
  v91 = v133;
  Publisher.filter(_:)();

  (*(v131 + 8))(v90, v91);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033D578, &qword_10033D460, &qword_100273128);
  v93 = v135;
  Publisher<>.sink(receiveValue:)();

  (*(v134 + 8))(v92, v93);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100072F14()
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033CBC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  return sub_10007306C();
}

uint64_t sub_10007306C()
{
  v1 = v0;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000017, 0x8000000100299420, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection;
  [*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection) invalidate];
  v8 = *(v1 + v7);
  *(v1 + v7) = 0;

  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture) = 0;

  v10 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask))
  {
    v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask);

    AnyCancellable.cancel()();

    v12 = *(v1 + v10);
  }

  *(v1 + v10) = 0;
}

uint64_t sub_10007322C(uint64_t a1, unint64_t a2)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033CBC8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000028, 0x80000001002993F0, &v11);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100017494(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: mediaRouteIdentifier=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  v9 = *(v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID + 8);
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_100073434(uint64_t a1, unint64_t a2)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033CBC8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002993D0, &v13);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100017494(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: colorCode=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v13;
  v9 = (v13 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  v10 = *(v13 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode + 8);
  *v9 = a1;
  v9[1] = a2;

  v11 = v8 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v11 = 0;
  *(v11 + 8) = 1;

  sub_1000BDC5C();
}

uint64_t sub_100073658()
{
  v1 = v0;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000016, 0x80000001002993B0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 24);

  v10 = 1;
  sub_10000D8F4(0x100000000uLL);
}

uint64_t sub_1000737D0()
{
  v0 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = sub_10000E120();

  if (!v8)
  {
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10033CBC8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Needs to restart ranging session as guest", v13, 2u);
    }

    *v3 = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000114E0(v3, v7);
    sub_100010B48(v3);
    sub_1000097E8(v7, &qword_10033AAF8, &qword_100271808);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100073B30()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038AEE8);
  sub_100003078(v0, qword_10038AEE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100073BB4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033CBC8);
  v1 = sub_100003078(v0, qword_10033CBC8);
  if (qword_100338E80 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038AEE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100073C7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HandoffDevice();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100073CBC(_BYTE *a1)
{
  if (*a1 == 5)
  {
    return 7104878;
  }

  else
  {
    return String.init<A>(describing:)();
  }
}

uint64_t sub_100073D0C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
    v4 = Strong;
    v5 = sub_1001F00B0();
    sub_100249BE4(v4, v5, a1);

    swift_unknownObjectRelease();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for ActivityDisplayContext(0);
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_100073DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001F00B0();
  *a2 = result;
  return result;
}

id sub_100073E10(void **a1, void *a2)
{
  v4 = *a1;
  v5 = (v4 | *a2) == 0;
  if (v4)
  {
    v6 = *a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return [v4 isEqual:{v2, v3}];
  }

  return v5;
}

uint64_t sub_100073E5C(void *a1)
{
  if (!*a1)
  {
    return 7104878;
  }

  swift_unknownObjectRetain();
  sub_100035D04(&qword_10033D6D0, &unk_10027C120);
  return String.init<A>(describing:)();
}