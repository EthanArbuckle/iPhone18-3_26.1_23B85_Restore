uint64_t sub_10013D350(uint64_t a1)
{
  v2 = sub_10013E2D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10013D38C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10013E040(a1, v6);
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

BOOL sub_10013D3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10013D764(v5, v7);
}

uint64_t sub_10013D438()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_100134068(v0 + 80);
  v5 = *(v0 + 104);
  sub_100037FC8(*(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for XPCActivity_SPD.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCActivity_SPD.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10013D614(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10013D658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10013D6B8()
{
  result = qword_1005ABE80;
  if (!qword_1005ABE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABE80);
  }

  return result;
}

uint64_t sub_10013D730@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

BOOL sub_10013D764(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v7 = 0x616E65746E69616DLL;
  }

  else
  {
    v7 = 0x7974696C697475;
  }

  if (*a2)
  {
    v8 = 0xEB0000000065636ELL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

uint64_t sub_10013D888(uint64_t result)
{
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_49;
  }

  v1 = result;
  result = xpc_dictionary_get_BOOL(result, XPC_ACTIVITY_POWER_NAP);
  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY);
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_SHOULD_WAKE_DEVICE);
  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_A);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_B);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v7 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_C);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v9 = v2;
  if (v3)
  {
    v9 = v2 | 4;
  }

  if (v4)
  {
    v9 |= 2uLL;
  }

  if (v5)
  {
    v9 |= 8uLL;
  }

  if (v6)
  {
    v9 |= 0x10uLL;
  }

  if (v7)
  {
    v9 |= 0x20uLL;
  }

  if (v8)
  {
    v9 |= 0x40uLL;
  }

  if (result)
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY);
  if (result)
  {
    v11 = v10 | 0x100;
  }

  else
  {
    v11 = v10;
  }

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
    goto LABEL_57;
  }

  v12 = xpc_dictionary_get_dictionary(v1, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA);
  if (v12)
  {
    v13 = v12;
    v14 = String.utf8CString.getter();
    string = xpc_dictionary_get_string(v13, (v14 + 32));

    swift_unknownObjectRelease();
    if (string)
    {
      v11 |= 0x2000uLL;
    }
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_ALLOW_BATTERY);
  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
    goto LABEL_58;
  }

  v16 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_MEMORY_INTENSIVE);
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v17 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_CPU_INTENSIVE);
  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_DISK_INTENSIVE);
  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = v11 | 0x200;
  if (!v16)
  {
    v19 = v11;
  }

  if (v17)
  {
    v19 |= 0x400uLL;
  }

  if (v18)
  {
    v19 |= 0x800uLL;
  }

  if (result)
  {
    v20 = v19 | 0x1000;
  }

  else
  {
    v20 = v19;
  }

  v21 = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE);
  swift_unknownObjectRelease();
  if (v21)
  {
    return v20 | 0x4000;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_10013DB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, XPC_ACTIVITY_PRIORITY))
  {
    v4 = String.init(cString:)();
    if (qword_1005A7F70 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1005ABCE0 && v5 == *algn_1005ABCE8)
    {

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = ~v7 & 1;
    }

    v14 = xpc_dictionary_get_BOOL(a1, XPC_ACTIVITY_REPEATING);
    int64 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_DELAY);
    v10 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_GRACE_PERIOD);
    v11 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_INTERVAL);
    result = sub_10013D888(a1);
    v15 = 256;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = v15 | v8;
  }

  else
  {
    swift_unknownObjectRelease();
    int64 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 2;
  }

  *a2 = v13;
  a2[1] = int64;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = result;
  return result;
}

unint64_t sub_10013DD14(unint64_t result)
{
  if (result >= 6)
  {
    _StringGuts.grow(_:)(38);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10013DDD8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_10013DDE8()
{
  result = qword_1005ABEA8;
  if (!qword_1005ABEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEA8);
  }

  return result;
}

uint64_t sub_10013DE3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10013E040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ABEB0, &qword_1004C61F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10013E2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v25 = 0;
  sub_10013E328();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v26;
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 5;
  sub_10013E37C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  result = sub_100004984(a1);
  *a2 = v11;
  *(a2 + 1) = v12 & 1;
  v15 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_10013E2D4()
{
  result = qword_1005ABEB8;
  if (!qword_1005ABEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEB8);
  }

  return result;
}

unint64_t sub_10013E328()
{
  result = qword_1005ABEC0;
  if (!qword_1005ABEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEC0);
  }

  return result;
}

unint64_t sub_10013E37C()
{
  result = qword_1005ABEC8;
  if (!qword_1005ABEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEC8);
  }

  return result;
}

unint64_t sub_10013E3D0()
{
  result = qword_1005ABED8;
  if (!qword_1005ABED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABED8);
  }

  return result;
}

unint64_t sub_10013E424()
{
  result = qword_1005ABEE0;
  if (!qword_1005ABEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEE0);
  }

  return result;
}

unint64_t sub_10013E4A4@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_unknownObjectWeakAssign();
  *(v4 + 88) = 1;
  result = sub_10013B504(v3);
  *a1 = result;
  return result;
}

unint64_t sub_10013E4FC()
{
  result = qword_1005ABEF0;
  if (!qword_1005ABEF0)
  {
    type metadata accessor for XPCActivity_SPD();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEF0);
  }

  return result;
}

unint64_t sub_10013E584()
{
  result = qword_1005ABEF8;
  if (!qword_1005ABEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEF8);
  }

  return result;
}

unint64_t sub_10013E5DC()
{
  result = qword_1005ABF00;
  if (!qword_1005ABF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF00);
  }

  return result;
}

unint64_t sub_10013E634()
{
  result = qword_1005ABF08;
  if (!qword_1005ABF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF08);
  }

  return result;
}

unint64_t sub_10013E68C()
{
  result = qword_1005ABF10;
  if (!qword_1005ABF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF10);
  }

  return result;
}

unint64_t sub_10013E6E4()
{
  result = qword_1005ABF18;
  if (!qword_1005ABF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF18);
  }

  return result;
}

unint64_t sub_10013E73C()
{
  result = qword_1005ABF20;
  if (!qword_1005ABF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF20);
  }

  return result;
}

unint64_t sub_10013E794()
{
  result = qword_1005ABF28;
  if (!qword_1005ABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF28);
  }

  return result;
}

unint64_t sub_10013E7EC()
{
  result = qword_1005ABF30;
  if (!qword_1005ABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF30);
  }

  return result;
}

unint64_t sub_10013E840()
{
  result = qword_1005ABF38;
  if (!qword_1005ABF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF38);
  }

  return result;
}

unint64_t sub_10013E894()
{
  result = qword_1005ABF48;
  if (!qword_1005ABF48)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF48);
  }

  return result;
}

void *CurrentValueSubject.eraseToAnyCurrentValuePublisher()()
{
  v1 = *(*v0 + class metadata base offset for CurrentValueSubject);
  v2 = *(*v0 + class metadata base offset for CurrentValueSubject + 8);
  v3 = *(*v0 + class metadata base offset for CurrentValueSubject + 16);
  type metadata accessor for AnyCurrentValuePublisher();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_allocObject();
  v4 = sub_10013EAD4(v0);

  swift_unownedRelease();
  return v4;
}

uint64_t AnyCurrentValuePublisher.value.getter()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  CurrentValueSubject.value.getter();
}

uint64_t AnyCurrentValuePublisher.deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t AnyCurrentValuePublisher.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_10013EAD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v2[2] = a1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v7 = Publisher.eraseToAnyPublisher()();

  v2[3] = v7;
  return v2;
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationName:rateLimit:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  type metadata accessor for DarwinNotificationPoster();
  v5 = swift_allocObject();
  sub_10013F61C(a1, a2);
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  return v4;
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for DarwinNotificationListener();
  v3 = swift_allocObject();
  sub_1001400CC(a1, 0);
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.description.getter()
{
  type metadata accessor for DarwinNotificationHelper();
  sub_100141D04(&qword_1005AC000, v0, type metadata accessor for DarwinNotificationHelper);
  v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t sub_10013EE14()
{
  v6 = *v0;
  type metadata accessor for DarwinNotificationHelper();
  v1._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t DarwinNotificationHelper.init(notificationHandlers:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DarwinNotificationListener();
  v4 = swift_allocObject();
  sub_1001400CC(a1, 0);
  *(v2 + 16) = v4;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.__allocating_init(subscribedToNames:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for DarwinNotificationListener();
  v3 = swift_allocObject();
  sub_100140F00(a1);
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.init(subscribedToNames:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DarwinNotificationListener();
  v4 = swift_allocObject();
  sub_100140F00(a1);
  *(v2 + 16) = v4;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.init(notificationName:rateLimit:)(void *a1, double a2)
{
  v3 = v2;
  type metadata accessor for DarwinNotificationPoster();
  v6 = swift_allocObject();
  sub_10013F61C(a1, a2);
  *(v3 + 16) = 0;
  *(v3 + 24) = v6;
  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinNotificationHelper.post(bypassRateLimit:)(Swift::Bool bypassRateLimit)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    if (bypassRateLimit)
    {
      v3 = *(v1 + 24);

      sub_10013FCCC();
    }

    else
    {
      v5 = *(v2 + 24);

      sub_10004B564(&qword_1005A9ED8, &qword_1004C6710);
      sub_10001DF0C(&qword_1005A9EE0, &qword_1005A9ED8, &qword_1004C6710);
      Subject<>.send()();
    }
  }

  else
  {
    sub_1000C9214();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinNotificationHelper.setValue(value:)(Swift::UInt64 value)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v2 + 32);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = value;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1001412C0;
    *(v6 + 24) = v5;
    v9[4] = sub_1001412C8;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013EC94;
    v9[3] = &unk_100592010;
    v7 = _Block_copy(v9);
    swift_retain_n();

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_1000C9214();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
}

Swift::UInt64 __swiftcall DarwinNotificationHelper.currentValue(name:)(Swift::String name)
{
  object = name._object;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v3 + 32);
    __chkstk_darwin(name._countAndFlagsBits);

    OS_dispatch_queue.sync<A>(execute:)();

    return v12;
  }

  else
  {
    countAndFlagsBits = name._countAndFlagsBits;
    if (qword_1005A7F90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFC40);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000D01C(countAndFlagsBits, object, &v12);
      _os_log_impl(&_mh_execute_header, v8, v9, "DarwinNotificationHelper initialized for posting. Not registered for %s", v10, 0xCu);
      sub_100004984(v11);
    }

    return 0;
  }
}

uint64_t DarwinNotificationHelper.publisher(name:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v2 + 32);
    __chkstk_darwin(a1);

    sub_10004B564(&qword_1005AC008, &qword_1004C6718);
    OS_dispatch_queue.sync<A>(execute:)();

    return v6;
  }

  else
  {
    sub_1000C9214();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }
}

uint64_t DarwinNotificationHelper.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DarwinNotificationHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10013F61C(void *a1, double a2)
{
  v40 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AC2D8, &qword_1004C6918);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v34 = &v30 - v9;
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v39);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10004B564(&qword_1005A9ED8, &qword_1004C6710);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v41 = v18;
  swift_allocObject();
  *(v2 + 24) = PassthroughSubject.init()();
  v37 = sub_10004B518();
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100141D04(&qword_1005A8670, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  v21 = v38;
  v22 = v40;
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v21 + 40) = _swiftEmptyArrayStorage;
  *(v21 + 32) = v23;
  *(v21 + 16) = v22;
  *(v21 + 48) = a2 != 0.0;
  v42 = *(v21 + 24);
  if (a2 == 0.0)
  {
    swift_allocObject();
    swift_weakInit();
    sub_10001DF0C(&qword_1005AC2E0, &qword_1005A9ED8, &qword_1004C6710);
    v28 = v22;

    Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v24 = v22;

    v25 = v31;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v43 = *(v21 + 32);
    sub_10001DF0C(&qword_1005AC2E0, &qword_1005A9ED8, &qword_1004C6710);
    sub_100141D04(&qword_1005AC2B8, 255, sub_10004B518);
    v26 = v34;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v32 + 8))(v25, v33);

    swift_allocObject();
    swift_weakInit();
    sub_10001DF0C(&qword_1005AC2E8, &qword_1005AC2D8, &qword_1004C6918);
    v27 = v36;
    Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v26, v27);
  }

  swift_beginAccess();
  sub_10004B564(&qword_1005AC2C8, &qword_1004C6910);
  sub_10001DF0C(&qword_1005AC2D0, &qword_1005AC2C8, &qword_1004C6910);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return v21;
}

void sub_10013FCCC()
{
  v1 = v0;
  center = CFNotificationCenterGetDarwinNotifyCenter();
  if (center)
  {
    if (qword_1005A7F78 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFC08);
    swift_retain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136446466;
      v7 = *(v1 + 16);
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = sub_10000D01C(v8, v9, &v13);

      *(v5 + 4) = v10;
      *(v5 + 12) = 1024;
      v11 = *(v1 + 48);

      *(v5 + 14) = v11;

      _os_log_impl(&_mh_execute_header, v3, v4, "Posting %{public}s, rate-limiting: %{BOOL}d.", v5, 0x12u);
      sub_100004984(v6);
    }

    else
    {
    }

    CFNotificationCenterPostNotification(center, *(v1 + 16), 0, 0, 1u);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_10013FEE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10013FCCC();
  }

  return result;
}

uint64_t sub_10013FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = *(a1 + 16);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15[12] = 1;
    sub_100142CC0(v13, v14, a2, 0x100000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014007C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1001400CC(uint64_t a1, int a2)
{
  v3 = v2;
  v29 = a2;
  v28 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  *(v2 + 24) = &_swiftEmptyDictionarySingleton;
  v12 = sub_10004B518();
  v25[0] = "er not available";
  v25[1] = v12;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100141D04(&qword_1005A8670, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 32) = v14;
  *(v2 + 40) = &_swiftEmptyDictionarySingleton;
  *(v2 + 56) = _swiftEmptyArrayStorage;
  v15 = v28;
  *(v2 + 16) = v28;
  *(v2 + 48) = v29;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15;
    v13 = sub_10022BC70(*(v15 + 16), 0);
    v18 = sub_10023E65C(aBlock, v13 + 4, v16, v17);

    result = sub_10000E3F8();
    if (v18 != v16)
    {
      goto LABEL_8;
    }

    v20 = *(v3 + 32);
  }

  else
  {
    v20 = v14;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v13;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100141E34;
  *(v22 + 24) = v21;
  aBlock[4] = sub_100141E30;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100592208;
  v23 = _Block_copy(aBlock);

  dispatch_sync(v20, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v3;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_100140520(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC2A0, &qword_1004C6900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v71 = &v63 - v6;
  v70 = sub_10004B564(&qword_1005AC2A8, &qword_1004C6908);
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v70);
  v69 = &v63 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 32);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v68 = v15;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (qword_1005A7F90 != -1)
  {
LABEL_32:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v67 = sub_10000A6F0(v17, qword_1005DFC40);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Setup darwin callback handlers", v20, 2u);
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v66 = (v7 + 8);
    v65 = *(v2 + 48);
    v64 = v81;
    v24 = (a1 + 40);
    *&v21 = 136315138;
    v63 = v21;
    v73 = v2;
    v7 = v71;
    while (1)
    {
      v74 = v24;
      v75 = v22;
      v27 = *(v24 - 1);
      v28 = *v24;
      v29 = qword_1005A7F80;

      if (v29 != -1)
      {
        v30 = swift_once();
      }

      v31 = *(static DarwinNotificationManager.shared + 24);
      __chkstk_darwin(v30);
      v72 = v32;
      *(&v63 - 4) = v32;
      *(&v63 - 3) = v27;
      *(&v63 - 2) = v28;
      sub_10004B564(&qword_1005AC008, &qword_1004C6718);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v76 = v27;
      v77 = v23;
      v33 = v68;
      v79 = v68;
      v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
      sub_10004B518();
      sub_10001DF0C(&qword_1005AC2B0, &qword_1005AC008, &qword_1004C6718);
      sub_100141D04(&qword_1005AC2B8, 255, sub_10004B518);
      v35 = v33;
      v36 = v69;
      Publisher.receive<A>(on:options:)();
      sub_100141D4C(v7);

      swift_allocObject();
      v2 = v73;
      swift_weakInit();
      sub_10001DF0C(&qword_1005AC2C0, &qword_1005AC2A8, &qword_1004C6908);
      v37 = v70;
      Publisher<>.sink(receiveValue:)();

      (*v66)(v36, v37);
      swift_beginAccess();
      sub_10004B564(&qword_1005AC2C8, &qword_1004C6910);
      sub_10001DF0C(&qword_1005AC2D0, &qword_1005AC2C8, &qword_1004C6910);
      AnyCancellable.store<A>(in:)();
      swift_endAccess();

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = v63;
        v42 = v76;
        *(v40 + 4) = sub_10000D01C(v76, v28, aBlock);
        _os_log_impl(&_mh_execute_header, v38, v39, "Setting up darwin callback handler for %s", v40, 0xCu);
        sub_100004984(v41);
        v2 = v73;
      }

      else
      {

        v42 = v76;
      }

      a1 = String.utf8CString.getter();
      out_token = 0;
      v23 = v77;
      if ((v65 & 1) != 0 || (v43 = *(v72 + 24), OSAllocatedUnfairLock.callAsFunction<A>(_:)(), (aBlock[0] & 1) == 0))
      {
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = swift_allocObject();
        v45[2] = v44;
        v45[3] = v42;
        v45[4] = v28;
        v81[2] = sub_100141DBC;
        v81[3] = v45;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v81[0] = sub_100141B9C;
        v81[1] = &unk_100592190;
        v46 = _Block_copy(aBlock);

        notify_register_dispatch((a1 + 32), &out_token, v35, v46);
        _Block_release(v46);
      }

      else
      {
        notify_register_check((a1 + 32), &out_token);
      }

      v47 = out_token;
      swift_beginAccess();
      v48 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v2 + 24);
      v50 = v79;
      *(v2 + 24) = 0x8000000000000000;
      v51 = sub_1000110D8(v42, v28);
      v53 = v50[2];
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v52;
      if (v50[3] < v56)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v62 = v51;
      sub_100204438();
      v51 = v62;
      v2 = v73;
      if (v57)
      {
LABEL_7:
        v25 = v51;

        v26 = v79;
        *(v79[7] + 4 * v25) = v47;
        goto LABEL_8;
      }

LABEL_24:
      v26 = v79;
      v79[(v51 >> 6) + 8] |= 1 << v51;
      v59 = (v26[6] + 16 * v51);
      *v59 = v42;
      v59[1] = v28;
      *(v26[7] + 4 * v51) = v47;
      v60 = v26[2];
      v55 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v55)
      {
        goto LABEL_30;
      }

      v26[2] = v61;
LABEL_8:
      *(v2 + 24) = v26;
      swift_endAccess();

      v24 = v74 + 2;
      v22 = v75 - 1;
      if (v75 == 1)
      {
        return;
      }
    }

    sub_10022F774(v56, isUniquelyReferenced_nonNull_native);
    v51 = sub_1000110D8(v42, v28);
    if ((v57 & 1) != (v58 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_23:
    if (v57)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }
}

uint64_t sub_100140F00(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *(v1 + 24) = &_swiftEmptyDictionarySingleton;
  v11 = sub_10004B518();
  v18[0] = "er not available";
  v18[1] = v11;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100141D04(&qword_1005A8670, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *(v1 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 40) = &_swiftEmptyDictionarySingleton;
  *(v1 + 56) = _swiftEmptyArrayStorage;
  *(v1 + 16) = sub_1002089E4(_swiftEmptyArrayStorage);
  *(v1 + 48) = 0;
  v12 = *(v1 + 32);
  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v2;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100141CBC;
  *(v15 + 24) = v13;
  aBlock[4] = sub_100141E30;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100592118;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v12, v16);
  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001412C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001412F0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 24);

  for (i = 0; v4; result = notify_cancel(*(*(v1 + 56) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      v11 = *(v0 + 16);

      v12 = *(v0 + 24);

      v13 = *(v0 + 40);

      v14 = *(v0 + 56);

      return v0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100141408()
{
  sub_1001412F0();

  return swift_deallocClassInstance();
}

uint64_t sub_10014143C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    swift_beginAccess();
    v13 = *(v2 + 24);
    if (*(v13 + 16) && (v14 = sub_1000110D8(a1, a2), (v15 & 1) != 0))
    {
      v16 = 0;
      v17 = *(*(v13 + 56) + 4 * v14);
    }

    else
    {
      v17 = 0;
      v16 = 1;
    }

    swift_endAccess();
    v18[8] = v16;
    return sub_100142E58(a1, a2, v17 | (v16 << 32));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001415C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 40);
  if (*(v8 + 16) && (v9 = sub_1000110D8(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
    sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8);
    result = Publisher.eraseToAnyPublisher()();
    v13 = result;
  }

  else
  {
    swift_endAccess();
    v14 = sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = PassthroughSubject.init()();
    swift_beginAccess();

    v18 = *(a1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    sub_100453810(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 40) = v20;
    swift_endAccess();
    sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8);
    v13 = Publisher.eraseToAnyPublisher()();
  }

  *a4 = v13;
  return result;
}

uint64_t sub_1001417C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141830(v1, v2);
  }

  return result;
}

uint64_t sub_100141830(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[4];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1005A7F90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFC40);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10000D01C(a1, a2, &v31);
    _os_log_impl(&_mh_execute_header, v14, v15, "Invoking callback, notification, %s", v16, 0xCu);
    sub_100004984(v17);
  }

  v18 = sub_10014143C(a1, a2);
  v19 = v3[2];
  if (*(v19 + 16))
  {
    v20 = sub_1000110D8(a1, a2);
    if (v21)
    {
      v22 = *(v19 + 56) + 16 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v31 = a1;
      v32 = a2;
      v33 = v18;

      v24(&v31);
    }
  }

  swift_beginAccess();
  v25 = v3[5];
  if (!*(v25 + 16))
  {
    return swift_endAccess();
  }

  v26 = sub_1000110D8(a1, a2);
  if ((v27 & 1) == 0)
  {
    return swift_endAccess();
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();
  v31 = a1;
  v32 = a2;
  v33 = v18;

  PassthroughSubject.send(_:)();
}

uint64_t sub_100141B28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141830(a3, a4);
  }

  return result;
}

uint64_t sub_100141B9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100141BF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = sub_10014143C(v3, v4);
  *a1 = result;
  return result;
}

unint64_t sub_100141C68()
{
  result = qword_1005AC280;
  if (!qword_1005AC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC280);
  }

  return result;
}

void sub_100141CBC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_100140520(v1);
}

uint64_t sub_100141D04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100141D4C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AC2A0, &qword_1004C6900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100141DC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *DarwinNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_1005A7F80 != -1)
  {
    swift_once();
  }

  return &static DarwinNotificationManager.shared;
}

uint64_t sub_100141EC8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC08);
  sub_10000A6F0(v0, qword_1005DFC08);
  return Logger.init(subsystem:category:)();
}

uint64_t DarwinNotification.description.getter(uint64_t a1, void *a2)
{
  sub_100142FC8();
  v4._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  return 91;
}

BOOL static DarwinNotification.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int DarwinNotification.hashValue.getter(uint64_t a1, uint64_t a2, Swift::UInt64 a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100142158()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1001421BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1001421F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL sub_100142260(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void *sub_1001422BC()
{
  type metadata accessor for DarwinNotificationManager();
  v0 = swift_allocObject();
  result = sub_100142A58();
  static DarwinNotificationManager.shared = v0;
  return result;
}

uint64_t static DarwinNotificationManager.shared.getter()
{
  if (qword_1005A7F80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100142354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 32);

  v10 = sub_1000110D8(a2, a3);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v13 = sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = PassthroughSubject.init()();
    swift_beginAccess();

    v17 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_100453810(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 32) = v21;
    swift_endAccess();
    sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8);
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
  sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8);
LABEL_6:
  v19 = Publisher.eraseToAnyPublisher()();

  *a4 = v19;
  return result;
}

Swift::Void __swiftcall DarwinNotificationManager.setUp()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_10014301C;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10013B278;
  v4[3] = &unk_100592280;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v3);
  _Block_release(v3);
}

uint64_t sub_100142638(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
    {
      v4 = String.init(cString:)();
      v6 = v5;
      if (qword_1005A7F78 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005DFC08);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136446210;

        v12 = DarwinNotification.description.getter(v4, v6);
        v14 = v13;

        v15 = sub_10000D01C(v12, v14, &v19);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "On XPC event stream, com.apple.notifyd.matching, notification: %{public}s)", v10, 0xCu);
        sub_100004984(v11);
      }

      v16 = *(v3 + 24);
      __chkstk_darwin(v17);
      sub_10004B564(&qword_1005AC3F0, &unk_1004C6A30);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (v19)
      {
        v18 = type metadata accessor for Transaction();
        __chkstk_darwin(v18);
        static Transaction.named<A>(_:with:)();
      }
    }
  }

  return result;
}

uint64_t sub_100142930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 32);
  if (*(v9 + 16))
  {

    v10 = sub_1000110D8(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

uint64_t DarwinNotificationManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t DarwinNotificationManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_100142A58()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = sub_10004B518();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v12[1] = _swiftEmptyArrayStorage;
  sub_10014311C();
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v0[3] = v10;
  v0[4] = &_swiftEmptyDictionarySingleton;
  return v0;
}

void sub_100142CC0(int a1, int a2, uint64_t state64, uint64_t token)
{
  if ((token & 0x100000000) != 0)
  {
    out_token = 0;
    v5 = String.utf8CString.getter();
    notify_register_check((v5 + 32), &out_token);

    if (out_token == -1)
    {
      if (qword_1005A7F78 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000A6F0(v6, qword_1005DFC08);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Failed notify_register_check.", v9, 2u);
      }
    }

    else
    {
      notify_set_state(out_token, state64);
      notify_cancel(out_token);
    }
  }

  else
  {

    notify_set_state(token, state64);
  }
}

uint64_t sub_100142E58(int a1, int a2, uint64_t token)
{
  if ((token & 0x100000000) == 0)
  {
    state64 = 0;
    notify_get_state(token, &state64);
    return state64;
  }

  out_token = 0;
  v3 = String.utf8CString.getter();
  notify_register_check((v3 + 32), &out_token);

  if (out_token != -1)
  {
    state64 = 0;
    notify_get_state(out_token, &state64);
    notify_cancel(out_token);
    return state64;
  }

  if (qword_1005A7F78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFC08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed notify_register_check.", v8, 2u);
  }

  return 0;
}

unint64_t sub_100142FC8()
{
  result = qword_1005AC2F0;
  if (!qword_1005AC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC2F0);
  }

  return result;
}

unint64_t sub_100143028()
{
  result = qword_1005AC2F8;
  if (!qword_1005AC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC2F8);
  }

  return result;
}

uint64_t sub_1001430D0()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  return PassthroughSubject.send(_:)();
}

unint64_t sub_10014311C()
{
  result = qword_1005A8670;
  if (!qword_1005A8670)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8670);
  }

  return result;
}

uint64_t sub_100143174()
{
  URLComponents.init()();
  URLComponents.scheme.setter();
  Account.appHostName.getter();
  URLComponents.host.setter();
  v0._countAndFlagsBits = Account.dsid.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 47;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static SystemInfo.uniqueDeviceID.getter();
  String.append(_:)(v2);

  return URLComponents.path.setter();
}

uint64_t type metadata accessor for AckAlertEndpoint()
{
  result = qword_1005AC450;
  if (!qword_1005AC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001432D4()
{
  result = type metadata accessor for URLComponents();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100143340@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1001433A8(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC550, &qword_1004C6CB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100145204();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v2[7];
  v12 = v2[5];
  v56 = v2[6];
  v57 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v58 = v2[8];
  v59 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v52 = v2[2];
  v53 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v54 = v2[4];
  v55 = v18;
  v19 = v2[1];
  v51[0] = *v2;
  v51[1] = v19;
  v47 = v56;
  v48 = v13;
  v20 = v2[9];
  v49 = v58;
  v50 = v20;
  v43 = v52;
  v44 = v17;
  v45 = v54;
  v46 = v12;
  v41 = v51[0];
  v42 = v16;
  v40 = 0;
  sub_100005F04(v51, &v30, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v21 = v60;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v21)
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    sub_100002CE0(&v30, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    sub_100002CE0(&v30, &qword_1005A9328, &unk_1004C7F20);
    v22 = type metadata accessor for AckMeAlertRequestContent();
    v23 = *(v22 + 20);
    v29 = 1;
    type metadata accessor for ClientContext();
    sub_1000090E0(&qword_1005AC568, type metadata accessor for ClientContext);
    v10 = v4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = (v2 + *(v22 + 24));
    v25 = *v24;
    v26 = v24[1];
    v29 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t sub_1001436B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ClientContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AC570, &qword_1004C6CB8);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for AckMeAlertRequestContent();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v34 = a1;
  sub_100011AEC(a1, v16);
  sub_100145204();
  v17 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v34);
  }

  v33 = v3;
  v46 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v43;
  v14[6] = v42;
  v14[7] = v18;
  v19 = v45;
  v14[8] = v44;
  v14[9] = v19;
  v20 = v39;
  v14[2] = v38;
  v14[3] = v20;
  v21 = v41;
  v14[4] = v40;
  v14[5] = v21;
  v22 = v37;
  *v14 = v36;
  v14[1] = v22;
  v35 = 1;
  sub_1000090E0(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v6, v14 + *(v11 + 20));
  v35 = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v24;
  v25 = v23;
  (*(v31 + 8))(v10, v32);
  v26 = (v14 + *(v11 + 24));
  v27 = v33;
  *v26 = v25;
  v26[1] = v27;
  sub_100145300(v14, v30, type metadata accessor for AckMeAlertRequestContent);
  sub_100004984(v34);
  return sub_100144ED4(v14, type metadata accessor for AckMeAlertRequestContent);
}

uint64_t sub_100143AE0()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x64497472656C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_100143B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100143C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100143B6C(uint64_t a1)
{
  v2 = sub_100145204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100143BA8(uint64_t a1)
{
  v2 = sub_100145204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100143C20(uint64_t a1)
{
  v2 = sub_100145368();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100143C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64497472656C61 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100143D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[184] = a3;
  v3[183] = a2;
  v3[182] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[185] = v4;
  v5 = *(v4 - 8);
  v3[186] = v5;
  v6 = *(v5 + 64) + 15;
  v3[187] = swift_task_alloc();
  v7 = type metadata accessor for AckMeAlertRequestContent();
  v3[188] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[189] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v3[190] = v9;
  v10 = *(v9 - 8);
  v3[191] = v10;
  v11 = *(v10 + 64) + 15;
  v3[192] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v3[193] = swift_task_alloc();
  v3[194] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  v14 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v3[197] = swift_task_alloc();
  v3[198] = swift_task_alloc();

  return _swift_task_switch(sub_100143F98, 0, 0);
}

uint64_t sub_100143F98()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[182];
  v0[199] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[200] = v11;
  *v11 = v0;
  v11[1] = sub_100144154;
  v12 = v0[198];
  v13 = v0[195];
  v14 = v0[193];
  v15 = v0[192];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_100144154()
{
  v1 = *v0;
  v2 = *(*v0 + 1600);
  v3 = *(*v0 + 1584);
  v4 = *(*v0 + 1576);
  v5 = *(*v0 + 1568);
  v6 = *(*v0 + 1552);
  v10 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_100145300(v3, v4, type metadata accessor for ClientContext);
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v1 + 1608) = v8;
  *v8 = v10;
  v8[1] = sub_100144330;

  return daemon.getter();
}

uint64_t sub_100144330(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1608);
  v12 = *v1;
  *(v3 + 1616) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1624) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000090E0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000090E0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10014450C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10014450C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1624);
  v6 = *v2;
  v4[204] = a1;
  v4[205] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001448E8, 0, 0);
  }

  else
  {
    v7 = v4[202];

    v8 = swift_task_alloc();
    v4[206] = v8;
    *v8 = v6;
    v8[1] = sub_10014469C;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10014469C()
{
  v1 = *(*v0 + 1648);
  v2 = *(*v0 + 1632);
  v4 = *v0;

  return _swift_task_switch(sub_1001447AC, v2, 0);
}

uint64_t sub_1001447AC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100144A44, 0, 0);
}

uint64_t sub_1001448E8()
{
  v1 = v0[202];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[191];
  v6 = v0[190];
  v7 = v0[184];
  v8 = v0[182];

  sub_100144ED4(v4, type metadata accessor for ClientContext);
  (*(v5 + 8))(v8, v6);
  sub_100144ED4(v3, type metadata accessor for ClientContext);

  v9 = v0[205];
  v10 = v0[198];
  v11 = v0[197];
  v12 = v0[196];
  v13 = v0[195];
  v14 = v0[194];
  v15 = v0[193];
  v16 = v0[192];
  v17 = v0[189];
  v18 = v0[187];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100144A44()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1512);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1496);
  v7 = *(v0 + 1488);
  v8 = *(v0 + 1480);
  v9 = *(v0 + 1472);
  v10 = *(v0 + 1464);

  v11 = *(v0 + 992);
  *v4 = *(v0 + 976);
  v4[1] = v11;
  v12 = *(v0 + 1008);
  v13 = *(v0 + 1024);
  v14 = *(v0 + 1056);
  v4[4] = *(v0 + 1040);
  v4[5] = v14;
  v4[2] = v12;
  v4[3] = v13;
  v15 = *(v0 + 1072);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 1120);
  v4[8] = *(v0 + 1104);
  v4[9] = v17;
  v4[6] = v15;
  v4[7] = v16;
  sub_100144E70(v3, v4 + *(v5 + 20));
  v18 = (v4 + *(v5 + 24));
  *v18 = v10;
  v18[1] = v9;
  v19 = type metadata accessor for JSONEncoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v6 = sub_10019E890;
  v6[1] = 0;
  (*(v7 + 104))(v6, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v8);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1000090E0(&qword_1005AC490, type metadata accessor for AckMeAlertRequestContent);
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v24 = *(v0 + 1592);
  v25 = *(v0 + 1584);
  if (v1)
  {
    v26 = *(v0 + 1528);
    v27 = *(v0 + 1520);
    v28 = *(v0 + 1512);
    v29 = *(v0 + 1456);

    (*(v26 + 8))(v29, v27);
    sub_100144ED4(v28, type metadata accessor for AckMeAlertRequestContent);
    sub_100144ED4(v25, type metadata accessor for ClientContext);

    v30 = *(v0 + 1584);
    v31 = *(v0 + 1576);
    v32 = *(v0 + 1568);
    v33 = *(v0 + 1560);
    v34 = *(v0 + 1552);
    v35 = *(v0 + 1544);
    v36 = *(v0 + 1536);
    v37 = *(v0 + 1512);
    v38 = *(v0 + 1496);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v41 = v22;
    v42 = v23;
    v49 = *(v0 + 1576);
    v50 = *(v0 + 1568);
    v51 = *(v0 + 1560);
    v52 = *(v0 + 1552);
    v53 = *(v0 + 1544);
    v54 = *(v0 + 1536);
    v43 = *(v0 + 1528);
    v44 = *(v0 + 1520);
    v45 = *(v0 + 1512);
    v55 = *(v0 + 1496);
    v46 = *(v0 + 1456);

    (*(v43 + 8))(v46, v44);
    sub_100144ED4(v45, type metadata accessor for AckMeAlertRequestContent);
    sub_100144ED4(v25, type metadata accessor for ClientContext);

    sub_10002CF44(v41, v42);

    sub_10001A794(v41, v42);

    v47 = *(v0 + 8);
    v48 = *(v0 + 1592);

    return v47(v48, v41, v42);
  }
}

uint64_t type metadata accessor for AckMeAlertRequestContent()
{
  result = qword_1005AC4F0;
  if (!qword_1005AC4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100144E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100144ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100144F5C()
{
  sub_100144FE8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100144FE8()
{
  if (!qword_1005AC500)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AC500);
    }
  }
}

uint64_t sub_100145038(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100145080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001450D4()
{
  result = qword_1005AC538;
  if (!qword_1005AC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC538);
  }

  return result;
}

uint64_t sub_100145128(uint64_t a1)
{
  *(a1 + 8) = sub_1000090E0(&qword_1005AC540, type metadata accessor for AckMeAlertRequestContent);
  result = sub_1000090E0(&qword_1005AC490, type metadata accessor for AckMeAlertRequestContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001451B0()
{
  result = qword_1005AC548;
  if (!qword_1005AC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC548);
  }

  return result;
}

unint64_t sub_100145204()
{
  result = qword_1005AC558;
  if (!qword_1005AC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC558);
  }

  return result;
}

unint64_t sub_100145258()
{
  result = qword_1005AC560;
  if (!qword_1005AC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC560);
  }

  return result;
}

unint64_t sub_1001452AC()
{
  result = qword_1005AC578;
  if (!qword_1005AC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC578);
  }

  return result;
}

uint64_t sub_100145300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100145368()
{
  result = qword_1005AC588;
  if (!qword_1005AC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC588);
  }

  return result;
}

unint64_t sub_1001453D0()
{
  result = qword_1005AC590;
  if (!qword_1005AC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC590);
  }

  return result;
}

unint64_t sub_100145428()
{
  result = qword_1005AC598;
  if (!qword_1005AC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC598);
  }

  return result;
}

unint64_t sub_100145480()
{
  result = qword_1005AC5A0;
  if (!qword_1005AC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC5A0);
  }

  return result;
}

uint64_t type metadata accessor for UpdateFenceEndpoint()
{
  result = qword_1005AC600;
  if (!qword_1005AC600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100145548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 255)
  {
    sub_100002CE0(a1, &qword_1005AC648, &unk_1004C6EE8);
    sub_1001FEC88(a2, a3, &v11);

    return sub_100002CE0(&v11, &qword_1005AC648, &unk_1004C6EE8);
  }

  else
  {
    v6 = *(a1 + 16);
    v11 = *a1;
    v12[0] = v6;
    *(v12 + 9) = *(a1 + 25);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1004521C0(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_100145624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100452450(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000110D8(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100202888();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1001FFBFC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10014571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1004525D4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1000110D8(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100202A1C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1001FFDAC(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_100145824(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Location();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC640, &qword_1004C6EE0);
    sub_1001FED6C(a2);
    v14 = type metadata accessor for Handle();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100002CE0(v8, &qword_1005AC640, &qword_1004C6EE0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100452B70(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for Handle();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100145A50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_10004B564(&qword_1005AAC58, &qword_1004C46E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100002CE0(a1, &qword_1005AAC58, &qword_1004C46E0);
    sub_1001FEF48(a2, a3, v10);
    sub_1000049D0(a2, a3);
    return sub_100002CE0(v10, &qword_1005AAC58, &qword_1004C46E0);
  }

  else
  {
    sub_100149968(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100453364(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000049D0(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_100145C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SecureLocationsSubscription();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100002CE0(a1, &qword_1005A9EC8, &unk_1004C3420);
    sub_1001FF0F8(a2, a3, v10);

    return sub_100002CE0(v10, &qword_1005A9EC8, &unk_1004C3420);
  }

  else
  {
    sub_100149900(a1, v14, type metadata accessor for SecureLocationsSubscription);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1004534D8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100145DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100453644(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for Destination();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1001FDA80(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_100204410();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for Destination();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100200814(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for Destination();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_100145FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FenceRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100002CE0(a1, &qword_1005AE720, &qword_1004CA2F0);
    sub_1001FF314(a2, a3, v10);

    return sub_100002CE0(v10, &qword_1005AE720, &qword_1004CA2F0);
  }

  else
  {
    sub_100149900(a1, v14, type metadata accessor for FenceRecord);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100453B5C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100146188(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC670, &qword_1004C6F18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC670, &qword_1004C6F18);
    sub_1001FF504(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100002CE0(v8, &qword_1005AC670, &qword_1004C6F18);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100454044(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001463BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100010BD4(a1, &v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_100454254(&v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1001FF528(a2, &v10);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    if (v11)
    {
      return sub_100004984(&v10);
    }
  }

  return result;
}

uint64_t sub_1001464BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100002CE0(a1, &unk_1005AE5B0, &qword_1004C32F0);
    sub_1001FF60C(a2, v8);
    v14 = type metadata accessor for ClientID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100002CE0(v8, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100454624(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for ClientID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001466E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100454A28(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for Handle();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1001FD93C(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_100205330();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for Handle();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1002016B4(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for Handle();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001468A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC680, &qword_1004C6F28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC680, &qword_1004C6F28);
    sub_1001FF7E4(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100002CE0(v8, &qword_1005AC680, &qword_1004C6F28);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100454E24(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100146ADC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC660, &unk_1004DD170);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC660, &unk_1004DD170);
    sub_1001FF9E4(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100002CE0(v8, &qword_1005AC660, &unk_1004DD170);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100455034(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100146D10(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC650, &qword_1004C6EF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC650, &qword_1004C6EF8);
    sub_1001FFA08(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100002CE0(v8, &qword_1005AC650, &qword_1004C6EF8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100455244(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

void sub_100146F44()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1004525D4(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x80000001004E2970, isUniquelyReferenced_nonNull_native);
  v1 = [objc_opt_self() currentDevice];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 serverFriendlyDescription];

  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1004525D4(v4, v6, 0xD000000000000011, 0x80000001004E2990, v7);
  v8 = sub_10019E938();
  v10 = v9;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1004525D4(v8, v10, 0x6567412D72657355, 0xEA0000000000746ELL, v11);
  if (static SystemInfo.isInternalBuild.getter())
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 BOOLForKey:v13];

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_1004525D4(1702195828, 0xE400000000000000, 0xD000000000000018, 0x80000001004DDD20, v15);
    }
  }
}

uint64_t sub_10014715C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a3;
  v7 = type metadata accessor for Fence.MonitorRegion.Source();
  v146 = *(v7 - 8);
  v147 = v7;
  v8 = *(v146 + 64);
  v9 = __chkstk_darwin(v7);
  v144 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v145 = &v134 - v11;
  v12 = type metadata accessor for Fence.MonitorRegion();
  v149 = *(v12 - 8);
  v150 = v12;
  v13 = *(v149 + 64);
  v14 = __chkstk_darwin(v12);
  v148 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v143 = &v134 - v16;
  v142 = type metadata accessor for PlaceMark();
  v141 = *(v142 - 8);
  v17 = *(v141 + 64);
  __chkstk_darwin(v142);
  v140 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v152 = (&v134 - v21);
  v151 = type metadata accessor for Fence.AcceptanceStatus();
  v22 = *(v151 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v151);
  v26 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v134 - v27;
  v29 = type metadata accessor for Fence.Variant();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = a1;
  sub_1001497E4(a1, a4, type metadata accessor for ClientContext);
  v34 = a2;
  v35 = (Fence.shouldDeleteFence.getter() & 1) == 0;
  updated = type metadata accessor for UpdateFenceRequestContent();
  *(a4 + updated[10]) = v35;
  v155 = v34;
  Fence.variant.getter();
  v37 = (*(v30 + 88))(v33, v29);
  if (v37 != enum case for Fence.Variant.oneTime(_:) && v37 != enum case for Fence.Variant.recurring(_:) && v37 != enum case for Fence.Variant.scheduled(_:))
  {
    goto LABEL_33;
  }

  v38 = v37 == enum case for Fence.Variant.oneTime(_:);
  (*(v30 + 8))(v33, v29);
  *(a4 + updated[15]) = v38;
  Fence.acceptanceStatus.getter();
  v39 = v151;
  (*(v22 + 16))(v26, v28, v151);
  v40 = (*(v22 + 88))(v26, v39);
  if (v40 == enum case for Fence.AcceptanceStatus.pendingHidden(_:))
  {
    v41 = 0xE600000000000000;
    v42 = 0x6E6564646948;
  }

  else if (v40 == enum case for Fence.AcceptanceStatus.pending(_:))
  {
    v41 = 0xE700000000000000;
    v42 = 0x676E69646E6550;
  }

  else
  {
    if (v40 != enum case for Fence.AcceptanceStatus.accepted(_:))
    {
      goto LABEL_33;
    }

    v41 = 0xE800000000000000;
    v42 = 0x6465747065636341;
  }

  (*(v22 + 8))(v28, v39);
  v43 = (a4 + updated[24]);
  *v43 = v42;
  v43[1] = v41;
  v44 = v152;
  Fence.ckRecordIdentifier.getter();
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_100002CE0(v44, &qword_1005A96E0, &qword_1004C2A80);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v47 = UUID.uuidString.getter();
    v48 = v49;
    (*(v46 + 8))(v44, v45);
  }

  v50 = (a4 + updated[22]);
  *v50 = v47;
  v50[1] = v48;
  v51 = Fence.ckRecordZoneOwnerName.getter();
  v52 = (a4 + updated[23]);
  *v52 = v51;
  v52[1] = v53;
  v54 = a4;
  v55 = v153;
  v56 = *v153;
  v157 = v153[1];
  v57 = v157;
  v158 = v56;
  *(v54 + updated[25]) = v56;
  *(v54 + updated[9]) = v57;
  v58 = v55[5];
  v59 = (v54 + updated[19]);
  *v59 = v55[4];
  v59[1] = v58;
  v60 = v55[9];
  *(v54 + updated[6]) = v55[8];
  *(v54 + updated[7]) = v60;
  *(v54 + updated[8]) = v55[10];
  v61 = v55[7];
  v152 = v55[6];
  sub_100005F04(&v158, v156, &qword_1005A96A8, &qword_1004C3320);
  sub_100005F04(&v157, v156, &qword_1005A96A8, &qword_1004C3320);

  v62 = v55;
  v63 = v54;
  sub_1001498AC(v62);
  v64 = (v54 + updated[20]);
  *v64 = v152;
  v64[1] = v61;
  v65 = v155;
  v66 = sub_100249754();
  v67 = v66;
  if ((v66 & 1) == 0)
  {
    LODWORD(v153) = v66;
    v80 = Fence.label.getter();
    v81 = (v54 + updated[11]);
    *v81 = v80;
    v81[1] = v82;
    v83 = v140;
    Fence.placemark.getter();
    v84 = PlaceMark.streetAddress.getter();
    v86 = v85;
    v87 = *(v141 + 8);
    v88 = v142;
    v87(v83, v142);
    v152 = v87;
    v89 = (v63 + updated[5]);
    *v89 = v84;
    v89[1] = v86;
    Fence.placemark.getter();
    v90 = PlaceMark.streetName.getter();
    v92 = v91;
    v87(v83, v88);
    v93 = (v63 + updated[18]);
    *v93 = v90;
    v93[1] = v92;
    Fence.placemark.getter();
    v151 = PlaceMark.administrativeArea.getter();
    v141 = v94;
    v139 = PlaceMark.country.getter();
    v138 = v95;
    v137 = PlaceMark.formattedAddressLines.getter();
    v136 = PlaceMark.locality.getter();
    v135 = v96;
    v97 = PlaceMark.stateCode.getter();
    v134 = v98;
    v99 = PlaceMark.streetAddress.getter();
    v101 = v100;
    v102 = PlaceMark.streetName.getter();
    v104 = v103;
    v152(v83, v88);
    v105 = v155;
    v106 = (v63 + updated[21]);
    v107 = v141;
    *v106 = v151;
    v106[1] = v107;
    v108 = v138;
    v106[2] = v139;
    v106[3] = v108;
    v109 = v136;
    v106[4] = v137;
    v106[5] = v109;
    v106[6] = v135;
    v106[7] = v97;
    v106[8] = v134;
    v106[9] = v99;
    v106[10] = v101;
    v106[11] = v102;
    v106[12] = v104;
    v110 = Fence.label.getter();
    v111 = (v63 + updated[16]);
    *v111 = v110;
    v111[1] = v112;
    v113 = v143;
    Fence.region.getter();
    v114 = v145;
    Fence.MonitorRegion.source.getter();
    v115 = *(v149 + 8);
    v116 = v113;
    v117 = v150;
    v115(v116, v150);
    v119 = v146;
    v118 = v147;
    v120 = v144;
    (*(v146 + 16))(v144, v114, v147);
    v121 = (*(v119 + 88))(v120, v118);
    if (v121 == enum case for Fence.MonitorRegion.Source.unknown(_:))
    {
      v122 = 0;
LABEL_31:
      (*(v119 + 8))(v114, v118);
      v123 = v63 + updated[13];
      *v123 = v122;
      *(v123 + 8) = 0;
      v124 = v148;
      Fence.region.getter();
      Fence.MonitorRegion.center.getter();
      v126 = v125;
      v115(v124, v117);
      v127 = v63 + updated[12];
      *v127 = v126;
      *(v127 + 8) = 0;
      Fence.region.getter();
      Fence.MonitorRegion.center.getter();
      v129 = v128;
      v115(v124, v117);
      v130 = v63 + updated[14];
      *v130 = v129;
      *(v130 + 8) = 0;
      Fence.region.getter();
      Fence.MonitorRegion.radius.getter();
      v132 = v131;
      v133 = type metadata accessor for Fence();
      (*(*(v133 - 8) + 8))(v105, v133);
      sub_10014984C(v154, type metadata accessor for ClientContext);
      result = (v115)(v124, v117);
      v79 = updated[17];
      *(v63 + v79) = v132;
      v67 = v153;
      goto LABEL_32;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.currentLocation(_:))
    {
      v122 = 1;
      goto LABEL_31;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.friendLocation(_:))
    {
      v122 = 2;
      goto LABEL_31;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.labelledLocation(_:))
    {
      v122 = 3;
      goto LABEL_31;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.addressBook(_:))
    {
      v122 = 4;
      goto LABEL_31;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.custom(_:))
    {
      v122 = 5;
      goto LABEL_31;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.droppedPin(_:))
    {
      v122 = 6;
      goto LABEL_31;
    }

    if (v121 == enum case for Fence.MonitorRegion.Source.tool(_:))
    {
      v122 = 7;
      goto LABEL_31;
    }

    while (1)
    {
LABEL_33:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v68 = (v54 + updated[11]);
  *v68 = 0;
  v68[1] = 0;
  v69 = (v54 + updated[5]);
  *v69 = 0;
  v69[1] = 0;
  v70 = (v54 + updated[18]);
  *v70 = 0;
  v70[1] = 0;
  v71 = v54 + updated[21];
  *v71 = xmmword_1004C6EC0;
  *(v71 + 16) = 0u;
  *(v71 + 32) = 0u;
  *(v71 + 48) = 0u;
  *(v71 + 64) = 0u;
  *(v71 + 80) = 0u;
  *(v71 + 96) = 0;
  v72 = (v54 + updated[16]);
  *v72 = 0;
  v72[1] = 0;
  v73 = v54 + updated[13];
  *v73 = 0;
  *(v73 + 8) = 0;
  v74 = v54 + updated[12];
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  *v74 = kCLLocationCoordinate2DInvalid.latitude;
  *(v74 + 8) = 0;
  v76 = type metadata accessor for Fence();
  (*(*(v76 - 8) + 8))(v65, v76);
  result = sub_10014984C(v154, type metadata accessor for ClientContext);
  v78 = v54 + updated[14];
  *v78 = longitude;
  *(v78 + 8) = 0;
  v79 = updated[17];
  *(v54 + v79) = 0;
LABEL_32:
  *(v63 + v79 + 8) = v67 & 1;
  return result;
}

uint64_t sub_100147E18(uint64_t a1)
{
  v2 = sub_10005D018();

  return RequestContentRepresentable.description.getter(a1, v2);
}

unint64_t sub_100147E54(char a1)
{
  result = 0x6F43746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x736C69616D65;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    case 4:
      result = 7562345;
      break;
    case 5:
      result = 0x6449646E65697266;
      break;
    case 6:
      result = 1850700649;
      break;
    case 7:
      result = 0x6C6562616CLL;
      break;
    case 8:
      result = 0x656475746974616CLL;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x64757469676E6F6CLL;
      break;
    case 11:
      result = 0x6F656D6974656E6FLL;
      break;
    case 12:
      result = 0x6441797474657270;
      break;
    case 13:
      result = 0x737569646172;
      break;
    case 14:
      result = 0x614E746565727473;
      break;
    case 15:
      result = 1701869940;
      break;
    case 16:
      result = 0x72656767697274;
      break;
    case 17:
      result = 0x726464416C6C7566;
      break;
    case 18:
      result = 0x64726F6365526B63;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001480B0(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AC7A0, &qword_1004C7178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v69 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100149DB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v81[0]) = 0;
  type metadata accessor for ClientContext();
  sub_100149E0C(&qword_1005AC568, type metadata accessor for ClientContext);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    updated = type metadata accessor for UpdateFenceRequestContent();
    v12 = (v3 + *(updated + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v81[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v88 = updated;
    v15 = *(updated + 24);
    v69 = v3;
    *&v81[0] = *(v3 + v15);
    LOBYTE(v74) = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v81[0] = *(v69 + v88[7]);
    LOBYTE(v74) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v81[0] = *(v69 + v88[8]);
    LOBYTE(v74) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v69;
    v17 = (v69 + v88[9]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v81[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v16 + v88[10]);
    LOBYTE(v81[0]) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v16 + v88[11]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v81[0]) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v16 + v88[12]);
    v25 = *v24;
    v26 = *(v24 + 8);
    LOBYTE(v81[0]) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = (v16 + v88[13]);
    v28 = *v27;
    v29 = *(v27 + 8);
    LOBYTE(v81[0]) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v16 + v88[14]);
    v31 = *v30;
    v32 = *(v30 + 8);
    LOBYTE(v81[0]) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v69 + v88[15]);
    LOBYTE(v81[0]) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = (v69 + v88[16]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v81[0]) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = (v69 + v88[17]);
    v38 = *v37;
    v39 = *(v37 + 8);
    LOBYTE(v81[0]) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = (v69 + v88[18]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v81[0]) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v43 = (v69 + v88[19]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v81[0]) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = (v69 + v88[20]);
    v47 = *v46;
    v48 = v46[1];
    v87 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = (v69 + v88[21]);
    v50 = v49[3];
    v51 = v49[5];
    v84 = v49[4];
    v85 = v51;
    v52 = v49[1];
    v81[0] = *v49;
    v81[1] = v52;
    v53 = v49[3];
    v55 = *v49;
    v54 = v49[1];
    v82 = v49[2];
    v83 = v53;
    v77 = v50;
    v78 = v84;
    v79 = v49[5];
    v74 = v55;
    v86 = *(v49 + 12);
    v80 = *(v49 + 12);
    v75 = v54;
    v76 = v82;
    v73 = 17;
    sub_100005F04(v81, v71, &qword_1005AC7B0, &qword_1004C7180);
    sub_100149E54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v71[4] = v78;
    v71[5] = v79;
    v72 = v80;
    v71[0] = v74;
    v71[1] = v75;
    v71[2] = v76;
    v71[3] = v77;
    sub_100002CE0(v71, &qword_1005AC7B0, &qword_1004C7180);
    v56 = (v69 + v88[22]);
    v57 = *v56;
    v58 = v56[1];
    v70 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v59 = (v69 + v88[23]);
    v60 = *v59;
    v61 = v59[1];
    v70 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = (v69 + v88[24]);
    v63 = *v62;
    v64 = v62[1];
    v70 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v65 = (v69 + v88[25]);
    v66 = *v65;
    v67 = v65[1];
    v70 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100148818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014A26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014884C(uint64_t a1)
{
  v2 = sub_100149DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148888(uint64_t a1)
{
  v2 = sub_100149DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001488DC(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AC7C0, &qword_1004C7188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100149EA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v26 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v3[4];
    v24[15] = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v24[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    v24[13] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[9];
    v21 = v3[10];
    v24[12] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[11];
    v23 = v3[12];
    v24[11] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100148B50()
{
  v1 = *v0;
  v2 = 0x7972746E756F63;
  v3 = 0x6441746565727473;
  if (v1 != 5)
  {
    v3 = 0x614E746565727473;
  }

  v4 = 0x7974696C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x646F436574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100148C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014A95C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100148C78(uint64_t a1)
{
  v2 = sub_100149EA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148CB4(uint64_t a1)
{
  v2 = sub_100149EA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100148CF0(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1001488DC(a1);
}

uint64_t sub_100148D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  updated = type metadata accessor for UpdateFenceRequestContent();
  v4[12] = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = type metadata accessor for Account();
  v4[16] = v13;
  v14 = *(v13 - 8);
  v4[17] = v14;
  v15 = *(v14 + 64) + 15;
  v4[18] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v18 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100148FC0, 0, 0);
}

uint64_t sub_100148FC0()
{
  v1 = v0[22];
  v2 = v0[20];
  v18 = v0[19];
  v19 = v0[21];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[5];
  v7 = v0[2];
  sub_100146F44();
  v0[25] = v8;
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  v0[26] = v10;
  v11 = *(v10 - 8);
  v0[27] = v11;
  (*(v11 + 16))(v2, v6, v10);
  (*(v11 + 56))(v2, 0, 1, v10);
  (*(v3 + 16))(v4, v7, v5);
  sub_100005F04(v2, v18, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v19, &qword_1005B3360, &unk_1004C6AA0);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_1001491B8;
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[19];

  return sub_1001667E8(v13, v15, v16, v14, &_swiftEmptyArrayStorage);
}

uint64_t sub_1001491B8()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 160);
  v5 = *v0;

  sub_100002CE0(v3, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v2, &qword_1005B3360, &unk_1004C6AA0);

  return _swift_task_switch(sub_10014930C, 0, 0);
}

uint64_t sub_10014930C()
{
  v57 = v0;
  v1 = v0[23];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v7 = v0[3];
  v6 = v0[4];
  sub_1001497E4(v0[24], v1, type metadata accessor for ClientContext);
  (*(v4 + 16))(v3, v7, v5);
  sub_10014715C(v1, v3, v6, v2);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = v0[14];
  v9 = v0[15];
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFF88);
  sub_1001497E4(v9, v8, type metadata accessor for UpdateFenceRequestContent);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[14];
  if (v13)
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136315138;
    sub_1001497E4(v14, v15, type metadata accessor for UpdateFenceRequestContent);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_10014984C(v14, type metadata accessor for UpdateFenceRequestContent);
    v22 = sub_10000D01C(v19, v21, &v56);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Update Fence Request content: %s", v17, 0xCu);
    sub_100004984(v18);
  }

  else
  {

    sub_10014984C(v14, type metadata accessor for UpdateFenceRequestContent);
  }

  v23 = v0[15];
  v24 = v0[12];
  v26 = v0[7];
  v25 = v0[8];
  v27 = v0[6];
  v28 = type metadata accessor for JSONEncoder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v25 = sub_10019E890;
  v25[1] = 0;
  (*(v26 + 104))(v25, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v27);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100149E0C(&qword_1005AC638, type metadata accessor for UpdateFenceRequestContent);
  v31 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v54 = v32;
  v55 = v31;

  v33 = v0[23];
  v34 = v0[24];
  v46 = v0[22];
  v47 = v0[21];
  v48 = v0[20];
  v49 = v0[19];
  v35 = v0[17];
  v37 = v0[15];
  v36 = v0[16];
  v50 = v0[18];
  v51 = v0[14];
  v52 = v0[13];
  v39 = v0[10];
  v38 = v0[11];
  v40 = v0[9];
  v53 = v0[8];
  v41 = v0[2];
  v42 = v0[3];
  (*(v0[27] + 8))(v0[5], v0[26]);
  (*(v39 + 8))(v42, v40);
  (*(v35 + 8))(v41, v36);
  sub_10014984C(v37, type metadata accessor for UpdateFenceRequestContent);
  sub_10014984C(v34, type metadata accessor for ClientContext);

  v43 = v0[1];
  v44 = v0[25];

  return v43(v44, v55, v54);
}

uint64_t type metadata accessor for UpdateFenceRequestContent()
{
  result = qword_1005AC6E8;
  if (!qword_1005AC6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001497E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014984C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100149900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100149968(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100149A00()
{
  type metadata accessor for ClientContext();
  if (v0 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005A9790);
    if (v1 <= 0x3F)
    {
      sub_100149B90();
      if (v2 <= 0x3F)
      {
        sub_10008B2BC(319, &qword_1005AC700);
        if (v3 <= 0x3F)
        {
          sub_10008B2BC(319, &qword_1005AC708);
          if (v4 <= 0x3F)
          {
            sub_10008B2BC(319, &qword_1005A9788);
            if (v5 <= 0x3F)
            {
              sub_10008B2BC(319, &unk_1005AC710);
              if (v6 <= 0x3F)
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

void sub_100149B90()
{
  if (!qword_1005AC6F8)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AC6F8);
    }
  }
}

__n128 sub_100149BF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100149C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100149C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100149D0C()
{
  result = qword_1005AC790;
  if (!qword_1005AC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC790);
  }

  return result;
}

unint64_t sub_100149D64()
{
  result = qword_1005AC798;
  if (!qword_1005AC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC798);
  }

  return result;
}

unint64_t sub_100149DB8()
{
  result = qword_1005AC7A8;
  if (!qword_1005AC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7A8);
  }

  return result;
}

uint64_t sub_100149E0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100149E54()
{
  result = qword_1005AC7B8;
  if (!qword_1005AC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7B8);
  }

  return result;
}

unint64_t sub_100149EA8()
{
  result = qword_1005AC7C8;
  if (!qword_1005AC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateFenceRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateFenceRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10014A060()
{
  result = qword_1005AC7D0;
  if (!qword_1005AC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7D0);
  }

  return result;
}

unint64_t sub_10014A0B8()
{
  result = qword_1005AC7D8;
  if (!qword_1005AC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7D8);
  }

  return result;
}

unint64_t sub_10014A110()
{
  result = qword_1005AC7E0;
  if (!qword_1005AC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7E0);
  }

  return result;
}

unint64_t sub_10014A168()
{
  result = qword_1005AC7E8;
  if (!qword_1005AC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7E8);
  }

  return result;
}

unint64_t sub_10014A1C0()
{
  result = qword_1005AC7F0;
  if (!qword_1005AC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7F0);
  }

  return result;
}

unint64_t sub_10014A218()
{
  result = qword_1005AC7F8;
  if (!qword_1005AC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7F8);
  }

  return result;
}

uint64_t sub_10014A26C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449646E65697266 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1850700649 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F656D6974656E6FLL && a2 == 0xEB00000000796C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6441797474657270 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x72656767697274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x64726F6365526B63 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E29D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E29F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 21;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_10014A95C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001004E2A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E2A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F436574617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6441746565727473 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for FriendshipEndpoint()
{
  result = qword_1005AC858;
  if (!qword_1005AC858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014AC44()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC28);
  sub_10000A6F0(v0, qword_1005DFC28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10014ACC8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_10004B564(&qword_1005AC978, &qword_1004C7678);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10014D088();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_10002CF44(a3, v16);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10014AEB0(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC940, &qword_1004C7658);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10014CDD0();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v2[7];
  v12 = v2[5];
  v56 = v2[6];
  v57 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v58 = v2[8];
  v59 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v52 = v2[2];
  v53 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v54 = v2[4];
  v55 = v18;
  v19 = v2[1];
  v51[0] = *v2;
  v51[1] = v19;
  v47 = v56;
  v48 = v13;
  v20 = v2[9];
  v49 = v58;
  v50 = v20;
  v43 = v52;
  v44 = v17;
  v45 = v54;
  v46 = v12;
  v41 = v51[0];
  v42 = v16;
  v40 = 0;
  sub_100005F04(v51, &v30, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v21 = v60;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v21)
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    sub_100002CE0(&v30, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    sub_100002CE0(&v30, &qword_1005A9328, &unk_1004C7F20);
    v22 = type metadata accessor for FriendshipImportContent();
    v23 = *(v22 + 20);
    v29 = 1;
    type metadata accessor for ClientContext();
    sub_100009128(&qword_1005AC568, type metadata accessor for ClientContext);
    v10 = v4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = (v2 + *(v22 + 24));
    v25 = *v24;
    v26 = v24[1];
    v29 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t sub_10014B1BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ClientContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AC950, &qword_1004C7660);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FriendshipImportContent();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v34 = a1;
  sub_100011AEC(a1, v16);
  sub_10014CDD0();
  v17 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v34);
  }

  v33 = v3;
  v46 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v43;
  v14[6] = v42;
  v14[7] = v18;
  v19 = v45;
  v14[8] = v44;
  v14[9] = v19;
  v20 = v39;
  v14[2] = v38;
  v14[3] = v20;
  v21 = v41;
  v14[4] = v40;
  v14[5] = v21;
  v22 = v37;
  *v14 = v36;
  v14[1] = v22;
  v35 = 1;
  sub_100009128(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v6, v14 + *(v11 + 20));
  v35 = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v24;
  v25 = v23;
  (*(v31 + 8))(v10, v32);
  v26 = (v14 + *(v11 + 24));
  v27 = v33;
  *v26 = v25;
  v26[1] = v27;
  sub_10014CBF0(v14, v30, type metadata accessor for FriendshipImportContent);
  sub_100004984(v34);
  return sub_10014CC58(v14, type metadata accessor for FriendshipImportContent);
}

unint64_t sub_10014B5E8()
{
  if (*v0)
  {
    result = 2036625250;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_10014B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E2A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10014B708(uint64_t a1)
{
  v2 = sub_10014D088();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B744(uint64_t a1)
{
  v2 = sub_10014D088();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10014CE24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10014B7D0(uint64_t a1)
{
  v2 = sub_10006DA74();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10014B80C()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10014B868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014D378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014B890(uint64_t a1)
{
  v2 = sub_10014CDD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B8CC(uint64_t a1)
{
  v2 = sub_10014CDD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[184] = a3;
  v3[183] = a2;
  v3[182] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[185] = v4;
  v5 = *(v4 - 8);
  v3[186] = v5;
  v6 = *(v5 + 64) + 15;
  v3[187] = swift_task_alloc();
  v7 = type metadata accessor for FriendshipImportContent();
  v3[188] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v3[192] = v9;
  v10 = *(v9 - 8);
  v3[193] = v10;
  v11 = *(v10 + 64) + 15;
  v3[194] = swift_task_alloc();
  v12 = type metadata accessor for ClientOrigin();
  v3[195] = v12;
  v13 = *(v12 - 8);
  v3[196] = v13;
  v14 = *(v13 + 64) + 15;
  v3[197] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v3[198] = swift_task_alloc();
  v3[199] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  v17 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();

  return _swift_task_switch(sub_10014BBC0, 0, 0);
}

uint64_t sub_10014BBC0()
{
  v1 = v0[201];
  v2 = v0[199];
  v3 = v0[198];
  v19 = v3;
  v20 = v0[200];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  v7 = v0[194];
  v8 = v0[193];
  v9 = v0[192];
  v10 = v0[182];
  v0[204] = sub_10014ABCC();
  v11 = type metadata accessor for Handle();
  (*(*(v11 - 8) + 56))(v1, 1, 1, v11);
  (*(v5 + 104))(v4, enum case for ClientOrigin.other(_:), v6);
  RequestOrigin.init(_:)();
  v12 = type metadata accessor for RequestOrigin();
  (*(*(v12 - 8) + 56))(v2, 0, 1, v12);
  (*(v8 + 16))(v7, v10, v9);
  sub_100005F04(v2, v19, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v20, &qword_1005B3360, &unk_1004C6AA0);
  v13 = swift_task_alloc();
  v0[205] = v13;
  *v13 = v0;
  v13[1] = sub_10014BDC4;
  v14 = v0[203];
  v15 = v0[200];
  v16 = v0[198];
  v17 = v0[194];

  return sub_1001667E8(v14, v17, v16, v15, _swiftEmptyArrayStorage);
}

uint64_t sub_10014BDC4()
{
  v1 = *v0;
  v2 = *(*v0 + 1640);
  v3 = *(*v0 + 1624);
  v4 = *(*v0 + 1616);
  v5 = *(*v0 + 1608);
  v6 = *(*v0 + 1592);
  v10 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_10014CBF0(v3, v4, type metadata accessor for ClientContext);
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v1 + 1648) = v8;
  *v8 = v10;
  v8[1] = sub_10014BFA0;

  return daemon.getter();
}

uint64_t sub_10014BFA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1648);
  v12 = *v1;
  *(v3 + 1656) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1664) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009128(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009128(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10014C17C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10014C17C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1664);
  v6 = *v2;
  v4[209] = a1;
  v4[210] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10014C558, 0, 0);
  }

  else
  {
    v7 = v4[207];

    v8 = swift_task_alloc();
    v4[211] = v8;
    *v8 = v6;
    v8[1] = sub_10014C30C;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10014C30C()
{
  v1 = *(*v0 + 1688);
  v2 = *(*v0 + 1672);
  v4 = *v0;

  return _swift_task_switch(sub_10014C41C, v2, 0);
}

uint64_t sub_10014C41C()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10014C6F0, 0, 0);
}

uint64_t sub_10014C558()
{
  v1 = v0[207];
  v2 = v0[204];
  v3 = v0[203];
  v4 = v0[202];
  v5 = v0[201];
  v6 = v0[200];
  v14 = v0[199];
  v15 = v0[198];
  v16 = v0[197];
  v17 = v0[194];
  v7 = v0[193];
  v8 = v0[192];
  v18 = v0[191];
  v19 = v0[190];
  v20 = v0[189];
  v21 = v0[187];
  v9 = v0[184];
  v10 = v0[182];

  sub_10014CC58(v4, type metadata accessor for ClientContext);
  (*(v7 + 8))(v10, v8);
  sub_10014CC58(v3, type metadata accessor for ClientContext);

  sub_10001A794(0, 0xF000000000000000);

  v11 = v0[1];
  v12 = v0[210];

  return v11();
}

uint64_t sub_10014C6F0()
{
  v60 = v0;
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 1472);
  v6 = *(v0 + 1464);

  v7 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v7;
  v8 = *(v0 + 1008);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v10;
  v3[2] = v8;
  v3[3] = v9;
  v11 = *(v0 + 1072);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v13;
  v3[6] = v11;
  v3[7] = v12;
  sub_100144E70(v2, v3 + *(v4 + 20));
  v14 = (v3 + *(v4 + 24));
  *v14 = v6;
  v14[1] = v5;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 1528);
  v16 = *(v0 + 1520);
  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFC28);
  sub_10014CBF0(v15, v16, type metadata accessor for FriendshipImportContent);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 1520);
  if (v20)
  {
    v22 = *(v0 + 1512);
    v23 = *(v0 + 1504);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v59 = v25;
    *v24 = 136315138;
    sub_10014CBF0(v21, v22, type metadata accessor for FriendshipImportContent);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_10014CC58(v21, type metadata accessor for FriendshipImportContent);
    v29 = sub_10000D01C(v26, v28, &v59);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Request content: %s", v24, 0xCu);
    sub_100004984(v25);
  }

  else
  {

    sub_10014CC58(v21, type metadata accessor for FriendshipImportContent);
  }

  v30 = *(v0 + 1680);
  v31 = *(v0 + 1528);
  v32 = *(v0 + 1504);
  v33 = *(v0 + 1496);
  v34 = *(v0 + 1488);
  v35 = *(v0 + 1480);
  v36 = type metadata accessor for JSONEncoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v33 = sub_10019E890;
  v33[1] = 0;
  (*(v34 + 104))(v33, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v35);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009128(&qword_1005AC890, type metadata accessor for FriendshipImportContent);
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v30)
  {

    v41 = 0;
    v42 = 0xF000000000000000;
  }

  else
  {
    v41 = v39;
    v42 = v40;
  }

  v43 = *(v0 + 1632);
  v44 = *(v0 + 1624);
  v45 = *(v0 + 1616);
  v46 = *(v0 + 1608);
  v47 = *(v0 + 1600);
  v48 = *(v0 + 1592);
  v54 = *(v0 + 1584);
  v55 = *(v0 + 1576);
  v49 = *(v0 + 1528);
  v56 = *(v0 + 1552);
  v57 = *(v0 + 1520);
  v50 = *(v0 + 1512);
  v58 = *(v0 + 1496);
  (*(*(v0 + 1544) + 8))(*(v0 + 1456), *(v0 + 1536));
  sub_10014CC58(v49, type metadata accessor for FriendshipImportContent);
  sub_10014CC58(v44, type metadata accessor for ClientContext);
  sub_10001A794(0, 0xF000000000000000);

  sub_10002CF44(v41, v42);

  sub_10001A794(v41, v42);

  v51 = *(v0 + 8);
  v52 = *(v0 + 1632);

  return v51(v52, v41, v42);
}

uint64_t type metadata accessor for FriendshipImportContent()
{
  result = qword_1005AC8F0;
  if (!qword_1005AC8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014CBF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014CC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014CCF4(uint64_t a1)
{
  *(a1 + 8) = sub_100009128(&qword_1005AC930, type metadata accessor for FriendshipImportContent);
  result = sub_100009128(&qword_1005AC890, type metadata accessor for FriendshipImportContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10014CD7C()
{
  result = qword_1005AC938;
  if (!qword_1005AC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC938);
  }

  return result;
}

unint64_t sub_10014CDD0()
{
  result = qword_1005AC948;
  if (!qword_1005AC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC948);
  }

  return result;
}

uint64_t sub_10014CE24(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005AC958, &qword_1004C7668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_100011AEC(a1, v8);
  sub_10014D088();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v15 = 0;
    sub_10014D0DC(&qword_1005AC970);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;
    sub_10001A794(0, 0xF000000000000000);

    sub_10002CF44(v10, v11);
    sub_100004984(a1);

    sub_10001A794(v10, v11);
  }

  return v8;
}

unint64_t sub_10014D088()
{
  result = qword_1005AC960;
  if (!qword_1005AC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC960);
  }

  return result;
}

uint64_t sub_10014D0DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AC968, &qword_1004C7670);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014D16C()
{
  result = qword_1005AC988;
  if (!qword_1005AC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC988);
  }

  return result;
}

unint64_t sub_10014D1C4()
{
  result = qword_1005AC990;
  if (!qword_1005AC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC990);
  }

  return result;
}

unint64_t sub_10014D21C()
{
  result = qword_1005AC998;
  if (!qword_1005AC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC998);
  }

  return result;
}

unint64_t sub_10014D274()
{
  result = qword_1005AC9A0;
  if (!qword_1005AC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC9A0);
  }

  return result;
}

unint64_t sub_10014D2CC()
{
  result = qword_1005AC9A8;
  if (!qword_1005AC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC9A8);
  }

  return result;
}

unint64_t sub_10014D324()
{
  result = qword_1005AC9B0;
  if (!qword_1005AC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC9B0);
  }

  return result;
}

uint64_t sub_10014D378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10014D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[185] = a4;
  v4[184] = a3;
  v4[183] = a2;
  v4[182] = a1;
  v5 = type metadata accessor for IDSStatus();
  v4[186] = v5;
  v6 = *(v5 - 8);
  v4[187] = v6;
  v7 = *(v6 + 64) + 15;
  v4[188] = swift_task_alloc();
  v4[189] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v4[190] = v8;
  v9 = *(v8 - 8);
  v4[191] = v9;
  v10 = *(v9 + 64) + 15;
  v4[192] = swift_task_alloc();
  v11 = type metadata accessor for ClientOrigin();
  v4[193] = v11;
  v12 = *(v11 - 8);
  v4[194] = v12;
  v13 = *(v12 + 64) + 15;
  v4[195] = swift_task_alloc();
  v14 = type metadata accessor for RequestOrigin();
  v4[196] = v14;
  v15 = *(v14 - 8);
  v4[197] = v15;
  v16 = *(v15 + 64) + 15;
  v4[198] = swift_task_alloc();
  v17 = type metadata accessor for GroupID();
  v4[199] = v17;
  v18 = *(v17 - 8);
  v4[200] = v18;
  v19 = *(v18 + 64) + 15;
  v4[201] = swift_task_alloc();
  v20 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v4[202] = swift_task_alloc();
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  v4[203] = v22;
  *v22 = v4;
  v22[1] = sub_10014D750;

  return daemon.getter();
}

uint64_t sub_10014D750(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1624);
  v12 = *v1;
  *(v3 + 1632) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1640) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100154014(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100154014(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10014D92C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10014D92C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1640);
  v6 = *v2;
  v4[206] = a1;
  v4[207] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10014DD08, 0, 0);
  }

  else
  {
    v7 = v4[204];

    v8 = swift_task_alloc();
    v4[208] = v8;
    *v8 = v6;
    v8[1] = sub_10014DABC;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10014DABC()
{
  v1 = *(*v0 + 1664);
  v2 = *(*v0 + 1648);
  v4 = *v0;

  return _swift_task_switch(sub_10014DBCC, v2, 0);
}

uint64_t sub_10014DBCC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10014DE7C, 0, 0);
}

uint64_t sub_10014DD08()
{
  v1 = v0[204];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[198];
  v5 = v0[195];
  v6 = v0[192];
  v7 = v0[189];
  v16 = v0[188];
  v8 = v0[185];
  v9 = v0[184];
  v10 = v0[183];

  v11 = type metadata accessor for FriendshipRequestType();
  (*(*(v11 - 8) + 8))(v8, v11);
  v12 = type metadata accessor for FriendshipRequest();
  (*(*(v12 - 8) + 8))(v9, v12);
  sub_10015483C(v10, type metadata accessor for ClientContext);

  v13 = v0[1];
  v14 = v0[207];

  return v13();
}

unint64_t sub_10014DE7C()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1464);
  v5 = *(v0 + 1456);

  v6 = *(v0 + 992);
  *v5 = *(v0 + 976);
  v5[1] = v6;
  v7 = *(v0 + 1008);
  v8 = *(v0 + 1024);
  v9 = *(v0 + 1056);
  v5[4] = *(v0 + 1040);
  v5[5] = v9;
  v5[2] = v7;
  v5[3] = v8;
  v10 = *(v0 + 1072);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1120);
  v5[8] = *(v0 + 1104);
  v5[9] = v12;
  v5[6] = v10;
  v5[7] = v11;
  v81 = type metadata accessor for FriendshipOfferContent(0);
  sub_1001547D4(v4, v5 + v81[5], type metadata accessor for ClientContext);
  FriendshipRequest.endDate.getter();
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v2, 1, v13);
  v90 = v0;
  v16 = *(v0 + 1616);
  if (v15 == 1)
  {
    sub_100002CE0(*(v0 + 1616), &unk_1005AE5B0, &qword_1004C32F0);
    v17 = 0.0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    (*(v14 + 8))(v16, v13);
    v17 = v19 * 1000.0;
  }

  v20 = *(v0 + 1584);
  v21 = *(v0 + 1576);
  v22 = v90[196];
  v23 = v90[195];
  v24 = v90[194];
  v25 = v90[193];
  v26 = v90[184];
  *(v90[182] + v81[6]) = v17;
  FriendshipRequest.origin.getter();
  v27 = FriendshipRequest.isFromGroup.getter();
  RequestOrigin.origin.getter();
  (*(v21 + 8))(v20, v22);
  if ((*(v24 + 88))(v23, v25) == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v27)
    {
      v28 = &enum case for GroupID.group(_:);
    }

    else
    {
      v28 = &enum case for GroupID.oneToOne(_:);
    }

    (*(v90[200] + 104))(v90[201], *v28, v90[199]);
  }

  else
  {
    v29 = v90[195];
    v30 = v90[194];
    v31 = v90[193];
    (*(v90[200] + 104))(v90[201], enum case for GroupID.oneToOne(_:), v90[199]);
    (*(v30 + 8))(v29, v31);
  }

  v32 = v90[201];
  v33 = v90[200];
  v34 = v90[199];
  v35 = v90[184];
  v36 = v90[182];
  v37 = GroupID.rawValue.getter();
  v39 = v38;
  (*(v33 + 8))(v32, v34);
  v40 = (v36 + v81[7]);
  *v40 = v37;
  v40[1] = v39;
  result = FriendshipRequest.toHandles.getter();
  v88 = *(result + 16);
  if (v88)
  {
    v42 = 0;
    v43 = v90[191];
    v86 = result + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v85 = enum case for IDSStatus.valid(_:);
    v84 = v90[187];
    v92 = (v84 + 32);
    v87 = v43;
    v83 = (v43 + 8);
    v44 = v90;
    v82 = result;
    while (1)
    {
      if (v42 >= *(result + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v46 = v44[189];
      v47 = v44[188];
      v48 = v44[186];
      (*(v87 + 16))(v44[192], v86 + *(v87 + 72) * v42, v44[190]);
      v49 = Handle.identifier.getter();
      v51 = v50;
      (*(v84 + 104))(v46, v85, v48);
      v52 = *v92;
      (*v92)(v47, v46, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1000110D8(v49, v51);
      v55 = *(&_swiftEmptyDictionarySingleton + 2);
      v56 = (v54 & 1) == 0;
      v57 = __OFADD__(v55, v56);
      v58 = v55 + v56;
      if (v57)
      {
        goto LABEL_32;
      }

      v59 = v54;
      if (*(&_swiftEmptyDictionarySingleton + 3) >= v58)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = result;
          sub_100202B94();
          result = v69;
          v44 = v90;
        }
      }

      else
      {
        sub_10022C964(v58, isUniquelyReferenced_nonNull_native);
        result = sub_1000110D8(v49, v51);
        if ((v59 & 1) != (v60 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v61 = v44;
      v62 = v44[192];
      v63 = v61[190];
      v64 = v61[188];
      v65 = v61[186];
      if (v59)
      {
        v45 = result;

        (*(v84 + 40))(*(&_swiftEmptyDictionarySingleton + 7) + *(v84 + 72) * v45, v64, v65);
        (*v83)(v62, v63);
      }

      else
      {
        *(&_swiftEmptyDictionarySingleton + (result >> 6) + 8) |= 1 << result;
        v66 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * result);
        *v66 = v49;
        v66[1] = v51;
        v52(*(&_swiftEmptyDictionarySingleton + 7) + *(v84 + 72) * result, v64, v65);
        result = (*v83)(v62, v63);
        v67 = *(&_swiftEmptyDictionarySingleton + 2);
        v57 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v57)
        {
          goto LABEL_33;
        }

        *(&_swiftEmptyDictionarySingleton + 2) = v68;
      }

      ++v42;
      v44 = v90;
      result = v82;
      if (v88 == v42)
      {
        goto LABEL_25;
      }
    }
  }

  v44 = v90;
LABEL_25:
  v70 = v44[202];
  v71 = v44[201];
  v72 = v44[198];
  v73 = v44[195];
  v89 = v44[192];
  v91 = v44[189];
  v93 = v44[188];
  v74 = v44[185];
  v75 = v44[184];
  v76 = v44[183];
  v77 = v44[182];

  v78 = type metadata accessor for FriendshipRequestType();
  (*(*(v78 - 8) + 8))(v74, v78);
  v79 = type metadata accessor for FriendshipRequest();
  (*(*(v79 - 8) + 8))(v75, v79);
  sub_10015483C(v76, type metadata accessor for ClientContext);
  *(v77 + v81[8]) = &_swiftEmptyDictionarySingleton;

  v80 = v44[1];

  return v80();
}

uint64_t sub_10014E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[185] = a4;
  v4[184] = a3;
  v4[183] = a2;
  v4[182] = a1;
  v5 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v4[186] = swift_task_alloc();
  v4[187] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v4[188] = v6;
  v7 = *(v6 - 8);
  v4[189] = v7;
  v8 = *(v7 + 64) + 15;
  v4[190] = swift_task_alloc();
  v4[191] = swift_task_alloc();
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v4[194] = swift_task_alloc();
  v4[195] = swift_task_alloc();
  v10 = type metadata accessor for ClientOrigin();
  v4[196] = v10;
  v11 = *(v10 - 8);
  v4[197] = v11;
  v12 = *(v11 + 64) + 15;
  v4[198] = swift_task_alloc();
  v13 = type metadata accessor for RequestOrigin();
  v4[199] = v13;
  v14 = *(v13 - 8);
  v4[200] = v14;
  v15 = *(v14 + 64) + 15;
  v4[201] = swift_task_alloc();
  v16 = type metadata accessor for GroupID();
  v4[202] = v16;
  v17 = *(v16 - 8);
  v4[203] = v17;
  v18 = *(v17 + 64) + 15;
  v4[204] = swift_task_alloc();
  v19 = type metadata accessor for Handle();
  v4[205] = v19;
  v20 = *(v19 - 8);
  v4[206] = v20;
  v21 = *(v20 + 64) + 15;
  v4[207] = swift_task_alloc();
  v4[208] = swift_task_alloc();
  v4[209] = swift_task_alloc();
  v4[210] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v4[211] = swift_task_alloc();
  v23 = async function pointer to daemon.getter[1];
  v24 = swift_task_alloc();
  v4[212] = v24;
  *v24 = v4;
  v24[1] = sub_10014E91C;

  return daemon.getter();
}

uint64_t sub_10014E91C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1696);
  v12 = *v1;
  v3[213] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[214] = v6;
  v7 = type metadata accessor for Daemon();
  v3[215] = v7;
  v8 = type metadata accessor for DataManager(0);
  v3[216] = v8;
  v9 = sub_100154014(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[217] = v9;
  v10 = sub_100154014(&qword_1005A90D0, type metadata accessor for DataManager);
  v3[218] = v10;
  *v6 = v12;
  v6[1] = sub_10014EB10;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10014EB10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1712);
  v6 = *v2;
  v4[219] = a1;
  v4[220] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10014EEEC, 0, 0);
  }

  else
  {
    v7 = v4[213];

    v8 = swift_task_alloc();
    v4[221] = v8;
    *v8 = v6;
    v8[1] = sub_10014ECA0;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10014ECA0()
{
  v1 = *(*v0 + 1768);
  v2 = *(*v0 + 1752);
  v4 = *v0;

  return _swift_task_switch(sub_10014EDB0, v2, 0);
}

uint64_t sub_10014EDB0()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10014F0DC, 0, 0);
}

uint64_t sub_10014EEEC()
{
  v1 = v0[213];
  v2 = v0[211];
  v3 = v0[210];
  v4 = v0[209];
  v5 = v0[208];
  v6 = v0[207];
  v7 = v0[204];
  v16 = v0[201];
  v17 = v0[198];
  v18 = v0[195];
  v19 = v0[194];
  v20 = v0[193];
  v21 = v0[192];
  v22 = v0[191];
  v23 = v0[190];
  v24 = v0[187];
  v25 = v0[186];
  v8 = v0[185];
  v9 = v0[184];
  v10 = v0[183];

  v11 = type metadata accessor for FriendshipRequestType();
  (*(*(v11 - 8) + 8))(v8, v11);
  v12 = type metadata accessor for FriendshipRequest();
  (*(*(v12 - 8) + 8))(v9, v12);
  sub_10015483C(v10, type metadata accessor for ClientContext);

  v13 = v0[1];
  v14 = v0[220];

  return v13();
}

uint64_t sub_10014F0DC()
{
  v1 = v0;
  v2 = v0[219];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];

  v6 = *(v1 + 62);
  *v5 = *(v1 + 61);
  v5[1] = v6;
  v7 = *(v1 + 63);
  v8 = *(v1 + 64);
  v9 = *(v1 + 66);
  v5[4] = *(v1 + 65);
  v5[5] = v9;
  v5[2] = v7;
  v5[3] = v8;
  v10 = *(v1 + 67);
  v11 = *(v1 + 68);
  v12 = *(v1 + 70);
  v5[8] = *(v1 + 69);
  v5[9] = v12;
  v5[6] = v10;
  v5[7] = v11;
  v13 = type metadata accessor for FriendshipRequestContent(0);
  v1[222] = v13;
  sub_1001547D4(v4, v5 + v13[5], type metadata accessor for ClientContext);
  v14 = FriendshipRequest.toHandles.getter();
  v15 = *(v14 + 16);
  if (v15)
  {
    v61 = v13;
    v16 = v1[206];
    sub_10002B3C0(0, v15, 0);
    v17 = *(v16 + 16);
    v16 += 16;
    v18 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v62 = *(v16 + 56);
    v63 = v17;
    v19 = (v16 - 8);
    do
    {
      v20 = v1[210];
      v21 = v1;
      v22 = v1[205];
      v63(v20, v18, v22);
      v23 = Handle.identifier.getter();
      v25 = v24;
      (*v19)(v20, v22);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_10002B3C0((v26 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      v18 += v62;
      --v15;
      v1 = v21;
    }

    while (v15);

    v13 = v61;
  }

  else
  {
  }

  v29 = v1[211];
  v30 = v1[184];
  *(v1[182] + v13[8]) = _swiftEmptyArrayStorage;
  FriendshipRequest.endDate.getter();
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v29, 1, v31);
  v34 = v1[211];
  if (v33 == 1)
  {
    sub_100002CE0(v1[211], &unk_1005AE5B0, &qword_1004C32F0);
    v35 = 0.0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v37 = v36;
    (*(v32 + 8))(v34, v31);
    v35 = v37 * 1000.0;
  }

  v38 = v1[201];
  v39 = v1[200];
  v40 = v1[199];
  v41 = v1[198];
  v42 = v1[197];
  v43 = v1[196];
  v44 = v1[184];
  *(v1[182] + v13[6]) = v35;
  FriendshipRequest.origin.getter();
  v45 = FriendshipRequest.isFromGroup.getter();
  RequestOrigin.origin.getter();
  (*(v39 + 8))(v38, v40);
  if ((*(v42 + 88))(v41, v43) == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v45)
    {
      v46 = &enum case for GroupID.group(_:);
    }

    else
    {
      v46 = &enum case for GroupID.oneToOne(_:);
    }

    (*(v1[203] + 104))(v1[204], *v46, v1[202]);
  }

  else
  {
    v47 = v1[198];
    v48 = v1[197];
    v49 = v1[196];
    (*(v1[203] + 104))(v1[204], enum case for GroupID.oneToOne(_:), v1[202]);
    (*(v48 + 8))(v47, v49);
  }

  v50 = v1[204];
  v51 = v1[203];
  v52 = v1[202];
  v53 = v1[182];
  v54 = GroupID.rawValue.getter();
  v56 = v55;
  (*(v51 + 8))(v50, v52);
  v57 = (v53 + v13[7]);
  *v57 = v54;
  v57[1] = v56;
  v58 = async function pointer to daemon.getter[1];
  v59 = swift_task_alloc();
  v1[223] = v59;
  *v59 = v1;
  v59[1] = sub_10014F558;

  return daemon.getter();
}

uint64_t sub_10014F558(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1784);
  v5 = *v1;
  v3[224] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[225] = v7;
  *v7 = v5;
  v7[1] = sub_10014F6E4;
  v8 = v3[218];
  v9 = v3[217];
  v10 = v3[216];
  v11 = v3[215];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10014F6E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1800);
  v5 = *(*v2 + 1792);
  v8 = *v2;
  *(v3 + 1808) = a1;
  *(v3 + 1816) = v1;

  if (v1)
  {
    v6 = sub_100150EE4;
  }

  else
  {
    v6 = sub_10014F81C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10014F81C()
{
  v1 = *(v0 + 1472);
  v2 = FriendshipRequest.toHandles.getter();
  *(v0 + 1824) = v2;
  v5 = *(v2 + 16);
  *(v0 + 1832) = v5;
  if (v5)
  {
    v6 = *(v0 + 1808);
    v7 = *(v0 + 1648);
    v8 = *(v0 + 1512);
    v9 = *(v7 + 80);
    *(v0 + 1984) = v9;
    v10 = enum case for HandleType.follower(_:);
    *(v0 + 1988) = enum case for HandleType.follower(_:);
    *(v0 + 1992) = enum case for HandleType.following(_:);
    *(v0 + 1848) = _swiftEmptyArrayStorage;
    *(v0 + 1840) = 0;
    if (*(v2 + 16))
    {
      v11 = *(v0 + 1544);
      v12 = *(v0 + 1504);
      (*(v7 + 16))(*(v0 + 1672), v2 + ((v9 + 32) & ~v9), *(v0 + 1640));
      v13 = *(v8 + 104);
      *(v0 + 1856) = v13;
      *(v0 + 1864) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v13(v11, v10, v12);
      v2 = sub_10014FB64;
      v3 = v6;
      v4 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    v14 = *(v0 + 1808);
    v15 = *(v0 + 1480);
    v16 = *(v0 + 1472);
    v17 = *(v0 + 1464);
    v18 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage[2];
    v20 = FriendshipRequest.toHandles.getter();

    v21 = type metadata accessor for FriendshipRequestType();
    (*(*(v21 - 8) + 8))(v15, v21);
    v22 = type metadata accessor for FriendshipRequest();
    (*(*(v22 - 8) + 8))(v16, v22);
    sub_10015483C(v17, type metadata accessor for ClientContext);
    v23 = *(v20 + 16);

    if (v19 != v23)
    {

      v18 = 0;
    }

    v24 = *(v0 + 1688);
    v25 = *(v0 + 1680);
    v26 = *(v0 + 1672);
    v27 = *(v0 + 1664);
    v28 = *(v0 + 1656);
    v29 = *(v0 + 1632);
    v30 = *(v0 + 1608);
    v31 = *(v0 + 1584);
    v32 = *(v0 + 1560);
    v35 = *(v0 + 1552);
    v36 = *(v0 + 1544);
    v37 = *(v0 + 1536);
    v38 = *(v0 + 1528);
    v39 = *(v0 + 1520);
    v40 = *(v0 + 1496);
    v41 = *(v0 + 1488);
    *(*(v0 + 1456) + *(*(v0 + 1776) + 36)) = v18;

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_10014FB64()
{
  v26 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[193];
  v2 = v0[192];
  v3 = v0[189];
  v4 = v0[188];
  v5 = type metadata accessor for Logger();
  v0[234] = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v3 + 16);
  v0[235] = v6;
  v0[236] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[192];
  v11 = v0[189];
  v12 = v0[188];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v25);
    *(v13 + 12) = 2080;
    sub_100154014(&qword_1005A9198, &type metadata accessor for HandleType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v25);

    *(v13 + 14) = v18;
    *(v13 + 22) = 1026;
    *(v13 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[237] = v17;
  v19 = swift_task_alloc();
  v0[238] = v19;
  *v19 = v0;
  v19[1] = sub_10014FE4C;
  v20 = v0[226];
  v21 = v0[209];
  v22 = v0[193];
  v23 = v0[187];

  return sub_1001E3D9C(v23, v21, v22, 0);
}

uint64_t sub_10014FE4C()
{
  v1 = *(*v0 + 1904);
  v2 = *(*v0 + 1808);
  v4 = *v0;

  return _swift_task_switch(sub_10014FF5C, v2, 0);
}

uint64_t sub_10014FF5C()
{
  v1 = v0[187];
  v2 = type metadata accessor for Friend();
  v0[239] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[240] = v3;
  v6 = v3 + 48;
  v5 = *(v3 + 48);
  v0[241] = v5;
  v0[242] = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v2) == 1)
  {
    sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
    v7 = 1;
  }

  else
  {
    v8 = v0[195];
    Friend.handle.getter();
    (*(v4 + 8))(v1, v2);
    v7 = 0;
  }

  v9 = v0[237];
  v10 = v0[205];
  v11 = v0[195];
  v12 = v0[193];
  v13 = v0[188];
  v14 = v0[189] + 8;
  v15 = *(v0[206] + 56);
  v0[243] = v15;
  v15(v11, v7, 1, v10);
  v0[244] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v12, v13);

  return _swift_task_switch(sub_1001500F0, 0, 0);
}

uint64_t sub_1001500F0()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1560);
  v4 = *(v1 + 48);
  *(v0 + 1960) = v4;
  *(v0 + 1968) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
LABEL_15:
    v43 = *(v0 + 1864);
    v44 = *(v0 + 1808);
    (*(v0 + 1856))(*(v0 + 1528), *(v0 + 1992), *(v0 + 1504));
    v18 = sub_1001505A0;
    v19 = v44;
    goto LABEL_16;
  }

  (*(v1 + 32))(*(v0 + 1664), v3, v2);
  v5 = Handle.serverID.getter();
  if (!v6)
  {
    (*(*(v0 + 1648) + 8))(*(v0 + 1664), *(v0 + 1640));
    goto LABEL_15;
  }

  v7 = v6;
  v59 = v5;
  v8 = *(v0 + 1848);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 1848);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1001FC900(0, *(v10 + 2) + 1, 1, *(v0 + 1848));
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1001FC900((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 1832);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1640);
  v16 = *(v0 + 1840) + 1;
  v17 = *(*(v0 + 1648) + 8);
  v17(*(v0 + 1664), v15);
  v18 = v17(v14, v15);
  *(v10 + 2) = v12 + 1;
  v21 = &v10[16 * v12];
  *(v21 + 4) = v59;
  *(v21 + 5) = v7;
  if (v16 != v13)
  {
    v45 = *(v0 + 1840) + 1;
    *(v0 + 1848) = v10;
    *(v0 + 1840) = v45;
    v46 = *(v0 + 1824);
    if (v45 >= *(v46 + 16))
    {
      __break(1u);
      return _swift_task_switch(v18, v19, v20);
    }

    v47 = *(v0 + 1988);
    v48 = *(v0 + 1808);
    v49 = *(v0 + 1544);
    v50 = *(v0 + 1512);
    v51 = *(v0 + 1504);
    (*(*(v0 + 1648) + 16))(*(v0 + 1672), v46 + ((*(v0 + 1984) + 32) & ~*(v0 + 1984)) + *(*(v0 + 1648) + 72) * v45, *(v0 + 1640));
    v52 = *(v50 + 104);
    *(v0 + 1856) = v52;
    *(v0 + 1864) = (v50 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v52(v49, v47, v51);
    v18 = sub_10014FB64;
    v19 = v48;
LABEL_16:
    v20 = 0;

    return _swift_task_switch(v18, v19, v20);
  }

  v22 = *(v0 + 1824);

  v23 = *(v0 + 1808);
  v24 = *(v0 + 1480);
  v25 = *(v0 + 1472);
  v26 = *(v0 + 1464);
  v27 = *(v10 + 2);
  v28 = FriendshipRequest.toHandles.getter();

  v29 = type metadata accessor for FriendshipRequestType();
  (*(*(v29 - 8) + 8))(v24, v29);
  v30 = type metadata accessor for FriendshipRequest();
  (*(*(v30 - 8) + 8))(v25, v30);
  sub_10015483C(v26, type metadata accessor for ClientContext);
  v31 = *(v28 + 16);

  if (v27 != v31)
  {

    v10 = 0;
  }

  v32 = *(v0 + 1688);
  v33 = *(v0 + 1680);
  v34 = *(v0 + 1672);
  v35 = *(v0 + 1664);
  v36 = *(v0 + 1656);
  v37 = *(v0 + 1632);
  v38 = *(v0 + 1608);
  v39 = *(v0 + 1584);
  v40 = *(v0 + 1560);
  v53 = *(v0 + 1552);
  v54 = *(v0 + 1544);
  v55 = *(v0 + 1536);
  v56 = *(v0 + 1528);
  v57 = *(v0 + 1520);
  v58 = *(v0 + 1496);
  v60 = *(v0 + 1488);
  *(*(v0 + 1456) + *(*(v0 + 1776) + 36)) = v10;

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1001505A0()
{
  v22 = v0;
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1872);
  (*(v0 + 1880))(*(v0 + 1520), *(v0 + 1528), *(v0 + 1504));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1952);
  v7 = *(v0 + 1896);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1504);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136446722;
    *(v10 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v21);
    *(v10 + 12) = 2080;
    sub_100154014(&qword_1005A9198, &type metadata accessor for HandleType);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v7(v8, v9);
    v14 = sub_10000D01C(v11, v13, &v21);

    *(v10 + 14) = v14;
    *(v10 + 22) = 1026;
    *(v10 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v10, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v7(v8, v9);
  }

  v15 = swift_task_alloc();
  *(v0 + 1976) = v15;
  *v15 = v0;
  v15[1] = sub_100150800;
  v16 = *(v0 + 1808);
  v17 = *(v0 + 1672);
  v18 = *(v0 + 1528);
  v19 = *(v0 + 1488);

  return sub_1001E3D9C(v19, v17, v18, 0);
}

uint64_t sub_100150800()
{
  v1 = *(*v0 + 1976);
  v2 = *(*v0 + 1808);
  v4 = *v0;

  return _swift_task_switch(sub_100150910, v2, 0);
}

uint64_t sub_100150910()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1488);
  if ((*(v0 + 1928))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9188, &unk_1004D80D0);
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 1920);
    v6 = *(v0 + 1552);
    Friend.handle.getter();
    (*(v5 + 8))(v3, v2);
    v4 = 0;
  }

  v7 = *(v0 + 1952);
  v8 = *(v0 + 1896);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1504);
  v11 = *(v0 + 1648) + 56;
  (*(v0 + 1944))(*(v0 + 1552), v4, 1, *(v0 + 1640));
  v8(v9, v10);

  return _swift_task_switch(sub_100150A28, 0, 0);
}

uint64_t sub_100150A28()
{
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1552);
  if ((*(v0 + 1960))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1824);
    (*(*(v0 + 1648) + 8))(*(v0 + 1672), v2);

    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
LABEL_11:
    v10 = *(v0 + 1848);
    goto LABEL_12;
  }

  (*(*(v0 + 1648) + 32))(*(v0 + 1656), v3, v2);
  v5 = Handle.serverID.getter();
  if (!v6)
  {
    v23 = *(v0 + 1824);
    v24 = *(v0 + 1672);
    v25 = *(v0 + 1656);
    v26 = *(v0 + 1648);
    v27 = *(v0 + 1640);

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v24, v27);
    goto LABEL_11;
  }

  v7 = v6;
  v63 = v5;
  v8 = *(v0 + 1848);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 1848);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1001FC900(0, *(v10 + 2) + 1, 1, *(v0 + 1848));
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1001FC900((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 1832);
  v14 = *(v0 + 1672);
  v15 = *(v0 + 1640);
  v16 = *(v0 + 1840) + 1;
  v17 = *(*(v0 + 1648) + 8);
  v17(*(v0 + 1656), v15);
  v18 = v17(v14, v15);
  *(v10 + 2) = v12 + 1;
  v21 = &v10[16 * v12];
  *(v21 + 4) = v63;
  *(v21 + 5) = v7;
  if (v16 == v13)
  {
    v22 = *(v0 + 1824);

LABEL_12:
    v29 = *(v0 + 1808);
    v30 = *(v0 + 1480);
    v31 = *(v0 + 1472);
    v32 = *(v0 + 1464);
    v33 = *(v10 + 2);
    v34 = FriendshipRequest.toHandles.getter();

    v35 = type metadata accessor for FriendshipRequestType();
    (*(*(v35 - 8) + 8))(v30, v35);
    v36 = type metadata accessor for FriendshipRequest();
    (*(*(v36 - 8) + 8))(v31, v36);
    sub_10015483C(v32, type metadata accessor for ClientContext);
    v37 = *(v34 + 16);

    if (v33 != v37)
    {

      v10 = 0;
    }

    v38 = *(v0 + 1688);
    v39 = *(v0 + 1680);
    v40 = *(v0 + 1672);
    v41 = *(v0 + 1664);
    v42 = *(v0 + 1656);
    v43 = *(v0 + 1632);
    v44 = *(v0 + 1608);
    v45 = *(v0 + 1584);
    v46 = *(v0 + 1560);
    v57 = *(v0 + 1552);
    v58 = *(v0 + 1544);
    v59 = *(v0 + 1536);
    v60 = *(v0 + 1528);
    v61 = *(v0 + 1520);
    v62 = *(v0 + 1496);
    v64 = *(v0 + 1488);
    *(*(v0 + 1456) + *(*(v0 + 1776) + 36)) = v10;

    v47 = *(v0 + 8);

    return v47();
  }

  v49 = *(v0 + 1840) + 1;
  *(v0 + 1848) = v10;
  *(v0 + 1840) = v49;
  v50 = *(v0 + 1824);
  if (v49 >= *(v50 + 16))
  {
    __break(1u);
  }

  else
  {
    v51 = *(v0 + 1988);
    v52 = *(v0 + 1808);
    v53 = *(v0 + 1544);
    v54 = *(v0 + 1512);
    v55 = *(v0 + 1504);
    (*(*(v0 + 1648) + 16))(*(v0 + 1672), v50 + ((*(v0 + 1984) + 32) & ~*(v0 + 1984)) + *(*(v0 + 1648) + 72) * v49, *(v0 + 1640));
    v56 = *(v54 + 104);
    *(v0 + 1856) = v56;
    *(v0 + 1864) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v56(v53, v51, v55);
    v18 = sub_10014FB64;
    v19 = v52;
    v20 = 0;
  }

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100150EE4()
{
  v1 = v0[227];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = type metadata accessor for FriendshipRequestType();
  (*(*(v5 - 8) + 8))(v2, v5);
  v6 = type metadata accessor for FriendshipRequest();
  (*(*(v6 - 8) + 8))(v3, v6);
  sub_10015483C(v4, type metadata accessor for ClientContext);

  v7 = v0[211];
  v8 = v0[210];
  v9 = v0[209];
  v10 = v0[208];
  v11 = v0[207];
  v12 = v0[204];
  v13 = v0[201];
  v14 = v0[198];
  v15 = v0[195];
  v16 = v0[194];
  v19 = v0[193];
  v20 = v0[192];
  v21 = v0[191];
  v22 = v0[190];
  v23 = v0[187];
  v24 = v0[186];
  *(v0[182] + *(v0[222] + 36)) = 0;

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001510DC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_10004B564(&qword_1005ACBA8, &qword_1004C7BD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100154CCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_10002CF44(a3, v16);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1001512C4(uint64_t a1)
{
  v2 = sub_100154CCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151300(uint64_t a1)
{
  v2 = sub_100154CCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015133C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100154A68(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10015138C(uint64_t a1)
{
  v2 = sub_10006DC3C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_1001513C8(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACB80, &qword_1004C7BC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29[-v7];
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10015489C();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v2[7];
  v12 = v2[5];
  v57 = v2[6];
  v58 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v59 = v2[8];
  v60 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v53 = v2[2];
  v54 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v55 = v2[4];
  v56 = v18;
  v19 = v2[1];
  v52[0] = *v2;
  v52[1] = v19;
  v48 = v57;
  v49 = v13;
  v20 = v2[9];
  v50 = v59;
  v51 = v20;
  v44 = v53;
  v45 = v17;
  v46 = v55;
  v47 = v12;
  v42 = v52[0];
  v43 = v16;
  v41 = 0;
  sub_100005F04(v52, &v31, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v21 = v61;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v21)
  {
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v31 = v42;
    v32 = v43;
    sub_100002CE0(&v31, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v31 = v42;
    v32 = v43;
    sub_100002CE0(&v31, &qword_1005A9328, &unk_1004C7F20);
    v22 = type metadata accessor for FriendshipOfferContent(0);
    v23 = v22[5];
    LOBYTE(v30) = 1;
    type metadata accessor for ClientContext();
    sub_100154014(&qword_1005AC568, type metadata accessor for ClientContext);
    v10 = v4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v2 + v22[6]);
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v2 + v22[7]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v2 + v22[8]);
    v29[7] = 4;
    sub_10004B564(&qword_1005ACB68, &qword_1004C7BB8);
    sub_1001549AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t sub_100151758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for ClientContext();
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005ACB58, &qword_1004C7BB0);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for FriendshipOfferContent(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v14 = a1[4];
  v45 = a1;
  sub_100011AEC(a1, v15);
  sub_10015489C();
  v16 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100004984(v45);
  }

  v34 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v42;
  v13[6] = v41;
  v13[7] = v17;
  v18 = v44;
  v13[8] = v43;
  v13[9] = v18;
  v19 = v38;
  v13[2] = v37;
  v13[3] = v19;
  v20 = v40;
  v13[4] = v39;
  v13[5] = v20;
  v21 = v36;
  *v13 = v35;
  v13[1] = v21;
  LOBYTE(v33) = 1;
  sub_100154014(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v5, v13 + v10[5]);
  LOBYTE(v33) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v13 + v10[6]) = v22;
  LOBYTE(v33) = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = (v13 + v10[7]);
  *v24 = v23;
  v24[1] = v25;
  sub_10004B564(&qword_1005ACB68, &qword_1004C7BB8);
  v32 = 4;
  sub_1001548F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v9, v30);
  *(v13 + v10[8]) = v33;
  sub_1001547D4(v13, v27, type metadata accessor for FriendshipOfferContent);
  sub_100004984(v45);
  return sub_10015483C(v13, type metadata accessor for FriendshipOfferContent);
}

uint64_t sub_100151BF8()
{
  v1 = *v0;
  v2 = 0x6F43726576726573;
  v3 = 0x73657269707865;
  v4 = 0x644970756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746E65696C63;
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

uint64_t sub_100151CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100155068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100151CC8(uint64_t a1)
{
  v2 = sub_10015489C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151D04(uint64_t a1)
{
  v2 = sub_10015489C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100151D70(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACB50, &qword_1004C7BA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100154780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[7];
  v11 = v2[5];
  v48 = v2[6];
  v49 = v10;
  v12 = v2[7];
  v13 = v2[9];
  v50 = v2[8];
  v51 = v13;
  v14 = v2[3];
  v15 = v2[1];
  v44 = v2[2];
  v45 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v46 = v2[4];
  v47 = v17;
  v18 = v2[1];
  v43[0] = *v2;
  v43[1] = v18;
  v39 = v48;
  v40 = v12;
  v19 = v2[9];
  v41 = v50;
  v42 = v19;
  v35 = v44;
  v36 = v16;
  v37 = v46;
  v38 = v11;
  v33 = v43[0];
  v34 = v15;
  v32 = 0;
  sub_100005F04(v43, v31, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v20 = v52;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v31[6] = v39;
  v31[7] = v40;
  v31[8] = v41;
  v31[9] = v42;
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  sub_100002CE0(v31, &qword_1005A9328, &unk_1004C7F20);
  if (!v20)
  {
    v21 = type metadata accessor for FriendshipRequestContent(0);
    v22 = v21[5];
    LOBYTE(v30) = 1;
    type metadata accessor for ClientContext();
    sub_100154014(&qword_1005AC568, type metadata accessor for ClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v2 + v21[6]);
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v2 + v21[7]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v2 + v21[8]);
    HIBYTE(v29) = 4;
    v28 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    v52 = v28;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = *(v2 + v21[9]);
    HIBYTE(v29) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100152178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for ClientContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004B564(&qword_1005ACB40, &qword_1004C7BA0);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v33);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FriendshipRequestContent(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v47 = a1;
  sub_100011AEC(a1, v15);
  sub_100154780();
  v32 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v47);
  }

  v36 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v44;
  v18 = v45;
  v14[6] = v43;
  v14[7] = v17;
  v19 = v46;
  v14[8] = v18;
  v14[9] = v19;
  v20 = v40;
  v14[2] = v39;
  v14[3] = v20;
  v21 = v42;
  v14[4] = v41;
  v14[5] = v21;
  v22 = v38;
  *v14 = v37;
  v14[1] = v22;
  LOBYTE(v35) = 1;
  sub_100154014(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v7, v14 + v11[5]);
  LOBYTE(v35) = 2;
  v23 = v32;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v14 + v11[6]) = v24;
  LOBYTE(v35) = 3;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = (v14 + v11[7]);
  *v26 = v25;
  v26[1] = v27;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v34 = 4;
  sub_10001CCC4(&qword_1005A9E80);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v11[8]) = v35;
  v34 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v31 + 8))(v23, v33);
  *(v14 + v11[9]) = v35;
  sub_1001547D4(v14, v30, type metadata accessor for FriendshipRequestContent);
  sub_100004984(v47);
  return sub_10015483C(v14, type metadata accessor for FriendshipRequestContent);
}

uint64_t sub_1001527AC()
{
  v1 = *v0;
  v2 = 0x6F43726576726573;
  v3 = 0x644970756F7267;
  v4 = 0x736C69616D65;
  if (v1 != 4)
  {
    v4 = 7562345;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F43746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x73657269707865;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100152864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100155230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015288C(uint64_t a1)
{
  v2 = sub_100154780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001528C8(uint64_t a1)
{
  v2 = sub_100154780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100152934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[41] = v4;
  v5 = *(v4 - 8);
  v3[42] = v5;
  v6 = *(v5 + 64) + 15;
  v3[43] = swift_task_alloc();
  v7 = type metadata accessor for FriendshipRequest();
  v3[44] = v7;
  v8 = *(v7 - 8);
  v3[45] = v8;
  v9 = *(v8 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v10 = type metadata accessor for FriendshipRequestType();
  v3[48] = v10;
  v11 = *(v10 - 8);
  v3[49] = v11;
  v12 = *(v11 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v13 = type metadata accessor for Account();
  v3[53] = v13;
  v14 = *(v13 - 8);
  v3[54] = v14;
  v15 = *(v14 + 64) + 15;
  v3[55] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v18 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_100152BFC, 0, 0);
}

uint64_t sub_100152BFC()
{
  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];
  v9 = v0[38];
  v8 = v0[39];
  v0[63] = sub_10014ABCC();
  FriendshipRequest.callerHandle.getter();
  FriendshipRequest.origin.getter();
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  (*(v6 + 16))(v5, v9, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[64] = v11;
  *v11 = v0;
  v11[1] = sub_100152D80;
  v12 = v0[62];
  v13 = v0[58];
  v14 = v0[55];
  v15 = v0[56];

  return sub_1001667E8(v12, v14, v15, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_100152D80()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 456);
  v5 = *v0;

  sub_100002CE0(v3, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v2, &qword_1005B3360, &unk_1004C6AA0);

  return _swift_task_switch(sub_100152ED4, 0, 0);
}

uint64_t sub_100152ED4()
{
  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[45];
  v5 = v0[40];
  (*(v3 + 104))(v1, enum case for FriendshipRequestType.offer(_:), v2);
  v6 = static FriendshipRequestType.== infix(_:_:)();
  v7 = *(v3 + 8);
  v3 += 8;
  v0[65] = v7;
  v0[66] = v3 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v8 = (v4 + 16);
  v9 = (v3 + 8);
  v10 = v0[62];
  v11 = v0[48];
  v12 = v0[44];
  v14 = v0[39];
  v13 = v0[40];
  if (v6)
  {
    v15 = v0[51];
    v16 = v0[47];
    sub_1001547D4(v10, v0[61], type metadata accessor for ClientContext);
    (*v8)(v16, v14, v12);
    (*v9)(v15, v13, v11);
    v0[29] = type metadata accessor for FriendshipOfferContent(0);
    v0[30] = sub_100154014(&qword_1005AC9D0, type metadata accessor for FriendshipOfferContent);
    v0[31] = sub_100154014(&qword_1005AC9D8, type metadata accessor for FriendshipOfferContent);
    v17 = sub_10000331C(v0 + 26);
    v18 = swift_task_alloc();
    v0[67] = v18;
    *v18 = v0;
    v18[1] = sub_10015324C;
    v19 = v0[61];
    v20 = v0[51];
    v21 = v0[47];

    return sub_10014D4A0(v17, v19, v21, v20);
  }

  else
  {
    v23 = v0[50];
    v24 = v0[46];
    sub_1001547D4(v10, v0[60], type metadata accessor for ClientContext);
    (*v8)(v24, v14, v12);
    (*v9)(v23, v13, v11);
    v0[11] = type metadata accessor for FriendshipRequestContent(0);
    v0[12] = sub_100154014(&qword_1005AC9B8, type metadata accessor for FriendshipRequestContent);
    v0[13] = sub_100154014(&qword_1005AC9C0, type metadata accessor for FriendshipRequestContent);
    v25 = sub_10000331C(v0 + 8);
    v26 = swift_task_alloc();
    v0[69] = v26;
    *v26 = v0;
    v26[1] = sub_100153778;
    v27 = v0[60];
    v28 = v0[50];
    v29 = v0[46];

    return sub_10014E5A8(v25, v27, v29, v28);
  }
}

uint64_t sub_10015324C()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_100153CA4;
  }

  else
  {
    v3 = sub_100153360;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100153360()
{
  v47 = v0;
  sub_1001540AC((v0 + 208), (v0 + 16));
  v1 = *(v0 + 544);
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    sub_1001540C4(v0 + 16, v0 + 160);
    sub_10004B564(&qword_1005AC9C8, &qword_1004C78B0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v46);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request content: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v10 = sub_10019E890;
  v10[1] = 0;
  (*(v11 + 104))(v10, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v12);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  swift_beginAccess();
  sub_1001540C4(v0 + 16, v0 + 112);
  v16 = *(v0 + 152);
  sub_100011AEC((v0 + 112), *(v0 + 136));
  v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    v45 = 0;
    v19 = 0xF000000000000000;
  }

  else
  {
    v19 = v18;
    v45 = v17;
  }

  v20 = *(v0 + 528);
  v22 = *(v0 + 496);
  v21 = *(v0 + 504);
  v33 = *(v0 + 488);
  v34 = *(v0 + 480);
  v35 = *(v0 + 472);
  v36 = *(v0 + 464);
  v37 = *(v0 + 456);
  v38 = *(v0 + 448);
  v23 = *(v0 + 432);
  v24 = *(v0 + 424);
  v39 = *(v0 + 440);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v42 = *(v0 + 400);
  v25 = *(v0 + 376);
  v26 = *(v0 + 360);
  v43 = *(v0 + 368);
  v27 = *(v0 + 352);
  v44 = *(v0 + 344);
  v28 = *(v0 + 312);
  v29 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v26 + 8))(v28, v27);
  (*(v23 + 8))(v29, v24);
  sub_10015483C(v22, type metadata accessor for ClientContext);
  sub_100004984((v0 + 112));
  sub_10001A794(0, 0xF000000000000000);
  sub_100004984((v0 + 16));

  sub_10002CF44(v45, v19);

  sub_10001A794(v45, v19);

  v30 = *(v0 + 8);
  v31 = *(v0 + 504);

  return v30(v31, v45, v19);
}

uint64_t sub_100153778()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_100153E4C;
  }

  else
  {
    v3 = sub_10015388C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015388C()
{
  v47 = v0;
  sub_1001540AC((v0 + 64), (v0 + 16));
  v1 = *(v0 + 560);
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    sub_1001540C4(v0 + 16, v0 + 160);
    sub_10004B564(&qword_1005AC9C8, &qword_1004C78B0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v46);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request content: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v10 = sub_10019E890;
  v10[1] = 0;
  (*(v11 + 104))(v10, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v12);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  swift_beginAccess();
  sub_1001540C4(v0 + 16, v0 + 112);
  v16 = *(v0 + 152);
  sub_100011AEC((v0 + 112), *(v0 + 136));
  v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    v45 = 0;
    v19 = 0xF000000000000000;
  }

  else
  {
    v19 = v18;
    v45 = v17;
  }

  v20 = *(v0 + 528);
  v22 = *(v0 + 496);
  v21 = *(v0 + 504);
  v33 = *(v0 + 488);
  v34 = *(v0 + 480);
  v35 = *(v0 + 472);
  v36 = *(v0 + 464);
  v37 = *(v0 + 456);
  v38 = *(v0 + 448);
  v23 = *(v0 + 432);
  v24 = *(v0 + 424);
  v39 = *(v0 + 440);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v42 = *(v0 + 400);
  v25 = *(v0 + 376);
  v26 = *(v0 + 360);
  v43 = *(v0 + 368);
  v27 = *(v0 + 352);
  v44 = *(v0 + 344);
  v28 = *(v0 + 312);
  v29 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v26 + 8))(v28, v27);
  (*(v23 + 8))(v29, v24);
  sub_10015483C(v22, type metadata accessor for ClientContext);
  sub_100004984((v0 + 112));
  sub_10001A794(0, 0xF000000000000000);
  sub_100004984((v0 + 16));

  sub_10002CF44(v45, v19);

  sub_10001A794(v45, v19);

  v30 = *(v0 + 8);
  v31 = *(v0 + 504);

  return v30(v31, v45, v19);
}

uint64_t sub_100153CA4()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 312);
  v8 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v6 + 8))(v7, v5);
  (*(v4 + 8))(v8, v3);
  sub_10015483C(v2, type metadata accessor for ClientContext);
  sub_10015405C((v0 + 208));
  v10 = *(v0 + 496);
  v9 = *(v0 + 504);
  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  v14 = *(v0 + 464);
  v13 = *(v0 + 472);
  v15 = *(v0 + 448);
  v16 = *(v0 + 456);
  v17 = *(v0 + 440);
  v18 = *(v0 + 416);
  v21 = *(v0 + 408);
  v22 = *(v0 + 400);
  v23 = *(v0 + 376);
  v24 = *(v0 + 368);
  v25 = *(v0 + 344);
  v26 = *(v0 + 544);

  sub_10001A794(0, 0xF000000000000000);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100153E4C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 312);
  v8 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v6 + 8))(v7, v5);
  (*(v4 + 8))(v8, v3);
  sub_10015483C(v2, type metadata accessor for ClientContext);
  sub_10015405C((v0 + 64));
  v10 = *(v0 + 496);
  v9 = *(v0 + 504);
  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  v14 = *(v0 + 464);
  v13 = *(v0 + 472);
  v15 = *(v0 + 448);
  v16 = *(v0 + 456);
  v17 = *(v0 + 440);
  v18 = *(v0 + 416);
  v21 = *(v0 + 408);
  v22 = *(v0 + 400);
  v23 = *(v0 + 376);
  v24 = *(v0 + 368);
  v25 = *(v0 + 344);
  v26 = *(v0 + 560);

  sub_10001A794(0, 0xF000000000000000);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100154014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10015405C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

_OWORD *sub_1001540AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1001540C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100154170()
{
  sub_100154568(319, &qword_1005AC500, &type metadata for ServerContext, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      sub_100154248();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100154248()
{
  if (!qword_1005ACA48)
  {
    type metadata accessor for IDSStatus();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005ACA48);
    }
  }
}

uint64_t sub_1001542C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10015439C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10015445C()
{
  sub_100154568(319, &qword_1005AC500, &type metadata for ServerContext, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      sub_100154568(319, &unk_1005ACAF0, &type metadata for String, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100149B90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100154568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1001545CC()
{
  result = qword_1005ACB30;
  if (!qword_1005ACB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB30);
  }

  return result;
}

uint64_t sub_100154620(uint64_t a1)
{
  *(a1 + 8) = sub_100154014(&qword_1005AC9B8, type metadata accessor for FriendshipRequestContent);
  result = sub_100154014(&qword_1005AC9C0, type metadata accessor for FriendshipRequestContent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001546A4(uint64_t a1)
{
  *(a1 + 8) = sub_100154014(&qword_1005AC9D0, type metadata accessor for FriendshipOfferContent);
  result = sub_100154014(&qword_1005AC9D8, type metadata accessor for FriendshipOfferContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015472C()
{
  result = qword_1005ACB38;
  if (!qword_1005ACB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB38);
  }

  return result;
}

unint64_t sub_100154780()
{
  result = qword_1005ACB48;
  if (!qword_1005ACB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB48);
  }

  return result;
}

uint64_t sub_1001547D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015483C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10015489C()
{
  result = qword_1005ACB60;
  if (!qword_1005ACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB60);
  }

  return result;
}

unint64_t sub_1001548F0()
{
  result = qword_1005ACB70;
  if (!qword_1005ACB70)
  {
    sub_10004B610(&qword_1005ACB68, &qword_1004C7BB8);
    sub_100154014(&qword_1005ACB78, &type metadata accessor for IDSStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB70);
  }

  return result;
}

unint64_t sub_1001549AC()
{
  result = qword_1005ACB88;
  if (!qword_1005ACB88)
  {
    sub_10004B610(&qword_1005ACB68, &qword_1004C7BB8);
    sub_100154014(&qword_1005ACB90, &type metadata accessor for IDSStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB88);
  }

  return result;
}

uint64_t sub_100154A68(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005ACB98, &unk_1004C7BC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_100011AEC(a1, v8);
  sub_100154CCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v15 = 0;
    sub_10014D0DC(&qword_1005AC970);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;
    sub_10001A794(0, 0xF000000000000000);

    sub_10002CF44(v10, v11);
    sub_100004984(a1);

    sub_10001A794(v10, v11);
  }

  return v8;
}

unint64_t sub_100154CCC()
{
  result = qword_1005ACBA0;
  if (!qword_1005ACBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBA0);
  }

  return result;
}

unint64_t sub_100154D54()
{
  result = qword_1005ACBB0;
  if (!qword_1005ACBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBB0);
  }

  return result;
}

unint64_t sub_100154DAC()
{
  result = qword_1005ACBB8;
  if (!qword_1005ACBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBB8);
  }

  return result;
}

unint64_t sub_100154E04()
{
  result = qword_1005ACBC0;
  if (!qword_1005ACBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBC0);
  }

  return result;
}

unint64_t sub_100154E5C()
{
  result = qword_1005ACBC8;
  if (!qword_1005ACBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBC8);
  }

  return result;
}

unint64_t sub_100154EB4()
{
  result = qword_1005ACBD0;
  if (!qword_1005ACBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBD0);
  }

  return result;
}

unint64_t sub_100154F0C()
{
  result = qword_1005ACBD8;
  if (!qword_1005ACBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBD8);
  }

  return result;
}

unint64_t sub_100154F64()
{
  result = qword_1005ACBE0;
  if (!qword_1005ACBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBE0);
  }

  return result;
}

unint64_t sub_100154FBC()
{
  result = qword_1005ACBE8;
  if (!qword_1005ACBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBE8);
  }

  return result;
}

unint64_t sub_100155014()
{
  result = qword_1005ACBF0;
  if (!qword_1005ACBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBF0);
  }

  return result;
}

uint64_t sub_100155068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004E2A90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100155230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100155438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[185] = a4;
  v4[184] = a3;
  v4[183] = a2;
  v4[182] = a1;
  v5 = type metadata accessor for Handle();
  v4[186] = v5;
  v6 = *(v5 - 8);
  v4[187] = v6;
  v7 = *(v6 + 64) + 15;
  v4[188] = swift_task_alloc();
  v4[189] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v4[190] = v9;
  *v9 = v4;
  v9[1] = sub_100155540;

  return daemon.getter();
}

uint64_t sub_100155540(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1520);
  v12 = *v1;
  *(v3 + 1528) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1536) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1001581FC(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001581FC(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10015571C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10015571C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1536);
  v6 = *v2;
  v4[193] = a1;
  v4[194] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100155AF8, 0, 0);
  }

  else
  {
    v7 = v4[191];

    v8 = swift_task_alloc();
    v4[195] = v8;
    *v8 = v6;
    v8[1] = sub_1001558AC;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_1001558AC()
{
  v1 = *(*v0 + 1560);
  v2 = *(*v0 + 1544);
  v4 = *v0;

  return _swift_task_switch(sub_1001559BC, v2, 0);
}

uint64_t sub_1001559BC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100155BEC, 0, 0);
}

uint64_t sub_100155AF8()
{
  v1 = v0[191];
  v2 = v0[189];
  v3 = v0[188];
  v4 = v0[185];
  v5 = v0[184];
  v6 = v0[183];

  v7 = type metadata accessor for GroupID();
  (*(*(v7 - 8) + 8))(v4, v7);
  sub_100157E4C(v6, type metadata accessor for ClientContext);

  v8 = v0[1];
  v9 = v0[194];

  return v8();
}

char *sub_100155BEC()
{
  v1 = v0[193];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[182];

  v6 = *(v0 + 62);
  *v5 = *(v0 + 61);
  v5[1] = v6;
  v7 = *(v0 + 63);
  v8 = *(v0 + 64);
  v9 = *(v0 + 66);
  v5[4] = *(v0 + 65);
  v5[5] = v9;
  v5[2] = v7;
  v5[3] = v8;
  v10 = *(v0 + 67);
  v11 = *(v0 + 68);
  v12 = *(v0 + 70);
  v5[8] = *(v0 + 69);
  v5[9] = v12;
  v5[6] = v10;
  v5[7] = v11;
  v13 = type metadata accessor for FriendshipStopOfferContent();
  sub_100157DE4(v4, v5 + v13[5], type metadata accessor for ClientContext);
  v14 = GroupID.rawValue.getter();
  v15 = (v5 + v13[6]);
  *v15 = v14;
  v15[1] = v16;
  v55 = v3;
  v17 = *(v3 + 16);
  if (v17)
  {
    v53 = v13;
    v18 = v0[187];
    v56 = v0;
    v19 = v0[184];
    result = sub_10002B3C0(0, v17, 0);
    v21 = 0;
    v22 = _swiftEmptyArrayStorage;
    v23 = v19 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v54 = v18;
    v59 = (v18 + 8);
    while (1)
    {
      if (v21 >= *(v55 + 16))
      {
        __break(1u);
        return result;
      }

      v57 = *(v54 + 72);
      v24 = *(v54 + 16);
      v24(v56[189], v23 + v57 * v21, v56[186]);
      v25 = Handle.serverID.getter();
      v27 = v26;
      v28 = v56[189];
      v29 = v56[186];
      if (!v27)
      {
        break;
      }

      v58 = *v59;
      result = (*v59)(v28, v29);
      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_10002B3C0((v30 > 1), v31 + 1, 1);
      }

      ++v21;
      _swiftEmptyArrayStorage[2] = v31 + 1;
      v32 = &_swiftEmptyArrayStorage[2 * v31];
      v32[4] = v25;
      v32[5] = v27;
      if (v17 == v21)
      {
        goto LABEL_11;
      }
    }

    v58 = *v59;
    (*v59)(v28, v29);

    v22 = 0;
LABEL_11:
    v0 = v56;
    *(v56[182] + v53[7]) = v22;
    sub_10002B3C0(0, v17, 0);
    do
    {
      v38 = v56[188];
      v39 = v56[186];
      v24(v38, v23, v39);
      v40 = Handle.identifier.getter();
      v42 = v41;
      v58(v38, v39);
      v44 = _swiftEmptyArrayStorage[2];
      v43 = _swiftEmptyArrayStorage[3];
      if (v44 >= v43 >> 1)
      {
        sub_10002B3C0((v43 > 1), v44 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v44 + 1;
      v45 = &_swiftEmptyArrayStorage[2 * v44];
      v45[4] = v40;
      v45[5] = v42;
      v23 += v57;
      --v17;
    }

    while (v17);
    v46 = v56[185];
    v47 = v56[184];
    v48 = v56[183];

    v49 = type metadata accessor for GroupID();
    (*(*(v49 - 8) + 8))(v46, v49);
    sub_100157E4C(v48, type metadata accessor for ClientContext);
    v13 = v53;
  }

  else
  {
    v33 = v0[185];
    v34 = v0[184];
    v35 = v0[183];
    v36 = v0[182];

    *(v36 + v13[7]) = _swiftEmptyArrayStorage;
    v37 = type metadata accessor for GroupID();
    (*(*(v37 - 8) + 8))(v33, v37);
    sub_100157E4C(v35, type metadata accessor for ClientContext);
  }

  v50 = v0[189];
  v51 = v0[188];
  *(v0[182] + v13[8]) = _swiftEmptyArrayStorage;

  v52 = v0[1];

  return v52();
}

uint64_t sub_100156020(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v20 = a5;
  v17 = a4;
  v9 = sub_10004B564(&qword_1005ACCE0, &qword_1004C81A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100158630();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v21 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v18 = a3;
    v19 = v17;
    v21 = 1;
    sub_10002CF44(a3, v17);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v18, v19);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}