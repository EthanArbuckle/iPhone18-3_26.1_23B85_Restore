uint64_t sub_100836E68()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  sub_100016590(*(v0 + 2712), *(v0 + 2720));
  sub_100016590(v2, v1);
  static os_log_type_t.error.getter();
  v3 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = *(v0 + 2736);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v0 + 2520) = v4;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v42 = sub_100008C00();
  *(v5 + 64) = v42;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v41 = v0;
  v0 = *(v0 + 2632);
  static os_log_type_t.debug.getter();
  if (*(v3 + 200) != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v9 = v0 + 64;
  v10 = -1;
  v11 = -1 << *(v0 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v3 = v10 & *(v0 + 64);
  v12 = (63 - v11) >> 6;
  v43 = v0;

  v13 = 0;
  while (v3)
  {
    v14 = v13;
    v15 = v43;
LABEL_13:
    v16 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = *(v15 + 56);
    v19 = (*(v15 + 48) + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v0 = *v22;
    v23 = v22[1];

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v42;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v42;
    *(v24 + 72) = v0;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v43;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v14 >= v12)
    {
      break;
    }

    v3 = *(v9 + 8 * v14);
    ++v13;
    if (v3)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  v25 = v41;
  v26 = v41[333];
  v27 = v41[332];
  v28 = v41[330];
  v29 = v41[319];
  v30 = v41[316];

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  memcpy(v25 + 178, v25 + 2, 0x160uLL);
  sub_1008373F8((v25 + 2), (v25 + 222));
  v32 = String.init<A>(describing:)();
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = v42;
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  os_log(_:dso:log:_:_:)();

  sub_100837350(v30);

  sub_100837430((v41 + 2));

  sub_100017D5C(v27, v26);

  sub_100016590(v27, v26);
  v34 = v41[333];
  v35 = v41[332];
  v36 = v41[328];
  v37 = v41[325];
  v38 = v41[322];

  v39 = v41[1];

  return v39(v43, v35, v34);
}

unint64_t sub_1008373A4()
{
  result = qword_1016AAA20;
  if (!qword_1016AAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA20);
  }

  return result;
}

uint64_t sub_100837460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008374C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100837530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100837578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100837634()
{
  result = qword_1016AAA38;
  if (!qword_1016AAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA38);
  }

  return result;
}

unint64_t sub_100837688()
{
  result = qword_1016AAA48;
  if (!qword_1016AAA48)
  {
    sub_1000BC580(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA48);
  }

  return result;
}

unint64_t sub_100837714()
{
  result = qword_1016AAA50;
  if (!qword_1016AAA50)
  {
    type metadata accessor for MultipartAccessoryPairingInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsPairingLockCheckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsPairingLockCheckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1008378C0()
{
  result = qword_1016AAA58;
  if (!qword_1016AAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA58);
  }

  return result;
}

unint64_t sub_100837918()
{
  result = qword_1016AAA60;
  if (!qword_1016AAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA60);
  }

  return result;
}

unint64_t sub_100837970()
{
  result = qword_1016AAA68;
  if (!qword_1016AAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA68);
  }

  return result;
}

uint64_t sub_1008379C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12645 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F636165426D756ELL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134DD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101361060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E55646572616873 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x314B64656573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101361080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_100838128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {
    v4 = *(a3 + 20);

    return static UUID.< infix(_:_:)();
  }

  else
  {

    return static DeviceVersion.< infix(_:_:)();
  }
}

BOOL sub_1008381A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {
    v4 = *(a3 + 20);
    v5 = static UUID.< infix(_:_:)();
  }

  else
  {
    v5 = static DeviceVersion.< infix(_:_:)();
  }

  return (v5 & 1) == 0;
}

BOOL sub_10083820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {
    v4 = *(a3 + 20);
    v5 = static UUID.< infix(_:_:)();
  }

  else
  {
    v5 = static DeviceVersion.< infix(_:_:)();
  }

  return (v5 & 1) == 0;
}

uint64_t sub_10083826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DeviceVersion.== infix(_:_:)())
  {
    v4 = *(a3 + 20);

    return static UUID.< infix(_:_:)();
  }

  else
  {

    return static DeviceVersion.< infix(_:_:)();
  }
}

uint64_t sub_1008382F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DeviceVersion.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static UUID.== infix(_:_:)();
}

uint64_t type metadata accessor for LeaderDevice()
{
  result = qword_1016AAAD8;
  if (!qword_1016AAAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008383D8()
{
  v0 = 0;
  sub_1000DF96C();
  v1 = StringProtocol.contains<A>(_:)();

  if ((v1 & 1) == 0)
  {
    v0 = 1;
    v2 = StringProtocol.contains<A>(_:)();

    if ((v2 & 1) == 0)
    {
      v0 = 2;
      v3 = StringProtocol.contains<A>(_:)();

      if ((v3 & 1) == 0)
      {
        sub_1008385D0();
        swift_allocError();
        swift_willThrow();
      }
    }
  }

  return v0;
}

unint64_t sub_1008385D0()
{
  result = qword_1016AAA78;
  if (!qword_1016AAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAA78);
  }

  return result;
}

uint64_t sub_10083865C()
{
  result = type metadata accessor for DeviceVersion();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008386E0(uint64_t a1)
{
  result = sub_100838724(&qword_1016AAB10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100838724(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LeaderDevice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10083876C()
{
  result = qword_1016AAB18;
  if (!qword_1016AAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAB18);
  }

  return result;
}

uint64_t type metadata accessor for BeaconProductInfoRecord()
{
  result = qword_1016AAB78;
  if (!qword_1016AAB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100838834()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169D5F0);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169A158);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_1016A8838);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016BD350);
          if (v4 <= 0x3F)
          {
            sub_100838A34(319, &qword_1016A8128, &type metadata accessor for URL);
            if (v5 <= 0x3F)
            {
              sub_100838A34(319, &qword_1016A86B0, type metadata accessor for AccessoryInfoResponseContent.Configuration);
              if (v6 <= 0x3F)
              {
                sub_100838A88();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for URL();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100838A34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100838A88()
{
  if (!qword_1016A86C8)
  {
    sub_1000BC580(&unk_1016A86D0, "֫\n");
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A86C8);
    }
  }
}

uint64_t sub_100838AEC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177B398);
  sub_1000076D4(v0, qword_10177B398);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_100838C48(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x7250796D646E6966;
      break;
    case 3:
      result = 0x5479726574746162;
      break;
    case 5:
      result = 0x6E6564646968;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x52746C7561666564;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x55656C6261736964;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6E6F6973726576;
      break;
    case 14:
      result = 0x7265776F507874;
      break;
    case 15:
      result = 0x72756769666E6F63;
      break;
    case 16:
      result = 0x696C696261706163;
      break;
    case 17:
      result = 0x655474756F79616CLL;
      break;
    case 18:
      result = 0x48746C7561666564;
      break;
    case 19:
      result = 0x4C746C7561666564;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6761547269417369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100838F2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AAC38, &unk_1013BE390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10083C4FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v46) = 0;
  type metadata accessor for UUID();
  sub_10083DB3C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for BeaconProductInfoRecord();
    v12 = *(v3 + v11[5]);
    LOBYTE(v46) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v46) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v46) = *(v3 + v11[7]);
    v47 = 3;
    sub_1002354EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + v11[8]);
    LOBYTE(v46) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + v11[9]);
    LOBYTE(v46) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v11[10]);
    LOBYTE(v46) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + v11[11]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v46) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = (v3 + v11[12]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v46) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v3 + v11[13]);
    v26 = *v25;
    v27 = *(v25 + 8);
    LOBYTE(v46) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = (v3 + v11[14]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v46) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = v11[15];
    LOBYTE(v46) = 11;
    type metadata accessor for URL();
    sub_10083DB3C(&qword_1016A8188, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = v11[16];
    LOBYTE(v46) = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v34 = (v3 + v11[17]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v46) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v3 + v11[18]);
    LOBYTE(v46) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = v11[19];
    LOBYTE(v46) = 15;
    type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    sub_10083DB3C(&qword_1016A8998, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LODWORD(v46) = *(v3 + v11[20]);
    v47 = 16;
    sub_100235498();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = *(v3 + v11[21]);
    v47 = 17;
    sub_1000BC4D4(&unk_1016A86D0, "֫\n");
    sub_100757AC0(&qword_1016A89B8, sub_100757B38);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = v11[22];
    LOBYTE(v46) = 18;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = v11[23];
    LOBYTE(v46) = 19;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v40 = v11[24];
    LOBYTE(v46) = 20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41 = v11[25];
    LOBYTE(v46) = 21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v42 = v11[26];
    LOBYTE(v46) = 22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43 = v11[27];
    LOBYTE(v46) = 23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v44 = *(v3 + v11[28]);
    LOBYTE(v46) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100839680(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  __chkstk_darwin(v4);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v66 = &v62 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  type metadata accessor for UUID();
  sub_10083DB3C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v21 = type metadata accessor for BeaconProductInfoRecord();
  v22 = *(v1 + v21[5]);
  if (v22 == 2)
  {
    v23 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v23 = v22 & 1;
  }

  Hasher._combine(_:)(v23);
  v24 = (v1 + v21[6]);
  v25 = *v24;
  v26 = v24[1];
  String.hash(into:)();
  v27 = *(v1 + v21[7]);
  if (v27 == 4)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v27);
  Hasher._combine(_:)(*(v1 + v21[8]));
  Hasher._combine(_:)(*(v1 + v21[9]));
  v28 = *(v1 + v21[10]);
  if (v28 == 2)
  {
    v29 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v29 = v28 & 1;
  }

  Hasher._combine(_:)(v29);
  v30 = (v1 + v21[11]);
  v31 = *v30;
  v32 = v30[1];
  String.hash(into:)();
  v33 = (v1 + v21[12]);
  v34 = *v33;
  v35 = v33[1];
  String.hash(into:)();
  v36 = v1 + v21[13];
  if (*(v36 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v37 = *v36;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v37);
  }

  v38 = (v1 + v21[14]);
  v39 = v38[1];
  v69 = v11;
  if (v39)
  {
    v40 = *v38;
    Hasher._combine(_:)(1u);
    v11 = v69;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000D2A70(v1 + v21[15], v20, &unk_101696AC0, &qword_101390A60);
  v41 = *(v11 + 48);
  if (v41(v20, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v42 = *(v11 + 32);
    v63 = v18;
    v43 = v65;
    v42(v65, v20, v10);
    Hasher._combine(_:)(1u);
    sub_10083DB3C(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v44 = v43;
    v18 = v63;
    (*(v11 + 8))(v44, v10);
  }

  sub_1000D2A70(v1 + v21[16], v18, &unk_101696AC0, &qword_101390A60);
  if (v41(v18, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = v69;
    v46 = v65;
    (*(v69 + 32))(v65, v18, v10);
    Hasher._combine(_:)(1u);
    sub_10083DB3C(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v45 + 8))(v46, v10);
  }

  v47 = (v1 + v21[17]);
  v48 = *v47;
  v49 = v47[1];
  String.hash(into:)();
  v50 = *(v1 + v21[18]);
  if (v50 == 0.0)
  {
    v50 = 0.0;
  }

  Hasher._combine(_:)(*&v50);
  v51 = v66;
  sub_1000D2A70(v2 + v21[19], v66, &qword_1016A62E8, &qword_1013B3CB0);
  if ((*(v67 + 48))(v51, 1, v68) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = v64;
    sub_10083DB84(v51, v64, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    Hasher._combine(_:)(1u);
    sub_10074F1C0();
    sub_10083E698(v52, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  }

  Hasher._combine(_:)(*(v2 + v21[20]));
  v53 = *(v2 + v21[21]);
  if (v53)
  {
    Hasher._combine(_:)(1u);
    sub_10083C3DC(a1, v53);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v54 = v21[22];
  sub_10083DB3C(&qword_1016A8908, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v55 = v2 + v21[23];
  dispatch thunk of Hashable.hash(into:)();
  v56 = v2 + v21[24];
  dispatch thunk of Hashable.hash(into:)();
  v57 = v2 + v21[25];
  dispatch thunk of Hashable.hash(into:)();
  v58 = v2 + v21[26];
  dispatch thunk of Hashable.hash(into:)();
  v59 = v2 + v21[27];
  dispatch thunk of Hashable.hash(into:)();
  v60 = *(v2 + v21[28]);
  if (v60 == 2)
  {
    v61 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v61 = v60 & 1;
  }

  Hasher._combine(_:)(v61);
}

uint64_t sub_100839E38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v113 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v112 = &v104 - v9;
  v10 = __chkstk_darwin(v8);
  v111 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v110 = &v104 - v13;
  v14 = __chkstk_darwin(v12);
  v109 = &v104 - v15;
  __chkstk_darwin(v14);
  v108 = &v104 - v16;
  v17 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v115 = &v104 - v19;
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v116 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v104 - v24;
  v26 = type metadata accessor for UUID();
  v117 = *(v26 - 8);
  v27 = *(v117 + 64);
  __chkstk_darwin(v26);
  v120 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_1016AAC28, &qword_1013BE388);
  v118 = *(v29 - 8);
  v119 = v29;
  v30 = *(v118 + 64);
  __chkstk_darwin(v29);
  v32 = &v104 - v31;
  v33 = type metadata accessor for BeaconProductInfoRecord();
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33);
  v37 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v35 + 60);
  v123 = v4;
  v39 = *(v4 + 56);
  v125 = v38;
  v39(&v37[v38], 1, 1, v3);
  v124 = *(v33 + 64);
  v126 = v3;
  v39(&v37[v124], 1, 1, v3);
  v129 = v33;
  v40 = *(v33 + 76);
  v41 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v42 = *(*(v41 - 8) + 56);
  v127 = v37;
  v121 = v40;
  v42(&v37[v40], 1, 1, v41);
  v44 = a1[3];
  v43 = a1[4];
  v122 = a1;
  sub_1000035D0(a1, v44);
  sub_10083C4FC();
  v45 = v128;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    v128 = v45;
    v47 = v127;
    sub_100007BAC(v122);
    v120 = 0;
    LODWORD(v119) = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_4;
  }

  v107 = v25;
  LOBYTE(v130) = 0;
  sub_10083DB3C(&qword_101698300, &type metadata accessor for UUID);
  v46 = v120;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v59 = v32;
  v60 = v127;
  (*(v117 + 32))(v127, v46, v26);
  LOBYTE(v130) = 1;
  v106 = v59;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v104 = v26;
  v62 = v129;
  v60[v129[5]] = v61;
  LOBYTE(v130) = 2;
  v63 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = &v60[v62[6]];
  *v67 = v63;
  v67[1] = v68;
  v131 = 3;
  sub_100235294();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v60[v62[7]] = v130;
  LOBYTE(v130) = 4;
  v60[v62[8]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v130) = 5;
  v60[v62[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v130) = 6;
  v60[v62[10]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v130) = 7;
  v69 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = &v60[v62[11]];
  *v70 = v69;
  v70[1] = v71;
  LOBYTE(v130) = 8;
  v72 = KeyedDecodingContainer.decode(_:forKey:)();
  v128 = 0;
  v73 = &v60[v129[12]];
  *v73 = v72;
  v73[1] = v74;
  LOBYTE(v130) = 9;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v128 = 0;
  v76 = &v127[v129[13]];
  *v76 = v75;
  v76[8] = v77 & 1;
  LOBYTE(v130) = 10;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v105 = v79;
  v128 = 0;
  v80 = &v127[v129[14]];
  v81 = v105;
  *v80 = v78;
  v80[1] = v81;
  LOBYTE(v130) = 11;
  sub_10083DB3C(&qword_1016A8178, &type metadata accessor for URL);
  v82 = v128;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v128 = v82;
  if (v82)
  {
    goto LABEL_27;
  }

  sub_10002311C(v107, &v127[v125], &unk_101696AC0, &qword_101390A60);
  LOBYTE(v130) = 12;
  v83 = v128;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v128 = v83;
  if (v83 || (sub_10002311C(v116, &v127[v124], &unk_101696AC0, &qword_101390A60), LOBYTE(v130) = 13, v84 = v128, v85 = KeyedDecodingContainer.decode(_:forKey:)(), (v128 = v84) != 0))
  {
LABEL_27:
    (*(v118 + 8))(v106, v119);
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v48 = 0;
    LODWORD(v119) = 0;
    v120 = 0;
    LODWORD(v118) = 1;
    v47 = v127;
  }

  else
  {
    v87 = &v127[v129[17]];
    *v87 = v85;
    v87[1] = v86;
    LOBYTE(v130) = 14;
    KeyedDecodingContainer.decode(_:forKey:)();
    v128 = 0;
    *&v127[v129[18]] = v88;
    LOBYTE(v130) = 15;
    sub_10083DB3C(&qword_1016A8958, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v89 = v128;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v128 = v89;
    if (v89)
    {
      goto LABEL_31;
    }

    sub_10002311C(v115, &v127[v121], &qword_1016A62E8, &qword_1013B3CB0);
    v131 = 16;
    sub_100235240();
    v90 = v128;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v128 = v90;
    if (v90 || (*&v127[v129[20]] = v130, sub_1000BC4D4(&unk_1016A86D0, "֫\n"), v131 = 17, sub_100757AC0(&qword_1016A8970, sub_100757938), v91 = v128, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v128 = v91) != 0))
    {
LABEL_31:
      (*(v118 + 8))(v106, v119);
      v52 = 0;
      v51 = 0;
      v50 = 0;
      v49 = 0;
      v48 = 0;
      LODWORD(v119) = 0;
      v120 = 0;
    }

    else
    {
      v92 = v129[21];
      v120 = v130;
      *&v127[v92] = v130;
      LOBYTE(v130) = 18;
      v93 = v128;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v128 = v93;
      if (!v93)
      {
        v94 = *(v123 + 32);
        v94(&v127[v129[22]], v108, v126);
        LOBYTE(v130) = 19;
        v95 = v128;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v128 = v95;
        if (v95)
        {
          (*(v118 + 8))(v106, v119);
          v51 = 0;
          v50 = 0;
          v49 = 0;
          v48 = 0;
          LODWORD(v119) = 0;
          LODWORD(v118) = 1;
          v53 = 1;
          v52 = 1;
          v47 = v127;
        }

        else
        {
          v94(&v127[v129[23]], v109, v126);
          LOBYTE(v130) = 20;
          v96 = v128;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v128 = v96;
          if (v96)
          {
            (*(v118 + 8))(v106, v119);
            v50 = 0;
            v49 = 0;
            v48 = 0;
            LODWORD(v119) = 0;
            LODWORD(v118) = 1;
            v53 = 1;
            v52 = 1;
            v51 = 1;
            v47 = v127;
          }

          else
          {
            v94(&v127[v129[24]], v110, v126);
            LOBYTE(v130) = 21;
            v97 = v128;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v128 = v97;
            if (v97)
            {
              (*(v118 + 8))(v106, v119);
              v49 = 0;
              v48 = 0;
              LODWORD(v119) = 0;
              LODWORD(v118) = 1;
              v53 = 1;
              v52 = 1;
              v51 = 1;
              v50 = 1;
              v47 = v127;
            }

            else
            {
              v94(&v127[v129[25]], v111, v126);
              LOBYTE(v130) = 22;
              v98 = v128;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              v128 = v98;
              if (v98)
              {
                (*(v118 + 8))(v106, v119);
                v48 = 0;
                LODWORD(v119) = 0;
                LODWORD(v118) = 1;
                v53 = 1;
                v52 = 1;
                v51 = 1;
                v50 = 1;
                v49 = 1;
                v47 = v127;
              }

              else
              {
                v94(&v127[v129[26]], v112, v126);
                LOBYTE(v130) = 23;
                v99 = v128;
                KeyedDecodingContainer.decode<A>(_:forKey:)();
                v128 = v99;
                if (v99)
                {
                  (*(v118 + 8))(v106, v119);
                  LODWORD(v119) = 0;
                  LODWORD(v118) = 1;
                  v53 = 1;
                  v52 = 1;
                  v51 = 1;
                  v50 = 1;
                  v49 = 1;
                  v48 = 1;
                  v47 = v127;
                }

                else
                {
                  v94(&v127[v129[27]], v113, v126);
                  LOBYTE(v130) = 24;
                  v100 = v128;
                  v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                  v128 = v100;
                  if (!v100)
                  {
                    v102 = v101;
                    (*(v118 + 8))(v106, v119);
                    v103 = v127;
                    v127[v129[28]] = v102;
                    sub_10083E630(v103, v114, type metadata accessor for BeaconProductInfoRecord);
                    sub_100007BAC(v122);
                    return sub_10083E698(v103, type metadata accessor for BeaconProductInfoRecord);
                  }

                  (*(v118 + 8))(v106, v119);
                  LODWORD(v118) = 1;
                  v53 = 1;
                  v52 = 1;
                  v51 = 1;
                  v50 = 1;
                  v49 = 1;
                  v48 = 1;
                  LODWORD(v119) = 1;
                  v47 = v127;
                }
              }
            }
          }
        }

        goto LABEL_20;
      }

      (*(v118 + 8))(v106, v119);
      v52 = 0;
      v51 = 0;
      v50 = 0;
      v49 = 0;
      v48 = 0;
      LODWORD(v119) = 0;
    }

    LODWORD(v118) = 1;
    v53 = 1;
    v47 = v127;
  }

LABEL_20:
  sub_100007BAC(v122);
  (*(v117 + 8))(v47, v104);
  v64 = *&v47[v129[6] + 8];

  v66 = *&v47[v129[11] + 8];

  if (v118)
  {
    v65 = *&v47[v129[12] + 8];
  }

LABEL_4:

  sub_10000B3A8(&v47[v125], &unk_101696AC0, &qword_101390A60);
  sub_10000B3A8(&v47[v124], &unk_101696AC0, &qword_101390A60);
  if (v53)
  {
    v54 = *&v47[v129[17] + 8];
  }

  sub_10000B3A8(&v47[v121], &qword_1016A62E8, &qword_1013B3CB0);

  v56 = v126;
  v57 = v123;
  v58 = v129;
  if (v52)
  {
    result = (*(v123 + 8))(&v47[v129[22]], v126);
    if (!v51)
    {
LABEL_8:
      if (!v50)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if (!v51)
  {
    goto LABEL_8;
  }

  result = (*(v57 + 8))(&v47[v58[23]], v56);
  if (!v50)
  {
LABEL_9:
    if (!v49)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = (*(v57 + 8))(&v47[v58[24]], v56);
  if (!v49)
  {
LABEL_10:
    if (!v48)
    {
      goto LABEL_11;
    }

LABEL_17:
    result = (*(v57 + 8))(&v47[v58[26]], v56);
    if (!v119)
    {
      return result;
    }

    return (*(v57 + 8))(&v47[v58[27]], v56);
  }

LABEL_16:
  result = (*(v57 + 8))(&v47[v58[25]], v56);
  if (v48)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (!v119)
  {
    return result;
  }

  return (*(v57 + 8))(&v47[v58[27]], v56);
}

uint64_t sub_10083B19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10083DE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10083B1D0(uint64_t a1)
{
  v2 = sub_10083C4FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083B20C(uint64_t a1)
{
  v2 = sub_10083C4FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10083B248()
{
  Hasher.init(_seed:)();
  sub_100839680(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10083B28C()
{
  Hasher.init(_seed:)();
  sub_100839680(v1);
  return Hasher._finalize()();
}

uint64_t sub_10083B344(uint64_t a1)
{
  *(a1 + 8) = sub_10083DB3C(&qword_1016AAC18, type metadata accessor for BeaconProductInfoRecord);
  result = sub_10083DB3C(&qword_1016AAC20, type metadata accessor for BeaconProductInfoRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10083B3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v5 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v61 - v7;
  v9 = type metadata accessor for AccessoryProductInfo();
  v10 = v9[21];
  sub_1000D2A70(a1 + v10, v8, &qword_1016A62E8, &qword_1013B3CB0);
  v11 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_10000B3A8(v8, &qword_1016A62E8, &qword_1013B3CB0);
    v12 = 3;
  }

  else
  {
    v13 = v8[48];
    v14 = v8[49];
    sub_10083E698(v8, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v12 = 3;
    if ((v14 & 1) == 0)
    {
      if (v13 >= 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = v13;
      }
    }
  }

  v78 = v12;
  v15 = *(a1 + v9[11]);
  v16 = v9[7];
  v76 = *(a1 + v9[6]);
  v77 = v15;
  v17 = (a1 + v9[9]);
  v18 = *(a1 + v16);
  LODWORD(v16) = *(a1 + v9[8]);
  v74 = v18;
  v75 = v16;
  v19 = v17[1];
  v68 = *v17;
  v20 = v9[14];
  v21 = (a1 + v9[13]);
  v22 = *v21;
  v63 = v21[1];
  v23 = a1 + v20;
  v25 = *(a1 + v20);
  v24 = *(v23 + 8);
  v72 = v22;
  v73 = v25;
  v64 = v24;
  v65 = v19;
  v26 = v9[16];
  v27 = a1 + v9[15];
  v28 = *v27;
  v69 = *(v27 + 8);
  v29 = a1 + v26;
  v31 = *(a1 + v26);
  v30 = *(v29 + 8);
  v70 = v28;
  v71 = v31;
  v62 = v30;
  v32 = v9[18];
  v33 = type metadata accessor for BeaconProductInfoRecord();
  sub_1000D2A70(a1 + v32, a3 + v33[15], &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(a1 + v9[17], a3 + v33[16], &unk_101696AC0, &qword_101390A60);
  v34 = v9[20];
  v35 = (a1 + v9[19]);
  v37 = *v35;
  v36 = v35[1];
  v67 = v37;
  v61 = v36;
  v38 = *(a1 + v34);
  sub_1000D2A70(a1 + v10, a3 + v33[19], &qword_1016A62E8, &qword_1013B3CB0);
  v39 = v9[23];
  v66 = *(a1 + v9[22]);
  v40 = *(a1 + v39);
  v41 = v9[26];
  v42 = v33[22];
  v43 = type metadata accessor for URL();
  v44 = *(*(v43 - 8) + 16);
  v44(a3 + v42, a1 + v41, v43);
  v44(a3 + v33[23], a1 + v9[27], v43);
  v44(a3 + v33[24], a1 + v9[28], v43);
  v44(a3 + v33[25], a1 + v9[29], v43);
  v44(a3 + v33[26], a1 + v9[30], v43);
  v44(a3 + v33[27], a1 + v9[31], v43);
  v45 = *(a1 + v9[44]);

  v46 = v65;

  v47 = v63;

  v48 = v64;

  v49 = v62;

  v50 = v61;

  sub_10083E698(a1, type metadata accessor for AccessoryProductInfo);
  v51 = type metadata accessor for UUID();
  result = (*(*(v51 - 8) + 32))(a3, v79, v51);
  *(a3 + v33[5]) = v77;
  v53 = (a3 + v33[6]);
  *v53 = v68;
  v53[1] = v46;
  *(a3 + v33[7]) = v78;
  *(a3 + v33[8]) = v76;
  v54 = v75;
  *(a3 + v33[9]) = v74;
  *(a3 + v33[10]) = v54;
  v55 = (a3 + v33[11]);
  v56 = v73;
  *v55 = v72;
  v55[1] = v47;
  v57 = (a3 + v33[12]);
  *v57 = v56;
  v57[1] = v48;
  v58 = a3 + v33[13];
  *v58 = v70;
  *(v58 + 8) = v69;
  v59 = (a3 + v33[14]);
  *v59 = v71;
  v59[1] = v49;
  v60 = (a3 + v33[17]);
  *v60 = v67;
  v60[1] = v50;
  *(a3 + v33[18]) = v38;
  *(a3 + v33[20]) = v66;
  *(a3 + v33[21]) = v40;
  *(a3 + v33[28]) = v45;
  return result;
}

id sub_10083B890()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v99 - v4;
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v99 - v11;
  v104 = [objc_allocWithZone(SPDiscoveredAccessoryProductInformation) init];
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C218;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 isInternalBuild];

  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = [v13 BOOLForKey:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for BeaconProductInfoRecord();
  [v104 setIsManagedAccessory:v1[v18[5]] & 1];
  v100 = v12;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v1[v18[8]];
  }

  v101 = v10;
  v103 = v5;
  v20 = v104;
  [v104 setEligibleForPairing:v19];
  [v20 setHidden:v1[v18[9]]];
  v21 = &v1[v18[11]];
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = String._bridgeToObjectiveC()();
  [v20 setModelName:v24];

  v102 = v18;
  v25 = &v1[v18[12]];
  v26 = *v25;
  v27 = *(v25 + 1);
  v28 = String._bridgeToObjectiveC()();
  [v20 setManufacturerName:v28];

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v29 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v30 = sub_101073D24(v107[0]);

  v105 = v30;
  v32 = *(v30 + 16);
  if (v32)
  {
    v33 = (v105 + 56);
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      __chkstk_darwin(v31);
      *(&v99 - 2) = v1;

      sub_1012BBCA0(sub_10083C2A8, v35, v107);

      if (v107[2])
      {
        v36 = v1;
        v37 = v107[0];
        v38 = objc_allocWithZone(SPBeaconRole);
        v39 = String._bridgeToObjectiveC()();
        v40 = String._bridgeToObjectiveC()();
        v41 = [v38 initWithRoleId:v37 role:v39 roleEmoji:v40];

        v1 = v36;
        [v104 setDefaultRole:v41];
      }

      v33 += 4;
      --v32;
    }

    while (v32);
  }

  v42 = v102;
  v43 = v100;
  sub_1000D2A70(&v1[v102[15]], v100, &unk_101696AC0, &qword_101390A60);
  v44 = type metadata accessor for URL();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  v48 = 0;
  if (v46(v43, 1, v44) != 1)
  {
    URL._bridgeToObjectiveC()(v47);
    v48 = v49;
    (*(v45 + 8))(v43, v44);
  }

  [v104 setDisableURL:v48];

  v50 = &v1[v42[14]];
  v51 = v101;
  if (*(v50 + 1))
  {
    v52 = *v50;
    v53 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = 0;
  }

  [v104 setAppBundleIdentifier:v53];

  sub_1000D2A70(&v1[v42[16]], v51, &unk_101696AC0, &qword_101390A60);
  if (v46(v51, 1, v44) == 1)
  {
    v55 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v54);
    v55 = v56;
    (*(v45 + 8))(v51, v44);
  }

  v58 = v103;
  v57 = v104;
  [v104 setLowBatteryInfoURL:v55];

  v59 = &v1[v42[17]];
  v60 = *v59;
  v61 = *(v59 + 1);
  v62 = String._bridgeToObjectiveC()();
  [v57 setVersion:v62];

  [v57 setTxPower:*&v1[v42[18]]];
  sub_1000D2A70(&v1[v42[19]], v58, &qword_1016A62E8, &qword_1013B3CB0);
  v63 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if ((*(*(v63 - 8) + 48))(v58, 1, v63) == 1)
  {
    sub_10000B3A8(v58, &qword_1016A62E8, &qword_1013B3CB0);
    v64 = 20.0;
  }

  else
  {
    v65 = v58 + *(v63 + 56);
    v66 = *v65;
    v67 = *(v65 + 8);
    sub_10083E698(v58, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    v64 = 20.0;
    if (!v67)
    {
      v64 = v66;
    }
  }

  v68 = v104;
  [v104 setRangeDistanceInMeters:v64];
  [v68 setCapabilities:sub_1010D73CC(*&v1[v42[20]])];
  v69 = *&v1[v42[21]];
  if (v69)
  {
    v70 = *(v69 + 16);
    if (v70)
    {
      v101 = v1;
      v106 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v71 = (v69 + 48);
      do
      {
        v74 = *(v71 - 16);
        v76 = *(v71 - 1);
        v75 = *v71;
        v78 = v71[1];
        v77 = v71[2];
        v79 = v71[4];
        v103 = v71[3];
        LODWORD(v105) = *(v71 + 40);
        v80 = objc_allocWithZone(SPAccessoryLayoutTemplate);

        v81 = [v80 init];
        [v81 setPartIdentifier:v74];
        v82 = String._bridgeToObjectiveC()();
        [v81 setPartType:v82];

        v83 = String._bridgeToObjectiveC()();
        [v81 setPartName:v83];

        if (v79)
        {

          v72 = String._bridgeToObjectiveC()();
        }

        else
        {
          v72 = 0;
        }

        v71 += 8;
        [v81 setPartSymbol:v72];

        [v81 setIsPrimary:v105 & 1];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v73 = v106[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v70;
      }

      while (v70);
      v42 = v102;
    }

    sub_10083C300();
    v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v84.super.isa = 0;
  }

  v85 = v104;
  [v104 setLayoutTemplate:v84.super.isa];

  URL._bridgeToObjectiveC()(v42[22]);
  v87 = v86;
  [v85 setDefaultHeroIcon:v86];

  URL._bridgeToObjectiveC()(v42[23]);
  v89 = v88;
  [v85 setDefaultListIcon:v88];

  URL._bridgeToObjectiveC()(v42[24]);
  v91 = v90;
  [v85 setDefaultHeroIcon2x:v90];

  URL._bridgeToObjectiveC()(v42[25]);
  v93 = v92;
  [v85 setDefaultListIcon2x:v92];

  URL._bridgeToObjectiveC()(v42[26]);
  v95 = v94;
  [v85 setDefaultHeroIcon3x:v94];

  URL._bridgeToObjectiveC()(v42[27]);
  v97 = v96;
  [v85 setDefaultListIcon3x:v96];

  return v85;
}

uint64_t sub_10083C2A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2 + *(type metadata accessor for BeaconProductInfoRecord() + 52);
  return (v3 == *v4) & ~*(v4 + 8);
}

unint64_t sub_10083C300()
{
  result = qword_1016A62F0;
  if (!qword_1016A62F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A62F0);
  }

  return result;
}

void sub_10083C34C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *(v4 - 24);
      v8 = *v4;
      v4 += 32;
      Hasher._combine(_:)(v7);
      sub_100017D5C(v5, v6);
      Data.hash(into:)();
      Hasher._combine(_:)(v8);
      sub_100016590(v5, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_10083C3DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 48);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = v4[1];
      v8 = v4[2];
      v11 = v4[3];
      v10 = v4[4];
      v12 = *(v4 + 40);
      Hasher._combine(_:)(*(v4 - 16));

      String.hash(into:)();
      String.hash(into:)();
      if (v10)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (v12 != 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v12 != 2)
        {
LABEL_9:
          Hasher._combine(_:)(1u);
          v5 = v12 & 1;
          goto LABEL_4;
        }
      }

      v5 = 0;
LABEL_4:
      v4 += 8;
      Hasher._combine(_:)(v5);

      --v3;
    }

    while (v3);
  }
}

unint64_t sub_10083C4FC()
{
  result = qword_1016AAC30;
  if (!qword_1016AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC30);
  }

  return result;
}

void sub_10083C550(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WildModeTrackingLocation(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = *(v3 + 28);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_10083E630(v10, v7, type metadata accessor for WildModeTrackingLocation);
      v12 = *v7;
      if (*v7 == 0.0)
      {
        v12 = 0.0;
      }

      Hasher._combine(_:)(*&v12);
      v13 = v7[1];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      Hasher._combine(_:)(*&v13);
      v14 = v7[2];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      Hasher._combine(_:)(*&v14);
      type metadata accessor for Date();
      sub_10083DB3C(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      sub_10083E698(v7, type metadata accessor for WildModeTrackingLocation);
      v10 += v11;
      --v8;
    }

    while (v8);
  }
}

void sub_10083C728(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v42 - v15;
  v16 = type metadata accessor for RawSearchResult();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  Hasher._combine(_:)(v21);
  if (v21)
  {
    v59 = &v20[v16[13]];
    v22 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = v16[5];
    v57 = v16[6];
    v58 = v23;
    v55 = v16[7];
    v56 = (v49 + 48);
    v24 = v16[8];
    v53 = v16[9];
    v54 = v24;
    v25 = v16[10];
    v51 = v16[11];
    v52 = v25;
    v26 = v16[12];
    v44 = (v49 + 8);
    v45 = (v49 + 32);
    v49 = *(v17 + 72);
    v50 = v26;
    v48 = (v60 + 48);
    v60 = v3;
    v43 = v9;
    do
    {
      sub_10083E630(v22, v20, type metadata accessor for RawSearchResult);
      Hasher._combine(_:)(*v20);
      sub_10083DB3C(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v28 = *&v20[v57];
      if (v28 == 0.0)
      {
        v28 = 0.0;
      }

      Hasher._combine(_:)(*&v28);
      v29 = *&v20[v55];
      if (v29 == 0.0)
      {
        v29 = 0.0;
      }

      Hasher._combine(_:)(*&v29);
      v30 = *&v20[v54];
      if (v30 == 0.0)
      {
        v30 = 0.0;
      }

      Hasher._combine(_:)(*&v30);
      Hasher._combine(_:)(v20[v53]);
      v31 = v61;
      sub_1000D2A70(&v20[v52], v61, &unk_101696900, &unk_10138B1E0);
      if ((*v56)(v31, 1, v10) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v32 = v46;
        (*v45)(v46, v31, v10);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        (*v44)(v32, v10);
      }

      sub_1000D2A70(&v20[v51], v9, &unk_1016C1120, &qword_1013C49D0);
      if ((*v48)(v9, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v34 = v9;
        v35 = v47;
        sub_10083DB84(v34, v47, type metadata accessor for BeaconKeyManager.IndexInformation);
        Hasher._combine(_:)(1u);
        type metadata accessor for UUID();
        sub_10083DB3C(&qword_1016967B0, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v36 = (v35 + *(v3 + 20));
        v37 = v36[4];
        sub_1000035D0(v36, v36[3]);
        v38 = *(v37 + 56);
        dispatch thunk of RawRepresentable.rawValue.getter();
        Hasher._combine(_:)(v62);
        v39 = v36[3];
        v40 = v36[4];
        sub_1000035D0(v36, v39);
        sub_10002BD40(v39, v40);
        String.hash(into:)();

        v41 = v35;
        v9 = v43;
        sub_10083E698(v41, type metadata accessor for BeaconKeyManager.IndexInformation);
      }

      v33 = v59;
      type metadata accessor for UUID();
      sub_10083DB3C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      if (v33[1])
      {
        v27 = 0;
      }

      else
      {
        v27 = *v33;
        Hasher._combine(_:)(1u);
      }

      v3 = v60;
      Hasher._combine(_:)(v27);
      sub_10083E698(v20, type metadata accessor for RawSearchResult);
      v22 += v49;
      --v21;
    }

    while (v21);
  }
}

BOOL sub_10083CE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v144 - v11;
  v13 = sub_1000BC4D4(&qword_1016A89D8, &unk_10140A400);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v144 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v154 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v152 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v155 = &v144 - v25;
  v156 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v26 = *(*(v156 - 8) + 64);
  v27 = __chkstk_darwin(v156);
  v153 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v157 = &v144 - v29;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v30 = type metadata accessor for BeaconProductInfoRecord();
  v31 = v30[5];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else
  {
    v34 = 0;
    if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
    {
      return v34;
    }
  }

  v35 = v30[6];
  v37 = *(a1 + v35);
  v36 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if (v37 != *v38 || v36 != v38[1])
  {
    v151 = v18;
    v39 = v17;
    v40 = v13;
    v41 = v5;
    v42 = v12;
    v43 = v4;
    v44 = v16;
    v45 = a1;
    v46 = a2;
    v47 = v8;
    v48 = v30;
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v30 = v48;
    v8 = v47;
    a2 = v46;
    a1 = v45;
    v16 = v44;
    v4 = v43;
    v12 = v42;
    v5 = v41;
    v13 = v40;
    v17 = v39;
    v18 = v151;
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  v50 = v30[7];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 4)
  {
    if (v52 != 4)
    {
      return 0;
    }
  }

  else if (v51 != v52)
  {
    return 0;
  }

  if (*(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]))
  {
    return 0;
  }

  v54 = v30[10];
  v55 = *(a1 + v54);
  v56 = *(a2 + v54);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }

LABEL_23:
    v57 = v30[11];
    v59 = *(a1 + v57);
    v58 = *(a1 + v57 + 8);
    v60 = (a2 + v57);
    v61 = v60[1];
    v62 = v59 == *v60;
    v151 = v18;
    if (!v62 || v58 != v61)
    {
      v63 = v17;
      v64 = v13;
      v65 = v5;
      v66 = v12;
      v67 = v4;
      v68 = v16;
      v69 = a1;
      v70 = a2;
      v71 = v8;
      v72 = v30;
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v30 = v72;
      v8 = v71;
      a2 = v70;
      a1 = v69;
      v16 = v68;
      v4 = v67;
      v12 = v66;
      v5 = v65;
      v13 = v64;
      v17 = v63;
      v18 = v151;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }

    v74 = v30[12];
    v76 = *(a1 + v74);
    v75 = *(a1 + v74 + 8);
    v77 = (a2 + v74);
    if (v76 != *v77 || v75 != v77[1])
    {
      v78 = v17;
      v79 = v13;
      v80 = v5;
      v81 = v12;
      v82 = v4;
      v83 = v16;
      v84 = a1;
      v85 = a2;
      v86 = v8;
      v87 = v30;
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v30 = v87;
      v8 = v86;
      a2 = v85;
      a1 = v84;
      v16 = v83;
      v4 = v82;
      v12 = v81;
      v5 = v80;
      v13 = v79;
      v17 = v78;
      v18 = v151;
      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }

    v89 = v30[13];
    v90 = (a1 + v89);
    v91 = *(a1 + v89 + 8);
    v92 = (a2 + v89);
    v34 = *(a2 + v89 + 8);
    if (v91)
    {
      if (!v34)
      {
        return v34;
      }
    }

    else
    {
      if (*v90 != *v92)
      {
        LOBYTE(v34) = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    v93 = v30[14];
    v94 = (a1 + v93);
    v95 = *(a1 + v93 + 8);
    v96 = (a2 + v93);
    v97 = v96[1];
    if (v95)
    {
      if (!v97)
      {
        return 0;
      }

      v147 = v8;
      if (*v94 != *v96 || v95 != v97)
      {
        v98 = v30;
        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30 = v98;
        if ((v99 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v147 = v8;
      if (v97)
      {
        return 0;
      }
    }

    v146 = v30;
    v100 = v157;
    v101 = *(v156 + 48);
    v149 = v30[15];
    v150 = v101;
    sub_1000D2A70(a1 + v149, v157, &unk_101696AC0, &qword_101390A60);
    sub_1000D2A70(a2 + v149, v100 + v150, &unk_101696AC0, &qword_101390A60);
    v148 = *(v18 + 48);
    v149 = v18 + 48;
    if (v148(v100, 1, v17) == 1)
    {
      if (v148(v157 + v150, 1, v17) == 1)
      {
        v145 = v16;
        sub_10000B3A8(v157, &unk_101696AC0, &qword_101390A60);
        goto LABEL_50;
      }
    }

    else
    {
      v102 = v157;
      sub_1000D2A70(v157, v155, &unk_101696AC0, &qword_101390A60);
      if (v148(v102 + v150, 1, v17) != 1)
      {
        v145 = v16;
        (*(v18 + 32))(v154, v157 + v150, v17);
        sub_10083DB3C(&qword_1016A8918, &type metadata accessor for URL);
        LODWORD(v150) = dispatch thunk of static Equatable.== infix(_:_:)();
        v106 = *(v18 + 8);
        v106(v154, v17);
        v106(v155, v17);
        sub_10000B3A8(v157, &unk_101696AC0, &qword_101390A60);
        if ((v150 & 1) == 0)
        {
          return 0;
        }

LABEL_50:
        v155 = v13;
        v107 = v146[16];
        v108 = *(v156 + 48);
        v109 = v17;
        v110 = v153;
        sub_1000D2A70(a1 + v107, v153, &unk_101696AC0, &qword_101390A60);
        v157 = v108;
        sub_1000D2A70(a2 + v107, v110 + v108, &unk_101696AC0, &qword_101390A60);
        v111 = v148;
        if (v148(v110, 1, v109) == 1)
        {
          if (v111(v110 + v157, 1, v109) == 1)
          {
            sub_10000B3A8(v110, &unk_101696AC0, &qword_101390A60);
LABEL_58:
            v116 = v146;
            v117 = v146[17];
            v118 = *(a1 + v117);
            v119 = *(a1 + v117 + 8);
            v120 = (a2 + v117);
            if (v118 != *v120 || v119 != v120[1])
            {
              v121 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v116 = v146;
              if ((v121 & 1) == 0)
              {
                return 0;
              }
            }

            if (*(a1 + v116[18]) != *(a2 + v116[18]))
            {
              return 0;
            }

            v122 = v116[19];
            v123 = *(v155 + 48);
            v157 = a1;
            v124 = a1 + v122;
            v125 = v145;
            sub_1000D2A70(v124, v145, &qword_1016A62E8, &qword_1013B3CB0);
            v126 = a2;
            sub_1000D2A70(a2 + v122, v125 + v123, &qword_1016A62E8, &qword_1013B3CB0);
            v127 = *(v5 + 48);
            if (v127(v125, 1, v4) == 1)
            {
              v128 = v125;
              if (v127(v125 + v123, 1, v4) == 1)
              {
                sub_10000B3A8(v125, &qword_1016A62E8, &qword_1013B3CB0);
LABEL_69:
                if (*(v157 + v146[20]) == *(v126 + v146[20]))
                {
                  v132 = v146[21];
                  v133 = *(v157 + v132);
                  v134 = *(v126 + v132);
                  if (v133)
                  {
                    if (!v134 || (sub_10038F298(v133, v134) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v134)
                  {
                    return 0;
                  }

                  v135 = v146[22];
                  if ((static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v136 = v146[23];
                  if ((static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v137 = v146[24];
                  if ((static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v138 = v146[25];
                  if ((static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v139 = v146[26];
                  if ((static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v140 = v146[27];
                  if ((static URL.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }

                  v141 = v146[28];
                  v142 = *(v157 + v141);
                  v143 = *(v126 + v141);
                  if (v142 != 2)
                  {
                    return v143 != 2 && ((v143 ^ v142) & 1) == 0;
                  }

                  if (v143 == 2)
                  {
                    return 1;
                  }
                }

                return 0;
              }
            }

            else
            {
              sub_1000D2A70(v125, v12, &qword_1016A62E8, &qword_1013B3CB0);
              v128 = v125;
              if (v127(v125 + v123, 1, v4) != 1)
              {
                v129 = v125 + v123;
                v130 = v147;
                sub_10083DB84(v129, v147, type metadata accessor for AccessoryInfoResponseContent.Configuration);
                v131 = sub_100755284(v12, v130);
                sub_10083E698(v130, type metadata accessor for AccessoryInfoResponseContent.Configuration);
                sub_10083E698(v12, type metadata accessor for AccessoryInfoResponseContent.Configuration);
                sub_10000B3A8(v125, &qword_1016A62E8, &qword_1013B3CB0);
                if (!v131)
                {
                  return 0;
                }

                goto LABEL_69;
              }

              sub_10083E698(v12, type metadata accessor for AccessoryInfoResponseContent.Configuration);
            }

            v103 = &qword_1016A89D8;
            v104 = &unk_10140A400;
            v105 = v128;
LABEL_56:
            sub_10000B3A8(v105, v103, v104);
            return 0;
          }
        }

        else
        {
          v112 = v152;
          sub_1000D2A70(v110, v152, &unk_101696AC0, &qword_101390A60);
          if (v111(v110 + v157, 1, v109) != 1)
          {
            v113 = v151;
            v114 = v154;
            (*(v151 + 32))(v154, v110 + v157, v109);
            sub_10083DB3C(&qword_1016A8918, &type metadata accessor for URL);
            LODWORD(v157) = dispatch thunk of static Equatable.== infix(_:_:)();
            v115 = *(v113 + 8);
            v115(v114, v109);
            v115(v112, v109);
            sub_10000B3A8(v153, &unk_101696AC0, &qword_101390A60);
            if ((v157 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_58;
          }

          (*(v151 + 8))(v112, v109);
        }

        v103 = &qword_1016A8910;
        v104 = &qword_1013BE3A0;
        v105 = v110;
        goto LABEL_56;
      }

      (*(v18 + 8))(v155, v17);
    }

    v103 = &qword_1016A8910;
    v104 = &qword_1013BE3A0;
    v105 = v157;
    goto LABEL_56;
  }

  v34 = 0;
  if (v56 != 2 && ((v56 ^ v55) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v34;
}

uint64_t sub_10083DB3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10083DB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for BeaconProductInfoRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconProductInfoRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10083DD40()
{
  result = qword_1016AAC40;
  if (!qword_1016AAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC40);
  }

  return result;
}

unint64_t sub_10083DD98()
{
  result = qword_1016AAC48;
  if (!qword_1016AAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC48);
  }

  return result;
}

unint64_t sub_10083DDF0()
{
  result = qword_1016AAC50;
  if (!qword_1016AAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC50);
  }

  return result;
}

uint64_t sub_10083DE44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001013610F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010135E700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB00000000656C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x55656C6261736964 && a2 == 0xEA00000000004C52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7265776F507874 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6761547269417369 && a2 == 0xE800000000000000)
  {

    return 24;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_10083E630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10083E698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10083E6F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10083E71C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10083E764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10083E7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10083E80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10083E8AC(char a1)
{
  result = 0x444955556162;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x754E6C6169726573;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      v3 = 0x656369766564;
      goto LABEL_25;
    case 5:
      result = 0x6F43656369766564;
      break;
    case 6:
      result = 0x6C43656369766564;
      break;
    case 7:
      result = 0x6F4D656369766564;
      break;
    case 8:
      result = 0x6369766544776172;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x4C79726574746162;
      break;
    case 11:
      result = 0x5379726574746162;
      break;
    case 12:
      result = 0x7265776F50776F6CLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0x6976654473696874;
      break;
    case 15:
      result = 0x6E614872656E776FLL;
      break;
    case 16:
      result = 0x656E694D7369;
      break;
    case 17:
      result = 0x6449737270;
      break;
    case 18:
      result = 0x656D695474736F6CLL;
      break;
    case 19:
      result = 0x695464656B636F6CLL;
      break;
    case 20:
      result = 0x6D69546465706977;
      break;
    case 21:
      result = 0x65646F4D74736F6CLL;
      break;
    case 22:
      result = 0x7365727574616566;
      break;
    case 23:
      v3 = 0x726961706572;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10083EB7C()
{
  if (*v0)
  {
    result = 0x6F43726576726573;
  }

  else
  {
    result = 0x73656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_10083EBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10083ECA8(uint64_t a1)
{
  v2 = sub_10083F258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083ECE4(uint64_t a1)
{
  v2 = sub_10083F258();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10083ED20@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10083F044(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10083ED68()
{
  if (*v0)
  {
    result = 0x7361426567616D69;
  }

  else
  {
    result = 0x7069726373627573;
  }

  *v0;
  return result;
}

uint64_t sub_10083EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069726373627573 && a2 == 0xEF4C54546E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7361426567616D69 && a2 == 0xEC0000006C725565)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10083EEA0(uint64_t a1)
{
  v2 = sub_1008410A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083EEDC(uint64_t a1)
{
  v2 = sub_1008410A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10083EF18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10083F3D8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_10083EF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10083F590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10083EF80(uint64_t a1)
{
  v2 = sub_100840C24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10083EFBC(uint64_t a1)
{
  v2 = sub_100840C24();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10083EFF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10083FD34(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x129uLL);
  }

  return result;
}

uint64_t sub_10083F044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016AAC58, &qword_1013BE638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10083F258();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  sub_1000BC4D4(&qword_1016AAC68, &qword_1013BE640);
  v18 = 0;
  sub_10083F2AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  v18 = 1;
  sub_10083F384();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v17;
  v15 = v16;
  result = sub_100007BAC(a1);
  *a2 = v11;
  v13 = v15;
  *(a2 + 24) = v14;
  *(a2 + 8) = v13;
  return result;
}

unint64_t sub_10083F258()
{
  result = qword_1016AAC60;
  if (!qword_1016AAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC60);
  }

  return result;
}

unint64_t sub_10083F2AC()
{
  result = qword_1016AAC70;
  if (!qword_1016AAC70)
  {
    sub_1000BC580(&qword_1016AAC68, &qword_1013BE640);
    sub_10083F330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC70);
  }

  return result;
}

unint64_t sub_10083F330()
{
  result = qword_1016AAC78;
  if (!qword_1016AAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC78);
  }

  return result;
}

unint64_t sub_10083F384()
{
  result = qword_1016AAC80;
  if (!qword_1016AAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC80);
  }

  return result;
}

uint64_t sub_10083F3D8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AACE0, &qword_1013BE8F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_1008410A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

uint64_t sub_10083F590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556162 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEC00000073757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6369766544776172 && a2 == 0xEE006C65646F4D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101361110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5379726574746162 && a2 == 0xED00007375746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7265776F50776F6CLL && a2 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101361130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6976654473696874 && a2 == 0xEA00000000006563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656E694D7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6449737270 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656D695474736F6CLL && a2 == 0xED0000706D617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x695464656B636F6CLL && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6D69546465706977 && a2 == 0xEE00706D61747365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7453726961706572 && a2 == 0xEC00000073757461)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

void *sub_10083FD34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v123 = sub_1000BC4D4(&qword_1016AAC88, &qword_1013BE648);
  v5 = *(v123 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v123);
  v8 = &v39 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100840C24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v77 = a2;
  v78 = a1;
  v10 = v5;
  LOBYTE(v80[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v76 = v12;
  LOBYTE(v80[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v14;
  v75 = v13;
  LOBYTE(v80[0]) = 2;
  v71 = 0;
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v15;
  LOBYTE(v80[0]) = 3;
  v73 = KeyedDecodingContainer.decode(_:forKey:)();
  v69 = v16;
  LOBYTE(v80[0]) = 4;
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = v17;
  LOBYTE(v80[0]) = 5;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = v18;
  LOBYTE(v80[0]) = 6;
  v57 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v19;
  LOBYTE(v80[0]) = 7;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v65 = v20;
  LOBYTE(v80[0]) = 8;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v64 = v21;
  LOBYTE(v80[0]) = 9;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v63 = v23;
  v24 = v22;
  LOBYTE(v80[0]) = 10;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v122 = v26 & 1;
  LOBYTE(v80[0]) = 11;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = v28;
  v29 = v27;
  LOBYTE(v80[0]) = 12;
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v80[0]) = 13;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v80[0]) = 14;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v80[0]) = 15;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = v30;
  LOBYTE(v80[0]) = 16;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v80[0]) = 17;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  v60 = v31;
  LOBYTE(v80[0]) = 18;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v117 = v32 & 1;
  LOBYTE(v80[0]) = 19;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v115 = v33 & 1;
  LOBYTE(v80[0]) = 20;
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v113 = v34 & 1;
  LOBYTE(v80[0]) = 21;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000BC4D4(&qword_1016AAC98, &qword_1013BE650);
  LOBYTE(v79[0]) = 22;
  sub_100840C78();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v80[0];
  v109 = 23;
  sub_100840CFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v54 & 1;
  v52 &= 1u;
  v53 &= 1u;
  v54 = v50 & 1;
  v50 = v45 & 1;
  (*(v10 + 8))(v8, v123);
  v45 = v110;
  v79[0] = v11;
  v79[1] = v76;
  v79[2] = v75;
  v79[3] = v72;
  v79[4] = v74;
  v79[5] = v70;
  v79[6] = v73;
  v79[7] = v69;
  v79[8] = v59;
  v79[9] = v68;
  v79[10] = v58;
  v79[11] = v67;
  v79[12] = v57;
  v79[13] = v66;
  v79[14] = v56;
  v79[15] = v65;
  v79[16] = v55;
  v79[17] = v64;
  v42 = v25;
  v43 = v24;
  v79[18] = v24;
  v79[19] = v63;
  v79[20] = v25;
  LODWORD(v123) = v122;
  LOBYTE(v79[21]) = v122;
  *(&v79[21] + 1) = *v121;
  HIDWORD(v79[21]) = *&v121[3];
  v41 = v29;
  v79[22] = v29;
  v79[23] = v62;
  LOBYTE(v79[24]) = v44;
  BYTE1(v79[24]) = v53;
  BYTE2(v79[24]) = v52;
  *(&v79[24] + 3) = v119;
  HIBYTE(v79[24]) = v120;
  v79[25] = v51;
  v79[26] = v61;
  LOBYTE(v79[27]) = v54;
  HIDWORD(v79[27]) = *&v118[3];
  *(&v79[27] + 1) = *v118;
  v79[28] = v49;
  v79[29] = v60;
  v79[30] = v48;
  HIDWORD(v79[31]) = *&v116[3];
  *(&v79[31] + 1) = *v116;
  *(&v79[33] + 1) = *v114;
  v40 = v117;
  LOBYTE(v79[31]) = v117;
  v35 = v46;
  v79[32] = v47;
  *(&v79[35] + 2) = v111;
  LOBYTE(v10) = v115;
  LOBYTE(v79[33]) = v115;
  HIDWORD(v79[33]) = *&v114[3];
  v36 = v71;
  v79[34] = v71;
  HIWORD(v79[35]) = v112;
  LOBYTE(v24) = v113;
  LOBYTE(v79[35]) = v113;
  v37 = v50;
  BYTE1(v79[35]) = v50;
  v79[36] = v46;
  LOBYTE(v79[37]) = v110;
  sub_100840D50(v79, v80);
  sub_100007BAC(v78);
  v80[0] = v11;
  v80[1] = v76;
  v80[2] = v75;
  v80[3] = v72;
  v80[4] = v74;
  v80[5] = v70;
  v80[6] = v73;
  v80[7] = v69;
  v80[8] = v59;
  v80[9] = v68;
  v80[10] = v58;
  v80[11] = v67;
  v80[12] = v57;
  v80[13] = v66;
  v80[14] = v56;
  v80[15] = v65;
  v80[16] = v55;
  v80[17] = v64;
  v80[18] = v43;
  v80[19] = v63;
  v80[20] = v42;
  v81 = v123;
  *v82 = *v121;
  *&v82[3] = *&v121[3];
  v83 = v41;
  v84 = v62;
  v85 = v44;
  v86 = v53;
  v87 = v52;
  v88 = v119;
  v89 = v120;
  v90 = v51;
  v91 = v61;
  v92 = v54;
  *&v93[3] = *&v118[3];
  *v93 = *v118;
  v94 = v49;
  v95 = v60;
  v96 = v48;
  v97 = v40;
  *&v98[3] = *&v116[3];
  *v98 = *v116;
  v99 = v47;
  v100 = v10;
  *v101 = *v114;
  *&v101[3] = *&v114[3];
  v102 = v36;
  v103 = v24;
  v104 = v37;
  v105 = v111;
  v106 = v112;
  v107 = v35;
  v108 = v45;
  sub_100840D88(v80);
  return memcpy(v77, v79, 0x129uLL);
}

unint64_t sub_100840C24()
{
  result = qword_1016AAC90;
  if (!qword_1016AAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAC90);
  }

  return result;
}

unint64_t sub_100840C78()
{
  result = qword_1016AACA0;
  if (!qword_1016AACA0)
  {
    sub_1000BC580(&qword_1016AAC98, &qword_1013BE650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACA0);
  }

  return result;
}

unint64_t sub_100840CFC()
{
  result = qword_1016AACA8;
  if (!qword_1016AACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACA8);
  }

  return result;
}

uint64_t sub_100840DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100840E34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100840E9C()
{
  result = qword_1016AACB0;
  if (!qword_1016AACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACB0);
  }

  return result;
}

unint64_t sub_100840EF4()
{
  result = qword_1016AACB8;
  if (!qword_1016AACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACB8);
  }

  return result;
}

unint64_t sub_100840F4C()
{
  result = qword_1016AACC0;
  if (!qword_1016AACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACC0);
  }

  return result;
}

unint64_t sub_100840FA4()
{
  result = qword_1016AACC8;
  if (!qword_1016AACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACC8);
  }

  return result;
}

unint64_t sub_100840FFC()
{
  result = qword_1016AACD0;
  if (!qword_1016AACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACD0);
  }

  return result;
}

unint64_t sub_100841054()
{
  result = qword_1016AACD8;
  if (!qword_1016AACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACD8);
  }

  return result;
}

unint64_t sub_1008410A8()
{
  result = qword_1016AACE8;
  if (!qword_1016AACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACE8);
  }

  return result;
}

unint64_t sub_100841110()
{
  result = qword_1016AACF0;
  if (!qword_1016AACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACF0);
  }

  return result;
}

unint64_t sub_100841168()
{
  result = qword_1016AACF8;
  if (!qword_1016AACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AACF8);
  }

  return result;
}

unint64_t sub_1008411C0()
{
  result = qword_1016AAD00;
  if (!qword_1016AAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAD00);
  }

  return result;
}

uint64_t sub_100841214()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LeftWhileTravelingUserNotification();
  v7 = v0 + *(v6 + 20);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  v10 = *(v7 + 24);
  if ((*(v7 + 32) & 1) == 0)
  {
    v16 = v9;

    if (v10)
    {
      v17 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v17 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
        }

        else
        {
          v42 = v16;
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;
            if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
            {
            }

            else
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          v16 = v42;
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_101385D80;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = sub_100008C00();
        *(v39 + 32) = v8;
        *(v39 + 40) = v10;
LABEL_34:
        (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);
        static LocalizationUtility.localizedString(key:table:)();

        (*(v2 + 8))(v5, v1);
        v15 = String.init(format:arguments:)();

        return v15;
      }
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        if (v34 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v36 != v37)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    goto LABEL_34;
  }

  v11 = *v7;
  v12 = *(v0 + *(v6 + 32)) - 1;
  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  v14 = *(v11 + 16);
  sub_1004AB6A0(v11, v9, v8, v10, 1);
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v14;
  v15 = static String.localizedStringWithFormat(_:_:)();

  return v15;
}

uint64_t sub_10084178C()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LeftWhileTravelingUserNotification();
  v7 = (v0 + *(v6 + 24));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = *(v0 + *(v6 + 32)) - 1;
    v11 = v6;
    (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);

    static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v5, v1);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10138BBE0;
    v13 = *(*(v0 + *(v11 + 20)) + 16);
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = v13;
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = sub_100008C00();
    *(v12 + 72) = v9;
    *(v12 + 80) = v8;
    v14 = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);
    v14 = static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v5, v1);
  }

  return v14;
}

unint64_t sub_100841A08()
{
  v73 = type metadata accessor for UUID();
  v65 = *(v73 - 8);
  v1 = *(v65 + 64);
  __chkstk_darwin(v73);
  v72 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = objc_opt_self();
  v58 = type metadata accessor for LeftWhileTravelingUserNotification();
  v4 = v58[7];
  v60 = v0;
  v5 = *(v0 + v4);
  *&v74 = 0;
  v6 = [v3 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v74];
  v7 = v74;
  if (v6)
  {
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v55 = 0;
  }

  else
  {
    v10 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v61 = 0;
    v55 = 0;
    v9 = 0xF000000000000000;
  }

  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = inited + 32;
  *(inited + 40) = v12;
  v59 = v9;
  if (v9 >> 60 == 15)
  {
    v75 = 0u;
    v74 = 0u;
    v13 = objc_allocWithZone(NSNull);
    v14 = [v13 init];
    *(inited + 72) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 48) = v14;
    if (*(&v75 + 1))
    {
      sub_1004AB638(&v74);
    }
  }

  else
  {
    *(&v75 + 1) = &type metadata for Data;
    *&v74 = v61;
    *(&v74 + 1) = v9;
    sub_1001E6224(&v74, (inited + 48));
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v15;
  v16 = *(v60 + v58[5]);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = *(v60 + v58[5]);
  swift_bridgeObjectRetain_n();
  sub_10002E98C(v61, v59);
  v22 = 0;
  v57 = (v18 + 63) >> 6;
  v71 = v65 + 16;
  v70 = (v65 + 8);
  v23 = _swiftEmptyArrayStorage;
  v64 = inited;
  v63 = v16;
  v62 = v16 + 64;
LABEL_12:
  if (v20)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    if (v24 >= v57)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
LABEL_17:
      v69 = v20;
      v25 = *(*(v16 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v20)))));
      v26 = *(v25 + 16);
      if (v26)
      {
        v67 = v22;
        v68 = v23;
        *&v74 = _swiftEmptyArrayStorage;

        sub_101123BB8(0, v26, 0);
        v27 = v74;
        v28 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v66 = v25;
        v29 = v25 + v28;
        v30 = *(v65 + 72);
        v31 = *(v65 + 16);
        do
        {
          v32 = v72;
          v33 = v73;
          v31(v72, v29, v73);
          v34 = UUID.uuidString.getter();
          v36 = v35;
          (*v70)(v32, v33);
          *&v74 = v27;
          v38 = v27[2];
          v37 = v27[3];
          if (v38 >= v37 >> 1)
          {
            sub_101123BB8((v37 > 1), v38 + 1, 1);
            v27 = v74;
          }

          v27[2] = v38 + 1;
          v39 = &v27[2 * v38];
          v39[4] = v34;
          v39[5] = v36;
          v29 += v30;
          --v26;
        }

        while (v26);

        inited = v64;
        v16 = v63;
        v17 = v62;
        v23 = v68;
        v22 = v67;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
      }

      v40 = v27[2];
      v41 = *(v23 + 2);
      v42 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v42 > *(v23 + 3) >> 1)
      {
        if (v41 <= v42)
        {
          v44 = v41 + v40;
        }

        else
        {
          v44 = v41;
        }

        v23 = sub_100A5B2CC(isUniquelyReferenced_nonNull_native, v44, 1, v23);
      }

      v20 = (v69 - 1) & v69;
      if (v27[2])
      {
        if ((*(v23 + 3) >> 1) - *(v23 + 2) < v40)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v40)
        {
          v45 = *(v23 + 2);
          v46 = __OFADD__(v45, v40);
          v47 = v45 + v40;
          if (v46)
          {
            goto LABEL_45;
          }

          *(v23 + 2) = v47;
        }
      }

      else
      {

        if (v40)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_12;
    }
  }

  *(inited + 120) = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  *(inited + 96) = v23;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v48;
  v49 = (v60 + v58[6]);
  v50 = v49[1];
  if (v50)
  {
    v51 = *v49;
    *(&v75 + 1) = &type metadata for String;
    *&v74 = v51;
    *(&v74 + 1) = v50;
    sub_1001E6224(&v74, (inited + 144));
  }

  else
  {
    v75 = 0u;
    v74 = 0u;
    v52 = [objc_allocWithZone(NSNull) init];
    *(inited + 168) = sub_100008BB8(0, &qword_1016A23B8, NSNull_ptr);
    *(inited + 144) = v52;
    if (*(&v75 + 1))
    {
      sub_1004AB638(&v74);
    }
  }

  v53 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  sub_100006654(v61, v59);
  return v53;
}

uint64_t sub_100842160()
{
  _StringGuts.grow(_:)(88);
  v1._object = 0x8000000101361150;
  v1._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1002FFBAC();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6E6974736564202CLL;
  v3._object = 0xEF203A6E6F697461;
  String.append(_:)(v3);
  v4 = type metadata accessor for LeftWhileTravelingUserNotification();
  v12 = *(v0 + v4[8]);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0x747865746E6F6320;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6 = (v0 + v4[5]);
  v13 = *v6;
  v14 = v6[1];
  LOBYTE(v15) = *(v6 + 32);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x6F697461636F6C20;
  v7._object = 0xEB00000000203A6ELL;
  String.append(_:)(v7);
  v8 = *(v0 + v4[7]);
  [v8 coordinate];
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 8236;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  [v8 coordinate];
  Double.write<A>(to:)();
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

uint64_t type metadata accessor for LeftWhileTravelingUserNotification()
{
  result = qword_1016AAD60;
  if (!qword_1016AAD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008423F8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      sub_100008BB8(319, &qword_1016A3160, CLLocation_ptr);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1008424C4(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for CircleTrustRequestEnvelopeV1(0);
  v3[26] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100842608, v2, 0);
}

uint64_t sub_100842608()
{
  if (sub_100E8F8C0())
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177A560);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share request by underage account. Operation is not allowed.", v4, 2u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[21] = 8;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100845704(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v0[20];
    swift_willThrow();
    v7 = v0[31];
    v6 = v0[32];
    v8 = v0[30];
    v9 = v0[27];
    v10 = v0[25];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = *(v0[24] + 112);
    v0[33] = v13;

    return _swift_task_switch(sub_100842828, v13, 0);
  }
}

uint64_t sub_100842828()
{
  v1 = *(v0 + 264);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_100842914;
  v5 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_100842914()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_100842A2C, v2, 0);
}

uint64_t sub_100842A2C()
{
  v1 = v0[24];
  v0[35] = v0[14];
  return _swift_task_switch(sub_100842A50, v1, 0);
}

uint64_t sub_100842A50()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[28];
    v4 = v0[29];
    v15 = v5;
    while (v3 < *(v1 + 16))
    {
      v6 = v0[32];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10084574C(v0[35] + v7 + v8 * v3, v6, type metadata accessor for MemberSharingCircle);
      v9 = v0[32];
      if (*(v6 + *(v5 + 40)) == 2)
      {
        sub_1008456A0(v9, v0[31]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_101123FA0(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[31];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1008456A0(v12, _swiftEmptyArrayStorage + v7 + v11 * v8);
        v5 = v15;
      }

      else
      {
        sub_1008457B4(v9, type metadata accessor for MemberSharingCircle);
      }

      if (v2 == ++v3)
      {
        v13 = v0[35];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v0[36] = _swiftEmptyArrayStorage[2];

    if (qword_101694940 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v0[37] = qword_10177B348;

  return _swift_task_switch(sub_100842C5C, 0, 0);
}

uint64_t sub_100842C5C()
{
  v1 = *(v0 + 296);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *v3 = v0;
  v3[1] = sub_100842D20;
  v4 = *(v0 + 296);

  return unsafeBlocking<A>(_:)(v0 + 120, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100842D20()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return _swift_task_switch(sub_100842E38, 0, 0);
}

uint64_t sub_100842E38()
{
  v1 = v0[24];
  v0[39] = v0[15];
  return _swift_task_switch(sub_100842E5C, v1, 0);
}

uint64_t sub_100842E5C()
{
  v1 = v0[36];
  v2 = sub_101074AAC(v0[39]);

  if (v1 >= v2)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177A560);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[36];
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v15, v16, "Request limit reached for beacons.\nopenRequests: %ld >= maxPendingRequestSharedItem: %lu.", v18, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[17] = 10;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100845704(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = v0[16];
    swift_willThrow();
    v21 = v0[31];
    v20 = v0[32];
    v22 = v0[30];
    v23 = v0[27];
    v24 = v0[25];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v3 = v0[27];
    v4 = v0[26];
    v5 = v0[23];
    v6 = v0[24];
    v7 = v0[22];
    v8 = *(v0[28] + 28);
    v9 = type metadata accessor for UUID();
    v0[40] = v9;
    (*(*(v9 - 8) + 16))(v3, v7 + v8, v9);
    v0[5] = v4;
    v0[6] = sub_100845704(&qword_1016A4EF8, type metadata accessor for CircleTrustRequestEnvelopeV1);
    v0[7] = sub_100845704(&qword_1016AAE70, type metadata accessor for CircleTrustRequestEnvelopeV1);
    v10 = sub_1000280DC(v0 + 2);
    sub_10084574C(v3, v10, type metadata accessor for CircleTrustRequestEnvelopeV1);
    v11 = *(type metadata accessor for MemberPeerTrust() + 28);
    v12 = swift_task_alloc();
    v0[41] = v12;
    *v12 = v0;
    v12[1] = sub_1008431FC;

    return sub_10129B0F0(v6 + 120, (v0 + 2), 7, v5 + v11);
  }
}

uint64_t sub_1008431FC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v8 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_100843C8C;
  }

  else
  {
    v6 = *(v2 + 192);
    sub_100007BAC((v2 + 16));
    v5 = sub_100843324;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100843324()
{
  v39 = v0;
  sub_1008457B4(v0[27], type metadata accessor for CircleTrustRequestEnvelopeV1);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[22];
  v3 = type metadata accessor for Logger();
  v0[43] = sub_1000076D4(v3, qword_10177A560);
  sub_10084574C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[40];
    v7 = v0[30];
    v8 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38[0] = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 28);
    sub_100845704(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1008457B4(v7, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, v38);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share request. Update %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    v16 = v0[30];

    sub_1008457B4(v16, type metadata accessor for MemberSharingCircle);
  }

  v17 = v0[42];
  v18 = v0[25];
  *(swift_task_alloc() + 16) = *(v0 + 11);
  sub_100EC0C48(sub_100845814, v18);
  if (v17)
  {

    v19 = v0[43];
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v25 = v0[11];
      v24 = v0[12];
      v26 = v0[13];
      v27 = Error.localizedDescription.getter();
      v29 = sub_1000136BC(v27, v28, v38);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failure in share requesting, cloud data update error %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
    }

    v32 = v0[31];
    v31 = v0[32];
    v33 = v0[30];
    v34 = v0[27];
    v35 = v0[25];

    v36 = v0[1];

    return v36();
  }

  else
  {
    v30 = v0[33];

    return _swift_task_switch(sub_100843770, v30, 0);
  }
}

uint64_t sub_100843798()
{
  v1 = v0[44];
  v2 = v0[25];
  v3 = swift_task_alloc();
  v0[45] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_100843890;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100843890()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_100843A68;
  }

  else
  {
    v5 = *(v2 + 360);

    v4 = sub_1008439AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1008439C8()
{
  sub_100845638(v0[25]);
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[25];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100843A68()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_100843AD4, v2, 0);
}

uint64_t sub_100843AD4()
{
  v21 = v0;
  sub_100845638(v0[25]);
  v1 = v0[47];
  v2 = v0[43];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[13];
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000136BC(v10, v11, &v20);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in share requesting, cloud data update error %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[25];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100843C8C()
{
  v24 = v0;
  sub_1008457B4(v0[27], type metadata accessor for CircleTrustRequestEnvelopeV1);
  sub_100007BAC(v0 + 2);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[10];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v23);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in share requesting, message sending error %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v14 = v0[42];
  sub_1001118C8();
  swift_allocError();
  *v15 = 3;
  swift_willThrow();

  v17 = v0[31];
  v16 = v0[32];
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[25];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100843ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberSharingCircle();
  *(a1 + *(v4 + 40)) = 2;
  v5 = *(type metadata accessor for MemberPeerTrust() + 20);
  v6 = *(v4 + 36);
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  result = sub_100FFCB84(2, a2 + v5, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v10;
  return result;
}

uint64_t sub_100843F5C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000BC4D4(&qword_1016AAE68, &unk_1013BEB10);
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle();
  v2[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1008440D8, v1, 0);
}

uint64_t sub_1008440D8()
{
  v63 = v0;
  if (qword_101694480 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v1 = v0[17];
    v2 = v0[6];
    v3 = type metadata accessor for Logger();
    v0[18] = sub_1000076D4(v3, qword_10177A560);
    sub_10084574C(v2, v1, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[17];
    if (v6)
    {
      v8 = v0[16];
      v9 = v0[12];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v62 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v8 + 28);
      sub_100845704(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_1008457B4(v7, type metadata accessor for MemberSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v62);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Data update on handle share request decline. Update %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_1008457B4(v7, type metadata accessor for MemberSharingCircle);
    }

    v17 = sub_100845130(*(v0[6] + *(v0[16] + 36)));
    v18 = *(v17 + 16);
    if (!v18)
    {
      break;
    }

    v19 = v0[13];
    v55 = v0[8];
    v62 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v18, 0);
    v20 = v62;
    v21 = -1 << *(v17 + 32);
    v61 = v17 + 64;
    v22 = _HashTable.startBucket.getter();
    v23 = 0;
    v54 = v17;
    v52 = v17 + 72;
    v53 = v18;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v17 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v61 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_30;
      }

      v56 = v23;
      v57 = *(v17 + 36);
      v27 = v0[11];
      v28 = v0[12];
      v60 = v20;
      v30 = v0[9];
      v29 = v0[10];
      v58 = v0[14];
      v59 = *(v19 + 72);
      (*(v19 + 16))(v27, *(v17 + 48) + v59 * v22, v28);
      v31 = *(*(v17 + 56) + v22);
      v32 = *(v19 + 32);
      v32(v29, v27, v28);
      *(v29 + *(v55 + 48)) = v31;
      sub_100845584(v29, v30);
      v33 = v30;
      v20 = v60;
      v32(v58, v33, v28);
      v62 = v60;
      v35 = v60[2];
      v34 = v60[3];
      if (v35 >= v34 >> 1)
      {
        sub_101123D4C(v34 > 1, v35 + 1, 1);
        v20 = v62;
      }

      v36 = v0[14];
      v37 = v0[12];
      v20[2] = v35 + 1;
      v32(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + v35 * v59, v36, v37);
      v17 = v54;
      v24 = 1 << *(v54 + 32);
      if (v22 >= v24)
      {
        goto LABEL_31;
      }

      v38 = *(v61 + 8 * v26);
      if ((v38 & (1 << v22)) == 0)
      {
        goto LABEL_32;
      }

      if (v57 != *(v54 + 36))
      {
        goto LABEL_33;
      }

      v39 = v38 & (-2 << (v22 & 0x3F));
      if (v39)
      {
        v24 = __clz(__rbit64(v39)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v53;
      }

      else
      {
        v40 = v19;
        v41 = v26 << 6;
        v25 = v53;
        v42 = (v52 + 8 * v26);
        v43 = v26 + 1;
        while (v43 < (v24 + 63) >> 6)
        {
          v45 = *v42++;
          v44 = v45;
          v41 += 64;
          ++v43;
          if (v45)
          {
            sub_1000BB408(v22, v57, 0);
            v24 = __clz(__rbit64(v44)) + v41;
            goto LABEL_23;
          }
        }

        sub_1000BB408(v22, v57, 0);
LABEL_23:
        v19 = v40;
      }

      v23 = v56 + 1;
      v22 = v24;
      if (v56 + 1 == v25)
      {

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_26:
  v46 = v0[15];
  v47 = v0[6];
  v48 = swift_task_alloc();
  *(v48 + 16) = v47;
  *(v48 + 24) = v20;
  sub_100EC0C48(sub_1008455F4, v46);
  v49 = v0[7];

  v50 = *(v49 + 112);
  v0[19] = v50;

  return _swift_task_switch(sub_100844818, v50, 0);
}

uint64_t sub_100844840()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_100844938;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100844938()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_100844B20;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_100844A54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100844A70()
{
  sub_100845638(v0[15]);
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100844B20()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100844B8C, v2, 0);
}

uint64_t sub_100844B8C()
{
  v22 = v0;
  sub_100845638(v0[15]);
  v1 = v0[23];
  v2 = v0[18];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v7 = v0[3];
    v9 = v0[4];
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000136BC(v10, v11, &v21);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure handle share request decline, cloud data update error %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100844D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  result = type metadata accessor for MemberSharingCircle();
  *(a1 + *(result + 40)) = 1;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *(result + 36);
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = (a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64)));
    v43 = *(v15 + 56);
    v44 = v16;
    v45 = v15;
    v42 = (v15 - 8);
    while (1)
    {
      v19 = v44;
      v44(v11, v17, v4);
      v20 = v11;
      v19(v9, v11, v4);
      v21 = *(a1 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v14;
      v24 = a1;
      v25 = v23;
      v46 = *(a1 + v23);
      v26 = v46;
      v27 = sub_1000210EC(v9);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        break;
      }

      v33 = v28;
      if (v26[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v27;
          sub_101007A90();
          v27 = v40;
        }
      }

      else
      {
        sub_100FEB78C(v32, isUniquelyReferenced_nonNull_native);
        v27 = sub_1000210EC(v9);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_17;
        }
      }

      v11 = v20;
      v35 = v46;
      if (v33)
      {
        *(v46[7] + v27) = 1;
        v18 = *v42;
        (*v42)(v9, v4);
        result = (v18)(v20, v4);
      }

      else
      {
        v46[(v27 >> 6) + 8] |= 1 << v27;
        v36 = v27;
        v44((v35[6] + v27 * v43), v9, v4);
        *(v35[7] + v36) = 1;
        v37 = *v42;
        (*v42)(v9, v4);
        result = (v37)(v20, v4);
        v38 = v35[2];
        v31 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v31)
        {
          goto LABEL_16;
        }

        v35[2] = v39;
      }

      a1 = v24;
      v14 = v25;
      *(a1 + v25) = v35;
      v17 += v43;
      if (!--v13)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100845054()
{
  v1 = *(v0 + 112);

  sub_100007BAC((v0 + 120));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1008450B8(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100845290(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100845130(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100845290(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1008450B8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100845290(unint64_t *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a1;
  v48 = sub_1000BC4D4(&qword_1016AAE68, &unk_1013BEB10);
  v4 = *(*(v48 - 8) + 64);
  v5 = __chkstk_darwin(v48);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v35 - v7;
  v44 = type metadata accessor for UUID();
  v8 = *(*(v44 - 8) + 64);
  result = __chkstk_darwin(v44);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v38 = 0;
  v39 = (v16 + 63) >> 6;
  v42 = v10 + 16;
  v45 = v10;
  v40 = v14;
  v41 = v10 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v12 << 6);
    v23 = v49;
    v24 = v44;
    v25 = v45;
    v26 = *(v45 + 16);
    v27 = v43;
    v26(v43, v49[6] + *(v45 + 72) * v22, v44);
    v28 = v22;
    LOBYTE(v23) = *(v23[7] + v22);
    v29 = v46;
    v26(v46, v27, v24);
    v30 = v48;
    v29[*(v48 + 48)] = v23;
    v31 = v29;
    v32 = v47;
    sub_100845584(v31, v47);
    LODWORD(v30) = *(v32 + *(v30 + 48));
    v33 = *(v25 + 8);
    v33(v32, v24);
    result = (v33)(v27, v24);
    v18 = v50;
    if (v30 == 2)
    {
      *(v37 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_10061C248(v37, v36, v38, v49);
      }
    }
  }

  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v39)
    {
      return sub_10061C248(v37, v36, v38, v49);
    }

    v21 = v40[v12];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v50 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100845584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AAE68, &unk_1013BEB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1008455F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_100EC2310(v4, a1, v3);
}

uint64_t sub_100845638(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008456A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberSharingCircle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100845704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10084574C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008457B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100845814()
{
  v1 = *(v0 + 16);
  v2[2] = *(v0 + 24);
  sub_100D43B6C(v1, sub_100845864, v2);
}

uint64_t static PencilSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static PencilSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

uint64_t PencilSendPairingStatusCommandPayload.init(from:)(uint64_t *a1)
{
  result = sub_100845D7C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t PencilSendPairingStatusCommandPayload.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v28 = a2;
  v29 = a3;
  sub_10015049C(v30, v31);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(a2, a3);
  if (v5)
  {
    return sub_100007BAC(v30);
  }

  v12 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = HIWORD(a5);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v12 != 2)
  {
LABEL_14:
    LOBYTE(v13) = 0;
    goto LABEL_15;
  }

  v15 = *(a4 + 16);
  v14 = *(a4 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = HIDWORD(a4) - a4;
  }

  result = sub_100017D5C(a4, a5);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 > 0xFF)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  LOBYTE(v26) = v13;
  sub_1000198E8();
  v28 = FixedWidthInteger.data.getter();
  v29 = v16;
  sub_10015049C(v30, v31);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v28, v29);
  v28 = a4;
  v29 = a5;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v19 = *(a4 + 16);
      v18 = *(a4 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (v20)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_25:
    result = 100 - v17;
    if (!__OFSUB__(100, v17))
    {
      v26 = sub_100845C88(result);
      v27 = v21;
      sub_100776394(&v26, 0);
      v22 = v26;
      v23 = v27;
      Data.append(_:)();
      sub_100016590(v22, v23);
      v24 = v28;
      v25 = v29;
      v26 = v28;
      v27 = v29;
      sub_10015049C(v30, v31);
      sub_100017D5C(v24, v25);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v26, v27);
      sub_100016590(v24, v25);
      return sub_100007BAC(v30);
    }

    goto LABEL_29;
  }

  if (!v12)
  {
    v17 = BYTE6(a5);
    goto LABEL_25;
  }

LABEL_22:
  LODWORD(v17) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v17 = v17;
    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100845C38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100845D7C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100845C88(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_100268BBC(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100845D28(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_13;
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 != 4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100845D7C(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v27, v28);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v29 = v8;
    sub_10015049C(v27, v28);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v12 = v11;
    sub_10015049C(v27, v28);
    v24 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v25 = v13;
    sub_100017D5C(v10, v12);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if ((BYTE1(v26) & 1) == 0)
    {
      sub_10002EA98(v26, v24, v25, &v26);
      sub_100016590(v10, v12);
      v6 = sub_100845D28(v9, v29);
      sub_100007BAC(v27);
      sub_100007BAC(a1);
      return v6;
    }

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C448);
    sub_100017D5C(v10, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100016590(v10, v12);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v17 = 136315138;
      v18 = Data.hexString.getter();
      v20 = sub_1000136BC(v18, v19, &v26);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalid signature length: %s", v17, 0xCu);
      sub_100007BAC(v23);
    }

    v6 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v21, enum case for BinaryEncodingError.encodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v24, v25);
    sub_100016590(v10, v12);
    sub_100016590(v9, v29);
  }

  sub_100007BAC(v27);
  sub_100007BAC(a1);
  return v6;
}

unint64_t sub_100846144(uint64_t a1)
{
  *(a1 + 8) = sub_100846174();
  result = sub_10027FC60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100846174()
{
  result = qword_1016AAE80;
  if (!qword_1016AAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAE80);
  }

  return result;
}

uint64_t sub_1008461E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100846298(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100846214(uint64_t a1)
{
  *(a1 + 8) = sub_100846244();
  result = sub_10064D4CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100846244()
{
  result = qword_1016AAE88;
  if (!qword_1016AAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AAE88);
  }

  return result;
}

uint64_t sub_100846298(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v12, v12[3]);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v6 = result;
  if (v1)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v5);
      goto LABEL_11;
    }

LABEL_9:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = v8;
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    goto LABEL_14;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v8 == 32)
  {
LABEL_12:
    sub_100007BAC(v12);
    sub_100007BAC(a1);
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100846398()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaySoundUserNotification();
  v7 = *(v0 + *(v6 + 32));
  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v0 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

uint64_t sub_100846564()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 1);
  v7 = type metadata accessor for PlaySoundUserNotification();
  *(v0 + *(v7 + 32));

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();

  (*(v2 + 8))(v5, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v0 + *(v7 + 28));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

unint64_t sub_10084678C(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v4 = v1 + *(a1 + 36);
  v5 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v7;
}

uint64_t type metadata accessor for PlaySoundUserNotification()
{
  result = qword_1016AAEE8;
  if (!qword_1016AAEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008468B0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AirPodsLEPairingLockAckEndPoint()
{
  result = qword_1016AAF88;
  if (!qword_1016AAF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008469BC()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x80000001013612D0;
  String.append(_:)(v3);
  v2(&v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 stringForKey:v7];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100846BD4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100846C40(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AB068, &qword_1013BEF60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008476F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_10084774C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for BeaconIdentifier() + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100846E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = type metadata accessor for UUID();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = __chkstk_darwin(v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v25 - v8;
  v9 = sub_1000BC4D4(&qword_1016AB058, &qword_1013BEF58);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for BeaconIdentifier();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1008476F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_10084774C(&qword_101698300, &type metadata accessor for UUID);
  v20 = v31;
  v21 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_100429A68(v23, v29);
  sub_100007BAC(a1);
  return sub_100429ACC(v23);
}

unint64_t sub_1008471A0()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E65644972657375;
  }

  *v0;
  return result;
}

uint64_t sub_1008471EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1008472D8(uint64_t a1)
{
  v2 = sub_1008476F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100847314(uint64_t a1)
{
  v2 = sub_1008476F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100847380(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10084774C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(a1 + 20);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100847430(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10084774C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1008474D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10084774C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10084757C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10084774C(&qword_101696930, &type metadata accessor for UUID);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v3._countAndFlagsBits = 47;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = v1 + *(a1 + 20);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return v7;
}

uint64_t sub_100847648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static UUID.== infix(_:_:)();
}

unint64_t sub_1008476F8()
{
  result = qword_1016AB060;
  if (!qword_1016AB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB060);
  }

  return result;
}

uint64_t sub_10084774C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008477A8()
{
  result = qword_1016AB070;
  if (!qword_1016AB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB070);
  }

  return result;
}

unint64_t sub_100847800()
{
  result = qword_1016AB078;
  if (!qword_1016AB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB078);
  }

  return result;
}

unint64_t sub_100847858()
{
  result = qword_1016AB080;
  if (!qword_1016AB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AB080);
  }

  return result;
}

uint64_t type metadata accessor for PairingConfig()
{
  result = qword_1016AB0E0;
  if (!qword_1016AB0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100847920()
{
  sub_1000E3404();
  if (v0 <= 0x3F)
  {
    sub_1008479B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008479B4()
{
  if (!qword_10169AC10)
  {
    type metadata accessor for AccessoryProductInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169AC10);
    }
  }
}

uint64_t sub_100847A0C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3B0);
  sub_1000076D4(v0, qword_10177B3B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100847A8C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3C8);
  v1 = sub_1000076D4(v0, qword_10177B3C8);
  if (qword_101694978 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B3B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100847B54(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000013;
  *(v1 + 120) = 0x80000001013BF080;
  v9 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  v10 = type metadata accessor for FinderStateInfo(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_workItemQueue;
  type metadata accessor for WorkItemQueue();
  v12 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  UUID.init()();
  *(v1 + v11) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v1 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners) = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStreamStateProvider;
  v14 = sub_1000BC4D4(&qword_1016AB2E0, &qword_1013BF268);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + v13) = AsyncStreamProvider.init()();
  *(v1 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStateManager) = a1;
  return v1;
}

uint64_t sub_100847D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100847E18, a3, 0);
}

uint64_t sub_100847E18()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v26 = *(v1 + v2);
    }

    v27 = *(v1 + v2);
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = v27;
    v5 = result;
    if (!result)
    {
LABEL_18:
      v24 = *(v0 + 112);
      v23 = *(v0 + 120);

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 >= 1)
  {
    v29 = **(v0 + 96);
    v28 = v4 & 0xC000000000000001;
    v6 = v4;

    v7 = v6;
    v8 = 0;
    v30 = v5;
    v31 = v6;
    while (1)
    {
      if (v28)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v8 + 32);
      }

      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v13, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v11;
      sub_1000D2A70(v13, v12, &qword_101698C00, &qword_10138B570);
      LODWORD(v12) = (*(v15 + 48))(v12, 1, v14);

      v18 = *(v0 + 112);
      if (v12 == 1)
      {
        sub_10000B3A8(*(v0 + 112), &qword_101698C00, &qword_10138B570);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_14:
          v20 = 0;
          v22 = 0;
          goto LABEL_15;
        }
      }

      v19 = v16[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_15:

      if (v22 | v20)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      v10 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v9;
      *(v0 + 88) = v29;
      swift_task_create();

      sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
      v7 = v31;
      if (v30 == v8)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008481A4()
{
  *(v1 + 40) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_100848238;

  return daemon.getter();
}

uint64_t sub_100848238(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = a1;

  type metadata accessor for Daemon();
  sub_10084AAE4(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100848390, v5, v4);
}

uint64_t sub_100848390()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[8] = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100848408, v2, 0);
}

uint64_t sub_100848408()
{
  v1 = v0[5];
  v2 = SPFinderStateChangedNotification;
  v3 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1008484E8;
  v5 = v0[8];
  v6 = v0[5];

  return v8(v2, &unk_1013BF250, v6);
}

uint64_t sub_1008484E8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100848624, v4, 0);
}

uint64_t sub_100848624()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v4 = v0[10];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100848714(uint64_t a1, void *a2)
{
  v2[2] = a2;
  v2[3] = *a2;
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1008487D0, a2, 0);
}

uint64_t sub_1008487D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_workItemQueue);
  type metadata accessor for WorkItemQueue.WorkItem();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1008488EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for FinderStateInfo(0);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1008489E8, v1, 0);
}

uint64_t sub_1008489E8()
{
  v1 = v0[3];
  v2 = sub_10084AAE4(&qword_101696CC8, type metadata accessor for FinderStateObserver);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100848AF8;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v7, v6);
}

uint64_t sub_100848AF8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100848C08, v2, 0);
}

uint64_t sub_100848C08()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_101696C40, &unk_1013B8520);
  }

  else
  {
    v4 = v0[8];
    sub_1000DD6A4(v3, v4);
    sub_1000BC4D4(&qword_1016AB2D0, &qword_1013BF210);
    v5 = (sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0) - 8);
    v6 = *(*v5 + 72);
    v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    v9 = v8 + v7;
    v10 = v5[14];
    (*(v2 + 56))(v9, 1, 1, v1);
    sub_1000DD6A4(v4, v9 + v10);
  }

  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];
  v14 = *(v0[3] + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStreamStateProvider);
  AsyncStreamProvider.stream(initialEvents:)();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100848DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = sub_10084AAE4(&qword_101696CC8, type metadata accessor for FinderStateObserver);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = v14;
  *(v16 + 4) = a2;
  (*(v5 + 32))(&v16[v15], v8, v4);
  swift_retain_n();
  sub_10025EDD4(0, 0, v12, &unk_1013BF228, v16);
}

uint64_t sub_100849004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v5[5] = v8;
  v9 = *(v8 - 8);
  v5[6] = v9;
  v5[7] = *(v9 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100849108, a4, 0);
}

uint64_t sub_100849108()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = *(v7 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_workItemQueue);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v1, v3);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100849298(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = *(*(sub_1000BC4D4(&qword_101696C40, &unk_1013B8520) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100849338, a2, 0);
}

uint64_t sub_100849338()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  swift_beginAccess();
  sub_1000D2A70(v1 + v3, v2, &qword_101696C40, &unk_1013B8520);

  return _swift_task_switch(sub_1008493DC, 0, 0);
}

uint64_t sub_1008493DC()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  CheckedContinuation.resume(returning:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100849468(uint64_t a1)
{
  v1[8] = a1;
  v3 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  v1[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for FinderStateInfo(0);
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101696C40, &unk_1013B8520) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1008495C4, a1, 0);
}

uint64_t sub_1008495C4()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  v0[18] = OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache;
  swift_beginAccess();
  sub_1000D2A70(v2 + v3, v1, &qword_101696C40, &unk_1013B8520);
  v0[19] = *(v2 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStateManager);

  return _swift_task_switch(sub_100849680, 0, 0);
}

uint64_t sub_100849680()
{
  v1 = v0[19];
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_100849740;
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[11];

  return unsafeBlocking<A>(_:)(v5, sub_10084A7DC, v4, v6);
}

uint64_t sub_100849740()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_10084986C, v3, 0);
}

uint64_t sub_10084986C()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  sub_1002EF7CC(v0[14], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_10084A844(v2, v5 + v1);
  swift_endAccess();

  return _swift_task_switch(sub_100849940, 0, 0);
}

uint64_t sub_100849940()
{
  v30 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  sub_1000D2A70(v0[17], v1, &qword_101696C40, &unk_1013B8520);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[15];
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &qword_101696C40, &unk_1013B8520);
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v8 = *v5;
    sub_1000DD708(v5);
    if (v8)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v8)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  if (qword_101694980 != -1)
  {
    swift_once();
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B3C8);
  sub_1002EF7CC(v9, v10);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[13];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136446466;
    v18 = sub_1000136BC(v7, v6, &v29);

    *(v16 + 4) = v18;
    *(v16 + 12) = 1024;
    v19 = *v15;
    sub_1000DD708(v15);
    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Refreshed finder state info. Old: %{public}s, new: %{BOOL}d.", v16, 0x12u);
    sub_100007BAC(v17);
  }

  else
  {
    sub_1000DD708(v0[13]);
  }

  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[15];
  v28 = v0[13];
  v23 = v0[10];
  v24 = *(v0[8] + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStreamStateProvider);
  v25 = *(v0[9] + 48);
  sub_1000D2A70(v20, v23, &qword_101696C40, &unk_1013B8520);
  sub_1002EF7CC(v21, v23 + v25);
  AsyncStreamProvider.yield(value:transaction:)();
  sub_10000B3A8(v23, &qword_101696C68, &qword_10138B5B0);
  sub_1000DD708(v21);
  sub_10000B3A8(v20, &qword_101696C40, &unk_1013B8520);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100849C84()
{
  v1 = *(v0 + 120);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver__stateInfoCache, &qword_101696C40, &unk_1013B8520);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStateManager);

  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_workItemQueue);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_darwinListeners);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_finderStreamStateProvider);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FinderStateObserver()
{
  result = qword_1016AB170;
  if (!qword_1016AB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100849D70()
{
  sub_100849E34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100849E34()
{
  if (!qword_1016AB180)
  {
    type metadata accessor for FinderStateInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AB180);
    }
  }
}

uint64_t sub_100849E8C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FinderStateObserver();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100849F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for FinderStateObserver();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10084A000(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FinderStateObserver();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10084A0AC()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_10084A190;

  return sub_1008481A4();
}

uint64_t sub_10084A190()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10084A2A0, v2, 0);
}

uint64_t sub_10084A2A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + OBJC_IVAR____TtC12searchpartyd19FinderStateObserver_workItemQueue);
  type metadata accessor for WorkItemQueue.WorkItem();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10084A3E0()
{
  v1 = *(v0 + 16);
  sub_10084AAE4(&qword_101696CC8, type metadata accessor for FinderStateObserver);
  v2 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100264E2C;
  v4 = *(v0 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10084A4E8()
{
  v1 = *v0;
  type metadata accessor for FinderStateObserver();
  sub_10084AAE4(&unk_1016B1000, type metadata accessor for FinderStateObserver);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10084A5E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100847D6C(a1, a2, v2);
}

uint64_t sub_10084A690()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1002ECF7C();
}

uint64_t sub_10084A744()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100849468(v2);
}

uint64_t sub_10084A7DC()
{
  v1 = *(v0 + 16);
  type metadata accessor for FinderStateInfo(0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_10084A844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084A8D0(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100849004(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10084A9D4()
{
  v2 = *(sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100849298(v0 + v3, v4);
}

uint64_t sub_10084AAE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10084AB2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100848714(a1, v1);
}

uint64_t sub_10084ABC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100849468(v2);
}

uint64_t sub_10084AC5C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3E0);
  v1 = sub_1000076D4(v0, qword_10177B3E0);
  if (qword_101694990 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B3F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10084AD24()
{
  v1[2] = v0;
  v2 = type metadata accessor for IdentityLossResolutionMode();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10084AE4C, 0, 0);
}

uint64_t sub_10084AE4C()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000013;
  *(v1 + 120) = 0x80000001013BF270;
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_1000076D4(v3, qword_10177BA58);
  v0[10] = v5;
  v6 = *(v4 + 16);
  v0[11] = v6;
  v0[12] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = type metadata accessor for CloudStorageDatabase();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_10084AFA0;
  v11 = v0[9];

  return sub_10076717C(v11, 0);
}

uint64_t sub_10084AFA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v11 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = sub_10084B630;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = type metadata accessor for CloudStorageStore(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    *(v4 + 128) = swift_allocObject();
    v6 = sub_10084B0DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10084B0DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  swift_defaultActor_initialize();
  strcpy((v2 + 120), "CloudStorage");
  *(v2 + 133) = 0;
  *(v2 + 134) = -5120;
  type metadata accessor for CloudStorageStore.State(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_stateContinuations) = _swiftEmptyDictionarySingleton;
  *(v2 + 112) = v1;

  return _swift_task_switch(sub_10084B1A8, 0, 0);
}

uint64_t sub_10084B1A8()
{
  v1 = v0[2];
  *(v1 + 128) = v0[16];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v4;
  }

  else
  {
    v24 = 0xD00000000000001DLL;
    v25 = 0x800000010134ACD0;
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v11 = v0[4];
  type metadata accessor for CloudKitStorage();
  v6(v8, v7, v10);
  v13 = *(v1 + 128);
  v14 = sub_10084D6C0(&qword_1016AB430, 255, type metadata accessor for CloudStorageStore);
  sub_1000BC4D4(&qword_1016AB438, &unk_1013BF3B0);
  v15 = type metadata accessor for CloudKitCoordinator.Database();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  (*(v16 + 104))(v19 + v18, enum case for CloudKitCoordinator.Database.private(_:), v15);
  (*(v11 + 104))(v9, enum case for IdentityLossResolutionMode.legacy(_:), v12);
  v20 = async function pointer to CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)[1];

  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_10084B480;
  v22 = v0[8];
  v27 = v0[5];

  return CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(v22, 0xD00000000000001ELL, 0x8000000101361420, v24, v25, v13, v14, v19);
}

uint64_t sub_10084B480(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_10084B6F0;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_10084B5A8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10084B5A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  *(v0[2] + 136) = v0[19];

  v4 = v0[1];
  v5 = v0[2];

  return v4(v5);
}

uint64_t sub_10084B630()
{
  v1 = *(v0[2] + 120);

  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[2];
  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10084B6F0()
{
  v1 = v0[2];
  v2 = *(v1 + 120);

  v3 = *(v1 + 128);

  v4 = v0[18];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = v0[2];
  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10084B7D8()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable() + 1);
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable() + async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10084B880;

  return v5();
}

uint64_t sub_10084B880(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10084B998, v3, 0);
}

uint64_t sub_10084B998()
{
  if (qword_101694988 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B3E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current isManateeAvailable: %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 32);

  return v6(v7);
}

uint64_t sub_10084BAC0()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_10084BB54;

  return daemon.getter();
}

uint64_t sub_10084BB54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_10084D6C0(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10084D6C0(&qword_10169BD10, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_10084BD38;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_10084BD38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10084C32C, v7, 0);
  }

  else
  {
    v8 = v4[4];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[8] = v10;
    *v10 = v6;
    v10[1] = sub_10084BEDC;

    return v12();
  }
}

uint64_t sub_10084BEDC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10084BFEC, v2, 0);
}

uint64_t sub_10084BFEC()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.startup() + 1);
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.startup() + async function pointer to dispatch thunk of CloudKitStorage.startup());
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_10084C094;

  return v5();
}

uint64_t sub_10084C094()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_10084C390, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v3;
    v5[1] = sub_10084C200;
    v6 = v3[2];

    return sub_10084C458();
  }
}

uint64_t sub_10084C200()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10084C3F4;
  }

  else
  {
    v6 = sub_1004A9788;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10084C32C()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10084C390()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10084C3F4()
{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10084C478()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2 && (v3 = objc_opt_self(), v0[3] = v3, v4 = [v3 standardUserDefaults], v5 = String._bridgeToObjectiveC()(), v6 = objc_msgSend(v4, "BOOLForKey:", v5), v5, v4, (v6 & 1) == 0))
  {
    if (qword_101694988 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[4] = sub_1000076D4(v9, qword_10177B3E0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Performing one time DB reset migration to Production.", v12, 2u);
    }

    v13 = v0[2];

    v14 = async function pointer to withTimeout<A>(_:block:)[1];

    v15 = swift_task_alloc();
    v0[5] = v15;
    *v15 = v0;
    v15[1] = sub_10084C6EC;
    v16 = v0[2];

    return withTimeout<A>(_:block:)(v15, 0x8155A43676E00000, 6, &unk_1013BF3A0, v16, &type metadata for () + 8);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10084C6EC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10084CCF0;
  }

  else
  {
    v7 = *(v2 + 16);

    v6 = sub_10084C830;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10084C830()
{
  v0[7] = *(v0[2] + 136);
  v1 = *(&async function pointer to dispatch thunk of CloudKitStorage.reset() + 1);
  v4 = (&async function pointer to dispatch thunk of CloudKitStorage.reset() + async function pointer to dispatch thunk of CloudKitStorage.reset());
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10084C8DC;

  return v4();
}

uint64_t sub_10084C8DC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + 1);
    v10 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
    v8 = swift_task_alloc();
    *(v2 + 72) = v8;
    *v8 = v4;
    v8[1] = sub_10084CA78;
    v9 = *(v2 + 56);

    return v10(0xD000000000000016, 0x800000010134C550);
  }
}

uint64_t sub_10084CA78()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return _swift_task_switch(sub_10084CBBC, v7, 0);
  }
}

uint64_t sub_10084CBBC()
{
  v1 = v0[4];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished one time DB reset migration to Production.", v4, 2u);
  }

  v5 = v0[3];

  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  [v6 setBool:1 forKey:v7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10084CCF0()
{
  v1 = v0[2];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10084CD54()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10084CD9C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CloudStorageService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10084CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloudStorageService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10084CF08(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CloudStorageService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10084CFB0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CloudStorageService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_10084D058()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10084BAC0();
}

uint64_t sub_10084D0E4()
{
  v1 = *v0;
  type metadata accessor for CloudStorageService();
  sub_10084D6C0(&unk_1016AA520, v2, type metadata accessor for CloudStorageService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10084D1DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10084D29C, 0, 0);
}

uint64_t sub_10084D29C()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_10084D320, v1, 0);
}

uint64_t sub_10084D320()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_10084D3D0;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_10084D3D0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_10084D52C, v4, 0);
  }

  else
  {
    (*(v3[4] + 8))(v3[5], v3[3]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10084D52C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_100274F20, 0, 0);
}

uint64_t sub_10084D5A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B3F8);
  sub_1000076D4(v0, qword_10177B3F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10084D624(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10084D1DC(a1, v1);
}

uint64_t sub_10084D6C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10084D708()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016AB440);
  v1 = sub_1000076D4(v0, qword_1016AB440);
  if (qword_1016949F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B500);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10084D7D0()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177B410);
  sub_1000076D4(v0, qword_10177B410);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084D888()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B428);
  sub_1000076D4(v0, qword_10177B428);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084D940()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B440);
  sub_1000076D4(v0, qword_10177B440);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DA00()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177B458);
  sub_1000076D4(v0, qword_10177B458);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DABC()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177B470);
  sub_1000076D4(v0, qword_10177B470);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DB70()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177B488);
  sub_1000076D4(v0, qword_10177B488);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DC24()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177B4A0);
  sub_1000076D4(v0, qword_10177B4A0);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DCDC()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B4B8);
  sub_1000076D4(v0, qword_10177B4B8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DD94()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B4D0);
  sub_1000076D4(v0, qword_10177B4D0);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DE50()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B4E8);
  sub_1000076D4(v0, qword_10177B4E8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10084DF10(char a1)
{
  sub_1000BC4D4(&qword_10169DDF0, &qword_1013BF4F0);
  v3 = swift_allocObject();
  *(v3 + 20) = 0;
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  v4 = sub_1000BC4D4(&qword_10169DDF8, &unk_10139D150);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 24) = AsyncStreamProvider.init()();
  *(v1 + 32) = 1;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v1 + 40) = v7;
  *(v1 + 56) = 0;
  Table.init(_:database:)();
  *(v1 + 48) = a1;
  if (a1)
  {
    *(v1 + 49) = 0;
    if (qword_101694998 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_1000076D4(v8, qword_1016AB440);
    sub_100C63B84(v9);
  }

  else
  {
    *(v1 + 49) = 1;
  }

  return v1;
}

uint64_t sub_10084E05C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  result = *(a1 + 56);
  if (result)
  {
    *(a1 + 56) = 0;

    if ((*(a1 + 48) & 1) == 0)
    {
      v53 = v11;
      v54 = v1;
      v52 = v14;
      sub_10084E560();
      v51 = [objc_opt_self() defaultManager];
      if (qword_101694998 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_1016AB440);
      (*(v4 + 16))(v8, v16, v3);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v55 = v49;
        *v21 = 136446210;
        sub_10085025C(&qword_1016B14E0, &type metadata accessor for URL);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v4;
        v25 = v24;
        v50 = *(v23 + 8);
        v50(v8, v3);
        v26 = sub_1000136BC(v22, v25, &v55);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Purging database: %{public}s", v21, 0xCu);
        sub_100007BAC(v49);
      }

      else
      {

        v50 = *(v4 + 8);
        v50(v8, v3);
      }

      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v55 = 0;
      v30 = v51;
      v31 = [v51 removeItemAtURL:v28 error:&v55];

      v33 = v52;
      v32 = v53;
      if (v31)
      {
        v34 = v55;
      }

      else
      {
        v36 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      URL._bridgeToObjectiveC()(v35);
      v38 = v37;
      v55 = 0;
      v39 = [v30 removeItemAtURL:v37 error:&v55];

      if (v39)
      {
        v40 = v55;
      }

      else
      {
        v42 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      URL._bridgeToObjectiveC()(v41);
      v44 = v43;
      v55 = 0;
      v45 = [v30 removeItemAtURL:v43 error:&v55];

      if (v45)
      {
        v46 = v55;
      }

      else
      {
        v47 = v55;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v54 = 0;
      }

      v48 = v50;
      v50(v32, v3);
      v48(v33, v3);
      return (v48)(v16, v3);
    }
  }

  return result;
}

uint64_t sub_10084E560()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  v6 = v1[2];
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v7 = v1[1];
  v7(v4, v0);
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v7(v4, v0);
  v6(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v7)(v4, v0);
}

uint64_t sub_10084E768(uint64_t a1, uint64_t a2)
{
  if (qword_101694998 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000076D4(v5, qword_1016AB440);
  v7 = *(a1 + 48);
  v8 = sub_10085025C(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase);
  result = static Database.establishConnection(logger:temporary:)(v6, v7, a2, v8);
  if (!v2)
  {
    v10 = *(a1 + 56);
    *(a1 + 56) = result;
  }

  return result;
}

void sub_10084E854(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Connection.TransactionMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 48) & 1) == 0)
  {
    v25 = a3;
    if (qword_101694998 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016AB440);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v8;
      *v16 = 67109376;
      *(v16 + 4) = a1;
      *(v16 + 8) = 1024;
      *(v16 + 10) = a2;
      _os_log_impl(&_mh_execute_header, v14, v15, "Migrate schema %d -> %d", v16, 0xEu);
      v8 = v24;
    }

    a3 = v25;
  }

  if (a2 == 1)
  {
    v17._countAndFlagsBits = 0xD00000000000001FLL;
    v17._object = 0x80000001013513F0;
    Connection.execute(_:)(v17);
    if (!v18)
    {
      v19._object = 0x8000000101351410;
      v19._countAndFlagsBits = 0xD000000000000018;
      Connection.execute(_:)(v19);
      if (!v21)
      {
        __chkstk_darwin(v20);
        *(&v23 - 2) = a3;
        *(&v23 - 1) = v4;
        (*(v9 + 104))(v12, enum case for Connection.TransactionMode.deferred(_:), v8);
        Connection.transaction(_:block:)();
        (*(v9 + 8))(v12, v8);
      }
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v22 = a2;
    *(v22 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_10084EB50()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177B410);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10084ED64(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  __chkstk_darwin(v2);
  v72 = v65 - v4;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v70 = v65 - v8;
  v9 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v68 = v65 - v11;
  v12 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v76 = v65 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v65[0] = v65 - v17;
  v18 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v65 - v20;
  v22 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v65 - v24;
  v26 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v65 - v28;
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v30, qword_10177B410);
  v71 = v6;
  v33 = *(v6 + 56);
  v32 = (v6 + 56);
  v31 = v33;
  v33(v29, 1, 1, v5);
  (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v25, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v35 = sub_1000076D4(v34, qword_10177B428);
  v31(v29, 1, 1, v5);
  v36 = *(v34 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v78 = v34;
  v37(v21, 1, 1, v34);
  v69 = v35;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949B0 != -1)
  {
    swift_once();
  }

  v39 = v78;
  v40 = sub_1000076D4(v78, qword_10177B440);
  v31(v29, 1, 1, v5);
  v65[1] = v38;
  v66 = v37;
  v37(v21, 1, 1, v39);
  v67 = v40;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v41 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v41, qword_10177B458);
  v31(v29, 1, 1, v5);
  v42 = v65[0];
  (*(*(v41 - 8) + 56))(v65[0], 1, 1, v41);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v42, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949C0 != -1)
  {
    swift_once();
  }

  v43 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v43, qword_10177B470);
  v31(v29, 1, 1, v5);
  v44 = v76;
  (*(*(v43 - 8) + 56))(v76, 1, 1, v43);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  v45 = v68;
  if (qword_1016949C8 != -1)
  {
    swift_once();
  }

  v46 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v46, qword_10177B488);
  v31(v29, 1, 1, v5);
  v47 = *(v46 - 8);
  v76 = v32;
  v48 = *(v47 + 56);
  v77 = v5;
  v48(v45, 1, 1, v46);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v46, qword_10177B4A0);
  v31(v29, 1, 1, v77);
  v48(v45, 1, 1, v46);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v45, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949D8 != -1)
  {
    swift_once();
  }

  v49 = v78;
  v50 = sub_1000076D4(v78, qword_10177B4B8);
  v51 = v77;
  v31(v29, 1, 1, v77);
  v52 = v66;
  v66(v21, 1, 1, v49);
  v68 = v50;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  v53 = v51;
  if (qword_1016949E0 != -1)
  {
    swift_once();
  }

  v54 = v78;
  v55 = sub_1000076D4(v78, qword_10177B4D0);
  v31(v29, 1, 1, v53);
  v52(v21, 1, 1, v54);
  v65[0] = v55;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  if (qword_1016949E8 != -1)
  {
    swift_once();
  }

  v56 = v78;
  sub_1000076D4(v78, qword_10177B4E8);
  v31(v29, 1, 1, v53);
  v52(v21, 1, 1, v56);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v29, &qword_10169DE30, &unk_10139D190);
  v57 = sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v58 = v72;
  ExpressionType<>.length.getter();
  v79 = static MACAddress.length.getter();
  v75 = a1;
  v59 = v70;
  == infix<A>(_:_:)();
  v60 = v74;
  v73 = *(v73 + 8);
  (v73)(v58, v74);
  TableBuilder.check(_:)();
  v76 = *(v71 + 8);
  (v76)(v59, v53);
  v66 = v57;
  ExpressionType<>.length.getter();
  v79 = static MACAddress.length.getter();
  == infix<A>(_:_:)();
  v61 = v73;
  (v73)(v58, v60);
  TableBuilder.check(_:)();
  (v76)(v59, v53);
  ExpressionType<>.length.getter();
  v79 = 85;
  == infix<A>(_:_:)();
  v61(v58, v60);
  TableBuilder.check(_:)();
  v63 = v76;
  v62 = v77;
  (v76)(v59, v77);
  ExpressionType<>.length.getter();
  v79 = 32;
  == infix<A>(_:_:)();
  v61(v58, v60);
  TableBuilder.check(_:)();
  return (v63)(v59, v62);
}

uint64_t sub_10084FC58()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  v5 = OBJC_IVAR____TtC12searchpartyd24StandaloneBeaconDatabase_standaloneBeacon;
  v6 = type metadata accessor for Table();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StandaloneBeaconDatabase()
{
  result = qword_1016AB480;
  if (!qword_1016AB480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10084FD68()
{
  result = type metadata accessor for Table();
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

uint64_t sub_10084FE30()
{
  v1 = *(v0 + 40);
  sub_1000BC4D4(&qword_10169DD98, &unk_1013BF4A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v3;
}

uint64_t sub_10084FEB0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t sub_10084FEE8()
{
  v1 = *(v0 + 24);
  sub_1000BC4D4(&qword_10169DD90, &unk_10139D100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = *(v0 + 16);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *(v2 + 32) = v4;
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_10085003C()
{
  v1 = v0[5];
  v3 = *v0;
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_1008500A0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  v2 = *(v0 + 24);
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_1008500FC(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return Database.description.getter(a1, WitnessTable);
}

uint64_t sub_100850148(uint64_t a1)
{
  result = sub_10085025C(&qword_1016AB590, type metadata accessor for StandaloneBeaconDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1008501BC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B500);
  sub_1000076D4(v0, qword_10177B500);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10085025C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008502A4()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = static Data.random(bytes:)();
    v10 = v9;
    v12[0] = v8;
    v12[1] = v9;
    (*(v2 + 104))(v5, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v13 = v8;
    sub_100017D5C(v8, v10);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v5, v1);
    v11 = v13;
    sub_100016590(v13, v10);
    return v11;
  }

  return result;
}

uint64_t sub_1008506F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10084EB50();
}

Swift::Int sub_10085070C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100850780()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1008507D4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A298, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1008508D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100850968;

  return daemon.getter();
}

uint64_t sub_100850968(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v9 = sub_100851E1C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100851E1C(&unk_10169BA60, type metadata accessor for FindMyNetworkPublisherService);
  *v6 = v12;
  v6[1] = sub_100850B44;

  return ActorServiceDaemon.getService<A>()(v7, MyNetworkPublisherService, v9, v10);
}