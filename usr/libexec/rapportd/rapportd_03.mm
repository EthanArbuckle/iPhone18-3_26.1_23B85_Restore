unint64_t sub_1000CE704()
{
  result = qword_1001D52B0;
  if (!qword_1001D52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D52B0);
  }

  return result;
}

__n128 sub_1000CE758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000CE774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CE7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingTXTRecord.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingTXTRecord.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1000CE97C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int RPIdentitySyncError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000CEA34()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000CEA74()
{
  [v0 airdropHash1];
  sub_1000CEB90();
  v1 = FixedWidthInteger.bigEndianBytes.getter();
  [v0 airdropHash2];
  v2 = FixedWidthInteger.bigEndianBytes.getter();
  sub_1000C3794(v2);
  [v0 airdropHash3];
  v3 = FixedWidthInteger.bigEndianBytes.getter();
  sub_1000C3794(v3);
  [v0 airdropHash4];
  v4 = FixedWidthInteger.bigEndianBytes.getter();
  sub_1000C3794(v4);
  v5 = sub_1000CDC6C(v1);

  return v5;
}

unint64_t sub_1000CEB90()
{
  result = qword_1001D52E8;
  if (!qword_1001D52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D52E8);
  }

  return result;
}

uint64_t sub_1000CEBE4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_1000CECE4()
{
  sub_1000CEDE4();
  sub_1000C4810(&qword_1001D52C0, &qword_10014A240);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10014A0A0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_1000CEE30();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x80000001001791C0;
  v1 = NSPredicate.init(format:_:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 evaluateWithObject:v2];

  return v3;
}

unint64_t sub_1000CEDE4()
{
  result = qword_1001D52F0;
  if (!qword_1001D52F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D52F0);
  }

  return result;
}

unint64_t sub_1000CEE30()
{
  result = qword_1001D52F8;
  if (!qword_1001D52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D52F8);
  }

  return result;
}

unint64_t sub_1000CEE88()
{
  result = qword_1001D5300;
  if (!qword_1001D5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5300);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPIdentitySyncError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RPIdentitySyncError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000CEFC4()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D7308);
  v1 = sub_10000BB0C(v0, qword_1001D7308);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000CF078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C5EF0;

  return sub_1000CF19C();
}

uint64_t sub_1000CF108()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000CF078();
}

uint64_t sub_1000CF1BC()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[3] = *(v1 + 216);
  [v2 setSessionTelemetry:?];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000CF268;
  v4 = v0[2];

  return sub_1000D1388();
}

uint64_t sub_1000CF268()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000CF378, v2, 0);
}

uint64_t sub_1000CF378()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 176))
  {
    type metadata accessor for RPIdentitySyncBluetoothDiscovery();
    v2 = sub_1000C7B68();
    v3 = *(v1 + 176);
    *(v1 + 176) = v2;
  }

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1000CF434;
  v5 = *(v0 + 16);

  return sub_1000D1930();
}

uint64_t sub_1000CF434()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_1000CF578;
  v5 = *(v1 + 16);

  return sub_1000D22E4(0);
}

uint64_t sub_1000CF578()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000CF688, v2, 0);
}

uint64_t sub_1000CF688()
{
  v1 = *(v0[2] + 224);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000CF728;
  v3 = v0[3];

  return sub_1001028F4(v1);
}

uint64_t sub_1000CF728()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_1000CF868;
  v5 = *(v1 + 16);

  return sub_1000D2B10();
}

uint64_t sub_1000CF868()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000CF984(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000BB0C(v11, qword_1001D7308);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a1, v14, 2u);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;

  sub_1000C1E34(0, 0, v10, a3, v16);
}

uint64_t sub_1000CFB68()
{
  v1 = *(v0 + 40);
  if (*(v1 + 184))
  {
    v2 = *(v1 + 184);

    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    Task.cancel()();

    v3 = *(v1 + 184);
  }

  v4 = *(v0 + 40);
  *(v1 + 184) = 0;

  swift_beginAccess();
  v5 = *(v4 + 160);
  *(v4 + 160) = &_swiftEmptySetSingleton;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000CFC54(char a1)
{
  v2 = v1;
  v4 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v15 - v7;
  if ((a1 & 4) != 0)
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000BB0C(v9, qword_1001D7308);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Self identity changed detected", v12, 2u);
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v2;

    sub_1000C1E34(0, 0, v8, &unk_10014A370, v14);
  }

  return result;
}

uint64_t sub_1000CFE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000CFEBC;

  return sub_1000D22E4(1);
}

uint64_t sub_1000CFEBC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000CFFCC, v2, 0);
}

uint64_t sub_1000CFFCC()
{
  v1 = v0[2];
  v2 = *(v1 + 224);
  v3 = *(v1 + 128);
  if (v3 && (v4 = [v3 deviceIRKData]) != 0)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v0[4] = v6;
  v0[5] = v8;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1000D00B8;

  return sub_1000F3F8C(v6, v8);
}

uint64_t sub_1000D00B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *v0;

  sub_1000C5928(v4, v3);
  v6 = swift_task_alloc();
  *(v1 + 56) = v6;
  *v6 = v5;
  v6[1] = sub_1000DB4B4;
  v7 = *(v1 + 16);

  return sub_1000D2B10();
}

uint64_t sub_1000D0234()
{
  v1[5] = v0;
  v2 = *(*(sub_1000C4810(&qword_1001D4F68, &qword_100149690) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000D032C, v0, 0);
}

uint64_t sub_1000D032C()
{
  v26 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000BB0C(v7, qword_1001D7308);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000C3440(v4, v6, &v25);
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding browse session %s", v10, 0xCu);
    sub_1000C5604(v11);
  }

  v12 = v0[5];
  swift_beginAccess();

  sub_1000D80FC(&v25, v4, v6);
  swift_endAccess();

  if (!*(v12 + 184))
  {
    v14 = v0[5];
    v13 = v0[6];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v17 = sub_1000DB168(&qword_1001D5308, v16, type metadata accessor for RPIdentitySyncService);
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v17;
    v18[4] = v14;
    swift_retain_n();
    v19 = sub_1000BE36C(0, 0, v13, &unk_10014A388, v18);
    v20 = *(v12 + 184);
    *(v12 + 184) = v19;
  }

  v21 = v0[9];
  v22 = v0[6];

  v23 = v0[1];

  return v23(v4, v6);
}

uint64_t sub_1000D0624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C3348;

  return sub_1000D06B4();
}

uint64_t sub_1000D06B4()
{
  v1[92] = v0;
  v2 = sub_1000C4810(&qword_1001D5068, &qword_10014A460);
  v1[93] = v2;
  v3 = *(v2 - 8);
  v1[94] = v3;
  v4 = *(v3 + 64) + 15;
  v1[95] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0780, v0, 0);
}

uint64_t sub_1000D0780()
{
  v1 = *(v0[92] + 176);
  v0[96] = v1;
  if (v1)
  {
    v2 = qword_1001D7300;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[97] = sub_10000BB0C(v3, qword_1001D7308);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting bluetooth monitoring task", v6, 2u);
    }

    v7 = v0[95];

    sub_1000C6A54();
    v9 = sub_1000DB168(&qword_1001D5308, v8, type metadata accessor for RPIdentitySyncService);
    v0[98] = v9;
    v10 = v0[92];
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    v0[99] = v12;
    *v12 = v0;
    v12[1] = sub_1000D098C;
    v13 = v0[95];
    v14 = v0[93];

    return AsyncStream.Iterator.next(isolation:)(v0 + 22, v10, v9, v14);
  }

  else
  {
    v15 = v0[95];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000D098C()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 736);
  v4 = *v0;

  return _swift_task_switch(sub_1000D0A9C, v2, 0);
}

uint64_t sub_1000D0A9C()
{
  v36 = v0;
  v1 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v1;
  v2 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 208);
  *(v0 + 144) = v2;
  *(v0 + 153) = *(v0 + 233);
  v3 = *(v0 + 104);
  if (v3)
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v7 = *(v0 + 128);
    *(v0 + 64) = *(v0 + 144);
    *(v0 + 73) = *(v0 + 153);
    v8 = *(v0 + 144);
    *(v0 + 288) = v7;
    *(v0 + 304) = v8;
    *(v0 + 313) = *(v0 + 153);
    v9 = *(v0 + 776);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 24) = v3;
    *(v0 + 256) = v6;
    *(v0 + 272) = v5;
    sub_1000D8D78(v0 + 256, v0 + 336);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    sub_1000C59E0(v0 + 96, &qword_1001D5338, &qword_10014A468);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      v14 = *(v0 + 64);
      *(v0 + 608) = *(v0 + 48);
      *(v0 + 624) = v14;
      *(v0 + 633) = *(v0 + 73);
      v15 = *(v0 + 32);
      *(v0 + 576) = *(v0 + 16);
      *(v0 + 592) = v15;
      v16 = *(v0 + 144);
      *(v0 + 528) = *(v0 + 128);
      *(v0 + 544) = v16;
      *(v0 + 553) = *(v0 + 153);
      v17 = *(v0 + 112);
      *(v0 + 496) = *(v0 + 96);
      *(v0 + 512) = v17;
      sub_1000D8D78(v0 + 496, v0 + 656);
      sub_1000D8DD4();
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v0 + 624);
      *(v0 + 448) = *(v0 + 608);
      *(v0 + 464) = v21;
      *(v0 + 473) = *(v0 + 633);
      v22 = *(v0 + 592);
      *(v0 + 416) = *(v0 + 576);
      *(v0 + 432) = v22;
      sub_1000D8E28(v0 + 416);
      v23 = sub_1000C3440(v18, v20, &v35);

      *(v12 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v10, v11, "Bluetooth event %s", v12, 0xCu);
      sub_1000C5604(v13);
    }

    v24 = swift_task_alloc();
    *(v0 + 800) = v24;
    *v24 = v0;
    v24[1] = sub_1000D0E08;
    v25 = *(v0 + 736);

    return sub_1000D4148(v0 + 16);
  }

  else
  {
    v27 = *(v0 + 776);
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 768);
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Finished bluetooth monitoring task", v32, 2u);
    }

    else
    {
    }

    v33 = *(v0 + 760);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1000D0E08()
{
  v1 = *v0;
  v2 = *(*v0 + 800);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 808) = v4;
  *v4 = v3;
  v4[1] = sub_1000D0F50;
  v5 = *(v1 + 736);

  return sub_1000D52A8(v1 + 16);
}

uint64_t sub_1000D0F50()
{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 736);
  v4 = *v0;

  return _swift_task_switch(sub_1000D1060, v2, 0);
}

uint64_t sub_1000D1060()
{
  sub_1000C59E0((v0 + 12), &qword_1001D5338, &qword_10014A468);
  v1 = v0[98];
  v2 = v0[92];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[99] = v4;
  *v4 = v0;
  v4[1] = sub_1000D098C;
  v5 = v0[95];
  v6 = v0[93];

  return AsyncStream.Iterator.next(isolation:)(v0 + 22, v2, v1, v6);
}

uint64_t sub_1000D1130(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1000D1154, v2, 0);
}

uint64_t sub_1000D1154()
{
  v18 = v0;
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D7308);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000C3440(v6, v5, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing browse session %s", v7, 0xCu);
    sub_1000C5604(v8);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  swift_beginAccess();
  sub_1000D8A78(v11, v9);
  swift_endAccess();

  if (!*(*(v10 + 160) + 16))
  {
    v12 = v0[7];
    if (*(v12 + 184))
    {
      v13 = *(v12 + 184);

      sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
      Task.cancel()();

      v14 = *(v12 + 184);
    }

    *(v12 + 184) = 0;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D13A8()
{
  v1 = v0[18];
  if (v1[25])
  {
LABEL_2:
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v2, v1, sub_1000D3890, SFAppleIDValidationRecordDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v3 = v0[1];

    return v3();
  }

  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000BB0C(v5, qword_1001D7308);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up monitor for RPIdentitySyncService", v8, 2u);
  }

  v9 = [objc_allocWithZone(CUSystemMonitor) init];
  v10 = v1[25];
  v1[25] = v9;

  v11 = v1[25];
  v12 = v0[18];
  if (!v11)
  {
    v1 = v0[18];
    goto LABEL_2;
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v0[14] = sub_1000DB214;
  v0[15] = v13;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D36FC;
  v0[13] = &unk_1001AFE20;
  v14 = _Block_copy(v0 + 10);
  v15 = v0[15];
  v16 = v11;

  [v16 setScreenOnChangedHandler:v14];
  _Block_release(v14);

  v17 = v1[25];
  v18 = v0[18];
  if (!v17)
  {
    v1 = v0[18];
    goto LABEL_2;
  }

  v19 = swift_allocObject();
  swift_weakInit();
  v0[14] = sub_1000DB264;
  v0[15] = v19;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D36FC;
  v0[13] = &unk_1001AFE48;
  v20 = _Block_copy(v0 + 10);
  v21 = v0[15];
  v22 = v17;

  [v22 setFirstUnlockHandler:v20];
  _Block_release(v20);

  v23 = v1[25];
  v0[19] = v23;
  if (!v23)
  {
    v1 = v0[18];
    goto LABEL_2;
  }

  v0[2] = v0;
  v0[3] = sub_1000D1798;
  v24 = swift_continuation_init();
  v0[17] = sub_1000C4810(&qword_1001D5388, &qword_10014A4E8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D385C;
  v0[13] = &unk_1001AFE70;
  v0[14] = v24;
  [v23 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D1798()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_1000D188C, v1, 0);
}

uint64_t sub_1000D188C()
{
  v1 = *(v0 + 144);
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v1, sub_1000D3890, SFAppleIDValidationRecordDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D1950()
{
  if (*(v0[19] + 208))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000D1AB4;
    v4 = swift_continuation_init();
    v0[17] = sub_1000C4810(&qword_1001D5368, &qword_10014A4D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000D39A8;
    v0[13] = &unk_1001AFDA8;
    v0[14] = v4;
    [v3 myAccountWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000D1AB4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 160) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_1000D2138;
  }

  else
  {
    v5 = sub_1000D1BD4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000D1BD4()
{
  v45 = v0;
  v1 = v0[18];
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D7308);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Loaded appleID from sharing agent %@", v6, 0xCu);
    sub_1000C59E0(v7, &qword_1001D55A0, &unk_100149890);
  }

  v9 = [v3 contactInfo];
  if (v9 && (v10 = v9, v11 = [v9 validatedEmailAddresses], v10, v11))
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v13 = [v3 contactInfo];
  if (v13 && (v14 = v13, v15 = [v13 validatedPhoneNumbers], v14, v15))
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v17 = v0[19];
  v18 = *(v17 + 208);
  *(v17 + 208) = v3;
  v43 = v3;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = Array.description.getter();
    v24 = sub_1000C3440(v22, v23, v44);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_1000C3440(v25, v26, v44);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Loaded validation record handles %s - %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v28 = [*(v0[19] + 120) idsAccountSet];
  if (v28)
  {
    v29 = v28;
    sub_1000C5AF8(0, &qword_1001D5370, IDSAccount_ptr);
    sub_1000DB0F8();
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000D3B84(&_swiftEmptySetSingleton, v30);
    v32 = v31;
  }

  else
  {
    v32 = &_swiftEmptySetSingleton;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44[0] = v36;
    *v35 = 136315138;
    v37 = Set.description.getter();
    v39 = sub_1000C3440(v37, v38, v44);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Loaded IDS handles %s", v35, 0xCu);
    sub_1000C5604(v36);
  }

  v40 = v0[19];
  swift_beginAccess();
  sub_1000D3F54(v32);
  sub_1000DA8D0(v12);

  sub_1000DA8D0(v16);
  swift_endAccess();

  v41 = v0[1];

  return v41();
}

uint64_t sub_1000D2138()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D7308);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to fetch AppleID account info %@", v8, 0xCu);
    sub_1000C59E0(v9, &qword_1001D55A0, &unk_100149890);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000D22E4(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 240) = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  *(v2 + 168) = v3;
  v4 = *(v3 - 8);
  *(v2 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  *(v2 + 192) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v8 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1000D2404, v1, 0);
}

uint64_t sub_1000D2404()
{
  if (*(*(v0 + 160) + 128))
  {
    v1 = *(v0 + 240) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 184);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    v15 = *(v0 + 168);
    sub_1000C5AF8(0, &qword_1001D54F0, OS_dispatch_queue_ptr);
    static DispatchQoS.default.getter();
    *(v0 + 144) = &_swiftEmptyArrayStorage;
    sub_1000DB168(&qword_1001D5F50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000C4810(&unk_1001D5500, &qword_100149A50);
    sub_1000DB1B0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v6 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
    v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v0 + 216) = v7;
    v8 = [objc_allocWithZone(RPClient) init];
    *(v0 + 224) = v8;
    [v8 setDispatchQueue:v7];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1000D26F8;
    v9 = swift_continuation_init();
    *(v0 + 136) = sub_1000C4810(&qword_1001D5380, &qword_10014C050);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000D4058;
    *(v0 + 104) = &unk_1001AFDD0;
    *(v0 + 112) = v9;
    [v8 getIdentitiesWithFlags:1 completion:?];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000D26F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_1000D293C;
  }

  else
  {
    v5 = sub_1000D2818;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000D2818()
{
  v1 = v0[19];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = v0[19];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v4 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_11:
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[20];
  v9 = *(v8 + 128);
  *(v8 + 128) = v4;

  [v6 invalidate];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D293C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  swift_willThrow();

  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v4 = v0[29];
  v5 = type metadata accessor for Logger();
  sub_10000BB0C(v5, qword_1001D7308);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch self identity %@", v10, 0xCu);
    sub_1000C59E0(v11, &qword_1001D55A0, &unk_100149890);
  }

  else
  {
  }

  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000D2B30()
{
  v1 = *(v0[2] + 200);
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1000D2C08;
    v4 = v0[2];

    return sub_1000D1930();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000D2C08()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000D2D18, v2, 0);
}

uint64_t sub_1000D2D18()
{
  if ([*(v0 + 24) firstUnlocked])
  {
    v1 = [*(v0 + 24) screenOn];
    v2 = *(v0 + 16);
    if (v1 && v2[26])
    {
      v3 = swift_task_alloc();
      *(v0 + 40) = v3;
      *v3 = v0;
      v3[1] = sub_1000D2EB8;
      v4 = *(v0 + 16);

      return sub_1000D22E4(0);
    }
  }

  else
  {
    v2 = *(v0 + 16);
  }

  v6 = v2[19];
  *(v0 + 72) = v6;
  if (v6)
  {
    v7 = v2[18];

    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_1000D322C;
    v9 = *(v0 + 16);

    return sub_1000D1130(v7, v6);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000D2EB8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000D2FC8, v2, 0);
}

uint64_t sub_1000D2FC8()
{
  if (*(*(v0 + 16) + 152))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1000D309C;
    v4 = *(v0 + 16);

    return sub_1000D0234();
  }
}

uint64_t sub_1000D309C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return _swift_task_switch(sub_1000D31B4, v5, 0);
}

uint64_t sub_1000D31B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  v4 = *(v3 + 152);
  *(v3 + 144) = v1;
  *(v3 + 152) = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000D322C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_1000D3358, v3, 0);
}

uint64_t sub_1000D3358()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v1[18] = 0;
  v1[19] = 0;

  v3 = v1[28];
  v4 = RPNWEndpoint.deviceColor.getter();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1000D340C;

  return sub_1000F3458(v4 & 1);
}

uint64_t sub_1000D340C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000D351C, v2, 0);
}

uint64_t sub_1000D351C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000D3580();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D3580()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  Date.init()();
  Date.addingTimeInterval(_:)();
  v10 = *(v3 + 8);
  v10(v7, v2);
  swift_beginAccess();
  v11 = *(v1 + 168);
  v17 = v9;

  v13 = sub_1000DAB98(v12, sub_1000DB0EC);

  v14 = *(v1 + 168);
  *(v1 + 168) = v13;

  return (v10)(v9, v2);
}

uint64_t sub_1000D36FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000D3740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_1000C1E34(0, 0, v7, a3, v11);
  }

  return result;
}

uint64_t sub_1000D385C(uint64_t a1)
{
  v1 = *sub_1000CE97C((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1000D3890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v11 - v6;
  if (a2)
  {
    v8 = type metadata accessor for TaskPriority();
    v9 = *(*(v8 - 8) + 56);

    v9(v7, 1, 1, v8);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    sub_1000C1E34(0, 0, v7, &unk_10014A4F8, v10);
  }

  return result;
}

uint64_t sub_1000D39A8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000CE97C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000D3A80(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000D80FC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1000D3B84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000C5AF8(0, &qword_1001D5370, IDSAccount_ptr);
    sub_1000DB0F8();
    Set.Iterator.init(_cocoa:)();
    v2 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v35 = v4;
  v33 = v2;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000C5AF8(0, &qword_1001D5370, IDSAccount_ptr), swift_dynamicCast(), v17 = v44, v16 = v6, v37 = v7, v4 = v35, !v44))
    {
LABEL_32:
      sub_1000DB160();
      return;
    }

LABEL_20:
    v36 = v17;
    v18 = [v17 vettedAliases];
    if (v18)
    {
      v34 = a1;
      v19 = v18;
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = *(v20 + 16);
      if (v38)
      {
        v21 = 0;
        v22 = (v20 + 40);
        v12 = &_swiftEmptyArrayStorage;
        while (v21 < *(v20 + 16))
        {
          v23 = *(v22 - 1);
          v24 = *v22;

          if ((sub_1000CECE4() & 1) == 0)
          {
            v25 = objc_opt_self();
            v26 = String._bridgeToObjectiveC()();
            v27 = [v25 formatPhoneNumber:v26];

            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;

            v24 = v29;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1000D7FF0(0, *(v12 + 2) + 1, 1, v12);
          }

          v31 = *(v12 + 2);
          v30 = *(v12 + 3);
          if (v31 >= v30 >> 1)
          {
            v12 = sub_1000D7FF0((v30 > 1), v31 + 1, 1, v12);
          }

          ++v21;
          *(v12 + 2) = v31 + 1;
          v32 = &v12[16 * v31];
          *(v32 + 4) = v23;
          *(v32 + 5) = v24;
          v22 += 2;
          if (v38 == v21)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      v12 = &_swiftEmptyArrayStorage;
LABEL_9:

      v13 = sub_1000DA838(v12);

      a1 = sub_1000D3A80(v13, v34);

      v2 = v33;
      v4 = v35;
    }

    v6 = v16;
    v7 = v37;
    v11 = (v5 + 64) >> 6;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (v7)
  {
LABEL_16:
    v37 = (v15 - 1) & v15;
    v17 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_32;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1000D3F54(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1000D80FC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000D4058(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000CE97C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000C5AF8(0, &qword_1001D4F90, RPIdentity_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000D4148(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = *(*(sub_1000C4810(&qword_1001D5348, &qword_10014A480) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1000D41E4, v1, 0);
}

uint64_t sub_1000D41E4()
{
  v1 = *(v0 + 352);
  if ((*(v1 + 16) & 1) == 0 || !*(*(v0 + 360) + 208))
  {
LABEL_10:
    v7 = *(v0 + 368);

    v8 = *(v0 + 8);

    return v8();
  }

  *(v0 + 272) = *(v1 + 56);
  v2 = *(v0 + 280);
  *(v0 + 376) = *(v0 + 272);
  *(v0 + 384) = v2;
  if (v2 >> 60 == 15 || (*(v0 + 288) = *(v1 + 24), *(v0 + 296) >> 60 == 15))
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D7308);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Mising BT data", v6, 2u);
    }

    goto LABEL_10;
  }

  v10 = *(v0 + 288);
  v11 = objc_opt_self();
  sub_1000C5808(v0 + 272, v0 + 304, &qword_1001D5350, &qword_10014A488);
  sub_1000C5808(v0 + 288, v0 + 320, &qword_1001D5350, &qword_10014A488);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 392) = isa;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 336;
  *(v0 + 24) = sub_1000D44B0;
  v13 = swift_continuation_init();
  *(v0 + 216) = sub_1000C4810(&qword_1001D5358, &qword_10014A490);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_1000D5E10;
  *(v0 + 184) = &unk_1001AFD80;
  *(v0 + 192) = v13;
  [v11 contactHandlesForShortHashes:isa completion:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000D44B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_1000D5144;
  }

  else
  {
    v5 = sub_1000D45D0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000D45D0()
{
  v23 = v0;
  v1 = v0[49];
  v2 = v0[42];
  v0[51] = v2;

  if (*(v2 + 16))
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v3 = v0[44];
    v4 = type metadata accessor for Logger();
    v0[52] = sub_10000BB0C(v4, qword_1001D7308);
    sub_1000D8D78(v3, (v0 + 10));

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_1000D8E28(v3);

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[44];
      v8 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_1000C3440(*v7, *(v7 + 8), &v22);
      *(v8 + 12) = 2080;
      v9 = Set.description.getter();
      v11 = sub_1000C3440(v9, v10, &v22);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found handles for identifier %s - %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v12 = swift_task_alloc();
    v0[53] = v12;
    *v12 = v0;
    v12[1] = sub_1000D4938;
    v13 = v0[44];
    v14 = v0[45];

    return sub_1000D5EF4(v13);
  }

  else
  {

    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000BB0C(v16, qword_1001D7308);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No known handles - skipping identity share", v19, 2u);
    }

    sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
    sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

    v20 = v0[46];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1000D4938()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[54] = v4;
  *v4 = v3;
  v4[1] = sub_1000D4AA4;
  v5 = v1[45];
  v6 = v1[44];
  v7 = v1[51];

  return sub_1000D6380(v7, v6);
}

uint64_t sub_1000D4AA4(uint64_t a1)
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 360);
  v6 = *v1;
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_1000D4BD8, v4, 0);
}

uint64_t sub_1000D4BD8()
{
  v24 = v0;
  v1 = v0[55];
  if (!v1)
  {
    sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
    v20 = (v0 + 36);
LABEL_12:
    sub_1000C59E0(v20, &qword_1001D5350, &qword_10014A488);
    goto LABEL_13;
  }

  v0[43] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[45];
    swift_beginAccess();
    v3 = *(v2 + 136);

    sub_1000D9E80(v4);

    v5 = v0[43];
    v0[56] = v5;
    if (*(v5 + 16))
    {
      v6 = v0[52];
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 136315138;

        v11 = Set.description.getter();
        v13 = v12;

        v14 = sub_1000C3440(v11, v13, &v23);

        *(v9 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v7, v8, "Needs identity share handles -  %s", v9, 0xCu);
        sub_1000C5604(v10);
      }

      v15 = *(v0[45] + 216);

      v16 = swift_task_alloc();
      v0[57] = v16;
      *v16 = v0;
      v16[1] = sub_1000D4EC8;
      v18 = v0[47];
      v17 = v0[48];

      return sub_1000FFB00(v18, v17, v5);
    }

    sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);
    v20 = (v0 + 34);
    goto LABEL_12;
  }

  sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
  sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

LABEL_13:
  v21 = v0[46];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D4EC8()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return _swift_task_switch(sub_1000D4FF4, v3, 0);
}

uint64_t sub_1000D4FF4()
{
  v1 = v0[56];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = *(v4 + 136);

  sub_1000DAD18(v7, v0 + 43, v4);

  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  swift_beginAccess();
  sub_1000D7AE8(v5, v3, v2);
  swift_endAccess();
  sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

  v9 = v0[46];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000D5144()
{
  v1 = v0[49];
  v2 = v0[50];
  swift_willThrow();

  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D7308);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "No known handles - skipping identity share", v6, 2u);
  }

  sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
  sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

  v7 = v0[46];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D52A8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000D52C8, v1, 0);
}

uint64_t sub_1000D52C8()
{
  v24 = v0;
  v1 = v0[18];
  if ((*(v1 + 16) & 1) == 0)
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
      v1 = v0[18];
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D7308);
    sub_1000D8D78(v1, (v0 + 2));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_1000D8E28(v1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[18];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000C3440(*v5, *(v5 + 8), &v23);
      _os_log_impl(&_mh_execute_header, v3, v4, "Removing known device peer %s", v6, 0xCu);
      sub_1000C5604(v7);
    }

    v8 = v0[18];
    v9 = v0[19];
    v10 = *v8;
    v11 = v8[1];
    swift_beginAccess();
    sub_1000D8A78(v10, v11);
    swift_endAccess();
  }

  v12 = v0[19];
  swift_beginAccess();
  if (*(*(v12 + 192) + 16))
  {
    v13 = v0[1];

    return v13();
  }

  else
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000BB0C(v15, qword_1001D7308);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No more remaining known type5 peers - ending sync cache session", v18, 2u);
    }

    v19 = v0[19];

    v20 = *(v19 + 224);
    v21 = RPNWEndpoint.deviceColor.getter();
    v22 = swift_task_alloc();
    v0[20] = v22;
    *v22 = v0;
    v22[1] = sub_1000D55F0;

    return sub_1000F3458(v21 & 1);
  }
}

uint64_t sub_1000D55F0()
{
  v1 = *(*v0 + 160);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000D56E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C48EC;

  return sub_1000D2B10();
}

uint64_t sub_1000D5794()
{
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D7308);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FirstUnlock complete", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000D58E0;
  v6 = *(v0 + 16);

  return sub_1000D2B10();
}

uint64_t sub_1000D58E0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000D59F4()
{
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D7308);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AppleID changed", v4, 2u);
  }

  v5 = *(v0 + 40);

  return _swift_task_switch(sub_1000D5B14, v5, 0);
}

uint64_t sub_1000D5B14()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;

  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = &_swiftEmptySetSingleton;

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1000D5BDC;
  v5 = *(v0 + 40);

  return sub_1000D1930();
}

uint64_t sub_1000D5BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_1000D5D1C;
  v5 = *(v1 + 40);

  return sub_1000D2B10();
}

uint64_t sub_1000D5D1C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000D5E10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000CE97C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000D5EF4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000D5F14, v1, 0);
}

uint64_t sub_1000D5F14()
{
  v28 = v0;
  if ((*(v0[18] + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

  v1 = v0[19];
  swift_beginAccess();
  v2 = *(*(v1 + 192) + 16);
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = type metadata accessor for Logger();
  sub_10000BB0C(v4, qword_1001D7308);
  sub_1000D8D78(v3, (v0 + 2));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000D8E28(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000C3440(*v7, *(v7 + 8), &v27);
    _os_log_impl(&_mh_execute_header, v5, v6, "Adding known device peer %s", v8, 0xCu);
    sub_1000C5604(v9);
  }

  v10 = v0[18];
  v11 = *v10;
  v12 = v10[1];
  swift_beginAccess();

  sub_1000D80FC(&v27, v11, v12);
  swift_endAccess();

  if (!v2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Known type5 peer detected - starting sync cache session", v17, 2u);
    }

    v18 = v0[19];

    v19 = *(v18 + 224);
    v20 = *(v18 + 128);
    if (v20 && (v21 = [v20 deviceIRKData]) != 0)
    {
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    v0[20] = v23;
    v0[21] = v25;
    v26 = swift_task_alloc();
    v0[22] = v26;
    *v26 = v0;
    v26[1] = sub_1000D6258;

    return sub_1000F1E28(v23, v25);
  }

  else
  {
LABEL_7:
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000D6258()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v6 = *v0;

  sub_1000C5928(v3, v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000D6380(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = *(*(sub_1000C4810(&qword_1001D5348, &qword_10014A480) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000D644C, v2, 0);
}

uint64_t sub_1000D644C()
{
  v116 = v0;
  v1 = [*(v0[35] + 112) getFriendDeviceIdentities];
  if (!v1)
  {
    if (qword_1001D7300 != -1)
    {
LABEL_79:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000BB0C(v25, qword_1001D7308);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_39;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Unable to fetch friend device identities";
    goto LABEL_38;
  }

  v2 = v1;
  sub_1000C5AF8(0, &qword_1001D4F90, RPIdentity_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v4; i = v0)
  {
    v5 = 0;
    v6 = v0[33];
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v0 = (v6 + 56);
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_31;
        }

        v8 = *(v3 + 32 + 8 * v5);
      }

      v9 = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v11 = [v8 accountID];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (*(v6 + 16))
        {
          v16 = v4;
          v17 = *(v6 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v18 = Hasher._finalize()();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v0 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v13 && v22[1] == v15;
              if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v0 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_21:
          }

          v4 = v16;
          v7 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }
      }

      else
      {
      }

      if (v5 == v4)
      {
        v0 = i;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_33:
  v0[37] = _swiftEmptyArrayStorage;
  v30 = v0[34];

  *(v0 + 15) = *(v30 + 56);
  v32 = v0[15];
  v31 = v0[16];
  v0[38] = v32;
  v0[39] = v31;
  if (v31 >> 60 == 15)
  {

    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000BB0C(v33, qword_1001D7308);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_39;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Missing BT data";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

LABEL_39:

    goto LABEL_40;
  }

  *(v0 + 17) = *(v0[34] + 40);
  v38 = v0[18];
  v0[40] = v0[17];
  v0[41] = v38;
  if (v38 >> 60 == 15)
  {
    goto LABEL_81;
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v86 = _CocoaArrayWrapper.endIndex.getter();
    v0[42] = v86;
    if (v86)
    {
      goto LABEL_48;
    }

LABEL_81:
    v87 = v0[35];
    swift_beginAccess();
    v88 = *(v87 + 168);
    if (*(v88 + 16))
    {
      sub_1000C5808((v0 + 15), (v0 + 19), &qword_1001D5350, &qword_10014A488);
      v89 = sub_1000DA11C(v32, v31);
      v90 = v0[36];
      if (v91)
      {
        v92 = v89;
        v93 = *(v88 + 56);
        v94 = type metadata accessor for Date();
        v95 = *(v94 - 8);
        (*(v95 + 16))(v90, v93 + *(v95 + 72) * v92, v94);
        (*(v95 + 56))(v90, 0, 1, v94);
      }

      else
      {
        v94 = type metadata accessor for Date();
        (*(*(v94 - 8) + 56))(v90, 1, 1, v94);
      }

      v97 = v0;
    }

    else
    {
      v96 = v0[36];
      v94 = type metadata accessor for Date();
      v97 = v0;
      (*(*(v94 - 8) + 56))(v96, 1, 1, v94);
      sub_1000C5808((v97 + 15), (v97 + 21), &qword_1001D5350, &qword_10014A488);
    }

    v98 = v97[36];
    swift_endAccess();
    type metadata accessor for Date();
    v99 = (*(*(v94 - 8) + 48))(v98, 1, v94);
    sub_1000C59E0(v98, &qword_1001D5348, &qword_10014A480);
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v100 = v97[34];
    v101 = type metadata accessor for Logger();
    sub_10000BB0C(v101, qword_1001D7308);

    sub_1000D8D78(v100, (v97 + 2));
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    sub_1000D8E28(v100);
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v115[0] = v105;
      *v104 = 134218498;
      v106 = _swiftEmptyArrayStorage & 0x4000000000000000;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || v106)
      {
        v107 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v107 = _swiftEmptyArrayStorage[2];
      }

      *(v104 + 4) = v107;

      *(v104 + 12) = 2080;
      v108 = i[18];
      if (v108 >> 60 == 15)
      {
        v109 = 0xE600000000000000;
        v110 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v110 = sub_1000CC910(i[17], v108);
        v109 = v111;
      }

      v112 = sub_1000C3440(v110, v109, v115);

      *(v104 + 14) = v112;
      *(v104 + 22) = 1024;
      *(v104 + 24) = v99 != 1;
      _os_log_impl(&_mh_execute_header, v102, v103, "No matching identities %ld for authTag %s - attempted sync previously %{BOOL}d", v104, 0x1Cu);
      sub_1000C5604(v105);
    }

    else
    {

      v106 = _swiftEmptyArrayStorage & 0x4000000000000000;
    }

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || v106)
    {
      v113 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v113 = _swiftEmptyArrayStorage[2];
    }

    v0 = i;
    sub_1000C59E0((i + 15), &qword_1001D5350, &qword_10014A488);
    if (!v113 || v99 == 1)
    {
      v34 = i[33];

      goto LABEL_41;
    }

LABEL_40:
    v34 = 0;
LABEL_41:
    v35 = v0[36];

    v36 = v0[1];

    return v36(v34);
  }

  v39 = _swiftEmptyArrayStorage[2];
  v0[42] = v39;
  if (!v39)
  {
    goto LABEL_81;
  }

LABEL_48:
  *(v0 + 89) = *(v0[34] + 72);
  sub_1000C5808((v0 + 15), (v0 + 23), &qword_1001D5350, &qword_10014A488);
  sub_1000C5808((v0 + 17), (v0 + 25), &qword_1001D5350, &qword_10014A488);
  v40 = 0;
  v0[31] = sub_1000DA838(_swiftEmptyArrayStorage);
  while (1)
  {
    v42 = v0[37];
    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(v42 + 16))
      {
        goto LABEL_78;
      }

      v43 = *(v42 + 8 * v40 + 32);
    }

    v44 = v43;
    v0[43] = v43;
    v0[44] = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v45 = [v43 accountID];
    if (v45)
    {
      break;
    }

LABEL_50:
    v40 = v0[44];
    if (v40 == v0[42])
    {
      v68 = v0[37];
      sub_1000C59E0((v0 + 17), &qword_1001D5350, &qword_10014A488);
      sub_1000C59E0((v0 + 15), &qword_1001D5350, &qword_10014A488);

      v34 = v0[31];
      goto LABEL_41;
    }
  }

  v47 = v0[40];
  v46 = v0[41];
  v49 = v0[38];
  v48 = v0[39];
  if (*(v0 + 89) >= 3u)
  {
    v50 = 5;
  }

  else
  {
    v50 = 2;
  }

  v51 = v45;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v0[45] = v52;
  v0[46] = v54;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v56 = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = 0;
  v57 = [v44 verifyAuthTag:isa data:v56 type:v50 error:v0 + 32];

  v58 = v0[32];
  if (!v57)
  {
    v59 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000BB0C(v60, qword_1001D7308);
    v61 = v44;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v115[0] = v66;
      *v64 = 138412546;
      *(v64 + 4) = v61;
      *v65 = v61;
      *(v64 + 12) = 2080;
      v67 = v61;
      *(v64 + 14) = sub_1000C3440(v52, v54, v115);
      _os_log_impl(&_mh_execute_header, v62, v63, "AuthTag doesn't match identity %@ - %s needs identity share", v64, 0x16u);
      sub_1000C59E0(v65, &qword_1001D55A0, &unk_100149890);

      sub_1000C5604(v66);
    }

    sub_1000D80FC(v0 + 27, v52, v54);

    v41 = v0[28];

    goto LABEL_50;
  }

  v69 = v0;
  v70 = qword_1001D7300;
  v71 = v58;
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  v69[47] = sub_10000BB0C(v72, qword_1001D7308);
  v73 = v44;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412290;
    *(v76 + 4) = v73;
    *v77 = v73;
    v78 = v73;
    _os_log_impl(&_mh_execute_header, v74, v75, "AuthTag matches existing identity %@", v76, 0xCu);
    sub_1000C59E0(v77, &qword_1001D55A0, &unk_100149890);
  }

  v79 = v69[35];

  v80 = *(v79 + 224);
  v69[48] = v80;
  v81 = [v73 deviceIRKData];
  if (v81)
  {
    v82 = v81;
    v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;
  }

  else
  {
    v83 = 0;
    v85 = 0xF000000000000000;
  }

  v69[49] = v83;
  v69[50] = v85;

  return _swift_task_switch(sub_1000D726C, v80, 0);
}

uint64_t sub_1000D726C()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 280);
  *(v0 + 90) = sub_1000F2ADC(v2, v1) & 1;
  sub_1000C5928(v2, v1);

  return _swift_task_switch(sub_1000D7334, v4, 0);
}

uint64_t sub_1000D7334()
{
  v75 = v0;
  v1 = *(v0 + 376);
  if (*(v0 + 90))
  {
    v2 = *(v0 + 368);
    v3 = *(v0 + 344);
    v4 = *(v0 + 296);

    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 344);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "Identity was previously synced with peer %@ - no identity share needed", v9, 0xCu);
      sub_1000C59E0(v10, &qword_1001D55A0, &unk_100149890);
    }

    v12 = *(v0 + 344);
    sub_1000C59E0(v0 + 136, &qword_1001D5350, &qword_10014A488);
    sub_1000C59E0(v0 + 120, &qword_1001D5350, &qword_10014A488);

    v13 = *(v0 + 248);

    v14 = 0;
    goto LABEL_9;
  }

  v15 = *(v0 + 344);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 344);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v18;
    *v20 = v18;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v16, v17, "Identity not synced with peer %@ - needs identity share", v19, 0xCu);
    sub_1000C59E0(v20, &qword_1001D55A0, &unk_100149890);
  }

  v23 = *(v0 + 360);
  v22 = *(v0 + 368);
  v24 = *(v0 + 344);

  v25 = (v0 + 248);
  sub_1000D80FC((v0 + 232), v23, v22);

  v26 = *(v0 + 240);

  v27 = *(v0 + 352);
  if (v27 == *(v0 + 336))
  {
LABEL_8:
    v28 = *(v0 + 296);
    sub_1000C59E0(v0 + 136, &qword_1001D5350, &qword_10014A488);
    sub_1000C59E0(v0 + 120, &qword_1001D5350, &qword_10014A488);

    v14 = *(v0 + 248);
LABEL_9:
    v29 = *(v0 + 288);

    v30 = *(v0 + 8);

    return v30(v14);
  }

  while (1)
  {
    v33 = *(v0 + 296);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v33 + 16))
      {
        goto LABEL_40;
      }

      v34 = *(v33 + 8 * v27 + 32);
    }

    v25 = v34;
    *(v0 + 344) = v34;
    *(v0 + 352) = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v35 = [v34 accountID];
    if (v35)
    {
      break;
    }

LABEL_14:
    v27 = *(v0 + 352);
    if (v27 == *(v0 + 336))
    {
      goto LABEL_8;
    }
  }

  v37 = *(v0 + 320);
  v36 = *(v0 + 328);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);
  if (*(v0 + 89) >= 3u)
  {
    v40 = 5;
  }

  else
  {
    v40 = 2;
  }

  v41 = v35;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(v0 + 360) = v42;
  *(v0 + 368) = v44;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v46 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 256) = 0;
  v47 = [v25 verifyAuthTag:isa data:v46 type:v40 error:v0 + 256];

  v48 = *(v0 + 256);
  if (!v47)
  {
    v49 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000BB0C(v50, qword_1001D7308);
    v51 = v25;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v74 = v56;
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2080;
      v57 = v51;
      *(v54 + 14) = sub_1000C3440(v42, v44, &v74);
      _os_log_impl(&_mh_execute_header, v52, v53, "AuthTag doesn't match identity %@ - %s needs identity share", v54, 0x16u);
      sub_1000C59E0(v55, &qword_1001D55A0, &unk_100149890);

      sub_1000C5604(v56);
    }

    v25 = (v0 + 248);
    sub_1000D80FC((v0 + 216), v42, v44);

    v32 = *(v0 + 224);

    goto LABEL_14;
  }

  v58 = qword_1001D7300;
  v59 = v48;
  if (v58 == -1)
  {
    goto LABEL_31;
  }

LABEL_41:
  swift_once();
LABEL_31:
  v60 = type metadata accessor for Logger();
  *(v0 + 376) = sub_10000BB0C(v60, qword_1001D7308);
  v61 = v25;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&_mh_execute_header, v62, v63, "AuthTag matches existing identity %@", v64, 0xCu);
    sub_1000C59E0(v65, &qword_1001D55A0, &unk_100149890);
  }

  v67 = *(v0 + 280);

  v68 = *(v67 + 224);
  *(v0 + 384) = v68;
  v69 = [v61 deviceIRKData];
  if (v69)
  {
    v70 = v69;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0xF000000000000000;
  }

  *(v0 + 392) = v71;
  *(v0 + 400) = v73;

  return _swift_task_switch(sub_1000D726C, v68, 0);
}

uint64_t sub_1000D7AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1000C59E0(a1, &qword_1001D5348, &qword_10014A480);
    sub_1000D9FAC(a2, a3, v10);
    sub_1000C4AA4(a2, a3);
    return sub_1000C59E0(v10, &qword_1001D5348, &qword_10014A480);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1000DA388(v15, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000C4AA4(a2, a3);
    *v3 = v20;
  }

  return result;
}

id sub_1000D7CFC()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v0[14] = [objc_opt_self() sharedPeopleDaemon];
  v0[15] = [objc_opt_self() sharedCloudDaemon];
  v0[16] = 0;
  v0[17] = &_swiftEmptySetSingleton;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = &_swiftEmptySetSingleton;
  v0[21] = &_swiftEmptyDictionarySingleton;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = &_swiftEmptySetSingleton;
  type metadata accessor for RPIdentitySyncSessionTelemetry();
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = sub_100102D8C();
  type metadata accessor for RPIdentitySyncCache();
  v0[28] = sub_1000F472C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1000D7E0C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);

  v3 = *(v0 + 160);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  v8 = *(v0 + 216);

  v9 = *(v0 + 224);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000D7E9C()
{
  sub_1000D7E0C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D7EC8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000CFB48(v3, v4, v5, v2);
}

uint64_t sub_1000D7F5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000CFE24(v3, v4, v5, v2);
}

char *sub_1000D7FF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C4810(&qword_1001D52C8, &qword_10014A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D80FC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000D8564(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000D8270()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000D0624();
}

uint64_t sub_1000D8304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C4810(&unk_1001D5660, &unk_10014B240);
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

Swift::Int sub_1000D8564(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000D8304(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000D86E4();
      goto LABEL_16;
    }

    sub_1000D8840(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000D86E4()
{
  v1 = v0;
  sub_1000C4810(&unk_1001D5660, &unk_10014B240);
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

uint64_t sub_1000D8840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000C4810(&unk_1001D5660, &unk_10014B240);
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

uint64_t sub_1000D8A78(uint64_t a1, uint64_t a2)
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
    sub_1000D86E4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000D8BB4(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1000D8BB4(unint64_t result)
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

unint64_t sub_1000D8DD4()
{
  result = qword_1001D5340;
  if (!qword_1001D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5340);
  }

  return result;
}

uint64_t sub_1000D8E94(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = type metadata accessor for Date();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1000C4810(&qword_1001D5360, &unk_10014A4A8);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v26;
      v45 = *(*(v9 + 48) + 16 * v26);
      v29 = *(&v45 + 1);
      if (v42)
      {
        (*v19)(v43, v28, v44);
      }

      else
      {
        (*v40)(v43, v28, v44);
        sub_1000C61D4(v45, v29);
      }

      v30 = *(v12 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v45;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 16 * v21) = v22;
      result = (*v19)(*(v12 + 56) + v27 * v21, v43, v44);
      ++*(v12 + 16);
      v6 = v41;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1000D921C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_1000C61D4(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      __DataStorage._length.getter();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = __DataStorage._length.getter();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = __DataStorage._length.getter();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_1000C61D4(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = __DataStorage._length.getter();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_1000C61D4(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1000C4AA4(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1000C61D4(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = __DataStorage._length.getter();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1000C4AA4(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1000C4AA4(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1000C61D4(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = __DataStorage._length.getter();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_1000C61D4(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  __DataStorage._length.getter();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

void *sub_1000D9A80(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000DA940(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000D9B10(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Date();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = __chkstk_darwin(v8);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v43 - v13;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v46 = v12;
  sub_1000C4810(&qword_1001D5360, &unk_10014A4A8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v44 = result;
  v45 = v50 + 16;
  v51 = v50 + 32;
  v18 = result + 64;
  v19 = v46;
  v43 = a4;
  while (v16)
  {
    v20 = v19;
    v21 = __clz(__rbit64(v16));
    v48 = (v16 - 1) & v16;
LABEL_16:
    v24 = v21 | (v17 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v50;
    v49 = *(v50 + 72);
    v30 = v47;
    (*(v50 + 16))(v47, v25 + v49 * v24, v20);
    v31 = *(v29 + 32);
    v31(v52, v30, v20);
    v15 = v44;
    v32 = *(v44 + 40);
    Hasher.init(_seed:)();
    sub_1000C61D4(v27, v28);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v15 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v19 = v46;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v18 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v19 = v46;
LABEL_26:
    *(v18 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v15 + 48) + 16 * v36);
    *v41 = v27;
    v41[1] = v28;
    result = (v31)(*(v15 + 56) + v36 * v49, v52, v19);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43;
    v16 = v48;
    if (!a3)
    {
      return v15;
    }
  }

  v22 = v17;
  while (1)
  {
    v17 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v23 = a1[v17];
    ++v22;
    if (v23)
    {
      v20 = v19;
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
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

uint64_t sub_1000D9E80(uint64_t result)
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

        sub_1000D8A78(v12, v13);

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

uint64_t sub_1000D9FAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000DA11C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000DA5BC();
      v12 = v22;
    }

    sub_1000C4AA4(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56);
    v14 = type metadata accessor for Date();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a3, v13 + *(v21 + 72) * v9, v14);
    sub_1000DA194(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for Date();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1000DA11C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000D921C(a1, a2, v6);
}

unint64_t sub_1000DA194(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_1000C61D4(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_1000C4AA4(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000DA388(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000DA11C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000DA5BC();
      goto LABEL_7;
    }

    sub_1000D8E94(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1000DA11C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000DA50C(v12, a2, a3, a1, v18);

  return sub_1000C61D4(a2, a3);
}

uint64_t sub_1000DA50C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1000DA5BC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5360, &unk_10014A4A8);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v40 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v39 + 32;
    v36 = v39 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v38;
        v27 = v39;
        v28 = *(v39 + 72) * v21;
        v29 = v37;
        (*(v39 + 16))(v37, *(v6 + 56) + v28, v38);
        v30 = v40;
        v31 = (*(v40 + 48) + v22);
        *v31 = v24;
        v31[1] = v25;
        (*(v27 + 32))(*(v30 + 56) + v28, v29, v26);
        result = sub_1000C61D4(v24, v25);
        v16 = v41;
      }

      while (v41);
    }

    v19 = v12;
    v8 = v40;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1000DA838(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000D80FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000DA8D0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1000D80FC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1000DA940(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, char *))
{
  v30 = a2;
  v40 = a4;
  v31 = a1;
  v39 = type metadata accessor for Date();
  v5 = *(*(v39 - 8) + 64);
  result = __chkstk_darwin(v39);
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v7;
  v9 = 0;
  v41 = a3;
  v10 = *(a3 + 64);
  v32 = 0;
  v33 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v35 = v7 + 8;
  v36 = v7 + 16;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v42 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = v41[7];
    v20 = (v41[6] + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = v37;
    v24 = v38;
    v25 = *(v38 + 72);
    v34 = v18;
    v26 = v39;
    (*(v38 + 16))(v37, v19 + v25 * v18, v39);
    sub_1000C61D4(v21, v22);
    v27 = v40(v21, v22, v23);
    (*(v24 + 8))(v23, v26);
    result = sub_1000C4AA4(v21, v22);
    v13 = v42;
    if (v27)
    {
      *(v31 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_1000D9B10(v31, v30, v32, v41);
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_1000D9B10(v31, v30, v32, v41);
    }

    v17 = *(v33 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v42 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DAB98(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, char *))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000DA940(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000D9A80(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1000DAD18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v31 = v8;
  v32 = v4;
  v38 = a3;
  if (v7)
  {
LABEL_5:
    v11 = v10;
LABEL_9:
    v36 = v11;
    v37 = (v7 - 1) & v7;
    v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
    v40 = *v12;
    v42 = v12[1];

    swift_beginAccess();
    v13 = *a2 + 56;
    v14 = 1 << *(*a2 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(*a2 + 56);
    v17 = (v14 + 63) >> 6;
    v41 = *a2;
    result = swift_bridgeObjectRetain_n();
    v18 = 0;
    v39 = v13;
    while (v16)
    {
LABEL_19:
      v23 = (*(v41 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
      v25 = *v23;
      v24 = v23[1];
      v26 = qword_1001D7300;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000BB0C(v27, qword_1001D7308);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v30 = 136315394;
        *(v30 + 4) = sub_1000C3440(v25, v24, &v43);
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_1000C3440(v40, v42, &v43);
        _os_log_impl(&_mh_execute_header, v28, v29, "Sending identity share request to %s from %s", v30, 0x16u);
        swift_arrayDestroy();

        a3 = v38;
      }

      v16 &= v16 - 1;
      v19 = *(a3 + 112);
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      [v19 sendFriendRequest:v20 nonWakingRequest:0 sendersKnownAlias:v21];

      v13 = v39;
    }

    while (1)
    {
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v22 >= v17)
      {

        if (v34)
        {
        }

        v10 = v36;
        v7 = v37;
        v8 = v31;
        v4 = v32;
        if (!v37)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v16 = *(v13 + 8 * v22);
      ++v18;
      if (v16)
      {
        v18 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DB0F8()
{
  result = qword_1001D5378;
  if (!qword_1001D5378)
  {
    sub_1000C5AF8(255, &qword_1001D5370, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5378);
  }

  return result;
}

uint64_t sub_1000DB168(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DB1B0()
{
  result = qword_1001D5F60;
  if (!qword_1001D5F60)
  {
    sub_1000C6A0C(&unk_1001D5500, &qword_100149A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F60);
  }

  return result;
}

uint64_t sub_1000DB24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DB29C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000D59D4(v3, v4, v5, v2);
}

uint64_t sub_1000DB330()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000D5774(v3, v4, v5, v2);
}

uint64_t sub_1000DB3C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DB404()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000D56E4();
}

uint64_t sub_1000DB4C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA698);
  sub_10000BB0C(v0, qword_1001DA698);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DB540()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D73B0);
  v1 = sub_10000BB0C(v0, qword_1001D73B0);
  if (qword_1001D73A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BB0C(v0, qword_1001DA698);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000DB610(uint64_t a1)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v2 = __exp10((a1 - 1));
  if (v2 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = __exp10(a1);
  if (v4 == INFINITY || v2 == INFINITY)
  {
    goto LABEL_28;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 < v3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v4;
  if (v6)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1 - v2;
  if (!__OFSUB__(0, v3))
  {
LABEL_15:
    v6 = __OFADD__(v3, v8);
    v9 = v3 + v8;
    if (!v6)
    {
      if (v9 <= 0xFFFFFFFFLL)
      {
        v6 = __OFADD__(v7, v8);
        v10 = v7 + v8;
        if (!v6)
        {
          if (((v9 | v10) & 0x8000000000000000) == 0)
          {
            if (v10 <= 0xFFFFFFFFLL)
            {
              if (v10 >= v9)
              {
                v11 = arc4random_uniform(v10 - v9);
                if (!__CFADD__(v9, v11))
                {
                  if (!__OFSUB__(v9 + v11, v8))
                  {
                    dispatch thunk of CustomStringConvertible.description.getter();
                    return;
                  }

                  goto LABEL_41;
                }

LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_42:
  __break(1u);
}

unint64_t sub_1000DB7B8()
{
  result = qword_1001D5390;
  if (!qword_1001D5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5390);
  }

  return result;
}

unint64_t sub_1000DBC04()
{
  sub_1000C4810(&qword_1001D5398, &qword_10014A540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014A0A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = sub_1000DB80C();
  v4 = 0x6C616E7265746E49;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xEF2E726F72726520;
  *(inited + 72) = &type metadata for String;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1000DEDBC(inited);
  swift_setDeallocating();
  sub_1000C59E0(inited + 32, &qword_1001D53A0, &qword_10014A548);
  return v6;
}

uint64_t sub_1000DBCE8(uint64_t a1)
{
  v2 = sub_1000E07A8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000DBD24(uint64_t a1)
{
  v2 = sub_1000E07A8();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000DBD70()
{
  result = sub_1000DB80C();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t sub_1000DBDEC@<X0>(uint64_t a1@<X8>)
{
  String.utf8CString.getter();
  v2 = nw_interface_create_with_name();

  if (v2)
  {
    swift_unknownObjectRelease();
    String.utf8CString.getter();
    v3 = nw_interface_create_with_name();

    if (v3)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (IsAppleInternalBuild())
  {
    String.utf8CString.getter();
    v4 = nw_interface_create_with_name();

    if (v4)
    {
      swift_unknownObjectRelease();
      String.utf8CString.getter();
      v5 = nw_interface_create_with_name();

      if (v5)
      {
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  if (qword_1001D73A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000BB0C(v6, qword_1001D73B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to initialize nw_interface, defaulting to loopback", v9, 2u);
  }

  String.utf8CString.getter();
  v10 = nw_interface_create_with_name();

  if (!v10)
  {
    __break(1u);
    return result;
  }

LABEL_13:
  NWInterface.init(_:)();
  v12 = type metadata accessor for NWInterface();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 0, 1, v12);
}

uint64_t sub_1000DC030(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

unint64_t sub_1000DC104()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000DC198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DF0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DC1D8(uint64_t a1)
{
  v2 = sub_1000DEEEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC214(uint64_t a1)
{
  v2 = sub_1000DEEEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC25C(uint64_t a1)
{
  v2 = sub_1000DF03C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC298(uint64_t a1)
{
  v2 = sub_1000DF03C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC2D4(uint64_t a1)
{
  v2 = sub_1000DF090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC310(uint64_t a1)
{
  v2 = sub_1000DF090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC34C(uint64_t a1)
{
  v2 = sub_1000DEF40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC388(uint64_t a1)
{
  v2 = sub_1000DEF40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC3C4(uint64_t a1)
{
  v2 = sub_1000DEFE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC400(uint64_t a1)
{
  v2 = sub_1000DEFE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC43C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000DC46C(uint64_t a1)
{
  v2 = sub_1000DEF94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC4A8(uint64_t a1)
{
  v2 = sub_1000DEF94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC4E4(void *a1, int a2)
{
  v47 = a2;
  v3 = sub_1000C4810(&qword_1001D53B0, &qword_10014A558);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v36 - v5;
  v6 = sub_1000C4810(&qword_1001D53B8, &qword_10014A560);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v36 - v8;
  v9 = sub_1000C4810(&qword_1001D53C0, &qword_10014A568);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v36 = &v36 - v11;
  v12 = sub_1000C4810(&qword_1001D53C8, &qword_10014A570);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_1000C4810(&qword_1001D53D0, &qword_10014A578);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v48 = sub_1000C4810(&qword_1001D53D8, &qword_10014A580);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_1000DEEEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_1000DF03C();
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1000DF090();
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_1000DEFE8();
    v33 = v36;
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1000DEF94();
    v26 = v39;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_1000DEF40();
    v26 = v42;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

uint64_t sub_1000DCA58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DF2A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1000DCAA0()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  return v0;
}

void sub_1000DCBAC(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v6 = sub_1000DCAA0();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 dateFromString:v7];

  if (v8)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x8000000100179550;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (a3 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001001794E0;
    }

    if (a3 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (a3)
    {
      v9 = 0xEA00000000003232;
    }

    if (a3 <= 1u)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (a3 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    _StringGuts.grow(_:)(67);
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v15._object = 0x8000000100179500;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD000000000000023;
    v17._object = 0x8000000100179520;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v13;
    v18._object = v14;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 96;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    sub_1000DB7B8();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 16) = 0xD000000000000059;
    *(v20 + 24) = 0x8000000100179440;
    *(v20 + 32) = 243;
    *(v20 + 40) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1000DCDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000DCE88(uint64_t a1)
{
  v2 = sub_1000DF9A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCEC4(uint64_t a1)
{
  v2 = sub_1000DF9A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCF00(void *a1, char a2)
{
  v4 = sub_1000C4810(&qword_1001D53E0, &qword_10014A588);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_1000DF9A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = a2;
  sub_1000DF9F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void sub_1000DD048(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1000DCAA0();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = [v4 stringFromDate:isa];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a1 = v7;
  a1[1] = v9;
}

void *sub_1000DD0F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DFA48(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000DD13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v40 = a7;
  *(&v40 + 1) = a8;
  v42 = a5;
  v43 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v41 = a6;

  static String.Encoding.utf8.getter();
  *&v39 = a1;
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;
  *(&v39 + 1) = a2;

  v22 = *(v15 + 8);
  v44 = v14;
  result = v22(v18, v14);
  v38 = v21;
  if (v21 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v36 = v19;
  static String.Encoding.utf8.getter();
  v35 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  v37 = a4;

  result = v22(v18, v44);
  if (v25 >> 60 == 15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  static String.Encoding.utf8.getter();
  v27 = v41;
  v26 = v42;
  v28 = String.data(using:allowLossyConversion:)();
  v30 = v29;

  result = v22(v18, v44);
  if (v30 >> 60 != 15)
  {
    v46 = v39;
    *&v47 = v43;
    *(&v47 + 1) = v37;
    *&v48 = v26;
    *(&v48 + 1) = v27;
    v49 = v40;
    *&v50 = v36;
    *(&v50 + 1) = v38;
    *&v51 = v35;
    *(&v51 + 1) = v25;
    *&v52 = v28;
    *(&v52 + 1) = v30;
    v53 = v39;
    v54 = v43;
    v55 = v37;
    v56 = v26;
    v57 = v27;
    v58 = v40;
    v59 = v36;
    v60 = v38;
    v61 = v35;
    v62 = v25;
    v63 = v28;
    v64 = v30;
    sub_1000DFBB8(&v46, &v45);
    result = sub_1000DFBF0(&v53);
    v31 = v51;
    a9[4] = v50;
    a9[5] = v31;
    a9[6] = v52;
    v32 = v47;
    *a9 = v46;
    a9[1] = v32;
    v33 = v49;
    a9[2] = v48;
    a9[3] = v33;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1000DD3E4()
{
  v1 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v127 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v118 - v6;
  v8 = __chkstk_darwin(v5);
  v129 = &v118 - v9;
  v10 = __chkstk_darwin(v8);
  v133 = &v118 - v11;
  v12 = __chkstk_darwin(v10);
  v130 = &v118 - v13;
  v14 = __chkstk_darwin(v12);
  v131 = &v118 - v15;
  v16 = __chkstk_darwin(v14);
  v136 = &v118 - v17;
  v18 = __chkstk_darwin(v16);
  v135 = &v118 - v19;
  v20 = __chkstk_darwin(v18);
  v139 = &v118 - v21;
  v22 = __chkstk_darwin(v20);
  v138 = &v118 - v23;
  v24 = __chkstk_darwin(v22);
  v141 = &v118 - v25;
  v26 = __chkstk_darwin(v24);
  v140 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = (&v118 - v29);
  __chkstk_darwin(v28);
  v31 = &v118 - v30;
  v32 = type metadata accessor for DispatchData();
  v146 = *(v32 - 8);
  v33 = v146[8];
  v34 = __chkstk_darwin(v32);
  v125 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v126 = &v118 - v37;
  v38 = __chkstk_darwin(v36);
  v128 = &v118 - v39;
  v40 = __chkstk_darwin(v38);
  v132 = &v118 - v41;
  v42 = __chkstk_darwin(v40);
  v134 = &v118 - v43;
  v44 = __chkstk_darwin(v42);
  v137 = &v118 - v45;
  __chkstk_darwin(v44);
  v47 = &v118 - v46;
  v48 = type metadata accessor for String.Encoding();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v118 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[7])
  {
    sub_1000DB7B8();
    swift_allocError();
    *v117 = xmmword_10014A530;
    *(v117 + 16) = 0xD000000000000059;
    *(v117 + 24) = 0x8000000100179440;
    *(v117 + 32) = 273;
    *(v117 + 40) = 2;
    swift_willThrow();
    return;
  }

  v120 = v7;
  v53 = v0[6];
  static String.Encoding.utf8.getter();
  v143 = String.data(using:allowLossyConversion:)();
  v55 = v54;
  (*(v49 + 8))(v52, v48);
  v142 = v55;
  if (v55 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v144 = v0;
  v57 = v0[8];
  v56 = v0[9];
  v58 = v146;
  v59 = v146 + 7;
  v60 = v146[7];
  v60(v31, 1, 1, v32);
  v122 = v57;
  v121 = v56;
  v61 = v149;
  sub_1000DEA94(v57, v56, v31);
  v124 = v61;
  v62 = v148;
  sub_1000C5808(v31, v148, &qword_1001D53A8, &qword_10014A550);
  v63 = v58 + 6;
  v145 = v58[6];
  if (v145(v62, 1, v32) == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v64 = v58[4];
  v149 = v58 + 4;
  v148 = v64;
  (v64)(v47, v62, v32);
  sub_1000C59E0(v31, &qword_1001D53A8, &qword_10014A550);
  v123 = DispatchData._bridgeToObjectiveC()();
  v66 = v58[1];
  v65 = v58 + 1;
  v147 = v66;
  v66(v47, v32);
  v67 = v144[10];
  v68 = v144[11];
  v69 = v140;
  v60(v140, 1, 1, v32);
  v119 = v67;
  v118 = v68;
  v70 = v124;
  sub_1000DEA94(v67, v68, v69);
  v146 = v70;
  v71 = v141;
  sub_1000C5808(v69, v141, &qword_1001D53A8, &qword_10014A550);
  if (v145(v71, 1, v32) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v72 = v60;
  v73 = v137;
  (v148)(v137, v71, v32);
  sub_1000C59E0(v69, &qword_1001D53A8, &qword_10014A550);
  v141 = DispatchData._bridgeToObjectiveC()();
  v147(v73, v32);
  v74 = v144[12];
  v75 = v144[13];
  v76 = v138;
  v72(v138, 1, 1, v32);
  v137 = v74;
  v124 = v75;
  v77 = v146;
  sub_1000DEA94(v74, v75, v76);
  v146 = v77;
  v78 = v139;
  sub_1000C5808(v76, v139, &qword_1001D53A8, &qword_10014A550);
  if (v145(v78, 1, v32) == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v79 = v134;
  (v148)(v134, v78, v32);
  sub_1000C59E0(v76, &qword_1001D53A8, &qword_10014A550);
  v80 = DispatchData._bridgeToObjectiveC()();
  v147(v79, v32);
  v81 = v135;
  v144 = v59;
  v140 = v72;
  v72(v135, 1, 1, v32);
  v82 = v81;
  v83 = v146;
  sub_1000DEA94(v143, v142, v81);
  v146 = v83;
  v84 = v81;
  v85 = v136;
  sub_1000C5808(v84, v136, &qword_1001D53A8, &qword_10014A550);
  v86 = v145;
  if (v145(v85, 1, v32) == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v87 = v63;
  v88 = v86;
  v89 = v132;
  (v148)(v132, v85, v32);
  sub_1000C59E0(v82, &qword_1001D53A8, &qword_10014A550);
  v90 = DispatchData._bridgeToObjectiveC()();
  v147(v89, v32);
  v91 = v123;
  v92 = v141;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  v94 = v133;
  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v95 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
  v96 = v131;
  v139 = v95;
  if (!v95)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v136 = client_SPAKE2PLUSV1_identity;
  v138 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
  if (!v138)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v97 = v140;
  (v140)(v96, 1, 1, v32);
  v98 = v146;
  sub_1000DEA94(v122, v121, v96);
  v146 = v98;
  v99 = v130;
  sub_1000C5808(v96, v130, &qword_1001D53A8, &qword_10014A550);
  v100 = v88(v99, 1, v32);
  v141 = v87;
  if (v100 == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v101 = v128;
  v102 = v99;
  v103 = v148;
  (v148)(v128, v102, v32);
  sub_1000C59E0(v96, &qword_1001D53A8, &qword_10014A550);
  v134 = DispatchData._bridgeToObjectiveC()();
  v104 = v147;
  v147(v101, v32);
  v97(v94, 1, 1, v32);
  v105 = v146;
  sub_1000DEA94(v119, v118, v94);
  v135 = v105;
  v106 = v129;
  sub_1000C5808(v94, v129, &qword_1001D53A8, &qword_10014A550);
  if (v88(v106, 1, v32) == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v107 = v126;
  v103(v126, v106, v32);
  sub_1000C59E0(v94, &qword_1001D53A8, &qword_10014A550);
  v108 = DispatchData._bridgeToObjectiveC()();
  v146 = v65;
  v104(v107, v32);
  v109 = v120;
  v97(v120, 1, 1, v32);
  sub_1000DEA94(v137, v124, v109);
  v110 = v127;
  sub_1000C5808(v109, v127, &qword_1001D53A8, &qword_10014A550);
  if (v88(v110, 1, v32) != 1)
  {
    v111 = v125;
    v103(v125, v110, v32);
    sub_1000C59E0(v109, &qword_1001D53A8, &qword_10014A550);
    v112 = DispatchData._bridgeToObjectiveC()();
    v104(v111, v32);
    v113 = v134;
    v115 = v138;
    v114 = v139;
    server_SPAKE2PLUSV1_identity = sec_identity_create_server_SPAKE2PLUSV1_identity();

    if (server_SPAKE2PLUSV1_identity)
    {
      swift_unknownObjectRelease();

      sub_1000C5928(v143, v142);
      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1000DE06C()
{
  v1 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v71 = &v67 - v6;
  v7 = __chkstk_darwin(v5);
  v75 = &v67 - v8;
  v9 = __chkstk_darwin(v7);
  v74 = &v67 - v10;
  v11 = __chkstk_darwin(v9);
  v77 = &v67 - v12;
  v13 = __chkstk_darwin(v11);
  v76 = &v67 - v14;
  v15 = __chkstk_darwin(v13);
  v81 = (&v67 - v16);
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  v19 = type metadata accessor for DispatchData();
  v85 = *(v19 - 8);
  v20 = v85[8];
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v70 = &v67 - v25;
  v26 = __chkstk_darwin(v24);
  v73 = &v67 - v27;
  __chkstk_darwin(v26);
  v29 = &v67 - v28;
  v30 = type metadata accessor for String.Encoding();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v0;
  if (!v0[7])
  {
    sub_1000DB7B8();
    swift_allocError();
    *v66 = xmmword_10014A530;
    *(v66 + 16) = 0xD000000000000059;
    *(v66 + 24) = 0x8000000100179440;
    *(v66 + 32) = 292;
    *(v66 + 40) = 2;
    swift_willThrow();
    return;
  }

  v68 = v23;
  v35 = v84[6];
  static String.Encoding.utf8.getter();
  v79 = String.data(using:allowLossyConversion:)();
  v37 = v36;
  (*(v31 + 8))(v34, v30);
  v78 = v37;
  if (v37 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v38 = v84[8];
  v39 = v84[9];
  v40 = v85;
  v83 = v85[7];
  v83(v18, 1, 1, v19);
  v41 = v82;
  sub_1000DEA94(v38, v39, v18);
  v69 = v41;
  v42 = v81;
  sub_1000C5808(v18, v81, &qword_1001D53A8, &qword_10014A550);
  v82 = v40[6];
  if ((v82)(v42, 1, v19) == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v81 = v40[4];
  (v81)(v29, v42, v19);
  sub_1000C59E0(v18, &qword_1001D53A8, &qword_10014A550);
  v67 = DispatchData._bridgeToObjectiveC()();
  v43 = v40[1];
  v85 = v40 + 1;
  v80 = v43;
  v43(v29, v19);
  v44 = v84[10];
  v45 = v84[11];
  v46 = v76;
  v83(v76, 1, 1, v19);
  v47 = v69;
  sub_1000DEA94(v44, v45, v46);
  v69 = v47;
  v48 = v77;
  sub_1000C5808(v46, v77, &qword_1001D53A8, &qword_10014A550);
  if ((v82)(v48, 1, v19) == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v49 = v73;
  (v81)(v73, v48, v19);
  sub_1000C59E0(v46, &qword_1001D53A8, &qword_10014A550);
  v77 = DispatchData._bridgeToObjectiveC()();
  v80(v49, v19);
  v50 = v84[12];
  v51 = v84[13];
  v52 = v74;
  v83(v74, 1, 1, v19);
  v53 = v69;
  sub_1000DEA94(v50, v51, v52);
  v84 = v53;
  v54 = v75;
  sub_1000C5808(v52, v75, &qword_1001D53A8, &qword_10014A550);
  if ((v82)(v54, 1, v19) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v55 = v70;
  (v81)(v70, v54, v19);
  sub_1000C59E0(v52, &qword_1001D53A8, &qword_10014A550);
  v56 = DispatchData._bridgeToObjectiveC()();
  v80(v55, v19);
  v57 = v71;
  v83(v71, 1, 1, v19);
  v58 = v57;
  sub_1000DEA94(v79, v78, v57);
  v59 = v57;
  v60 = v72;
  sub_1000C5808(v59, v72, &qword_1001D53A8, &qword_10014A550);
  if ((v82)(v60, 1, v19) != 1)
  {
    v61 = v68;
    (v81)(v68, v60, v19);
    sub_1000C59E0(v58, &qword_1001D53A8, &qword_10014A550);
    v62 = DispatchData._bridgeToObjectiveC()();
    v80(v61, v19);
    v63 = v67;
    v64 = v77;
    client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

    if (client_SPAKE2PLUSV1_identity)
    {
      sub_1000C5928(v79, v78);
      return;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

id sub_1000DE818@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  [v1[2] lock];
  v4 = *(*v1 + 12);
  swift_beginAccess();
  (*(*(v3[10] - 8) + 16))(a1, v1 + v4);
  return [v1[2] unlock];
}

uint64_t sub_1000DE8D8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1000DE918(a1);
  return v5;
}

char *sub_1000DE918(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 2) = [objc_allocWithZone(NSLock) init];
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 96)], a1);
  return v1;
}

id *sub_1000DE9BC()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1000DEA3C()
{
  sub_1000DE9BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000DEA94(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(&v15[1], 0, 14);
      goto LABEL_9;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    return sub_1000DEC84(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v10)
  {
    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000DEC84(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v15[1] = a1;
  LOWORD(v15[2]) = a2;
  BYTE2(v15[2]) = BYTE2(a2);
  BYTE3(v15[2]) = BYTE3(a2);
  BYTE4(v15[2]) = BYTE4(a2);
  BYTE5(v15[2]) = BYTE5(a2);
LABEL_9:
  DispatchData.init(bytes:)();
  v14 = type metadata accessor for DispatchData();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_1000E0850(v9, a3);
}

uint64_t sub_1000DEC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      DispatchData.init(bytes:)();
      v12 = type metadata accessor for DispatchData();
      (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
      return sub_1000E0850(v10, a4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DEDBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5468, &unk_10014B188);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000C5808(v4, &v13, &qword_1001D53A0, &qword_10014A548);
      v5 = v13;
      v6 = v14;
      result = sub_1000C39E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000E08C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000DEEEC()
{
  result = qword_1001D73C8;
  if (!qword_1001D73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73C8);
  }

  return result;
}

unint64_t sub_1000DEF40()
{
  result = qword_1001D73D0;
  if (!qword_1001D73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73D0);
  }

  return result;
}

unint64_t sub_1000DEF94()
{
  result = qword_1001D73D8;
  if (!qword_1001D73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73D8);
  }

  return result;
}

unint64_t sub_1000DEFE8()
{
  result = qword_1001D73E0;
  if (!qword_1001D73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73E0);
  }

  return result;
}

unint64_t sub_1000DF03C()
{
  result = qword_1001D73E8;
  if (!qword_1001D73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73E8);
  }

  return result;
}

unint64_t sub_1000DF090()
{
  result = qword_1001D73F0;
  if (!qword_1001D73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73F0);
  }

  return result;
}

uint64_t sub_1000DF0E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100179570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000DF2A8(uint64_t *a1)
{
  v2 = sub_1000C4810(&qword_1001D5430, &qword_10014B150);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v58 = &v45[-v4];
  v5 = sub_1000C4810(&qword_1001D5438, &qword_10014B158);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v60 = &v45[-v8];
  v9 = sub_1000C4810(&qword_1001D5440, &qword_10014B160);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v59 = &v45[-v11];
  v12 = sub_1000C4810(&qword_1001D5448, &qword_10014B168);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v45[-v14];
  v16 = sub_1000C4810(&qword_1001D5450, &qword_10014B170);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  __chkstk_darwin(v16);
  v19 = &v45[-v18];
  v20 = sub_1000C4810(&qword_1001D5458, &qword_10014B178);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v45[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  sub_1000CE97C(a1, v26);
  sub_1000DEEEC();
  v27 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_18;
  }

  v47 = v16;
  v48 = v24;
  v29 = v59;
  v28 = v60;
  v61 = v21;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = *(v30 + 16);
  if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
  {
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v20;
    v37 = v36;
    v38 = *(sub_1000C4810(&qword_1001D5460, &qword_10014B180) + 48);
    *v37 = &type metadata for OSLogDateFormatter.Style;
    v39 = v48;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
    (*(v61 + 8))(v39, v35);
    swift_unknownObjectRelease();
LABEL_18:
    sub_1000C5604(v62);
    return 0;
  }

  v46 = *(v30 + 32);
  if (v32 <= 1)
  {
    if (v32)
    {
      v64 = 1;
      sub_1000DF03C();
      v42 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v50 + 8))(v15, v51);
    }

    else
    {
      v63 = 0;
      sub_1000DF090();
      v42 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v49 + 8))(v19, v47);
    }

    (*(v61 + 8))(v42, v20);
  }

  else
  {
    v40 = v61;
    if (v32 == 2)
    {
      v65 = 2;
      sub_1000DEFE8();
      v41 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v29, v53);
    }

    else
    {
      v41 = v48;
      if (v32 == 3)
      {
        v66 = 3;
        sub_1000DEF94();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v28, v54);
      }

      else
      {
        v67 = 4;
        sub_1000DEF40();
        v43 = v58;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v56 + 8))(v43, v57);
      }
    }

    (*(v40 + 8))(v41, v20);
  }

  swift_unknownObjectRelease();
  sub_1000C5604(v62);
  return v46;
}

unint64_t sub_1000DF9A0()
{
  result = qword_1001D73F8[0];
  if (!qword_1001D73F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D73F8);
  }

  return result;
}

unint64_t sub_1000DF9F4()
{
  result = qword_1001D53E8;
  if (!qword_1001D53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D53E8);
  }

  return result;
}

void *sub_1000DFA48(uint64_t *a1)
{
  v3 = sub_1000C4810(&qword_1001D5420, &qword_10014B148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1000CE97C(a1, a1[3]);
  sub_1000DF9A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
  }

  else
  {
    sub_1000E07FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_1000C5604(a1);
  }

  return v9;
}

unint64_t sub_1000DFC28()
{
  result = qword_1001D53F0;
  if (!qword_1001D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D53F0);
  }

  return result;
}

unint64_t sub_1000DFC80()
{
  result = qword_1001D53F8;
  if (!qword_1001D53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D53F8);
  }

  return result;
}

unint64_t sub_1000DFCD8()
{
  result = qword_1001D5400;
  if (!qword_1001D5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5400);
  }

  return result;
}

unint64_t sub_1000DFD30()
{
  result = qword_1001D5408;
  if (!qword_1001D5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5408);
  }

  return result;
}

unint64_t sub_1000DFD88()
{
  result = qword_1001D5410;
  if (!qword_1001D5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5410);
  }

  return result;
}

__n128 sub_1000DFDF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DFE0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000DFE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 sub_1000DFEDC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1000DFF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DFF48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DFFB4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E0084(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000E0118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E022C()
{
  result = qword_1001D8180[0];
  if (!qword_1001D8180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8180);
  }

  return result;
}

unint64_t sub_1000E0284()
{
  result = qword_1001D8390[0];
  if (!qword_1001D8390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8390);
  }

  return result;
}

unint64_t sub_1000E02DC()
{
  result = qword_1001D84A0;
  if (!qword_1001D84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D84A0);
  }

  return result;
}

unint64_t sub_1000E0334()
{
  result = qword_1001D84A8[0];
  if (!qword_1001D84A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D84A8);
  }

  return result;
}

unint64_t sub_1000E038C()
{
  result = qword_1001D8530;
  if (!qword_1001D8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8530);
  }

  return result;
}

unint64_t sub_1000E03E4()
{
  result = qword_1001D8538[0];
  if (!qword_1001D8538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8538);
  }

  return result;
}

unint64_t sub_1000E043C()
{
  result = qword_1001D85C0;
  if (!qword_1001D85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D85C0);
  }

  return result;
}

unint64_t sub_1000E0494()
{
  result = qword_1001D85C8[0];
  if (!qword_1001D85C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D85C8);
  }

  return result;
}

unint64_t sub_1000E04EC()
{
  result = qword_1001D8650;
  if (!qword_1001D8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8650);
  }

  return result;
}

unint64_t sub_1000E0544()
{
  result = qword_1001D8658[0];
  if (!qword_1001D8658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8658);
  }

  return result;
}

unint64_t sub_1000E059C()
{
  result = qword_1001D86E0;
  if (!qword_1001D86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D86E0);
  }

  return result;
}

unint64_t sub_1000E05F4()
{
  result = qword_1001D86E8[0];
  if (!qword_1001D86E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D86E8);
  }

  return result;
}

unint64_t sub_1000E064C()
{
  result = qword_1001D8770;
  if (!qword_1001D8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8770);
  }

  return result;
}

unint64_t sub_1000E06A4()
{
  result = qword_1001D8778;
  if (!qword_1001D8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8778);
  }

  return result;
}

unint64_t sub_1000E06FC()
{
  result = qword_1001D8800;
  if (!qword_1001D8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8800);
  }

  return result;
}

unint64_t sub_1000E0754()
{
  result = qword_1001D8808[0];
  if (!qword_1001D8808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8808);
  }

  return result;
}

unint64_t sub_1000E07A8()
{
  result = qword_1001D5418;
  if (!qword_1001D5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5418);
  }

  return result;
}

unint64_t sub_1000E07FC()
{
  result = qword_1001D5428;
  if (!qword_1001D5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5428);
  }

  return result;
}

uint64_t sub_1000E0850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000E08C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000E0908()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA6B0);
  sub_10000BB0C(v0, qword_1001DA6B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E098C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D88A0);
  v1 = sub_10000BB0C(v0, qword_1001D88A0);
  if (qword_1001D8890 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BB0C(v0, qword_1001DA6B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000E0A54()
{
  result = [objc_allocWithZone(type metadata accessor for RPPairingDaemon()) init];
  qword_1001DA6C8 = result;
  return result;
}

uint64_t *sub_1000E0A84()
{
  if (qword_1001D88B8 != -1)
  {
    swift_once();
  }

  return &qword_1001DA6C8;
}

id RPPairingDaemon.dispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RPPairingDaemon.dispatchQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void variable initialization expression of RPPairingDaemon.xpcConnections()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_1000E8414(_swiftEmptyArrayStorage);
  }
}

uint64_t RPPairingDaemon.activeSenders.getter()
{
  v1 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t RPPairingDaemon.activeSenders.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000E0E70(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v12 = *(v3 + v11);
  *v10 = v12;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v7 + 8);
  v14 = (v7 + 8);
  result = v15(v10, v6);
  if ((v12 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = (v3 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue);
  v17 = *(v3 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8);
  if (!v17)
  {
    if (!a2)
    {
      return result;
    }

LABEL_11:
    if (qword_1001D8898 == -1)
    {
LABEL_12:
      v19 = type metadata accessor for Logger();
      sub_10000BB0C(v19, qword_1001D88A0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v52 = v23;
        *v22 = 136315138;
        v53 = a1;
        v54 = a2;
        v24 = sub_1000C4810(&qword_1001D5650, &qword_10014B230);
        v25 = sub_1000DC030(&v53, v24);
        v27 = sub_1000C3440(v25, v26, &v52);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "CurrentPairingValue updated: %s", v22, 0xCu);
        sub_1000C5604(v23);
      }

      v28 = v14[1];
      *v14 = a1;
      v14[1] = a2;

      v29 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
      swift_beginAccess();
      v50 = *(v3 + v29);
      if ((v50 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for RPPairingDaemonXPCConnection();
        sub_1000E9980(&qword_1001D5648, v30, type metadata accessor for RPPairingDaemonXPCConnection);
        Set.Iterator.init(_cocoa:)();
        v31 = v53;
        a2 = v54;
        v32 = v55;
        a1 = v56;
        v33 = v57;
      }

      else
      {
        v34 = -1 << *(v50 + 32);
        a2 = v50 + 56;
        v32 = ~v34;
        v35 = -v34;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v33 = v36 & *(v50 + 56);
        v31 = v50;
        swift_bridgeObjectRetain_n();
        a1 = 0;
      }

      v49 = v32;
      v37 = (v32 + 64) >> 6;
      while (1)
      {
        if (v31 < 0)
        {
          v43 = __CocoaSet.Iterator.next()();
          if (!v43 || (v51 = v43, type metadata accessor for RPPairingDaemonXPCConnection(), swift_dynamicCast(), v42 = v52, v41 = a1, v3 = v33, !v52))
          {
LABEL_36:
            sub_1000DB160();
          }
        }

        else
        {
          v39 = a1;
          v40 = v33;
          v41 = a1;
          if (!v33)
          {
            while (1)
            {
              v41 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              if (v41 >= v37)
              {
                goto LABEL_36;
              }

              v40 = *(a2 + 8 * v41);
              ++v39;
              if (v40)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

LABEL_29:
          v3 = (v40 - 1) & v40;
          v42 = *(*(v31 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
          if (!v42)
          {
            goto LABEL_36;
          }
        }

        v44 = *v14;
        v45 = v14[1];
        v46 = *(v42 + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx);

        v47 = [v46 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000C4810(&qword_1001D5488, &unk_10014B198);
        if (swift_dynamicCast())
        {
          v48 = v51;
          swift_unknownObjectRetain();
          if (v45)
          {
            v38 = String._bridgeToObjectiveC()();
          }

          else
          {
            v38 = 0;
          }

          [v48 pairingValueUpdated:v38];

          swift_unknownObjectRelease_n();
        }

        a1 = v41;
        v33 = v3;
      }
    }

LABEL_41:
    swift_once();
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v18 = *v14 == a1 && v17 == a2;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1000E13E0(uint64_t a1, NSString a2)
{
  v4 = [*(v2 + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000C4810(&qword_1001D5488, &unk_10014B198);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    [v6 pairingValueUpdated:a2];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1000E14CC(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v11 = *&v3[v10];
  *v9 = v11;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v2 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible;
  if (v3[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible] == (a1 & 1))
  {
    return result;
  }

  if (qword_1001D8898 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_10000BB0C(v14, qword_1001D88A0);
  v15 = v3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = v3[v2];

    *(v18 + 8) = 1024;
    *(v18 + 10) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Pairing value UI visible updated: %{BOOL}d -> %{BOOL}d", v18, 0xEu);
  }

  else
  {

    v16 = v15;
  }

  v3[v2] = a1 & 1;
  return sub_10000BB44(v19);
}

id sub_1000E1718()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v1 - 8);
  v15 = v1;
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v13 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener] = 0;
  v8 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1000E8414(_swiftEmptyArrayStorage);
    }

    else
    {
      v8 = &_swiftEmptySetSingleton;
    }
  }

  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections] = v8;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcLastID] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery] = 0;
  v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  *&v0[v9] = sub_1000E86D8(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener] = 0;
  v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted] = 0;
  v10 = &v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue];
  *v10 = 0;
  v10[1] = 0;
  v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible] = 0;
  v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_shouldPostPairingNotification] = 0;
  sub_1000C6968();
  static DispatchQoS.default.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5F50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000E8DF0(&qword_1001D5F60, &unk_1001D5500, &qword_100149A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

Swift::Void __swiftcall RPPairingDaemon.activate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v15 = *(v5 - 8);
  v16 = v5;
  v6 = *(v15 + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000E8DC0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E9CC0;
  aBlock[3] = &unk_1001B0408;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5510, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C4810(&qword_1001D5518, &qword_10014B1A8);
  sub_1000E8DF0(&qword_1001D5520, &qword_1001D5518, &qword_10014B1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v17 + 8))(v4, v1);
  (*(v15 + 8))(v8, v16);
}

uint64_t sub_1000E1E0C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v10 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener;
  if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener))
  {
    return result;
  }

  v1 = RPPairingXPCServiceName.unsafeMutableAddressor();
  v11 = *v1;
  v12 = v1[1];
  v13 = objc_allocWithZone(NSXPCListener);

  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithMachServiceName:v14];

  v16 = *(v0 + v10);
  *(v0 + v10) = v15;

  v17 = *(v0 + v10);
  if (v17)
  {
    [v17 setDelegate:v0];
    v18 = *(v0 + v10);
    if (v18)
    {
      [v18 rp_setQueue:*(v0 + v6)];
      v19 = *(v0 + v10);
      if (v19)
      {
        [v19 resume];
      }
    }
  }

  if (qword_1001D8898 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = type metadata accessor for Logger();
  sub_10000BB0C(v20, qword_1001D88A0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    v26 = *v1;
    v25 = v1[1];

    v27 = sub_1000C3440(v26, v25, &v28);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Started XPC listener for %s", v23, 0xCu);
    sub_1000C5604(v24);
  }

  return sub_10000BB44();
}

Swift::Void __swiftcall RPPairingDaemon.invalidate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000BB0C(v10, qword_1001D88A0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Invalidate", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000E8E44;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E9CC0;
  aBlock[3] = &unk_1001B0430;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5510, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C4810(&qword_1001D5518, &qword_10014B1A8);
  sub_1000E8DF0(&qword_1001D5520, &qword_1001D5518, &qword_10014B1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_1000E250C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v2[13];
  v9(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  v11(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v0 + v6);
  *v5 = v12;
  v9(v5, v8, v1);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_10000C0BC();
  v14 = *(v0 + v6);
  *v5 = v14;
  v9(v5, v8, v1);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v11(v5, v1);
  if ((v16 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1000E2EBC();
  sub_10000C9D8();
  sub_1000E14CC(0);
  v17 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor;
  v18 = *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor);
  if (v18)
  {
    [v18 invalidate];
    v19 = *(v0 + v17);
  }

  else
  {
    v19 = 0;
  }

  *(v0 + v17) = 0;

  v20 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
  swift_beginAccess();
  v21 = *(v0 + v20);
  *(v0 + v20) = &_swiftEmptySetSingleton;

  v22 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener;
  v23 = *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener);
  if (v23)
  {
    [v23 invalidate];
    v24 = *(v0 + v22);
  }

  else
  {
    v24 = 0;
  }

  *(v0 + v22) = 0;
}

uint64_t sub_1000E2828(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v43 = a6;
  v9 = v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v44 = *(v16 - 8);
  v45 = v16;
  v17 = *(v44 + 64);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000BB0C(v20, qword_1001D88A0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v9;
    v24 = a3;
    v25 = v23;
    v26 = swift_slowAlloc();
    v41 = v19;
    v27 = v15;
    v28 = v12;
    v29 = a5;
    v30 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1000C3440(a1, a2, aBlock);
    v31 = v24;
    v9 = v40;
    _os_log_impl(&_mh_execute_header, v21, v22, v31, v25, 0xCu);
    sub_1000C5604(v30);
    a5 = v29;
    v12 = v28;
    v15 = v27;
    v19 = v41;
  }

  v32 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v33 = *(v9 + v32);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = a1;
  v35[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E9CC0;
  aBlock[3] = v43;
  v36 = _Block_copy(aBlock);

  v37 = v33;

  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5510, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C4810(&qword_1001D5518, &qword_10014B1A8);
  sub_1000E8DF0(&qword_1001D5520, &qword_1001D5518, &qword_10014B1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v46 + 8))(v15, v12);
  (*(v44 + 8))(v19, v45);
}

void sub_1000E2C78()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser;
    if (!*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser))
    {
      v10 = [objc_allocWithZone(CBAdvertiser) init];
      [v10 setAdvertiseRate:50];
      [v10 setDispatchQueue:*(v0 + v6)];
      [v10 setNearbyActionType:94];
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000E99C8;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000C7408;
      aBlock[3] = &unk_1001B0660;
      v12 = _Block_copy(aBlock);

      [v10 activateWithCompletion:v12];
      _Block_release(v12);
      v13 = *(v0 + v9);
      *(v0 + v9) = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E2EBC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery;
    if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery))
    {
      v10 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
      swift_beginAccess();
      v11 = *(v0 + v10);
      *(v0 + v10) = &_swiftEmptyDictionarySingleton;

      v12 = *(v0 + v9);
      if (v12)
      {
        [v12 invalidate];
        v13 = *(v0 + v9);
      }

      else
      {
        v13 = 0;
      }

      *(v0 + v9) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E304C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v2[13];
  v9(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = v2[1];
  result = v11(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  swift_beginAccess();
  if (!*(*(v0 + v13) + 16))
  {
    v18 = 0;
    v19 = 0;
    return sub_1000E0E70(v18, v19);
  }

  v14 = *(v0 + v6);
  *v5 = v14;
  v9(v5, v8, v1);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = v11(v5, v1);
  if ((v16 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8))
  {
    return result;
  }

  v17 = sub_1000DB608();
  sub_1000DB610(v17);
  return sub_1000E0E70(v18, v19);
}

void sub_1000E3228()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *v5 = v7;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
    swift_beginAccess();
    v26[1] = v0;
    v10 = *(v0 + v9);
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v11 = *(v0 + v9);
      }

      __CocoaSet.makeIterator()();
      type metadata accessor for RPPairingDaemonXPCConnection();
      sub_1000E9980(&qword_1001D5648, v12, type metadata accessor for RPPairingDaemonXPCConnection);
      Set.Iterator.init(_cocoa:)();
      v10 = v28;
      v13 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
    }

    else
    {
      v17 = -1 << *(v10 + 32);
      v13 = v10 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v10 + 56);

      v15 = 0;
    }

    v26[0] = v14;
    v20 = (v14 + 64) >> 6;
    while (1)
    {
      if (v10 < 0)
      {
        v25 = __CocoaSet.Iterator.next()();
        if (!v25)
        {
LABEL_22:
          LOBYTE(v21) = 0;
LABEL_23:
          sub_1000DB160();
          sub_1000E14CC(v21);
          return;
        }

        v26[2] = v25;
        type metadata accessor for RPPairingDaemonXPCConnection();
        swift_dynamicCast();
        v21 = v27;
        if (!v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v23 = v15;
        v24 = v16;
        if (!v16)
        {
          while (1)
          {
            v15 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v15 >= v20)
            {
              goto LABEL_22;
            }

            v24 = *(v13 + 8 * v15);
            ++v23;
            if (v24)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          break;
        }

LABEL_11:
        v16 = (v24 - 1) & v24;
        v21 = *(*(v10 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v24)))));
        if (!v21)
        {
          goto LABEL_23;
        }
      }

      v22 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible;
      swift_beginAccess();
      LODWORD(v22) = v21[v22];

      if (v22 == 1)
      {
        LOBYTE(v21) = 1;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}