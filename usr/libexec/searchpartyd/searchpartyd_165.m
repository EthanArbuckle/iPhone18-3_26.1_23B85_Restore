uint64_t sub_101104F50(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8660, &qword_1014072F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101105B0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v20 = *v3;
  v21 = v11;
  v22 = 0;
  sub_100017D5C(v20, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v20, v21);
    v12 = type metadata accessor for OwnedDeviceKeyRecord();
    v13 = v12[5];
    LOBYTE(v20) = 1;
    type metadata accessor for UUID();
    sub_101105C20(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v12[7]);
    v16 = v15[1];
    v20 = *v15;
    v21 = v16;
    v22 = 3;
    sub_100017D5C(v20, v16);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v20, v21);
    v18 = (v3 + v12[8]);
    v19 = v18[1];
    v20 = *v18;
    v21 = v19;
    v22 = 4;
    sub_100017D5C(v20, v19);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v20, v21);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101105220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = sub_1000BC4D4(&qword_1016C8650, &qword_1014072F0);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = v29 - v13;
  v15 = type metadata accessor for OwnedDeviceKeyRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101105B0C();
  v36 = v14;
  v20 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(a1);
  }

  v21 = v10;
  v37 = v8;
  v39 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v18 = v38;
  LOBYTE(v38) = 1;
  sub_101105C20(&qword_101698300, &type metadata accessor for UUID);
  v22 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v15;
  v23 = v22;
  v24 = v18 + *(v15 + 20);
  v29[0] = *(v33 + 32);
  (v29[0])(v24, v21, v22);
  LOBYTE(v38) = 2;
  v25 = v37;
  v29[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v30;
  (v29[0])(v18 + *(v30 + 24), v25, v23);
  v39 = 3;
  sub_10049E3BC();
  v27 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v18 + *(v26 + 28)) = v38;
  v39 = 4;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 8))(v36, v27);
  *(v18 + *(v26 + 32)) = v38;
  sub_101105B60(v18, v31);
  sub_100007BAC(a1);
  return sub_101105BC4(v18);
}

uint64_t sub_101105770(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (qword_101695268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177C680);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_101105844(uint64_t a1)
{
  *(a1 + 8) = sub_101105C20(&unk_1016C8620, type metadata accessor for OwnedDeviceKeyRecord);
  result = sub_101105C20(&unk_1016B1570, type metadata accessor for OwnedDeviceKeyRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for OwnedDeviceKeyRecord()
{
  result = qword_1016C86C0;
  if (!qword_1016C86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101105914(uint64_t a1)
{
  result = sub_101105C20(&unk_1016C8630, type metadata accessor for OwnedDeviceKeyRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10110596C()
{
  result = qword_1016C8640;
  if (!qword_1016C8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8640);
  }

  return result;
}

uint64_t sub_1011059C0(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OwnedDeviceKeyRecord();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *v10;
  v12 = v10[1];
  sub_100017D5C(v8, v9);
  sub_100017D5C(v11, v12);
  v13 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9, v11, v12);
  sub_100016590(v11, v12);
  sub_100016590(v8, v9);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = a1 + v14;
  v16 = *(a1 + v14);
  v17 = *(v15 + 8);
  v18 = (a2 + v14);
  v19 = *v18;
  v20 = v18[1];
  sub_100017D5C(v16, v17);
  sub_100017D5C(v19, v20);
  v21 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v16, v17, v19, v20);
  sub_100016590(v19, v20);
  sub_100016590(v16, v17);
  return v21 & 1;
}

unint64_t sub_101105B0C()
{
  result = qword_1016C8658;
  if (!qword_1016C8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8658);
  }

  return result;
}

uint64_t sub_101105B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedDeviceKeyRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101105BC4(uint64_t a1)
{
  v2 = type metadata accessor for OwnedDeviceKeyRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101105C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101105CB0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_101105D44()
{
  result = qword_1016C8708;
  if (!qword_1016C8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8708);
  }

  return result;
}

unint64_t sub_101105D9C()
{
  result = qword_1016C8710;
  if (!qword_1016C8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8710);
  }

  return result;
}

unint64_t sub_101105DF4()
{
  result = qword_1016C8718;
  if (!qword_1016C8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8718);
  }

  return result;
}

unint64_t sub_101105E4C()
{
  result = qword_1016C8720;
  if (!qword_1016C8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8720);
  }

  return result;
}

uint64_t sub_101105EA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010137B600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
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

uint64_t sub_101106080@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_101106130(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1011060AC(uint64_t a1)
{
  *(a1 + 8) = sub_1011060DC();
  result = sub_10030FCD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011060DC()
{
  result = qword_1016C8730;
  if (!qword_1016C8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8730);
  }

  return result;
}

uint64_t sub_101106130(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_100101824();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

uint64_t sub_101106310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011063C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10110633C(uint64_t a1)
{
  *(a1 + 8) = sub_10110636C();
  result = sub_100422278();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10110636C()
{
  result = qword_1016C8738;
  if (!qword_1016C8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8738);
  }

  return result;
}

uint64_t sub_1011063C0(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

__n128 sub_101106590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1011065B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1011065FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101106664@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      static Date.trustedNow.getter(v9);
      Date.addingTimeInterval(_:)();
      (*(v5 + 8))(v9, v4);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v18 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101074054(v29);
      v14 = v19;
      v15 = 1;
      v17 = 60.0;
    }

    else
    {
      static Date.trustedNow.getter(v9);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v22 = qword_10177B348;
      v23 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_1010748F4(v29);

      Date.addingTimeInterval(_:)();
      (*(v5 + 8))(v9, v4);
      v24 = *(v22 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101074060(v29);
      v14 = v25;
      v15 = 1;
      v17 = 25.0;
    }

    v16 = 1;
  }

  else if (a1)
  {
    static Date.distantPast.getter();
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v20 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074054(v29);
    v14 = v21;
    v16 = 0;
    v15 = 1;
    v17 = 25.0;
  }

  else
  {
    static Date.distantFuture.getter();
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v12 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074054(v29);
    v14 = v13;
    v15 = 0;
    v16 = 1;
    v17 = -1.0;
  }

  *a2 = v16;
  *(a2 + 1) = v15;
  *(a2 + 8) = v17;
  Configuration = type metadata accessor for LocationFetchConfiguration();
  result = (*(v5 + 32))(a2 + *(Configuration + 28), v11, v4);
  *(a2 + *(Configuration + 32)) = v14;
  return result;
}

uint64_t sub_101106A80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10062CFC0(a3, v3[4]);
  v13 = v3[3];
  v35 = a2;
  v34 = &v35;
  sub_1002EFACC(sub_1002EFAF0, v33, v13);
  v14 = v3[1];
  if (*(v14 + 16))
  {
    v15 = sub_1005C8A30(a1, v14);
    v16 = v15 && v12;
    v17 = v15;
  }

  else
  {
    v17 = 1;
    v16 = v12;
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177B368);
  (*(v8 + 16))(v11, a1, v7);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v17;
    v23 = v22;
    v35 = v22;
    *v21 = 67110147;
    *(v21 + 4) = v16 & 1;
    *(v21 + 8) = 2160;
    *(v21 + 10) = 1752392040;
    *(v21 + 18) = 2081;
    sub_1000096E8(&qword_101696930);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v12;
    v25 = v16;
    v27 = v26;
    (*(v8 + 8))(v11, v7);
    v28 = sub_1000136BC(v24, v27, &v35);
    v16 = v25;

    *(v21 + 20) = v28;
    *(v21 + 28) = 1024;
    *(v21 + 30) = v32;
    *(v21 + 34) = 1024;
    *(v21 + 36) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Session includes(%{BOOL}d) beacon %{private,mask.hash}s.\nbeaconIncluded %{BOOL}d, locationSourceIncluded %{BOOL}d.", v21, 0x28u);
    sub_100007BAC(v23);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  return v16 & 1;
}

uint64_t sub_101106DA0(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = sub_10062CFC0(a2, v3[4]);
  v7 = v3[3];
  v16 = a3;
  v15[2] = &v16;
  sub_1002EFACC(sub_1002EF830, v15, v7);
  if (*(v3[1] + 16))
  {
    v8 = v3[1];

    v10 = sub_10000954C(v9);

    v11 = a1[3];
    v12 = a1[4];
    sub_1000035D0(a1, v11);
    v13 = (*(v12 + 16))(v11, v12);
    LOBYTE(v11) = sub_101106EB4(v10, v13);

    v6 &= v11;
  }

  return v6 & 1;
}

uint64_t sub_101106EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a2 + 56);
  v41 = v5 + 32;
  v42 = (v17 + 63) >> 6;
  v45 = a1 + 56;
  v46 = v5 + 16;
  v47 = (v5 + 8);

  v21 = 0;
  v36 = a2 + 56;
  v37 = v14;
  v40 = a2;
  v38 = v5;
  v22 = v42;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
LABEL_11:
      v24 = *(v5 + 72);
      v25 = *(a2 + 48) + v24 * (__clz(__rbit64(v19)) | (v23 << 6));
      v43 = *(v5 + 16);
      v44 = v24;
      v43(v14, v25, v4);
      (*(v5 + 32))(v12, v14, v4);
      v26 = *(a1 + 16);
      v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27 = v12;
      if (!v26)
      {
        break;
      }

      v28 = *(a1 + 40);
      sub_1000096E8(&qword_1016967B0);
      v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      v32 = a1;
      v19 &= v19 - 1;
      v33 = ~v30;
      while (1)
      {
        v43(v9, *(v32 + 48) + v31 * v44, v4);
        sub_1000096E8(&qword_1016984A0);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v47;
        (*v47)(v9, v4);
        if (v34)
        {
          break;
        }

        v31 = (v31 + 1) & v33;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          v35(v27, v4);
          goto LABEL_19;
        }
      }

      v12 = v27;
      result = (v35)(v27, v4);
      v21 = v23;
      a2 = v40;
      a1 = v32;
      v14 = v37;
      v5 = v38;
      v16 = v36;
      v22 = v42;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    (*v47)(v27, v4);
LABEL_19:
    v15 = 0;
LABEL_21:

    return v15;
  }

LABEL_8:
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v15 = 1;
      goto LABEL_21;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_101107284()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_101107324()
{
  result = qword_1016C87E8;
  if (!qword_1016C87E8)
  {
    sub_1000BC580(&qword_1016C87F0, qword_101407738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C87E8);
  }

  return result;
}

unint64_t sub_10110738C()
{
  result = qword_1016C87F8;
  if (!qword_1016C87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C87F8);
  }

  return result;
}

unint64_t sub_1011073E0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E65644972657375;
    v6 = 0x65644970756F7267;
    if (a1 != 2)
    {
      v6 = 0x6574614465736162;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x754E6C6169726573;
    v2 = 0x42646567616E616DLL;
    if (a1 != 7)
    {
      v2 = 0x644974726170;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701667182;
    if (a1 != 4)
    {
      v3 = 0x6449726F646E6576;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_101107520(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C88E8, &qword_101407B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011097EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25[31] = 0;
  type metadata accessor for UUID();
  sub_101109900(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
    v12 = v11[5];
    v25[30] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[6];
    v25[29] = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v11[7];
    v25[28] = 3;
    type metadata accessor for Date();
    sub_101109900(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    v25[27] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v11[9]);
    v25[26] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = (v3 + v11[10]);
    v20 = *v19;
    v21 = v19[1];
    v25[25] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v11[11]);
    v25[24] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + v11[12]);
    v25[15] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10110787C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  sub_101109900(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v11 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v12 = v0 + v11[5];
  dispatch thunk of Hashable.hash(into:)();
  sub_100015794(v1 + v11[6], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v13 = v11[7];
  type metadata accessor for Date();
  sub_101109900(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v14 = (v1 + v11[8]);
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v11[9]));
  v17 = (v1 + v11[10]);
  v18 = *v17;
  v19 = v17[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v11[11]));
  Hasher._combine(_:)(*(v1 + v11[12]));
}

uint64_t sub_101107B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for Date();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v44 - v8;
  v9 = type metadata accessor for UUID();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v44 - v14;
  v57 = sub_1000BC4D4(&qword_1016C88D8, &qword_101407B48);
  v54 = *(v57 - 8);
  v15 = *(v54 + 64);
  __chkstk_darwin(v57);
  v17 = &v44 - v16;
  v18 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011097EC();
  v56 = v17;
  v23 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_100007BAC(a1);
  }

  v24 = v13;
  v58 = v21;
  v67 = 0;
  sub_101109900(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v9;
  v26 = *(v53 + 32);
  v26(v58, v55, v25);
  v66 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v25;
  v47 = v18;
  v27 = v26;
  v28 = v18;
  v27(&v58[*(v18 + 20)], v24, v25);
  v65 = 2;
  v29 = v50;
  v44 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v45 = a1;
  v30 = v28;
  v31 = v58;
  sub_10012C154(v29, &v58[v28[6]]);
  v64 = 3;
  sub_101109900(&qword_101697F40, &type metadata accessor for Date);
  v32 = v49;
  v33 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v51 + 32))(v31 + v30[7], v32, v33);
  v63 = 4;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v54;
  v36 = (v31 + v30[8]);
  *v36 = v34;
  v36[1] = v37;
  v62 = 5;
  *(v31 + v30[9]) = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = 6;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = (v31 + v30[10]);
  *v39 = v38;
  v39[1] = v40;
  v60 = 7;
  *(v31 + v30[11]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v59 = 8;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = 0;
  LOBYTE(v33) = v41;
  (*(v35 + 8))(v56, v57);
  v42 = v48;
  *(v31 + *(v47 + 48)) = v33;
  sub_101109840(v31, v42);
  sub_100007BAC(v45);
  return sub_1011098A4(v31);
}

uint64_t sub_1011082F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101108FCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10110831C(uint64_t a1)
{
  v2 = sub_1011097EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101108358(uint64_t a1)
{
  v2 = sub_1011097EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1011083C4()
{
  Hasher.init(_seed:)();
  sub_10110787C();
  return Hasher._finalize()();
}

Swift::Int sub_101108408()
{
  Hasher.init(_seed:)();
  sub_10110787C();
  return Hasher._finalize()();
}

uint64_t sub_101108448()
{
  _StringGuts.grow(_:)(29);

  v15 = *(v0 + 8);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A74766461202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v16 = *(v0 + 16);
  sub_100019D9C();
  v3._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A6B746C202CLL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = Data.subdata(in:)();
  v9 = v8;
  v10 = Data.hexString.getter();
  v12 = v11;
  sub_100016590(v7, v9);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return 0x203A7865646E693CLL;
}

uint64_t sub_101108598(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C88D0, &qword_101407B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011096E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = *v3;
  v14[0] = 0;
  sub_10028EAF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 8);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 16);
    v16 = *(v3 + 16);
    v15 = 2;
    sub_101109734(&v18, v14);
    sub_1002E6E8C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, *(&v16 + 1));
    v16 = *(v3 + 32);
    v17 = v16;
    v15 = 3;
    sub_101109790(&v17, v14);
    sub_10049F978();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1011087C8()
{
  v1 = 0x65636E6575716573;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x697463656E6E6F63;
  }

  if (*v0)
  {
    v1 = 0x7865646E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_101108850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1011092CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101108878(uint64_t a1)
{
  v2 = sub_1011096E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011088B4(uint64_t a1)
{
  v2 = sub_1011096E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1011088F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10110943C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_101108950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v18 = *(v17 + 20);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v36 = v17;
  v19 = *(v17 + 24);
  v20 = *(v13 + 48);
  sub_100015794(a1 + v19, v16);
  sub_100015794(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_100015794(v16, v12);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v20], v4);
      sub_101109900(&qword_1016984A0, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_10000B3A8(v16, &qword_1016AF880, &unk_10138CE20);
    return 0;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
  v24 = v36;
  v25 = v36[7];
  if (static Date.== infix(_:_:)())
  {
    if (v26 = v24[8], v27 = *(a1 + v26), v28 = *(a1 + v26 + 8), v29 = (a2 + v26), v27 == *v29) && v28 == v29[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (*(a1 + v24[9]) == *(a2 + v24[9]))
      {
        if (v30 = v24[10], v31 = *(a1 + v30), v32 = *(a1 + v30 + 8), v33 = (a2 + v30), v31 == *v33) && v32 == v33[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          if (*(a1 + v24[11]) == *(a2 + v24[11]))
          {
            return *(a1 + v24[12]) == *(a2 + v24[12]);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for ManagedCBPeripheralBeaconInfo()
{
  result = qword_1016C8858;
  if (!qword_1016C8858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101108D98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
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

uint64_t sub_101108DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_101108E64()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100395648();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_101108F78()
{
  result = qword_1016C88B8;
  if (!qword_1016C88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88B8);
  }

  return result;
}

uint64_t sub_101108FCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574614465736162 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x42646567616E616DLL && a2 == 0xEF794D646E694679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1011092CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101351250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xED000079654B6E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10110943C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C88C0, &qword_101407B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011096E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v21 = 0;
  sub_10028EA9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  LOBYTE(v19) = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  sub_1002E6D90();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v19;
  v17 = v20;
  v21 = 3;
  sub_10049F924();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  v14 = v20;
  v15 = v17;
  sub_100017D5C(v12, v17);
  sub_100017D5C(v13, v14);
  sub_100007BAC(a1);
  sub_100016590(v12, v15);
  result = sub_100016590(v13, v14);
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_1011096E0()
{
  result = qword_1016C88C8;
  if (!qword_1016C88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88C8);
  }

  return result;
}

unint64_t sub_1011097EC()
{
  result = qword_1016C88E0;
  if (!qword_1016C88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88E0);
  }

  return result;
}

uint64_t sub_101109840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011098A4(uint64_t a1)
{
  v2 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101109900(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10110996C()
{
  result = qword_1016C88F0;
  if (!qword_1016C88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88F0);
  }

  return result;
}

unint64_t sub_1011099C4()
{
  result = qword_1016C88F8;
  if (!qword_1016C88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C88F8);
  }

  return result;
}

unint64_t sub_101109A1C()
{
  result = qword_1016C8900;
  if (!qword_1016C8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8900);
  }

  return result;
}

unint64_t sub_101109A74()
{
  result = qword_1016C8908;
  if (!qword_1016C8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8908);
  }

  return result;
}

unint64_t sub_101109ACC()
{
  result = qword_1016C8910;
  if (!qword_1016C8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8910);
  }

  return result;
}

unint64_t sub_101109B24()
{
  result = qword_1016C8918;
  if (!qword_1016C8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8918);
  }

  return result;
}

uint64_t sub_101109B78()
{
  _StringGuts.grow(_:)(89);
  v1._countAndFlagsBits = 0x54646E6553706174;
  v1._object = 0xEB00000000203A73;
  String.append(_:)(v1);
  v11 = *v0;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x492065726168530ALL;
  v3._object = 0xEB00000000203A44;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 1));
  v4._countAndFlagsBits = 0x726F74697369760ALL;
  v4._object = 0xEF203A746E756F43;
  String.append(_:)(v4);
  v12 = v0[3];
  v13 = *(v0 + 32);
  sub_1000BC4D4(&qword_101697E58, &qword_1013C8210);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._object = 0x800000010137B720;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  LOBYTE(v12) = *(v0 + 33);
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x800000010137B740;
  String.append(_:)(v8);
  LOBYTE(v12) = *(v0 + 34);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  return 0;
}

uint64_t sub_101109D6C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8930, &qword_101407E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10110A5F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = *(v3 + 32);
  v19[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = *(v3 + 33);
  v19[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = *(v3 + 34);
  v19[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101109F50()
{
  v1 = *v0;
  v2 = 0x54646E6553706174;
  v3 = 0x43726F7469736976;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64496572616873;
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

uint64_t sub_101109FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10110A1B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10110A024(uint64_t a1)
{
  v2 = sub_10110A5F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10110A060(uint64_t a1)
{
  v2 = sub_10110A5F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10110A09C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10110A37C(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 31) = *&v7[15];
  }

  return result;
}

__n128 sub_10110A100(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10110A114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10110A15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10110A1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54646E6553706174 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43726F7469736976 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010137B760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134DAF0 == a2)
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

uint64_t sub_10110A37C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C8920, &qword_101407E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10110A5F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v29 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v24 = v12;
  v27 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v16;
  v22 = v15;
  v26 = 3;
  HIDWORD(v21) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = 4;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  v19 = v24;
  *a2 = v11;
  *(a2 + 8) = v19;
  v20 = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23 & 1;
  *(a2 + 33) = BYTE4(v21);
  *(a2 + 34) = v17;
  return result;
}

unint64_t sub_10110A5F8()
{
  result = qword_1016C8928;
  if (!qword_1016C8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8928);
  }

  return result;
}

unint64_t sub_10110A660()
{
  result = qword_1016C8938;
  if (!qword_1016C8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8938);
  }

  return result;
}

unint64_t sub_10110A6B8()
{
  result = qword_1016C8940;
  if (!qword_1016C8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8940);
  }

  return result;
}

unint64_t sub_10110A710()
{
  result = qword_1016C8948;
  if (!qword_1016C8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8948);
  }

  return result;
}

uint64_t sub_10110A764(int64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E752ELL;
      case 1:
        return 0x79646165726C612ELL;
      case 2:
        return 0xD000000000000012;
    }

LABEL_13:
    _StringGuts.grow(_:)(29);
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x8000000101379890;
    String.append(_:)(v3);
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    sub_10108890C(a1);
    return 0;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x6F707075736E752ELL;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    return 0x676E697373696D2ELL;
  }

  else
  {
    return 0x6544654D746F6E2ELL;
  }
}

unint64_t sub_10110A934(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7A696C616E69662ELL;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x64696C61766E692ELL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    v9 = 0x43676E6972696170;
    if (a1 != 7)
    {
      v9 = 0x656966697265762ELL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74616974696E692ELL;
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000016;
    if (a1 == 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000018;
    if (a1 == 1)
    {
      v4 = 0xD000000000000019;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_10110AADC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10110EB90(*a1);
  *a2 = result;
  return result;
}

void *sub_10110ABC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor;
  v9 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  *(v3 + v8) = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 0;
  v10 = v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_contributorContext) = 0;
  v11 = static Data.random(bytes:)();
  v13 = v12;
  v14 = type metadata accessor for AccessoryPairingInfo(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_100017D5C(v11, v13);
  v17 = sub_10024C9E8(v11, v13);
  if (v17)
  {
    *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) = v17;
    v3[3] = a3;
    v18 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_accessoryIdentifier;
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v4 + v18, a1, v19);
    v4[2] = a2;
    v21 = qword_101694FA8;

    v22 = a3;

    if (v21 != -1)
    {
      swift_once();
    }

    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v29)
    {
      (*(v20 + 8))(a1, v19);
      sub_100016590(v11, v13);
    }

    else
    {
      v27 = *(v4 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
      CurrentLocationMonitor.requestLocation()();

      sub_100016590(v11, v13);
      (*(v20 + 8))(a1, v19);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    sub_100016590(v11, v13);
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 8))(a1, v23);

    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext, &qword_101697380, &unk_10138BEF0);
    v24 = *(v3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_contributorContext);

    type metadata accessor for AccessoryPairingCoordinator();
    v25 = *(*v3 + 48);
    v26 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_10110AF9C()
{
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_accessoryIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext, &qword_101697380, &unk_10138BEF0);
  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_contributorContext);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

  return v0;
}

uint64_t sub_10110B0C8()
{
  sub_10110AF9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryPairingCoordinator()
{
  result = qword_1016C8988;
  if (!qword_1016C8988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10110B174()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10110B248()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  return Future.init(_:)();
}

id sub_10110B46C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v77 = type metadata accessor for AccessoryUnpairData();
  v6 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v78 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = &v62 - v21;
  v22 = sub_100EF9784();
  v24 = v23;
  v79 = a3;
  v25 = *(a3 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v26 = v25[16];
  if (!v26)
  {

LABEL_14:
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v82 = 6;
    v83 = 0u;
    v84 = 0u;
    v85 = 267;
    a1(&v82);

    return sub_10000B3A8(&v82, &qword_1016B1CA0, &qword_1013918C0);
  }

  v80 = a1;
  v27 = a2;
  v75 = v25[15];
  v76 = v22;
  v28 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1000D2A70(v25 + v28, v14, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
LABEL_13:
    a1 = v80;
    goto LABEL_14;
  }

  v29 = *(v16 + 32);
  v30 = v81;
  v72 = v16 + 32;
  v73 = v8;
  v71 = v29;
  v29(v81, v14, v15);
  v31 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v31 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    v45 = *(v16 + 8);

    v45(v30, v15);

    goto LABEL_13;
  }

  v74 = v16;

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v33 = result;
  v69 = v27;
  uniqueChipID = MobileGestalt_get_uniqueChipID();

  result = MobileGestalt_get_current_device();
  v34 = v80;
  v35 = v73;
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v36 = result;
  v68 = v24;
  chipID = MobileGestalt_get_chipID();

  (*(v74 + 16))(v20, v81, v15);
  v82 = uniqueChipID;
  uniqueChipID = dispatch thunk of CustomStringConvertible.description.getter();
  v67 = v38;
  v82 = chipID;
  v66 = dispatch thunk of CustomStringConvertible.description.getter();
  v65 = v39;
  v40 = v25[12];
  v64 = v25[11];
  v41 = v25[14];
  v42 = v69;
  if (v41 >> 60 == 15)
  {
    v43 = v40;

    v63 = 0;
    v44 = 0;
  }

  else
  {
    v82 = v25[13];
    *&v83 = v41;
    sub_1002313AC();
    v43 = v40;

    v63 = RawRepresentable<>.hexString.getter();
    v44 = v46;
  }

  v71(v35, v20, v15);
  v47 = v77;
  v48 = (v35 + *(v77 + 20));
  v49 = v76;
  *v48 = v75;
  v48[1] = v26;
  v50 = (v35 + v47[6]);
  *v50 = v49;
  v50[1] = v68;
  v51 = (v35 + v47[7]);
  v52 = v67;
  *v51 = uniqueChipID;
  v51[1] = v52;
  v53 = (v35 + v47[8]);
  v54 = v65;
  *v53 = v66;
  v53[1] = v54;
  v55 = (v35 + v47[9]);
  *v55 = v64;
  v55[1] = v43;
  v56 = (v35 + v47[10]);
  *v56 = v63;
  v56[1] = v44;
  v58 = v78;
  v57 = v79;
  v59 = *(v79 + 16);
  v60 = v74;
  (*(v74 + 56))(v78, 1, 1, v15);
  v61 = swift_allocObject();
  v61[2] = v34;
  v61[3] = v42;
  v61[4] = v57;

  sub_100416BFC(v58, v35, sub_10110ECC8, v61);

  sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
  sub_10110EDA4(v35, type metadata accessor for AccessoryUnpairData);
  return (*(v60 + 8))(v81, v15);
}

uint64_t sub_10110BB18(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100008C00();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    v11[0] = a1;
    v12 = 256;
    swift_errorRetain();
    a2(v11);
  }

  else
  {
    *(a4 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 11;
    HIBYTE(v12) = 0;
    a2(v11);
  }

  return sub_10000B3A8(v11, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_10110BCB8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v61 = a2;
  v54 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v4;
  v20 = *(v4 + 24);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v22)
  {
    v51 = v10;
    v15 = v64;
    static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
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
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  v24 = v62;
  v25 = UUID.uuidString.getter();
  v27 = v26;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  os_log(_:dso:log:_:_:)();

  *(v24 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 9;
  v28 = v24;
  sub_1000BC488();
  v29 = v51;
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v51);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v29);
  v31 = swift_allocObject();
  v32 = v53;
  v31[2] = v52;
  v31[3] = v32;
  v33 = v54;
  v31[4] = v54;
  aBlock[4] = sub_10110EC20;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101667DD0;
  v34 = _Block_copy(aBlock);

  v35 = v33;
  v36 = v55;
  static DispatchQoS.unspecified.getter();
  v64[0] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v37 = v57;
  v38 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v59 + 8))(v37, v38);
  (*(v56 + 8))(v36, v58);

  v39 = *(v28 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

  sub_10024DED0(v63);

  v40 = v63[5];
  v15[4] = v63[4];
  v15[5] = v40;
  v41 = v63[7];
  v15[6] = v63[6];
  v15[7] = v41;
  v42 = v63[1];
  *v15 = v63[0];
  v15[1] = v42;
  v43 = v63[3];
  v15[2] = v63[2];
  v15[3] = v43;
  result = sub_10058B134(v64);
  if (result != 1)
  {
    v45 = v15[5];
    v15[12] = v15[4];
    v15[13] = v45;
    v46 = v15[7];
    v15[14] = v15[6];
    v15[15] = v46;
    v47 = v15[1];
    v15[8] = *v15;
    v15[9] = v47;
    v48 = v15[3];
    v15[10] = v15[2];
    v15[11] = v48;
    v49 = type metadata accessor for Transaction();
    __chkstk_darwin(v49);
    *(&v50 - 2) = v28;
    *(&v50 - 1) = aBlock;
    static Transaction.named<A>(_:with:)();
    return sub_10000B3A8(v63, &qword_1016C8AE0, &qword_101408148);
  }

  return result;
}

uint64_t sub_10110C300(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryPairingLockAckResponse();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v9 = sub_1000BC4D4(&qword_10169F840, &unk_1013A1790);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v24 - v11);
  Transaction.capture()();
  sub_1000D2A70(a1, v12, &qword_10169F840, &unk_1013A1790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v24[1] = v13;
    type metadata accessor for SPPairingSessionError(0);
    v15 = v13;
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10110ED3C(v12, v8, type metadata accessor for AccessoryPairingLockAckResponse);
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    sub_10110ECD4(v8, v6, type metadata accessor for AccessoryPairingLockAckResponse);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    return sub_10110EDA4(v8, type metadata accessor for AccessoryPairingLockAckResponse);
  }
}

uint64_t sub_10110C658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v19 = 0x7365547265646E75;
  v20 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v21 & 1) == 0)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v14 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074624(v19);
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v16 = type metadata accessor for Transaction();
  __chkstk_darwin(v16);
  *(&v18 - 4) = v3;
  *(&v18 - 3) = v13;
  *(&v18 - 2) = a1;
  *(&v18 - 1) = a2;
  static Transaction.named<A>(_:with:)();
  return (v15)(v13, v6);
}

unint64_t sub_10110C914()
{
  result = qword_1016C8AD0;
  if (!qword_1016C8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8AD0);
  }

  return result;
}

uint64_t sub_10110C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v21[0] = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a2 + 24);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v18 = v21[0];
  v17[4] = a5;
  v17[5] = v18;
  aBlock[4] = sub_10110EC14;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101667CE0;
  v19 = _Block_copy(aBlock);

  sub_100012908(a4);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_10110CC40(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v56 = a3;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v55);
  v54 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v53 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v49 = a2;
    v52 = v4;
    Transaction.capture()();
    v18 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
    v19 = *(v17 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState);
    v20 = static os_log_type_t.default.getter();
    v50 = v8;
    v51 = v7;
    if (v19 >= 9)
    {
      v48 = v20;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v47[1] = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10138BBE0;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      *(v33 + 56) = &type metadata for String;
      v37 = sub_100008C00();
      *(v33 + 64) = v37;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v38 = sub_10110A934(*(v17 + v18));
      *(v33 + 96) = &type metadata for String;
      *(v33 + 104) = v37;
      *(v33 + 72) = v38;
      *(v33 + 80) = v39;
      os_log(_:dso:log:_:_:)();

      sub_1000BC488();
      (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
      v40 = static OS_dispatch_queue.global(qos:)();
      (*(v12 + 8))(v15, v11);
      v41 = swift_allocObject();
      v42 = v49;
      v43 = v56;
      *(v41 + 16) = v49;
      *(v41 + 24) = v43;
      v62 = sub_100FCB39C;
      v63 = v41;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100006684;
      v61 = &unk_101667D30;
      v44 = _Block_copy(&aBlock);
      sub_100012908(v42);
      v30 = v53;
      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v46 = v54;
      v45 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);

      (*(v52 + 8))(v46, v45);
    }

    else
    {
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_101385D80;
      v22 = UUID.uuidString.getter();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100008C00();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      os_log(_:dso:log:_:_:)();

      sub_10110B248();

      sub_1000BC488();
      (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
      v25 = static OS_dispatch_queue.global(qos:)();
      (*(v12 + 8))(v15, v11);
      v26 = swift_allocObject();
      v27 = v49;
      v28 = v56;
      *(v26 + 16) = v49;
      *(v26 + 24) = v28;
      v62 = sub_100FCB3A4;
      v63 = v26;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100006684;
      v61 = &unk_101667D80;
      v29 = _Block_copy(&aBlock);
      sub_100012908(v27);
      v30 = v53;
      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v32 = v54;
      v31 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v52 + 8))(v32, v31);
    }

    (*(v50 + 8))(v30, v51);
  }

  else if (a2)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_10110D354@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1006072D4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10110D3E0(void *a1, uint64_t a2)
{
  v102 = a2;
  v112 = a1;
  v113 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v109 = *(v113 - 8);
  v2 = *(v109 + 64);
  v3 = __chkstk_darwin(v113);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v116 = &v97 - v6;
  v7 = __chkstk_darwin(v5);
  v115 = &v97 - v8;
  __chkstk_darwin(v7);
  v108 = &v97 - v9;
  v10 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v97 - v15;
  v16 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v97 - v18;
  v20 = type metadata accessor for OwnedBeaconGroup(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for __DataStorage();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = __DataStorage.init(length:)();
  sub_1000D2A70(v112, v19, &unk_1016AF8B0, &unk_1013A0700);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000B3A8(v19, &unk_1016AF8B0, &unk_1013A0700);
    v29 = *(v25 + 48);
    v30 = *(v25 + 52);
    swift_allocObject();
    __DataStorage.init(length:)();

    return 0x6000000000;
  }

  sub_10110ED3C(v19, v24, type metadata accessor for OwnedBeaconGroup);
  if (v102 > 3u)
  {
    v88 = v102;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177C418);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134218240;
      *(v92 + 4) = 4;
      *(v92 + 12) = 256;
      *(v92 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v90, v91, "pairingPart > %ld! (%hhu", v92, 0xFu);
    }

    v93 = *(v25 + 48);
    v94 = *(v25 + 52);
    swift_allocObject();
    __DataStorage.init(length:)();

    sub_10110EDA4(v24, type metadata accessor for OwnedBeaconGroup);
    return 0x6000000000;
  }

  v97 = v28;
  v31 = v28 | 0x4000000000000000;
  v32 = 0x2000000000;
  sub_100017D5C(0x2000000000, v31);
  v33 = sub_100A5B734(0, 1, 1, _swiftEmptyArrayStorage);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  v36 = v33;
  v37 = v35 + 1;
  if (v35 >= v34 >> 1)
  {
LABEL_50:
    v36 = sub_100A5B734((v34 > 1), v37, 1, v36);
  }

  *(v36 + 2) = v37;
  v38 = &v36[16 * v35];
  *(v38 + 4) = v32;
  *(v38 + 5) = v31;
  sub_100017D5C(0x2000000000, v31);
  v39 = *(v36 + 3);
  v40 = v35 + 2;
  if ((v35 + 2) > (v39 >> 1))
  {
    v36 = sub_100A5B734((v39 > 1), v35 + 2, 1, v36);
  }

  *(v36 + 2) = v40;
  v41 = &v36[16 * v37];
  *(v41 + 4) = v32;
  *(v41 + 5) = v31;
  sub_100017D5C(0x2000000000, v31);
  v42 = *(v36 + 3);
  v43 = v35 + 3;
  if ((v35 + 3) > (v42 >> 1))
  {
    v36 = sub_100A5B734((v42 > 1), v35 + 3, 1, v36);
  }

  *(v36 + 2) = v43;
  v44 = &v36[16 * v40];
  *(v44 + 4) = v32;
  *(v44 + 5) = v31;
  sub_100017D5C(0x2000000000, v31);
  v45 = *(v36 + 3);
  if ((v35 + 4) > (v45 >> 1))
  {
    v36 = sub_100A5B734((v45 > 1), v35 + 4, 1, v36);
  }

  *(v36 + 2) = v35 + 4;
  v99 = v36 + 32;
  v46 = &v36[16 * v43 + 32];
  *v46 = 0x2000000000;
  *(v46 + 1) = v31;
  v100 = v36;
  v118 = v36;
  v47 = *(v20 + 10);
  v98 = v24;
  v48 = *(v24 + v47);
  v35 = v48 + 64;
  v49 = 1 << *(v48 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v24 = v50 & *(v48 + 64);
  v32 = (v49 + 63) >> 6;
  v107 = v48;

  v51 = 0;
  v36 = &qword_1016A4190;
  *&v52 = 136446210;
  v101 = v52;
  v53 = v115;
  v37 = v116;
  v111 = v35;
  v112 = v14;
  while (1)
  {
    if (!v24)
    {
      if (v32 <= (v51 + 1))
      {
        v54 = v51 + 1;
      }

      else
      {
        v54 = v32;
      }

      v31 = v54 - 1;
      while (1)
      {
        v34 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v34 >= v32)
        {
          v82 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
          (*(*(v82 - 8) + 56))(v14, 1, 1, v82);
          v24 = 0;
          v51 = v31;
          goto LABEL_27;
        }

        v24 = *(v35 + 8 * v34);
        ++v51;
        if (v24)
        {
          v51 = v34;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v34 = v51;
LABEL_26:
    v55 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v56 = v55 | (v34 << 6);
    v57 = v108;
    v58 = (*(v107 + 48) + 16 * v56);
    v59 = *v58;
    v60 = v58[1];
    sub_10110ECD4(*(v107 + 56) + *(v109 + 72) * v56, v108, type metadata accessor for OwnedBeaconGroup.PairingState);
    v61 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v62 = *(v61 + 48);
    v14 = v112;
    *v112 = v59;
    *(v14 + 8) = v60;
    sub_10110ED3C(v57, v14 + v62, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v61 - 8) + 56))(v14, 0, 1, v61);
    sub_100017D5C(v59, v60);
    v53 = v115;
    v37 = v116;
LABEL_27:
    v20 = v14;
    v63 = v114;
    sub_101072210(v14, v114);
    v64 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
    {
      break;
    }

    sub_100016590(*v63, *(v63 + 8));
    sub_10110ED3C(v63 + *(v64 + 48), v53, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10110ECD4(v53, v37, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v14 = v65[12];
      v66 = (v37 + v65[16]);
      v35 = v66[1];
      v110 = *v66;
      if (v35 >> 60 == 15 || (v67 = (v37 + v65[24]), v67[1] == 1))
      {
        v105 = v35;
        v106 = v14;
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        sub_1000076D4(v68, qword_10177C418);
        v69 = v104;
        sub_10110ECD4(v53, v104, type metadata accessor for OwnedBeaconGroup.PairingState);
        v70 = v69;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v117 = v74;
          *v73 = v101;
          v75 = v70;
          v76 = sub_10051C934(v74);
          v78 = v77;
          v103 = type metadata accessor for OwnedBeaconGroup.PairingState;
          sub_10110EDA4(v75, type metadata accessor for OwnedBeaconGroup.PairingState);
          v79 = sub_1000136BC(v76, v78, &v117);
          v37 = v116;

          *(v73 + 4) = v79;
          _os_log_impl(&_mh_execute_header, v71, v72, "Missing nonce/partId on %{public}s)", v73, 0xCu);
          sub_100007BAC(v74);
          v53 = v115;

          v20 = v112;

          sub_100006654(v110, v105);
          v80 = v53;
          v81 = v103;
        }

        else
        {

          sub_100006654(v110, v105);
          sub_10110EDA4(v70, type metadata accessor for OwnedBeaconGroup.PairingState);
          v80 = v53;
          v81 = type metadata accessor for OwnedBeaconGroup.PairingState;
        }

        sub_10110EDA4(v80, v81);
        v83 = v37 + v106;
      }

      else
      {
        v31 = *v67;
        sub_10110EDA4(v53, type metadata accessor for OwnedBeaconGroup.PairingState);
        v36 = v100;
        v34 = *(v100 + 2);
        if (v34 <= v31)
        {
          goto LABEL_49;
        }

        v84 = &v99[16 * v31];
        v85 = *v84;
        v86 = v84[1];
        *v84 = v110;
        v84[1] = v35;
        sub_100016590(v85, v86);
        v118 = v36;
        v83 = v37 + v14;
      }

      sub_10000B3A8(v83, &qword_1016A40D0, &unk_10138BE70);
      v87 = type metadata accessor for UUID();
      (*(*(v87 - 8) + 8))(v37, v87);
    }

    else
    {
      sub_10110EDA4(v53, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10110EDA4(v37, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    v36 = &qword_1016A4190;
    v14 = v20;
    v35 = v111;
  }

  sub_10110D354(v102, &v117);
  sub_100016590(v117, *(&v117 + 1));
  v96 = sub_10025FD00(v118);

  sub_10110EDA4(v98, type metadata accessor for OwnedBeaconGroup);
  return v96;
}

uint64_t sub_10110DFBC(uint64_t *a1, int64_t a2)
{
  v117 = a1;
  v118 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v115 = *(v118 - 8);
  v3 = *(v115 + 64);
  v4 = __chkstk_darwin(v118);
  v112 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v120 = &v104 - v7;
  v8 = __chkstk_darwin(v6);
  v121 = &v104 - v9;
  __chkstk_darwin(v8);
  v114 = &v104 - v10;
  v11 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v119 = &v104 - v16;
  v17 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v104 - v19;
  v21 = type metadata accessor for OwnedBeaconGroup(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100268BBC(8uLL);
  v28 = v27;
  sub_1000D2A70(v117, v20, &unk_1016AF8B0, &unk_1013A0700);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016AF8B0, &unk_1013A0700);
    v29 = type metadata accessor for __DataStorage();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    __DataStorage.init(length:)();
    return 0x1800000000;
  }

  sub_10110ED3C(v20, v25, type metadata accessor for OwnedBeaconGroup);
  if (a2 > 3u)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_1000076D4(v95, qword_10177C418);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 134218240;
      *(v98 + 4) = 4;
      *(v98 + 12) = 256;
      *(v98 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v96, v97, "pairingPart > %ld! (%hhu", v98, 0xFu);
    }

    v99 = type metadata accessor for __DataStorage();
    v100 = *(v99 + 48);
    v101 = *(v99 + 52);
    swift_allocObject();
    __DataStorage.init(length:)();
    sub_10110EDA4(v25, type metadata accessor for OwnedBeaconGroup);
    return 0x1800000000;
  }

  v32 = v28 & 0xFFFFFFFFFFFFFFLL;
  v33 = sub_100A5B734(0, 1, 1, _swiftEmptyArrayStorage);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
LABEL_49:
    v33 = sub_100A5B734((v34 > 1), v37, 1, v33);
    v34 = *(v33 + 3);
    v36 = v34 >> 1;
  }

  *(v33 + 2) = v37;
  v38 = &v33[16 * v35];
  *(v38 + 4) = v26;
  *(v38 + 5) = v32;
  v39 = (v35 + 2);
  if (v36 < v35 + 2)
  {
    v33 = sub_100A5B734((v34 > 1), v35 + 2, 1, v33);
  }

  *(v33 + 2) = v39;
  v40 = &v33[16 * v37];
  *(v40 + 4) = v26;
  *(v40 + 5) = v32;
  v41 = *(v33 + 3);
  v42 = (v35 + 3);
  if (v35 + 3 > (v41 >> 1))
  {
    v33 = sub_100A5B734((v41 > 1), v35 + 3, 1, v33);
  }

  *(v33 + 2) = v42;
  v43 = &v33[16 * v39];
  *(v43 + 4) = v26;
  *(v43 + 5) = v32;
  v44 = *(v33 + 3);
  v105 = a2;
  if (v35 + 4 > (v44 >> 1))
  {
    v33 = sub_100A5B734((v44 > 1), v35 + 4, 1, v33);
  }

  *(v33 + 2) = v35 + 4;
  v106 = v33 + 32;
  v107 = v33;
  v45 = &v33[16 * v42 + 32];
  *v45 = v26;
  *(v45 + 1) = v32;
  v123 = v33;
  v46 = *(v21 + 40);
  v104 = v25;
  v47 = *(v25 + v46);
  v26 = (v47 + 64);
  v48 = 1 << *(v47 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v25 = v49 & *(v47 + 64);
  a2 = (v48 + 63) >> 6;
  v113 = v47;

  v32 = 0;
  v50 = &qword_1016A4190;
  v35 = &unk_1013A3550;
  *&v51 = 136446210;
  v108 = v51;
  v52 = v120;
  v37 = v121;
  v116 = v26;
  v117 = v15;
  while (1)
  {
    if (!v25)
    {
      if (a2 <= v32 + 1)
      {
        v53 = v32 + 1;
      }

      else
      {
        v53 = a2;
      }

      v21 = v53 - 1;
      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= a2)
        {
          v85 = sub_1000BC4D4(v50, &unk_1013A3550);
          (*(*(v85 - 8) + 56))(v15, 1, 1, v85);
          v25 = 0;
          v32 = v21;
          goto LABEL_27;
        }

        v25 = v26[v34];
        ++v32;
        if (v25)
        {
          v32 = v34;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v34 = v32;
LABEL_26:
    v54 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v55 = v54 | (v34 << 6);
    v56 = v114;
    v57 = (*(v113 + 48) + 16 * v55);
    v58 = *v57;
    v59 = v57[1];
    sub_10110ECD4(*(v113 + 56) + *(v115 + 72) * v55, v114, type metadata accessor for OwnedBeaconGroup.PairingState);
    v60 = sub_1000BC4D4(v50, &unk_1013A3550);
    v61 = *(v60 + 48);
    v62 = v117;
    *v117 = v58;
    v62[1] = v59;
    v63 = v56;
    v15 = v62;
    sub_10110ED3C(v63, v62 + v61, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v60 - 8) + 56))(v15, 0, 1, v60);
    sub_100017D5C(v58, v59);
    v52 = v120;
    v37 = v121;
LABEL_27:
    v64 = v50;
    v26 = v15;
    v65 = v119;
    sub_101072210(v15, v119);
    v66 = v64;
    v67 = sub_1000BC4D4(v64, &unk_1013A3550);
    if ((*(*(v67 - 8) + 48))(v65, 1, v67) == 1)
    {
      break;
    }

    sub_100016590(*v65, *(v65 + 8));
    sub_10110ED3C(v65 + *(v67 + 48), v37, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10110ECD4(v37, v52, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v69 = v68[12];
      sub_100006654(*(v52 + v68[16]), *(v52 + v68[16] + 8));
      v70 = v52 + v68[20];
      if ((*(v70 + 8) & 1) != 0 || (v71 = (v52 + v68[24]), v71[1] == 1))
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_1000076D4(v72, qword_10177C418);
        v73 = v112;
        sub_10110ECD4(v37, v112, type metadata accessor for OwnedBeaconGroup.PairingState);
        v74 = Logger.logObject.getter();
        v75 = v73;
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v74, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v109 = v78;
          *&v122 = v78;
          *v77 = v108;
          v79 = sub_10051C934(v78);
          v111 = v69;
          v81 = v80;
          v110 = type metadata accessor for OwnedBeaconGroup.PairingState;
          sub_10110EDA4(v75, type metadata accessor for OwnedBeaconGroup.PairingState);
          v82 = sub_1000136BC(v79, v81, &v122);
          v69 = v111;

          *(v77 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v74, v76, "Missing epoch/partId on %{public}s", v77, 0xCu);
          sub_100007BAC(v109);
          v26 = v117;

          v52 = v120;

          v37 = v121;
          v83 = v121;
          v84 = v110;
        }

        else
        {

          sub_10110EDA4(v75, type metadata accessor for OwnedBeaconGroup.PairingState);
          v37 = v121;
          v83 = v121;
          v84 = type metadata accessor for OwnedBeaconGroup.PairingState;
        }

        sub_10110EDA4(v83, v84);
        v50 = v66;
        sub_10000B3A8(&v69[v52], &qword_1016A40D0, &unk_10138BE70);
        v86 = type metadata accessor for UUID();
        (*(*(v86 - 8) + 8))(v52, v86);
      }

      else
      {
        v50 = v66;
        v15 = v69;
        v35 = *v71;
        *&v122 = *v70;
        sub_100102194();
        v21 = FixedWidthInteger.data.getter();
        v87 = v37;
        v37 = v88;
        sub_10110EDA4(v87, type metadata accessor for OwnedBeaconGroup.PairingState);
        v89 = v107;
        v34 = *(v107 + 2);
        if (v34 <= v35)
        {
          goto LABEL_48;
        }

        v90 = &v106[16 * v35];
        v91 = *v90;
        v92 = v90[1];
        *v90 = v21;
        v90[1] = v37;
        v93 = v89;
        sub_100016590(v91, v92);
        v123 = v93;
        sub_10000B3A8(&v15[v52], &qword_1016A40D0, &unk_10138BE70);
        v94 = type metadata accessor for UUID();
        (*(*(v94 - 8) + 8))(v52, v94);
        v37 = v121;
      }
    }

    else
    {
      sub_10110EDA4(v37, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10110EDA4(v52, type metadata accessor for OwnedBeaconGroup.PairingState);
      v50 = v66;
    }

    v15 = v26;
    v26 = v116;
    v35 = &unk_1013A3550;
  }

  sub_10110D354(v105, &v122);
  sub_100016590(v122, *(&v122 + 1));
  v103 = sub_10025FD00(v123);
  sub_10110EDA4(v104, type metadata accessor for OwnedBeaconGroup);
  return v103;
}

unint64_t sub_10110EB90(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_10110EBA0()
{
  result = qword_1016C8AD8;
  if (!qword_1016C8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8AD8);
  }

  return result;
}

uint64_t sub_10110EC54(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + 16);

  sub_100418510(v3, sub_10110ECB8, a1);
}

uint64_t sub_10110ECD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10110ED3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10110EDA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10110EE20(uint64_t a1, void *a2)
{
  v44 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  v5 = __chkstk_darwin(v44);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v43 = v39 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return result;
  }

  v41 = type metadata accessor for MACAddress();
  v11 = *(v41 - 8);
  v12 = *(v11 + 56);
  v39[1] = v11 + 56;
  v40 = v12;
  v13 = (a1 + 40);
  while (1)
  {
    v45 = v10;
    v15 = *(v13 - 1);
    v16 = *v13;
    v18 = v43;
    v17 = v44;
    v40(&v43[*(v44 + 24)], 1, 1, v41);
    *v18 = 255;
    *(v18 + *(v17 + 28)) = 0;
    v19 = v18;
    v20 = v7;
    sub_10002AEB4(v19, v7, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_100017D5C(v15, v16);
    v21 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    v24 = *a2;
    v46 = v24;
    v26 = sub_100771E30(v15, v16);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v46;
        if (v25)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1010052AC();
        v33 = v46;
        if (v30)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100FE68A8(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_100771E30(v15, v16);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_19;
      }

      v26 = v31;
      v33 = v46;
      if (v30)
      {
LABEL_3:
        v14 = v33[7] + *(v42 + 72) * v26;
        v7 = v20;
        sub_1008374C4(v20, v14);
        result = sub_100016590(v15, v16);
        goto LABEL_4;
      }
    }

    v33[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v33[6] + 16 * v26);
    *v34 = v15;
    v34[1] = v16;
    v35 = v33[7] + *(v42 + 72) * v26;
    v7 = v20;
    result = sub_10002AEB4(v20, v35, type metadata accessor for MultipartAccessoryPairingInfo);
    v36 = v33[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_18;
    }

    v33[2] = v38;
LABEL_4:
    v13 += 2;
    *v23 = v33;
    a2 = v23;
    v10 = v45 - 1;
    if (v45 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10110F124@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = *(v9 + 32);
    v40(v12, v7, v8);
    if (a1)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = 31743;
    }

    v39 = v14;
    v15 = type metadata accessor for AccessoryProductInfo();
    v16 = v15[5];
    v17 = enum case for ServerStatusCode.success(_:);
    v18 = type metadata accessor for ServerStatusCode();
    (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
    v38 = UUID.uuidString.getter();
    v20 = v19;
    v21 = *(v9 + 56);
    v21(a2 + v15[17], 1, 1, v8);
    v21(a2 + v15[18], 1, 1, v8);
    v22 = v15[21];
    v23 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
    v24 = *(v9 + 16);
    v24(a2 + v15[38], v12, v8);
    v24(a2 + v15[39], v12, v8);
    v24(a2 + v15[40], v12, v8);
    v24(a2 + v15[41], v12, v8);
    v24(a2 + v15[42], v12, v8);
    *a2 = 0;
    *(a2 + 8) = 1;
    *(a2 + v15[6]) = 1;
    *(a2 + v15[7]) = 0;
    *(a2 + v15[8]) = 2;
    v25 = (a2 + v15[9]);
    *v25 = v38;
    v25[1] = v20;
    *(a2 + v15[10]) = 2;
    *(a2 + v15[11]) = 1;
    *(a2 + v15[12]) = 2;
    v26 = (a2 + v15[13]);
    *v26 = 0x726F737365636361;
    v26[1] = 0xE900000000000079;
    v27 = (a2 + v15[14]);
    *v27 = 0x656C707041;
    v27[1] = 0xE500000000000000;
    v28 = a2 + v15[15];
    *v28 = 0;
    *(v28 + 8) = 1;
    v29 = (a2 + v15[16]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (a2 + v15[19]);
    *v30 = 0x302E302E31;
    v30[1] = 0xE500000000000000;
    *(a2 + v15[20]) = 0;
    *(a2 + v15[22]) = v39;
    *(a2 + v15[23]) = 0;
    *(a2 + v15[24]) = xmmword_10138BBF0;
    *(a2 + v15[25]) = xmmword_10138BBF0;
    v24(a2 + v15[26], v12, v8);
    v24(a2 + v15[27], v12, v8);
    v24(a2 + v15[28], v12, v8);
    v24(a2 + v15[29], v12, v8);
    v24(a2 + v15[30], v12, v8);
    v24(a2 + v15[31], v12, v8);
    v31 = (a2 + v15[32]);
    *v31 = 0;
    v31[1] = 0;
    *(a2 + v15[33]) = _swiftEmptyArrayStorage;
    v32 = (a2 + v15[34]);
    *v32 = 0;
    v32[1] = 0;
    *(a2 + v15[35]) = _swiftEmptyArrayStorage;
    v33 = a2 + v15[36];
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = a2 + v15[37];
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    result = (v40)(a2 + v15[43], v12, v8);
    *(a2 + v15[44]) = 2;
    *(a2 + v15[45]) = 2;
    *(a2 + v15[46]) = 2;
    v35 = (a2 + v15[47]);
    *v35 = 0;
    v35[1] = 0;
    v36 = (a2 + v15[48]);
    *v36 = 0;
    v36[1] = 0;
  }

  return result;
}

uint64_t sub_10110F67C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v122 = a2;
  v120 = a1;
  v119 = type metadata accessor for PairingConfig();
  v4 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for StableIdentifier();
  v7 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v118 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v128 = &v103 - v11;
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v127 = &v103 - v14;
  v125 = type metadata accessor for OwnedBeaconRecord();
  v124 = *(v125 - 8);
  v15 = *(v124 + 64);
  __chkstk_darwin(v125);
  v121 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryProductInfo();
  v126 = *(v17 - 8);
  v18 = *(v126 + 64);
  __chkstk_darwin(v17);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v103 - v26;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v123 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v130 = &v103 - v33;
  v34 = static Data.random(bytes:)();
  v36 = v35;
  sub_10111441C(v131);
  if (*(&v131[0] + 1) >> 60 == 15)
  {
    goto LABEL_6;
  }

  v112 = v6;
  v132[0] = v131[0];
  v132[1] = v131[1];
  v132[2] = v131[2];
  v132[3] = v131[3];
  v132[4] = v131[4];
  v37 = type metadata accessor for AccessoryPairingInfo(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_100017D5C(v34, v36);
  v116 = v34;
  v40 = sub_10024C9E8(v34, v36);
  if (!v40)
  {
    sub_10000B3A8(v131, &qword_101697328, &unk_10138BEA0);
    v34 = v116;
LABEL_6:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_10177C418);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Missing critical information to simulate pairing.", v68, 2u);
    }

    sub_100016590(v34, v36);

    return 0;
  }

  v41 = v40;
  v107 = v3;
  v111 = v36;
  v129 = v28;
  v42 = v29;
  v43 = Data.init(stringLiteral:)();
  v114 = v17;
  v45 = v44;
  v46 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v47 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  v48 = v130;
  UUID.init()();
  v49 = String.randomString(length:)(12);
  v50 = v41[16];
  *(v41 + 15) = v49;

  v51 = *(v29 + 16);
  v106 = v29 + 16;
  v105 = v51;
  v51(v27, v48, v129);
  (*(v29 + 56))(v27, 0, 1, v129);
  v52 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1010AD394(v27, v41 + v52);
  swift_endAccess();
  v53 = v41[12];
  *(v41 + 11) = xmmword_1013B8B00;

  sub_100017D5C(v43, v45);
  v109 = v43;
  v110 = v45;
  v54 = v45;
  v55 = v114;
  v56 = sub_100314594(v43, v54);
  v57 = v41[13];
  v58 = v41[14];
  v41[13] = v56;
  v41[14] = v59;
  sub_100006654(v57, v58);
  v108 = v47;
  CurrentLocationMonitor.requestLocation()();
  sub_10110F124(0, v20);
  v115 = v20;
  v60 = v128;
  sub_101114B5C(v20, v128, type metadata accessor for AccessoryProductInfo);
  v126 = *(v126 + 56);
  (v126)(v60, 0, 1, v55);
  v61 = v41 + v52;
  v62 = v129;
  sub_1000D2A70(v61, v25, &qword_1016980D0, &unk_10138F3B0);
  v63 = (*(v42 + 48))(v25, 1, v62);
  v113 = v42;
  if (v63 == 1)
  {
    sub_10000B3A8(v60, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    v64 = v124;
  }

  else
  {
    v70 = v123;
    (*(v42 + 32))(v123, v25, v62);
    v71 = v41[16];
    v64 = v124;
    if (v71)
    {
      v72 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v72 = v41[15] & 0xFFFFFFFFFFFFLL;
      }

      if (v72)
      {
        v103 = v41[15];
        v73 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v74 = v118;
        v75 = &v118[v73[12]];
        v76 = &v118[v73[16]];
        v77 = &v118[v73[20]];
        v104 = v73[24];
        v78 = &v118[v73[28]];
        v79 = v123;
        v105(v118, v123, v129);
        *v75 = 0;
        *(v75 + 1) = 0;
        *v76 = 0;
        *(v76 + 1) = 0;
        *v77 = v103;
        *(v77 + 1) = v71;
        v62 = v129;
        *(v74 + v104) = 256;
        *v78 = 0;
        *(v78 + 1) = 0;
        swift_storeEnumTagMultiPayload();

        v80 = v127;
        v81 = v128;
        sub_10012B4BC(v132, v41, v128, v74, v127);
        sub_1000362DC(v74, type metadata accessor for StableIdentifier);
        (*(v113 + 8))(v79, v62);
        sub_10000B3A8(v81, &qword_101697268, &qword_101394FE0);
        v82 = v125;
        v55 = v114;
        goto LABEL_21;
      }

      (*(v113 + 8))(v123, v62);
    }

    else
    {
      (*(v42 + 8))(v70, v62);
    }

    sub_10000B3A8(v60, &qword_101697268, &qword_101394FE0);
    v55 = v114;
  }

  v80 = v127;
  v82 = v125;
  (*(v64 + 56))(v127, 1, 1, v125);
LABEL_21:
  if ((*(v64 + 48))(v80, 1, v82) == 1)
  {
    sub_10000B3A8(v80, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_1000076D4(v83, qword_10177C418);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = v111;
    if (v86)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "failed to generateOwnedBeaconRecord.", v88, 2u);
    }

    sub_10000B3A8(v131, &qword_101697328, &unk_10138BEA0);

    sub_100016590(v109, v110);
    sub_100016590(v116, v87);
    sub_1000362DC(v115, type metadata accessor for AccessoryProductInfo);
    (*(v113 + 8))(v130, v62);
    return 0;
  }

  v89 = v121;
  sub_10002AEB4(v80, v121, type metadata accessor for OwnedBeaconRecord);
  v90 = v55;
  v91 = dispatch_group_create();
  v92 = swift_allocObject();
  *(v92 + 16) = 1;
  v93 = *(v119 + 28);
  v94 = v112;
  sub_101114B5C(v115, &v112[v93], type metadata accessor for AccessoryProductInfo);
  (v126)(v94 + v93, 0, 1, v90);
  v95 = v122;
  *v94 = v120;
  *(v94 + 8) = v95;
  *(v94 + 16) = xmmword_1013DB390;
  *(v94 + 32) = 0xA400000000000000;

  dispatch_group_enter(v91);
  v96 = swift_allocObject();
  v97 = v107;
  v98 = v96;
  v96[2] = v91;
  v96[3] = v92;
  v99 = v108;
  v96[4] = v108;
  v96[5] = v97;
  v100 = v91;

  v101 = v99;

  sub_100B093F8(v89, v94, sub_101114AC8, v98);

  OS_dispatch_group.wait()();
  sub_10000B3A8(v131, &qword_101697328, &unk_10138BEA0);

  sub_100016590(v109, v110);
  sub_100016590(v116, v111);
  sub_1000362DC(v94, type metadata accessor for PairingConfig);
  sub_1000362DC(v89, type metadata accessor for OwnedBeaconRecord);
  sub_1000362DC(v115, type metadata accessor for AccessoryProductInfo);
  (*(v113 + 8))(v130, v129);
  swift_beginAccess();
  v102 = *(v92 + 16);

  return v102;
}

unsigned __int8 *sub_101110550(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v161) = a3;
  v160 = a2;
  v158 = a1;
  v4 = *v3;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v162 = &v144 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v148 = *(v149 - 8);
  v13 = *(v148 + 64);
  v14 = __chkstk_darwin(v149);
  v150 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v151 = &v144 - v17;
  v18 = __chkstk_darwin(v16);
  v147 = &v144 - v19;
  __chkstk_darwin(v18);
  v152 = (&v144 - v20);
  v21 = type metadata accessor for String.Encoding();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = static Data.random(bytes:)();
  v28 = v27;
  v29 = type metadata accessor for AccessoryPairingInfo(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_100017D5C(v26, v28);
  v165 = v26;
  v166 = v28;
  v32 = sub_10024C9E8(v26, v28);
  v33 = v32;
  if (!v32)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_1000076D4(v84, qword_10177C418);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Missing critical information to simulate pairing.", v87, 2u);
    }

    sub_100016590(v165, v166);

    return (v33 != 0);
  }

  v155 = v12;
  v154 = v4;
  v156 = v32;
  v164 = v9;
  v157 = v8;
  v34 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v153 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  p_object = &v171[0]._object;
  v171[0] = String.randomString(length:)(12);
  v36 = 0;
  v171[1] = String.randomString(length:)(12);
  v37 = (v22 + 8);
  v38 = _swiftEmptyArrayStorage;
  v146 = &v171[0]._object;
  do
  {
    v163 = v38;
    v39 = &p_object[2 * v36++];
    while (1)
    {
      v41 = *(v39 - 1);
      v40 = *v39;

      static String.Encoding.utf8.getter();
      v42 = String.data(using:allowLossyConversion:)();
      v44 = v43;
      (*v37)(v25, v21);
      if (v44 >> 60 != 15)
      {
        break;
      }

LABEL_5:
      v39 += 2;
      if (++v36 == 3)
      {
        v38 = v163;
        goto LABEL_16;
      }
    }

    countAndFlagsBits = v42;
    v169 = v44;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {

      sub_100006654(v42, v44);
      goto LABEL_5;
    }

    v45 = Data.trimmed.getter();
    v145 = v46;

    sub_100006654(v42, v44);
    v38 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_100A5B840(0, *(v38 + 2) + 1, 1, v38);
    }

    p_object = v146;
    v48 = *(v38 + 2);
    v47 = *(v38 + 3);
    if (v48 >= v47 >> 1)
    {
      v38 = sub_100A5B840((v47 > 1), v48 + 1, 1, v38);
    }

    *(v38 + 2) = v48 + 1;
    v49 = &v38[16 * v48];
    v50 = v145;
    *(v49 + 4) = v45;
    *(v49 + 5) = v50;
  }

  while (v36 != 2);
LABEL_16:
  swift_arrayDestroy();
  v170 = _swiftEmptyDictionarySingleton;
  sub_10110EE20(v38, &v170);
  v163 = 0;

  v51 = static Data.random(bytes:)();
  v53 = v51;
  v54 = v52;
  v55 = v157;
  v56 = v164;
  v33 = v156;
  v57 = v155;
  if ((v161 & 1) == 0)
  {
    goto LABEL_28;
  }

  countAndFlagsBits = v51;
  v169 = v52;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    goto LABEL_28;
  }

  v58 = Data.trimmed.getter();
  v60 = v170;
  if (v170[2])
  {
    v146 = v58;
    v161 = v59;
    v61 = sub_100771E30(v58, v59);
    if (v62)
    {
      v63 = v60[7] + *(v148 + 72) * v61;
      v64 = v147;
      sub_101114B5C(v63, v147, type metadata accessor for MultipartAccessoryPairingInfo);
      v65 = v64;
      v66 = v152;
      sub_10002AEB4(v65, v152, type metadata accessor for MultipartAccessoryPairingInfo);
      v67 = *v66;
      v68 = v56;
      v69 = v57;
      v70 = v55;
      v71 = v54;
      v148 = v53;
      v72 = v149;
      v73 = *(v149 + 24);
      v74 = v151;
      MACAddress.init(stringLiteral:)();
      v75 = type metadata accessor for MACAddress();
      v76 = v74 + v73;
      v54 = v71;
      v55 = v70;
      v57 = v69;
      v56 = v68;
      (*(*(v75 - 8) + 56))(v76, 0, 1, v75);
      *v74 = v67;
      *(v74 + *(v72 + 28)) = 0;
      v77 = v150;
      sub_101114B5C(v74, v150, type metadata accessor for MultipartAccessoryPairingInfo);
      v78 = v170;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      countAndFlagsBits = v78;
      v80 = v77;
      v81 = v146;
      v82 = v161;
      sub_100FFA7D4(v80, v146, v161, isUniquelyReferenced_nonNull_native);
      sub_100016590(v81, v82);
      v83 = v74;
      v53 = v148;
      sub_1000362DC(v83, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_1000362DC(v152, type metadata accessor for MultipartAccessoryPairingInfo);
      v170 = countAndFlagsBits;
      goto LABEL_28;
    }

    v58 = v146;
    v59 = v161;
  }

  sub_100016590(v58, v59);
LABEL_28:
  UUID.init()();
  v88 = v33[12];
  *(v33 + 11) = xmmword_1013B8B00;

  v89 = sub_100314604(76, 8206);
  v90 = v33[13];
  v91 = v33[14];
  v33[13] = v89;
  v33[14] = v92;
  sub_100006654(v90, v91);
  v93 = v162;
  (*(v56 + 16))(v162, v57, v55);
  (*(v56 + 56))(v93, 0, 1, v55);
  v94 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1010AD394(v93, v33 + v94);
  swift_endAccess();
  v96 = String.randomString(length:)(8);
  result = v96._countAndFlagsBits;
  v97 = (v96._object >> 56) & 0xF;
  v98 = v96._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v96._object & 0x2000000000000000) != 0)
  {
    v99 = (v96._object >> 56) & 0xF;
  }

  else
  {
    v99 = v96._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v99)
  {
    v119 = v57;
    v121 = v55;

LABEL_91:
    v122 = 0;
    v123 = 0xF000000000000000;
    goto LABEL_95;
  }

  if ((v96._object & 0x1000000000000000) != 0)
  {
    v167 = 0;
    v101 = sub_1010DDF3C(v96._countAndFlagsBits, v96._object, 10);
    v125 = v124;

    v119 = v57;
    if (v125)
    {
      goto LABEL_90;
    }

    goto LABEL_94;
  }

  if ((v96._object & 0x2000000000000000) != 0)
  {
    countAndFlagsBits = v96._countAndFlagsBits;
    v169 = v96._object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(v96._countAndFlagsBits) == 43)
    {
      if (!v97)
      {
LABEL_104:
        __break(1u);
        return result;
      }

      v98 = v97 - 1;
      if (v97 != 1)
      {
        v101 = 0;
        v111 = &countAndFlagsBits + 1;
        while (1)
        {
          v112 = *v111 - 48;
          if (v112 > 9)
          {
            break;
          }

          v113 = 10 * v101;
          if ((v101 * 10) >> 64 != (10 * v101) >> 63)
          {
            break;
          }

          v101 = v113 + v112;
          if (__OFADD__(v113, v112))
          {
            break;
          }

          ++v111;
          if (!--v98)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (LOBYTE(v96._countAndFlagsBits) == 45)
    {
      if (!v97)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v98 = v97 - 1;
      if (v97 != 1)
      {
        v101 = 0;
        v105 = &countAndFlagsBits + 1;
        while (1)
        {
          v106 = *v105 - 48;
          if (v106 > 9)
          {
            break;
          }

          v107 = 10 * v101;
          if ((v101 * 10) >> 64 != (10 * v101) >> 63)
          {
            break;
          }

          v101 = v107 - v106;
          if (__OFSUB__(v107, v106))
          {
            break;
          }

          ++v105;
          if (!--v98)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (v97)
    {
      v101 = 0;
      p_countAndFlagsBits = &countAndFlagsBits;
      while (1)
      {
        v117 = *p_countAndFlagsBits - 48;
        if (v117 > 9)
        {
          break;
        }

        v118 = 10 * v101;
        if ((v101 * 10) >> 64 != (10 * v101) >> 63)
        {
          break;
        }

        v101 = v118 + v117;
        if (__OFADD__(v118, v117))
        {
          break;
        }

        p_countAndFlagsBits = (p_countAndFlagsBits + 1);
        if (!--v97)
        {
          goto LABEL_87;
        }
      }
    }

LABEL_88:
    v101 = 0;
    LOBYTE(v98) = 1;
    goto LABEL_89;
  }

  if ((v96._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    result = ((v96._object & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v98 = v143;
  }

  v100 = *result;
  if (v100 == 43)
  {
    if (v98 < 1)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (!--v98)
    {
      goto LABEL_88;
    }

    v101 = 0;
    if (!result)
    {
      goto LABEL_87;
    }

    v108 = result + 1;
    while (1)
    {
      v109 = *v108 - 48;
      if (v109 > 9)
      {
        goto LABEL_88;
      }

      v110 = 10 * v101;
      if ((v101 * 10) >> 64 != (10 * v101) >> 63)
      {
        goto LABEL_88;
      }

      v101 = v110 + v109;
      if (__OFADD__(v110, v109))
      {
        goto LABEL_88;
      }

      ++v108;
      if (!--v98)
      {
        goto LABEL_89;
      }
    }
  }

  if (v100 != 45)
  {
    if (!v98)
    {
      goto LABEL_88;
    }

    v101 = 0;
    if (!result)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v114 = *result - 48;
      if (v114 > 9)
      {
        goto LABEL_88;
      }

      v115 = 10 * v101;
      if ((v101 * 10) >> 64 != (10 * v101) >> 63)
      {
        goto LABEL_88;
      }

      v101 = v115 + v114;
      if (__OFADD__(v115, v114))
      {
        goto LABEL_88;
      }

      ++result;
      if (!--v98)
      {
        goto LABEL_89;
      }
    }
  }

  if (v98 < 1)
  {
    __break(1u);
    goto LABEL_102;
  }

  if (!--v98)
  {
    goto LABEL_88;
  }

  v101 = 0;
  if (result)
  {
    v102 = result + 1;
    while (1)
    {
      v103 = *v102 - 48;
      if (v103 > 9)
      {
        goto LABEL_88;
      }

      v104 = 10 * v101;
      if ((v101 * 10) >> 64 != (10 * v101) >> 63)
      {
        goto LABEL_88;
      }

      v101 = v104 - v103;
      if (__OFSUB__(v104, v103))
      {
        goto LABEL_88;
      }

      ++v102;
      if (!--v98)
      {
        goto LABEL_89;
      }
    }
  }

LABEL_87:
  LOBYTE(v98) = 0;
LABEL_89:
  v167 = v98;
  v119 = v57;
  v120 = v98;

  if (v120)
  {
LABEL_90:
    v121 = v55;
    goto LABEL_91;
  }

LABEL_94:
  v121 = v55;
  countAndFlagsBits = v101;
  sub_1000C3258();
  v122 = FixedWidthInteger.data.getter();
LABEL_95:
  v126 = (v33 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v127 = *(v33 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v128 = *(v33 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  *v126 = v122;
  v126[1] = v123;
  sub_100006654(v127, v128);
  v129 = String.randomString(length:)(16);
  v130 = sub_1010DB10C(v129._countAndFlagsBits, v129._object);
  if (v131)
  {
    v132 = 0;
    v133 = 0xF000000000000000;
  }

  else
  {
    countAndFlagsBits = v130;
    sub_1000C3258();
    v132 = FixedWidthInteger.data.getter();
  }

  v134 = (v33 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v135 = *(v33 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v136 = *(v33 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  *v134 = v132;
  v134[1] = v133;
  sub_100006654(v135, v136);
  v137 = v153;
  CurrentLocationMonitor.requestLocation()();
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  LOBYTE(countAndFlagsBits) = 0;
  v139 = v170;
  v140 = __chkstk_darwin(v138);
  *(&v144 - 10) = v33;
  *(&v144 - 9) = &countAndFlagsBits;
  v141 = v158;
  *(&v144 - 8) = v159;
  *(&v144 - 7) = v141;
  *(&v144 - 6) = v160;
  *(&v144 - 5) = &v170;
  *(&v144 - 4) = v119;
  *(&v144 - 3) = v137;
  v142 = v154;
  *(&v144 - 2) = v140;
  *(&v144 - 1) = v142;

  sub_1005C6358(sub_101114B1C, (&v144 - 12), v139);
  sub_100016590(v165, v166);
  sub_100016590(v53, v54);

  (*(v164 + 8))(v119, v121);

  return (v33 != 0);
}

void sub_101111354(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v68 = a8;
  v71 = a7;
  v73 = a6;
  v72 = a5;
  v74 = a4;
  v75 = a1;
  v67 = type metadata accessor for PairingConfig();
  v12 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for AccessoryProductInfo();
  v65 = *(v66 - 8);
  v15 = *(v65 + 64);
  __chkstk_darwin(v66);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MACAddress();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OwnedBeaconGroup(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OwnedBeaconRecord();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v65 - v31);
  sub_10111441C(v78);
  if (*(&v78[0] + 1) >> 60 != 15)
  {
    v79[0] = v78[0];
    v79[1] = v78[1];
    v79[2] = v78[2];
    v79[3] = v78[3];
    v79[4] = v78[4];
    sub_1000D2A70(v75, v32, &qword_101696E38, &qword_1013D8510);
    v33 = *(v29 + 48);
    v34 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v35 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber) = *v32;
    sub_100006654(v34, v35);
    sub_1000362DC(v32 + v33, type metadata accessor for MultipartAccessoryPairingInfo);
    v36 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    *v36 = *a3;
    v36[1] = 0;
    v37 = *a3 + 1;
    if ((v37 >> 8))
    {
      __break(1u);
    }

    else
    {
      v38 = (*a3 + 1);
      *a3 = v37;
      v39 = 0xE700000000000000;
      v40 = 0x6E776F6E6B6E55;
      if (v37 == 2)
      {
        v40 = 1702060355;
        v39 = 0xE400000000000000;
      }

      v41 = v38 == 1;
      if (v38 == 1)
      {
        v42 = 0x7468676952;
      }

      else
      {
        v42 = v40;
      }

      v75 = v42;
      if (v41)
      {
        v43 = 0xE500000000000000;
      }

      else
      {
        v43 = v39;
      }

      MACAddress.init(stringLiteral:)();
      v44 = *v71;

      v45 = v74;
      v46 = v76;
      sub_100B8BFA0(v28, v24, v79, a2, v72, v73, v20, v44);
      v47 = (v70 + 8);
      v76 = v46;
      if (!v46)
      {
        v73 = a10;
        v72 = a9;

        (*v47)(v20, v17);
        sub_1000362DC(v24, type metadata accessor for OwnedBeaconGroup);
        v57 = dispatch_group_create();
        v58 = v69;
        sub_10110F124(0, v69);
        v59 = *(v67 + 28);
        sub_101114B5C(v58, v14 + v59, type metadata accessor for AccessoryProductInfo);
        (*(v65 + 56))(v14 + v59, 0, 1, v66);
        v14->isa = v75;
        v14[1].isa = v43;
        *&v14[2].isa = xmmword_1013DB390;
        v14[4].isa = 0xA400000000000000;
        dispatch_group_enter(v57);
        v60 = swift_allocObject();
        v61 = v72;
        v60[2] = v57;
        v60[3] = v61;
        v62 = v73;
        v60[4] = v45;
        v60[5] = v62;
        v63 = v57;
        v64 = v61;

        sub_100B093F8(v28, v14, sub_101114BC4, v60);

        OS_dispatch_group.wait()();
        sub_10000B3A8(v78, &qword_101697328, &unk_10138BEA0);

        sub_1000362DC(v14, type metadata accessor for PairingConfig);
        sub_1000362DC(v58, type metadata accessor for AccessoryProductInfo);
        sub_1000362DC(v28, type metadata accessor for OwnedBeaconRecord);
        swift_beginAccess();
        *(v62 + 16) = 1;
        return;
      }

      (*v47)(v20, v17);

      if (qword_1016950D0 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177C418);
    v49 = v76;
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v77 = v53;
      *v52 = 136315138;
      v80 = v49;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v54 = String.init<A>(describing:)();
      v56 = sub_1000136BC(v54, v55, &v77);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to generateOwnedBeaconRecord. %s", v52, 0xCu);
      sub_100007BAC(v53);

      sub_10000B3A8(v78, &qword_101697328, &unk_10138BEA0);
    }

    else
    {
      sub_10000B3A8(v78, &qword_101697328, &unk_10138BEA0);
    }
  }
}

void sub_101111B98(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v49 = a6;
  v50 = a5;
  v9 = type metadata accessor for OwnedBeaconRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v48 - v18);
  sub_1000D2A70(a1, &v48 - v18, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = a3;
      v26 = swift_slowAlloc();
      v52[0] = v26;
      *v24 = 136315138;
      v51 = v20;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000136BC(v27, v28, v52);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to save beacon record %s", v24, 0xCu);
      sub_100007BAC(v26);
      a3 = v25;
    }

    else
    {
    }
  }

  else
  {
    sub_10002AEB4(v19, v15, type metadata accessor for OwnedBeaconRecord);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C418);
    sub_101114B5C(v15, v13, type metadata accessor for OwnedBeaconRecord);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v48 = a3;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = *(v9 + 20);
      type metadata accessor for UUID();
      sub_101114AD4(&qword_101696930, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_1000362DC(v13, type metadata accessor for OwnedBeaconRecord);
      v40 = sub_1000136BC(v37, v39, v52);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "New beacon record has been created. %{private,mask.hash}s", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      sub_1000362DC(v13, type metadata accessor for OwnedBeaconRecord);
    }

    v41 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v42 = *(a4 + v41);
    if (v42)
    {
      v43 = &v15[*(v9 + 20)];
      v44 = v49;
      swift_beginAccess();
      v45 = *(v44 + 16);
      v46 = type metadata accessor for Transaction();
      __chkstk_darwin(v46);
      LOBYTE((&v48)[-4]) = v45;
      *(&v48 - 3) = v42;
      *(&v48 - 2) = v43;
      *(&v48 - 1) = v50;
      v47 = v42;
      static Transaction.named<A>(_:with:)();
    }

    sub_1000362DC(v15, type metadata accessor for OwnedBeaconRecord);
    a3 = v48;
  }

  dispatch_group_leave(a3);
}

void sub_101112140(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v46 = a3;
  v9 = type metadata accessor for OwnedBeaconRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v44 - v18);
  sub_1000D2A70(a1, &v44 - v18, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48[0] = v25;
      *v24 = 136315138;
      v47 = v20;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000136BC(v26, v27, v48);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to save beacon record %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {
    }

    swift_beginAccess();
    *(a4 + 16) = 0;
  }

  else
  {
    sub_10002AEB4(v19, v15, type metadata accessor for OwnedBeaconRecord);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C418);
    sub_101114B5C(v15, v13, type metadata accessor for OwnedBeaconRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v34 = *(v9 + 20);
      type metadata accessor for UUID();
      sub_101114AD4(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1000362DC(v13, type metadata accessor for OwnedBeaconRecord);
      v38 = sub_1000136BC(v35, v37, v48);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "New beacon record has been created. %{private,mask.hash}s", v32, 0x16u);
      sub_100007BAC(v33);
    }

    else
    {

      sub_1000362DC(v13, type metadata accessor for OwnedBeaconRecord);
    }

    v39 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v40 = *(a5 + v39);
    if (v40)
    {
      v41 = &v15[*(v9 + 20)];
      v42 = type metadata accessor for Transaction();
      __chkstk_darwin(v42);
      *(&v44 - 32) = 0;
      *(&v44 - 3) = v40;
      *(&v44 - 2) = v41;
      *(&v44 - 1) = v45;
      v43 = v40;
      static Transaction.named<A>(_:with:)();
    }

    sub_1000362DC(v15, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(v46);
}

uint64_t sub_1011126D4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v35 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v33[1] = v11;
  v34 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeaconEstimatedLocation();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 coordinate];
  v17 = v16;
  if (a2)
  {
    v17 = v16 + 0.1;
    [a3 coordinate];
    v19 = v18 + 0.1;
  }

  else
  {
    [a3 coordinate];
    v19 = v20;
  }

  v21 = &v15[v12[5]];
  UUID.init()();
  v22 = *(v9 + 16);
  v22(&v15[v12[6]], a4, v8);
  [a3 horizontalAccuracy];
  v24 = v23;
  v25 = [a3 timestamp];
  v26 = &v15[v12[10]];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v12[12];
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(&v15[v27], 1, 1, v28);
  *v15 = xmmword_10138C660;
  *&v15[v12[7]] = v17;
  *&v15[v12[8]] = v19;
  *&v15[v12[9]] = v24;
  v15[v12[11]] = 1;
  *&v15[v12[13]] = 0;
  v29 = v34;
  v22(v34, a4, v8);
  v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v35;
  (*(v9 + 32))(v31 + v30, v29, v8);

  sub_100A9DA2C(v15, sub_101112E3C, v31);

  return sub_1000362DC(v15, type metadata accessor for BeaconEstimatedLocation);
}

void sub_1011129F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v32 - v12);
  Transaction.capture()();
  sub_1000D2A70(a1, v13, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v14;
      v33 = v19;
      *v18 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000136BC(v20, v21, &v33);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Saving BeaconEstimatedLocation from CL error: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C418);
    (*(v6 + 16))(v9, a3, v5);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      (*(v6 + 8))(v9, v5);
      v31 = sub_1000136BC(v28, v30, &v33);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Saved BeaconEstimatedLocation from CL for beacon %{private,mask.hash}s", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    sub_10000B3A8(v13, &qword_10169F438, &unk_1013B3300);
  }
}

void sub_101112E3C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1011129F4(a1, v4, v5);
}

uint64_t sub_101112EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = a5;
  v113 = a4;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v103 - v14;
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = &v103 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    v111 = a3;
    v112 = a1;
    if (!v22)
    {
      *(&v110 + 1) = a2;
      v104 = v17;
      v105 = v20 >> 8;
      v106 = v20 >> 16;
      v107 = v20 >> 24;
      v108 = HIDWORD(v20);
      v109 = v20 >> 40;
      *&v110 = HIWORD(v20);

      sub_100016590(v21, v20);
      *&v117 = v21;
      BYTE8(v117) = v20;
      BYTE9(v117) = v105;
      BYTE10(v117) = v106;
      BYTE11(v117) = v107;
      BYTE12(v117) = v108;
      BYTE13(v117) = v109;
      v23 = *(&v110 + 1);
      BYTE14(v117) = v110;
      v24 = type metadata accessor for __DataStorage();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      swift_retain_n();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        a3 = v112;
        goto LABEL_27;
      }

      v37 = __DataStorage._bytes.getter();
      a3 = v112;
      if (!v37 || !__OFSUB__(0, __DataStorage._offset.getter()))
      {
        v38 = *(v24 + 48);
        v39 = *(v24 + 52);
        swift_allocObject();
        __DataStorage.init(bytes:length:copy:deallocator:offset:)();

LABEL_27:

        result = __DataStorage._bytes.getter();
        if (result)
        {
          LODWORD(a1) = result;
          if (!__OFSUB__(0, __DataStorage._offset.getter()))
          {
            __DataStorage._length.getter();
            v116 = 0;
            v41 = *(v23 + 16);
            v42 = CCCKGContributorFinish();
            if (!v42)
            {
LABEL_36:

              v50 = v117;
              v51 = DWORD2(v117) | ((WORD6(v117) | (BYTE14(v117) << 16)) << 32);

              *a3 = v50;
              *(a3 + 8) = v51;
              return result;
            }

            LODWORD(a1) = v42;
            static os_log_type_t.error.getter();
            if (qword_101694BE0 == -1)
            {
LABEL_31:
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v43 = swift_allocObject();
              *(v43 + 16) = xmmword_101385D80;
              *(v43 + 56) = &type metadata for Int32;
              *(v43 + 64) = &protocol witness table for Int32;
              *(v43 + 32) = a1;
              os_log(_:dso:log:_:_:)();

              v44 = v104;
              CryptoError.init(rawValue:)();
              v45 = type metadata accessor for CryptoError();
              sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError);
              swift_allocError();
              v47 = v46;
              v48 = *(v45 - 8);
              v49 = *(v48 + 48);
              if (v49(v44, 1, v45) == 1)
              {
                (*(v48 + 104))(v47, enum case for CryptoError.unspecifiedError(_:), v45);
                if (v49(v44, 1, v45) != 1)
                {
                  sub_10000B3A8(v44, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v48 + 32))(v47, v44, v45);
              }

              swift_willThrow();
              goto LABEL_36;
            }

LABEL_90:
            swift_once();
            goto LABEL_31;
          }

          goto LABEL_84;
        }

        goto LABEL_98;
      }

      goto LABEL_92;
    }

    v32 = v20 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100017D5C(v21, v20);
    sub_100016590(v21, v20);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);

    a3 = v21;
    v33 = v21 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      LODWORD(a1) = HIDWORD(v21) - v21;
      if (v33 < v21)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
      {
        goto LABEL_94;
      }

      v63 = type metadata accessor for __DataStorage();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v32 = v66;
    }

    if (v33 < v21)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
      goto LABEL_101;
    }

    v67 = __DataStorage._offset.getter();
    v68 = v21 - v67;
    if (__OFSUB__(v21, v67))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    __DataStorage._length.getter();
    v69 = type metadata accessor for __DataStorage();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    a3 = __DataStorage.init(length:)();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(&v110 + 1) = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
LABEL_96:
        __break(1u);
      }

      v90 = *(v69 + 48);
      v91 = *(v69 + 52);
      swift_allocObject();
      v92 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      a3 = v92;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_102:
      __break(1u);
      return result;
    }

    LODWORD(a1) = result;
    if (__OFSUB__(0, __DataStorage._offset.getter()))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    __DataStorage._length.getter();
    *&v117 = 0;
    v93 = *(a2 + 16);
    v94 = CCCKGContributorFinish();
    if (v94)
    {
      v95 = v94;
      *(&v110 + 1) = a2;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_101385D80;
      *(v96 + 56) = &type metadata for Int32;
      *(v96 + 64) = &protocol witness table for Int32;
      *(v96 + 32) = v95;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v97 = type metadata accessor for CryptoError();
      sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v115 = swift_allocError();
      v99 = v98;
      v100 = *(v97 - 8);
      v101 = *(v100 + 48);
      if (v101(v15, 1, v97) == 1)
      {
        (*(v100 + 104))(v99, enum case for CryptoError.unspecifiedError(_:), v97);
        if (v101(v15, 1, v97) != 1)
        {
          sub_10000B3A8(v15, &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v100 + 32))(v99, v15, v97);
      }

      swift_willThrow();

      v102 = v112;
      *v112 = v21;
      v102[1] = v32 | 0x4000000000000000;
      return result;
    }

    v86 = v32 | 0x4000000000000000;
    v87 = v112;
    *v112 = v21;
LABEL_80:
    v87[1] = v86;
    return result;
  }

  if (v22 == 2)
  {

    sub_100016590(v21, v20);
    *&v117 = v21;
    *(&v117 + 1) = v20 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v27 = v117;
    v28 = *(v117 + 16);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (__OFSUB__(v28, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v110 = v27;
    v111 = a3;
    v112 = a1;
    __DataStorage._length.getter();
    v29 = type metadata accessor for __DataStorage();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    a3 = __DataStorage.init(length:)();
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_95;
      }

      v73 = *(v29 + 48);
      v74 = *(v29 + 52);
      swift_allocObject();
      v75 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      a3 = v75;
    }

    result = __DataStorage._bytes.getter();
    v76 = *(&v110 + 1);
    if (!result)
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    LODWORD(a1) = result;
    if (__OFSUB__(0, __DataStorage._offset.getter()))
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    __DataStorage._length.getter();
    v116 = 0;
    v77 = *(a2 + 16);
    v78 = CCCKGContributorFinish();
    if (!v78)
    {

      v86 = v76 | 0x8000000000000000;
      v87 = v112;
      *v112 = v110;
      goto LABEL_80;
    }

    v79 = v78;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_101385D80;
    *(v80 + 56) = &type metadata for Int32;
    *(v80 + 64) = &protocol witness table for Int32;
    *(v80 + 32) = v79;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v81 = type metadata accessor for CryptoError();
    sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v83 = v82;
    v84 = *(v81 - 8);
    v85 = *(v84 + 48);
    if (v85(v12, 1, v81) == 1)
    {
      (*(v84 + 104))(v83, enum case for CryptoError.unspecifiedError(_:), v81);
      if (v85(v12, 1, v81) != 1)
      {
        sub_10000B3A8(v12, &qword_10169C9A0, &unk_1013D5A40);
      }
    }

    else
    {
      (*(v84 + 32))(v83, v12, v81);
    }

    swift_willThrow();

    v88 = *(&v110 + 1) | 0x8000000000000000;
    v89 = v112;
    *v112 = v110;
    v89[1] = v88;
  }

  else
  {
    v34 = type metadata accessor for __DataStorage();
    *&v117 = 0;
    *(&v117 + 7) = 0;
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    __DataStorage.init(length:)();
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_93;
      }

      v52 = *(v34 + 48);
      v53 = *(v34 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    LODWORD(a1) = result;
    if (__OFSUB__(0, __DataStorage._offset.getter()))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    __DataStorage._length.getter();
    v116 = 0;
    v54 = *(a2 + 16);
    v55 = CCCKGContributorFinish();
    if (v55)
    {
      v56 = v55;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_101385D80;
      *(v57 + 56) = &type metadata for Int32;
      *(v57 + 64) = &protocol witness table for Int32;
      *(v57 + 32) = v56;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v58 = type metadata accessor for CryptoError();
      sub_101114AD4(&qword_10169C9B8, &type metadata accessor for CryptoError);
      swift_allocError();
      v60 = v59;
      v61 = *(v58 - 8);
      v62 = *(v61 + 48);
      if (v62(v19, 1, v58) == 1)
      {
        (*(v61 + 104))(v60, enum case for CryptoError.unspecifiedError(_:), v58);
        if (v62(v19, 1, v58) != 1)
        {
          sub_10000B3A8(v19, &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v61 + 32))(v60, v19, v58);
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_101114090@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    sub_101114270(v8, v9, a3, a4);
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  swift_retain_n();
  v11 = CCCKGGetShareSize();
  v12 = CCCKGGetOpeningSize();
  v15[0] = sub_100845C88(v12);
  v15[1] = v13;

  sub_101112EB0(v15, a3, v14, v11, v12);
  if (v4)
  {
    sub_100016590(v15[0], v15[1]);
  }

  else
  {

    *a4 = *v15;
  }

  return result;
}

uint64_t sub_101114270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v9 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    sub_100A78DFC(v9, a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_101114324(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_101114090(a2, a3, a1, v7);
  sub_100496254(v7[0], v7[1], v7);
  return v7[0];
}

void sub_10111441C(__int128 *a1@<X8>)
{
  v2 = sub_100A78AB4();
  v4 = v3;
  v6 = v5;
  sub_100017D5C(v2, v3);
  sub_1004A4714(v2, v4, &v35);
  v7 = v35;
  v8 = type metadata accessor for CollaborativeKeyGen.v1.ContributorContext();
  sub_100016590(v2, v4);
  v35 = v7;
  v36 = v6;
  *&v37 = 0;
  *(&v37 + 1) = v8;
  *&v38 = &off_101645BB0;
  sub_1000BC4D4(&qword_1016C8AE8, &qword_101408158);
  sub_1000BC4D4(&qword_1016C8AF0, &unk_101408160);
  if (swift_dynamicCast())
  {
    v10 = v40;
    v9 = v41;
    v11 = v42;
    sub_100017D5C(v40, v41);
    v16 = sub_100A7491C(v10, v9);
    v18 = v17;
    v20 = v19;
    sub_100016590(v10, v9);
    sub_100017D5C(v16, v18);
    sub_10049613C(v16, v18, &v35);
    v34 = v35;
    v26 = sub_101114324(v11, v35, *(&v35 + 1));
    if (v27 >> 60 != 15)
    {
      v31 = v27;
      v32 = v26;
      sub_100017D5C(v26, v27);
      log = CCCKGGetOpeningSize();

      sub_1003F141C(v32, v31, v20, log, &v35);
      sub_100016590(v34, *(&v34 + 1));

      sub_100006654(v32, v31);
      sub_100006654(v32, v31);
      sub_100016590(v10, v9);
      sub_100016590(v16, v18);

      v21 = v35;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v25 = v39;
      goto LABEL_8;
    }

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C418);
    v13 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v13, v29, "Unable to fake C3 from accessory.", v30, 2u);
    }

    sub_100016590(v16, v18);

    sub_100016590(v34, *(&v34 + 1));

    sub_100016590(v10, v9);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to fake C1 from accessory.", v15, 2u);
    }
  }

  v21 = xmmword_10138BBF0;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
LABEL_8:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v24;
  a1[4] = v25;
}

uint64_t sub_101114AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101114B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101114BE8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1684628325;
    v6 = 0x754E6C6169726573;
    if (a1 != 2)
    {
      v6 = 0x64616F6C796170;
    }

    if (a1)
    {
      v5 = 0x644970696863;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x657261776D726966;
    v2 = 0x44746375646F7270;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x734D6E654779656BLL;
    if (a1 != 4)
    {
      v3 = 0x7372655663657073;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_101114D2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8B00, &qword_101408428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101116980();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v29) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v29) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v3 + 3);
    v29 = *(v3 + 3);
    v28 = 3;
    sub_1001022C4(&v31, v27);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v29, *(&v29 + 1));
    v29 = *(v3 + 4);
    v30 = v29;
    v28 = 4;
    sub_1001022C4(&v30, v27);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v29, *(&v29 + 1));
    v17 = v3[10];
    v18 = v3[11];
    LOBYTE(v29) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[12];
    v20 = v3[13];
    LOBYTE(v29) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[14];
    v22 = v3[15];
    LOBYTE(v29) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[16];
    v24 = v3[17];
    LOBYTE(v29) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101115038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101116AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101115060(uint64_t a1)
{
  v2 = sub_101116980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10111509C(uint64_t a1)
{
  v2 = sub_101116980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011150D8(void *a1)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_101114D2C(a1);
}

__n128 sub_10111512C@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[2];
  v32 = a1[3];
  v33 = v8;
  v20 = v8;
  v21 = v32;
  v9 = a1[4];
  v10 = *a1;
  v30 = a1[1];
  v31 = v9;
  v22 = v9;
  v23 = v30;
  v29 = v10;
  v28 = a1[7];
  v11 = a1[7];
  v12 = *(a1 + 17);
  v24 = v10;
  v26 = v11;
  if (v12 >> 60 == 15)
  {
    sub_1008CCDD0(&v33, &v27);
    sub_1008CCDD0(&v32, &v27);
    sub_1008CCDD0(&v31, &v27);
    sub_1001022C4(&v30, &v27);
    sub_1001022C4(&v29, &v27);
    sub_100EF5DC4(&v28, &v27);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    *&v27 = *(a1 + 16);
    *(&v27 + 1) = v12;
    sub_1008CCDD0(&v33, v19);
    sub_1008CCDD0(&v32, v19);
    sub_1008CCDD0(&v31, v19);
    sub_1001022C4(&v30, v19);
    sub_1001022C4(&v29, v19);
    sub_100EF5DC4(&v28, v19);
    sub_1002313AC();
    v13 = RawRepresentable<>.hexString.getter();
    v14 = v15;
  }

  v27 = a1[9];
  v25 = v27;
  sub_1008CCDD0(&v27, v19);
  v16 = v25;
  *(a4 + 64) = v24;
  *(a4 + 80) = v16;
  *(a4 + 96) = v26;
  v17 = v21;
  *a4 = v20;
  *(a4 + 16) = v17;
  result = v23;
  *(a4 + 32) = v22;
  *(a4 + 48) = result;
  *(a4 + 112) = v13;
  *(a4 + 120) = v14;
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

uint64_t sub_1011152C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[143] = a4;
  v4[142] = a3;
  v4[141] = a2;
  v4[140] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[144] = v5;
  v6 = *(v5 - 8);
  v4[145] = v6;
  v7 = *(v6 + 64) + 15;
  v4[146] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[147] = v8;
  v9 = *(v8 - 8);
  v4[148] = v9;
  v10 = *(v9 + 64) + 15;
  v4[149] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[150] = v11;
  v12 = *(v11 - 8);
  v4[151] = v12;
  v13 = *(v12 + 64) + 15;
  v4[152] = swift_task_alloc();

  return _swift_task_switch(sub_101115444, 0, 0);
}

void sub_101115444()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 1216);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1200);
  v9 = *(v0 + 1192);
  v54 = *(v0 + 1184);
  v55 = *(v0 + 1176);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 1096) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 1104) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v54 + 8))(v9, v55);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 1224) = v34;
  v41 = *(v0 + 1136);
  v42 = *(v0 + 1128);
  v43 = *(v0 + 1120);
  sub_10041ACEC(v43, v0 + 16);
  sub_10111512C(v43, v42, v41, v0 + 176);
  sub_1011167A4(v43);
  v44 = type metadata accessor for JSONEncoder();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *(v0 + 1232) = JSONEncoder.init()();
  v47 = *(v0 + 288);
  *(v0 + 416) = *(v0 + 272);
  *(v0 + 432) = v47;
  *(v0 + 448) = *(v0 + 304);
  v48 = *(v0 + 224);
  *(v0 + 352) = *(v0 + 208);
  *(v0 + 368) = v48;
  v49 = *(v0 + 256);
  *(v0 + 384) = *(v0 + 240);
  *(v0 + 400) = v49;
  v50 = *(v0 + 192);
  *(v0 + 320) = *(v0 + 176);
  *(v0 + 336) = v50;
  sub_1011167F8();
  v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v51;
  *(v0 + 1256) = v52;
  sub_100017D5C(v51, v52);
  v53 = swift_task_alloc();
  *(v0 + 1264) = v53;
  *v53 = v0;
  v53[1] = sub_101115B00;

  sub_100EA272C();
}

uint64_t sub_101115B00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1264);
  v6 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = a2;

  return _swift_task_switch(sub_101115C04, 0, 0);
}

uint64_t sub_101115C04()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1152);
  *(v0 + 1080) = v2;
  *(v0 + 1088) = v1;
  *(v0 + 1064) = &type metadata for Data;
  *(v0 + 1072) = &protocol witness table for Data;
  *(v0 + 1040) = *(v0 + 1248);
  v7 = sub_1000035D0((v0 + 1040), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 1040));
  *(v0 + 1288) = *(v0 + 1080);
  *(v0 + 1296) = *(v0 + 1088);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 1304) = v10;
  *(v0 + 1312) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 1320) = v13;
  *v13 = v0;
  v13[1] = sub_101115DBC;
  v14 = *(v0 + 1144);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_101115DBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1320);
  v6 = *v2;
  *(*v2 + 1328) = v1;

  if (v1)
  {
    v7 = sub_101116300;
  }

  else
  {
    v8 = v4[164];
    v9 = v4[163];
    v4[167] = a1;
    sub_100016590(v9, v8);
    v7 = sub_101115EF0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_101115EF0()
{
  v50 = v0;
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[162];
  v4 = v0[161];
  v5 = v0[153];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v49);

  sub_100016590(v4, v3);
  v7 = v49;
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = v7 + 8;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v7[8];
  v12 = (63 - v10) >> 6;
  v46 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
    v15 = v46;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v47 = *v22;

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    v7 = &type metadata for String;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v47;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v46;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v26 = *(v45 + 1256);
  v27 = *(v45 + 1248);
  v28 = *(v45 + 1232);
  v48 = *(v45 + 1144);
  v29 = *(v45 + 1120);

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = *(v45 + 288);
  *(v45 + 848) = *(v45 + 272);
  *(v45 + 864) = v31;
  *(v45 + 880) = *(v45 + 304);
  v32 = *(v45 + 224);
  *(v45 + 784) = *(v45 + 208);
  *(v45 + 800) = v32;
  v33 = *(v45 + 256);
  *(v45 + 816) = *(v45 + 240);
  *(v45 + 832) = v33;
  v34 = *(v45 + 192);
  *(v45 + 752) = *(v45 + 176);
  *(v45 + 768) = v34;
  sub_10111684C(v45 + 176, v45 + 896);
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100008C00();
  *(v30 + 32) = v35;
  *(v30 + 40) = v37;
  os_log(_:dso:log:_:_:)();

  sub_1011167A4(v29);

  sub_101116884(v45 + 176);

  sub_100017D5C(v27, v26);

  sub_100016590(v27, v26);
  v38 = *(v45 + 1256);
  v39 = *(v45 + 1248);
  v40 = *(v45 + 1216);
  v41 = *(v45 + 1192);
  v42 = *(v45 + 1168);

  v43 = *(v45 + 8);

  return v43(v46, v39, v38);
}

uint64_t sub_101116300()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1288);
  sub_100016590(*(v0 + 1304), *(v0 + 1312));
  sub_100016590(v2, v1);
  static os_log_type_t.error.getter();
  v3 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = *(v0 + 1328);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v0 + 1112) = v4;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v45 = sub_100008C00();
  *(v5 + 64) = v45;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v44 = v0;
  v0 = *(v0 + 1224);
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
  v46 = v0;

  v13 = 0;
  while (v3)
  {
    v14 = v13;
    v15 = v46;
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
    *(v24 + 64) = v45;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v45;
    *(v24 + 72) = v0;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v46;
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

  v25 = *(v44 + 1256);
  v26 = *(v44 + 1248);
  v27 = *(v44 + 1232);
  v28 = *(v44 + 1144);
  v29 = *(v44 + 1120);

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v31 = *(v44 + 288);
  *(v44 + 848) = *(v44 + 272);
  *(v44 + 864) = v31;
  *(v44 + 880) = *(v44 + 304);
  v32 = *(v44 + 224);
  *(v44 + 784) = *(v44 + 208);
  *(v44 + 800) = v32;
  v33 = *(v44 + 256);
  *(v44 + 816) = *(v44 + 240);
  *(v44 + 832) = v33;
  v34 = *(v44 + 192);
  *(v44 + 752) = *(v44 + 176);
  *(v44 + 768) = v34;
  sub_10111684C(v44 + 176, v44 + 896);
  v35 = String.init<A>(describing:)();
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v45;
  *(v30 + 32) = v35;
  *(v30 + 40) = v36;
  os_log(_:dso:log:_:_:)();

  sub_1011167A4(v29);

  sub_101116884(v44 + 176);

  sub_100017D5C(v26, v25);

  sub_100016590(v26, v25);
  v37 = *(v44 + 1256);
  v38 = *(v44 + 1248);
  v39 = *(v44 + 1216);
  v40 = *(v44 + 1192);
  v41 = *(v44 + 1168);

  v42 = *(v44 + 8);

  return v42(v46, v38, v37);
}

unint64_t sub_1011167F8()
{
  result = qword_1016C8AF8;
  if (!qword_1016C8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8AF8);
  }

  return result;
}

uint64_t sub_1011168B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1011168FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101116980()
{
  result = qword_1016C8B08;
  if (!qword_1016C8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B08);
  }

  return result;
}

unint64_t sub_1011169E8()
{
  result = qword_1016C8B10;
  if (!qword_1016C8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B10);
  }

  return result;
}

unint64_t sub_101116A40()
{
  result = qword_1016C8B18;
  if (!qword_1016C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B18);
  }

  return result;
}

unint64_t sub_101116A98()
{
  result = qword_1016C8B20;
  if (!qword_1016C8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B20);
  }

  return result;
}

uint64_t sub_101116AEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x734D6E654779656BLL && a2 == 0xED00006873614867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_101116E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BeaconKeyBackendServiceTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_101116E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_101116EAC, 0, 0);
}

uint64_t sub_101116EAC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  sub_1011185C0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[5];

  v7 = v0[2];
  v0[9] = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1011170D0;
  v14 = v0[6];

  return v16(v14, v7, v9, v10);
}

uint64_t sub_1011170D0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_101117254;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1011171EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011171EC()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_101117254()
{
  v1 = v0[9];

  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  swift_errorRetain();
  v4(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_101117550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_101117574, 0, 0);
}

uint64_t sub_101117574()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1011176A4;

  return v8(v2, v3);
}

uint64_t sub_1011176A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_101117950;
  }

  else
  {
    v5 = sub_1011177B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011177B8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  sub_1011183FC(&qword_1016C84C8, &qword_1016C84B0, &qword_101407100);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[7];
  if (v1)
  {

    v9 = v0[4];
    v10 = v0[5];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = v6;
    v14 = v7;

    sub_100017D5C(v13, v14);
    v12(v13, v14, 0);
    sub_100016590(v13, v14);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_101117950()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_101117ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for BeaconIdentifier();
  v5[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_101117BB4, 0, 0);
}

uint64_t sub_101117BB4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_101103440(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = (v0[4] + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation);
  v9 = v8[3];
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 24);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_101117DFC;
  v14 = v0[10];
  v15 = v0[8];

  return v17(v15, v14, v9, v10);
}

uint64_t sub_101117DFC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1011180A8;
  }

  else
  {
    v3 = sub_101117F10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101117F10()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1011183FC(&qword_1016C8B58, &qword_10169E368, &qword_1013D6690);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v8;

  if (v1)
  {
    sub_1011031BC(v0[8]);
    sub_100429ACC(v0[10]);
    v10 = v0[5];
    v11 = v0[6];
    swift_errorRetain();
    v10(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    sub_100017D5C(v7, v9);
    v15(v7, v9, 0);
    sub_100016590(v7, v9);
    sub_100016590(v7, v9);
    sub_1011031BC(v13);
    sub_100429ACC(v12);
  }

  v16 = v0[10];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1011180A8()
{
  v1 = v0[12];
  sub_100429ACC(v0[10]);
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_101118298()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_101117ADC(v2, v3, v4, v5, v6);
}

uint64_t sub_101118354()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_101117550(v2, v3, v4);
}

uint64_t sub_1011183FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    sub_101103440(&qword_1016C84D0, type metadata accessor for KeyGenerationBeaconInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101118494()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_101116E84(v4, v5, v6, v0 + v3, v8, v9);
}

unint64_t sub_1011185C0()
{
  result = qword_1016C84C0;
  if (!qword_1016C84C0)
  {
    sub_1000BC580(&qword_1016C84B0, &qword_101407100);
    sub_101103440(&qword_1016C84A8, type metadata accessor for KeyGenerationBeaconInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C84C0);
  }

  return result;
}

unint64_t sub_101118688()
{
  result = qword_1016C8B60;
  if (!qword_1016C8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B60);
  }

  return result;
}

unint64_t sub_1011186DC()
{
  result = qword_1016C8B68;
  if (!qword_1016C8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B68);
  }

  return result;
}

unint64_t sub_101118730(void *a1)
{
  a1[1] = sub_101118790();
  a1[2] = sub_1011187E4();
  a1[3] = sub_100F08F84();
  a1[4] = sub_100F08FD8();
  a1[5] = sub_101118838();
  a1[6] = sub_10111888C();
  a1[7] = sub_1011188E0();
  result = sub_101118934();
  a1[8] = result;
  return result;
}

unint64_t sub_101118790()
{
  result = qword_1016C8B70;
  if (!qword_1016C8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B70);
  }

  return result;
}

unint64_t sub_1011187E4()
{
  result = qword_1016C8B78;
  if (!qword_1016C8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B78);
  }

  return result;
}

unint64_t sub_101118838()
{
  result = qword_1016C8B80;
  if (!qword_1016C8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B80);
  }

  return result;
}

unint64_t sub_10111888C()
{
  result = qword_1016C8B88;
  if (!qword_1016C8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B88);
  }

  return result;
}

unint64_t sub_1011188E0()
{
  result = qword_1016C8B90;
  if (!qword_1016C8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B90);
  }

  return result;
}

unint64_t sub_101118934()
{
  result = qword_1016C8B98;
  if (!qword_1016C8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B98);
  }

  return result;
}

uint64_t sub_10111898C()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for LowBatteryUserNotification() + 28));
  v7 = v6[3];
  v8 = v6[4];
  sub_1000035D0(v6, v7);
  if (((*(v8 + 96))(v7, v8) & 1) == 0)
  {
    v9 = v6[3];
    v10 = v6[4];
    sub_1000035D0(v6, v9);
    if (((*(v10 + 104))(v9, v10) & 1) == 0)
    {
      return 0;
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);
  v11 = static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_101118B48()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LowBatteryUserNotification();
  v7 = (v0 + *(v6 + 28));
  v8 = v7[3];
  v9 = v7[4];
  sub_1000035D0(v7, v8);
  if (((*(v9 + 96))(v8, v9) & 1) == 0)
  {
    v10 = v7[3];
    v11 = v7[4];
    sub_1000035D0(v7, v10);
    if (((*(v11 + 104))(v10, v11) & 1) == 0)
    {
      return 0;
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = (v0 + *(v6 + 32));
  v15 = *v13;
  v14 = v13[1];
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v15;
  *(v12 + 40) = v14;

  v16 = String.init(format:_:)();

  return v16;
}

unint64_t sub_101118D98(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v9 = (v1 + *(a1 + 28));
  v11 = v9[3];
  v10 = v9[4];
  sub_1000035D0(v9, v11);
  (*(*(*(v10 + 8) + 8) + 32))(v11);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v15 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  return v15;
}

void sub_101118F38(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177A548);
    sub_10001F280(a3, v27);
    sub_100A1B224(a1);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_100A1B234(a1, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 141558531;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v17 = v28;
      v16 = v29;
      sub_1000035D0(v27, v28);
      (*(*(*(v16 + 8) + 8) + 32))(v17);
      sub_1002FFBAC();
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v7 + 8))(v10, v6);
      sub_100007BAC(v27);
      v21 = sub_1000136BC(v18, v20, &v26);

      *(v14 + 14) = v21;
      *(v14 + 22) = 2114;
      sub_10111C928();
      swift_allocError();
      *v22 = a1;
      sub_100A1B224(a1);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v23;
      *v15 = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "                    Error showing notification for %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v25);
    }

    else
    {

      sub_100007BAC(v27);
    }
  }
}

id sub_101119244(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for DelegatedShareStartUserNotification();
  v8 = started - 8;
  v9 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v35 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DelegatedShareStartUserNotification;
  v11 = v35;
  sub_10111C97C(a1, v35, type metadata accessor for DelegatedShareStartUserNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 setCategoryIdentifier:v14];

  v33 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v32 = v3[13];
  v31[0] = v2;
  v32(v6);
  static LocalizationUtility.localizedString(key:table:)();
  v15 = v3[1];
  v31[1] = v3 + 1;
  v15(v6, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  v34 = xmmword_101385D80;
  *(v16 + 16) = xmmword_101385D80;
  v17 = (v11 + *(v8 + 28));
  v18 = *v17;
  v19 = v17[1];
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v18;
  *(v16 + 40) = v19;

  String.init(format:arguments:)();

  v20 = String._bridgeToObjectiveC()();

  [v12 setTitle:v20];

  v21 = v31[0];
  (v32)(v6, v33, v31[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v15(v6, v21);
  v22 = String._bridgeToObjectiveC()();

  [v12 setBody:v22];

  [v12 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v34;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  v24 = v35;
  v25 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v26;
  v27 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v40 = &type metadata for Bool;
  LOBYTE(v39) = 0;
  sub_1001E6224(&v39, v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v27;
  sub_100FFB368(v38, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v37);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  [v12 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v24, v36);
  [v12 setShouldUseRequestIdentifierForDismissalSync:0];
  return v12;
}

id sub_10111979C(uint64_t a1)
{
  found = type metadata accessor for NotifyWhenFoundUserNotification();
  v3 = found - 8;
  v4 = *(*(found - 8) + 64);
  __chkstk_darwin(found);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10111C97C(a1, v6, type metadata accessor for NotifyWhenFoundUserNotification);
  v7 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v7 setDefaultActionURL:0];
  v8 = [objc_opt_self() defaultSound];
  [v7 setSound:v8];

  LODWORD(v8) = v6[1];
  sub_100E1E03C(v6[1]);
  v9 = String._bridgeToObjectiveC()();

  [v7 setCategoryIdentifier:v9];

  v10 = &v6[*(v3 + 36)];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = String._bridgeToObjectiveC()();
  [v7 setTitle:v13];

  sub_101316A60();
  v14 = String._bridgeToObjectiveC()();

  [v7 setBody:v14];

  if (v8 == 67)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [v7 setInterruptionLevel:v15];
  v16 = sub_101316C1C();
  v24 = &type metadata for Bool;
  LOBYTE(v23) = 1;
  sub_1001E6224(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v16;
  sub_100FFB368(v22, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v21);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setUserInfo:isa];

  [v7 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v6, type metadata accessor for NotifyWhenFoundUserNotification);
  [v7 setShouldUseRequestIdentifierForDismissalSync:0];
  return v7;
}

id sub_101119A58(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DelegatedShareOwnerReunitedUserNotification(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = v7 - 8;
  v36 = v7 - 8;
  __chkstk_darwin(v7 - 8);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DelegatedShareOwnerReunitedUserNotification;
  v11 = v37;
  sub_10111C97C(a1, v37, type metadata accessor for DelegatedShareOwnerReunitedUserNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 setCategoryIdentifier:v14];

  v34 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v33 = v3[13];
  v32[0] = v2;
  v33(v6);
  static LocalizationUtility.localizedString(key:table:)();
  v15 = v3[1];
  v32[1] = v3 + 1;
  v15(v6, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  v35 = xmmword_101385D80;
  *(v16 + 16) = xmmword_101385D80;
  v17 = (v11 + *(v9 + 32));
  v19 = *v17;
  v18 = v17[1];
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v18;

  String.init(format:arguments:)();

  v20 = String._bridgeToObjectiveC()();

  [v12 setTitle:v20];

  v21 = v32[0];
  (v33)(v6, v34, v32[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v15(v6, v21);
  v22 = String._bridgeToObjectiveC()();

  [v12 setBody:v22];

  [v12 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v35;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v24 = v37;
  v25 = v37 + *(v36 + 28);
  v26 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  v28 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v42 = &type metadata for Bool;
  LOBYTE(v41) = 0;
  sub_1001E6224(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v28;
  sub_100FFB368(v40, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v39);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  [v12 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v24, v38);
  [v12 setShouldUseRequestIdentifierForDismissalSync:0];
  return v12;
}

id sub_101119FBC(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = v7 - 8;
  v36 = v7 - 8;
  __chkstk_darwin(v7 - 8);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification;
  v11 = v37;
  sub_10111C97C(a1, v37, type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 setCategoryIdentifier:v14];

  v34 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v33 = v3[13];
  v32[0] = v2;
  v33(v6);
  static LocalizationUtility.localizedString(key:table:)();
  v15 = v3[1];
  v32[1] = v3 + 1;
  v15(v6, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  v35 = xmmword_101385D80;
  *(v16 + 16) = xmmword_101385D80;
  v17 = (v11 + *(v9 + 32));
  v19 = *v17;
  v18 = v17[1];
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v18;

  String.init(format:arguments:)();

  v20 = String._bridgeToObjectiveC()();

  [v12 setTitle:v20];

  v21 = v32[0];
  (v33)(v6, v34, v32[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v15(v6, v21);
  v22 = String._bridgeToObjectiveC()();

  [v12 setBody:v22];

  [v12 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v35;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v24 = v37;
  v25 = v37 + *(v36 + 28);
  v26 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  v28 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v42 = &type metadata for Bool;
  LOBYTE(v41) = 0;
  sub_1001E6224(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v28;
  sub_100FFB368(v40, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v39);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  [v12 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v24, v38);
  [v12 setShouldUseRequestIdentifierForDismissalSync:0];
  return v12;
}

id sub_10111A51C(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DelegatedShareExpirationUserNotification(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = v7 - 8;
  v36 = v7 - 8;
  __chkstk_darwin(v7 - 8);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DelegatedShareExpirationUserNotification;
  v11 = v37;
  sub_10111C97C(a1, v37, type metadata accessor for DelegatedShareExpirationUserNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 setCategoryIdentifier:v14];

  v34 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v33 = v3[13];
  v32[0] = v2;
  v33(v6);
  static LocalizationUtility.localizedString(key:table:)();
  v15 = v3[1];
  v32[1] = v3 + 1;
  v15(v6, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  v35 = xmmword_101385D80;
  *(v16 + 16) = xmmword_101385D80;
  v17 = (v11 + *(v9 + 32));
  v19 = *v17;
  v18 = v17[1];
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v18;

  String.init(format:arguments:)();

  v20 = String._bridgeToObjectiveC()();

  [v12 setTitle:v20];

  v21 = v32[0];
  (v33)(v6, v34, v32[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v15(v6, v21);
  v22 = String._bridgeToObjectiveC()();

  [v12 setBody:v22];

  [v12 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v35;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v24 = v37;
  v25 = v37 + *(v36 + 28);
  v26 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  v28 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v42 = &type metadata for Bool;
  LOBYTE(v41) = 0;
  sub_1001E6224(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v28;
  sub_100FFB368(v40, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v39);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  [v12 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v24, v38);
  [v12 setShouldUseRequestIdentifierForDismissalSync:0];
  return v12;
}

id sub_10111AA80(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DelegatedSharMaxViewsUserNotification(0);
  v8 = *(v7 - 8);
  v38 = v7 - 8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v37 = type metadata accessor for DelegatedSharMaxViewsUserNotification;
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  sub_10111C97C(a1, v11, type metadata accessor for DelegatedSharMaxViewsUserNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  v14 = String._bridgeToObjectiveC()();
  [v12 setCategoryIdentifier:v14];

  v34 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v32 = v3[13];
  v32(v6);
  static LocalizationUtility.localizedString(key:table:)();
  v33 = v3[1];
  v15 = v2;
  v33(v6, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  v35 = xmmword_101385D80;
  *(v16 + 16) = xmmword_101385D80;
  v17 = &v11[*(v38 + 32)];
  v19 = *v17;
  v18 = *(v17 + 1);
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v18;

  String.init(format:arguments:)();

  v20 = String._bridgeToObjectiveC()();

  [v12 setTitle:v20];

  (v32)(v6, v34, v15);
  static LocalizationUtility.localizedString(key:table:)();
  v33(v6, v15);
  v21 = String._bridgeToObjectiveC()();

  [v12 setBody:v21];

  [v12 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v35;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v23 = v36;
  v24 = &v36[*(v38 + 28)];
  v25 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v26;
  v27 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v42 = &type metadata for Bool;
  LOBYTE(v41) = 0;
  sub_1001E6224(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v27;
  sub_100FFB368(v40, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v39);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  [v12 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v23, v37);
  [v12 setShouldUseRequestIdentifierForDismissalSync:0];
  return v12;
}

id sub_10111AFE0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for UnwantedTrackingUserNotification();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10111C97C(a1, v9, type metadata accessor for UnwantedTrackingUserNotification);
  v10 = [objc_allocWithZone(UNMutableNotificationContent) init];
  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  *&v32 = 0xD000000000000026;
  *(&v32 + 1) = 0x800000010134AA30;
  v11 = &v9[*(v6 + 20)];
  v12._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v12);

  URL.init(string:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v16 = 0;
  if ((*(v14 + 48))(v5, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v14 + 8))(v5, v13);
  }

  [v10 setDefaultActionURL:v16];

  v18 = [objc_opt_self() defaultSound];
  [v10 setSound:v18];

  v19 = *(v6 + 24);
  v20 = v9[v19];
  sub_100E1E03C(v9[v19]);
  v21 = String._bridgeToObjectiveC()();

  [v10 setCategoryIdentifier:v21];

  sub_100284940();
  v22 = String._bridgeToObjectiveC()();

  [v10 setTitle:v22];

  sub_100285338();
  v23 = String._bridgeToObjectiveC()();

  [v10 setBody:v23];

  if (v20 == 67)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  [v10 setInterruptionLevel:v24];
  v25 = sub_10090403C(_swiftEmptyArrayStorage);
  v33 = &type metadata for Bool;
  LOBYTE(v32) = 1;
  sub_1001E6224(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v25;
  sub_100FFB368(v31, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v30);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo:isa];

  [v10 setShouldIgnoreDoNotDisturb:1];
  sub_10111C9E4(v9, type metadata accessor for UnwantedTrackingUserNotification);
  [v10 setShouldUseRequestIdentifierForDismissalSync:1];
  return v10;
}

id sub_10111B408(uint64_t a1)
{
  v2 = type metadata accessor for PlaySoundUserNotification();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10111C97C(a1, v6, type metadata accessor for PlaySoundUserNotification);
  v7 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v7 setDefaultActionURL:0];
  v8 = [objc_opt_self() defaultSound];
  [v7 setSound:v8];

  v9 = v6[1];
  sub_100E1E03C(v6[1]);
  v10 = String._bridgeToObjectiveC()();

  [v7 setCategoryIdentifier:v10];

  sub_100846398();
  v11 = String._bridgeToObjectiveC()();

  [v7 setTitle:v11];

  sub_100846564();
  v12 = String._bridgeToObjectiveC()();

  [v7 setBody:v12];

  if (v9 == 67)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v7 setInterruptionLevel:v13];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v15 = &v6[*(v3 + 44)];
  v16 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  v18 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = 1;
  sub_1001E6224(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v18;
  sub_100FFB368(v24, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v23);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setUserInfo:isa];

  [v7 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v6, type metadata accessor for PlaySoundUserNotification);
  [v7 setShouldUseRequestIdentifierForDismissalSync:0];
  return v7;
}

id sub_10111B74C(uint64_t a1)
{
  v31 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ItemShareRequestReceivedUserNotification();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ItemShareRequestReceivedUserNotification;
  sub_10111C97C(a1, v10, type metadata accessor for ItemShareRequestReceivedUserNotification);
  v11 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v11 setDefaultActionURL:0];
  v12 = [objc_opt_self() defaultSound];
  [v11 setSound:v12];

  v30 = v10[1];
  sub_100E1E03C(v30);
  v13 = String._bridgeToObjectiveC()();

  [v11 setCategoryIdentifier:v13];

  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  v29 = xmmword_101385D80;
  *(inited + 16) = xmmword_101385D80;
  v15 = &v10[*(v7 + 40)];
  v16 = *(v15 + 1);
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = v31;
  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v31);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v17);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  String.init(format:arguments:)();

  v18 = String._bridgeToObjectiveC()();

  [v11 setTitle:v18];

  sub_100413438();
  v19 = String._bridgeToObjectiveC()();

  [v11 setBody:v19];

  if (v30 == 67)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [v11 setInterruptionLevel:v20];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  v21 = swift_initStackObject();
  *(v21 + 16) = v29;
  *(v21 + 32) = 0x6564496572616873;
  *(v21 + 40) = 0xEF7265696669746ELL;
  v22 = &v10[*(v7 + 32)];
  v23 = UUID.uuidString.getter();
  *(v21 + 72) = &type metadata for String;
  *(v21 + 48) = v23;
  *(v21 + 56) = v24;
  v25 = sub_10090403C(v21);
  swift_setDeallocating();
  sub_10000B3A8(v21 + 32, &unk_101695C20, &unk_101386D90);
  v36 = &type metadata for Bool;
  LOBYTE(v35) = 1;
  sub_1001E6224(&v35, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v25;
  sub_100FFB368(v34, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v33);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setUserInfo:isa];

  [v11 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v10, v32);
  [v11 setShouldUseRequestIdentifierForDismissalSync:0];
  return v11;
}

BOOL sub_10111BC4C(void *a1, char a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v11);
  if (((*(v12 + 120))(v11, v12) & 1) == 0)
  {
    return a3 != 5 && a2 == 5;
  }

  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177A548);
  sub_10001F280(a1, v27);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v19 = v28;
    v18 = v29;
    sub_1000035D0(v27, v28);
    (*(*(*(v18 + 8) + 8) + 32))(v19);
    sub_1002FFBAC();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    sub_100007BAC(v27);
    v23 = sub_1000136BC(v20, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Not posting low battery notification for %s because battery cannot be replaced.", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    sub_100007BAC(v27);
  }

  return 0;
}

id sub_10111BEFC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LowBatteryUserNotification();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LowBatteryUserNotification;
  sub_10111C97C(a1, v11, type metadata accessor for LowBatteryUserNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v12 setDefaultActionURL:0];
  v13 = [objc_opt_self() defaultSound];
  [v12 setSound:v13];

  v14 = v11[1];
  sub_100E1E03C(v11[1]);
  v15 = String._bridgeToObjectiveC()();

  [v12 setCategoryIdentifier:v15];

  sub_10111898C();
  v16 = String._bridgeToObjectiveC()();

  [v12 setTitle:v16];

  sub_101118B48();
  v17 = String._bridgeToObjectiveC()();

  [v12 setBody:v17];

  if (v14 == 67)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  [v12 setInterruptionLevel:v18];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v20 = &v11[*(v8 + 36)];
  v22 = *(v20 + 3);
  v21 = *(v20 + 4);
  sub_1000035D0(v20, v22);
  (*(*(*(v21 + 8) + 8) + 32))(v22);
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v3 + 8))(v6, v2);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  v26 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_1001E6224(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v26;
  sub_100FFB368(v33, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v32);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  [v12 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v11, v31);
  [v12 setShouldUseRequestIdentifierForDismissalSync:0];
  return v12;
}

uint64_t sub_10111C318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v7 = type metadata accessor for LowBatteryUserNotification();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UUID();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177A548);
  sub_10001F280(a1, aBlock);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v46 = a4;
    v21 = v20;
    *&v56[0] = v20;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v47 = a1;
    v23 = v51;
    v22 = v52;
    sub_1000035D0(aBlock, v51);
    (*(*(*(v22 + 1) + 8) + 32))(v23);
    sub_1002FFBAC();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v48 + 8))(v14, v11);
    sub_100007BAC(aBlock);
    v27 = sub_1000136BC(v24, v26, v56);
    a1 = v47;

    *(v19 + 14) = v27;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v16, v17, "Posting low battery notification for %{private,mask.hash}s,                                        level: %ld.", v19, 0x20u);
    sub_100007BAC(v21);
    a4 = v46;

    a3 = v45;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(a1, v10 + v7[7]);
  *v10 = 17153;
  v28 = v7[6];

  UUID.init()();
  v29 = (v10 + v7[8]);
  *v29 = a3;
  v29[1] = a4;
  sub_10001F280(a1, v56);
  v30 = swift_allocObject();
  sub_10000A748(v56, v30 + 16);
  v55[3] = v7;
  v55[4] = &off_101668270;
  v31 = sub_1000280DC(v55);
  sub_10111C97C(v10, v31, type metadata accessor for LowBatteryUserNotification);
  v32 = *v31;
  v33 = objc_allocWithZone(UNUserNotificationCenter);
  v34 = String._bridgeToObjectiveC()();

  v35 = [v33 initWithBundleIdentifier:v34];

  v36 = sub_10111BEFC(v31);
  v37 = v31 + v7[6];
  UUID.uuidString.getter();
  v38 = v36;
  v39 = String._bridgeToObjectiveC()();

  v40 = [objc_opt_self() requestWithIdentifier:v39 content:v38 trigger:0 destinations:7];

  sub_10001F280(v55, v54);
  v41 = swift_allocObject();
  sub_10000A748(v54, v41 + 16);
  *(v41 + 56) = sub_10111C91C;
  *(v41 + 64) = v30;
  v52 = sub_100358EC4;
  v53 = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v51 = &unk_101668248;
  v42 = _Block_copy(aBlock);

  [v35 addNotificationRequest:v40 withCompletionHandler:v42];

  _Block_release(v42);
  sub_100007BAC(v55);

  return sub_10111C9E4(v10, type metadata accessor for LowBatteryUserNotification);
}

uint64_t type metadata accessor for LowBatteryUserNotification()
{
  result = qword_1016C8C00;
  if (!qword_1016C8C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10111C928()
{
  result = qword_1016C8BA0;
  if (!qword_1016C8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8BA0);
  }

  return result;
}

uint64_t sub_10111C97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10111C9E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10111CA6C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_10111CB10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10111CB10()
{
  result = qword_1016C8C10;
  if (!qword_1016C8C10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016C8C10);
  }

  return result;
}

Swift::Int sub_10111CB80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10111CC38()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10111CCDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10111CD90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10111DDA0(*a1);
  *a2 = result;
  return result;
}

void sub_10111CDC0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6465726961706E75;
  if (*v1 != 2)
  {
    v5 = 0x64656B636F6CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x646572696170;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_10111D480@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MACAddress();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryPairingAnalytics();
  v9 = v8[14];
  static Date.trustedNow.getter(a2 + v9);
  if (qword_101694C68 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177BAD0);
  v11 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v12, qword_10177BAE8);
  v50 = v8[5];
  Row.subscript.getter();
  if (qword_101694C80 != -1)
  {
    swift_once();
  }

  v47 = v7;
  v13 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v13, qword_10177BB18);
  sub_100028088();
  Row.subscript.getter();
  *(a2 + v8[6]) = v54._countAndFlagsBits;
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v14, qword_10177BBA8);
  Row.subscript.getter();
  v15 = v54;
  v53 = v54;
  sub_1000E0A3C();
  v16 = DataProtocol.isNull.getter();
  v51 = v9;
  if (v16)
  {
    sub_100016590(v15._countAndFlagsBits, v15._object);
    sub_10020223C();
    swift_allocError();
    *v17 = 5;
    *(v17 + 4) = 1;
    swift_willThrow();
LABEL_16:
    v25 = type metadata accessor for Row();
    (*(*(v25 - 8) + 8))(a1, v25);
    (*(*(v11 - 8) + 8))(a2, v11);
    sub_10000B3A8(a2 + v50, &qword_1016980D0, &unk_10138F3B0);
    if ((v16 & 1) == 0)
    {
      sub_100016590(*(a2 + v8[7]), *(a2 + v8[7] + 8));
    }

    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 8))(a2 + v51, v26);
    return result;
  }

  v18 = Data.trimmed.getter();
  v20 = v19;
  sub_100016590(v15._countAndFlagsBits, v15._object);
  v21 = (a2 + v8[7]);
  *v21 = v18;
  v21[1] = v20;
  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v22, qword_10177BBC0);
  Row.subscript.getter();
  if (v54._object >> 60 == 15)
  {
    (*(v48 + 56))(a2 + v8[12], 1, 1, v49);
  }

  else
  {
    v23 = v47;
    v24 = v52;
    MACAddress.init(dataRepresentation:)();
    if (v24)
    {
      goto LABEL_16;
    }

    v52 = 0;
    v28 = v8[12];
    v30 = v48;
    v29 = v49;
    (*(v48 + 32))(a2 + v28, v23, v49);
    (*(v30 + 56))(a2 + v28, 0, 1, v29);
  }

  if (qword_101694C78 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v31, qword_10177BB00);
  Row.subscript.getter();
  object = v54._object;
  v33 = (a2 + v8[8]);
  *v33 = v54._countAndFlagsBits;
  v33[1] = object;
  if (qword_101694C90 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v34, qword_10177BB48);
  sub_10022A60C();
  Row.subscript.getter();
  countAndFlagsBits = v53._countAndFlagsBits;
  if (qword_101694C88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177BB30);
  Row.subscript.getter();
  v36 = v56;
  v55 = countAndFlagsBits;
  sub_100101824();
  v54._countAndFlagsBits = FixedWidthInteger.data.getter();
  v54._object = v37;
  v55 = v36;
  v38 = FixedWidthInteger.data.getter();
  v40 = v39;
  Data.append(_:)();
  sub_100016590(v38, v40);
  *(a2 + v8[9]) = v54;
  if (qword_101694C98 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v31, qword_10177BB60);
  Row.subscript.getter();
  v41 = sub_10111DDA0(v54);
  if (v41 == 4)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  *(a2 + v8[10]) = v42;
  if (qword_101694CA0 != -1)
  {
    swift_once();
  }

  v43 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v43, qword_10177BB78);
  Row.subscript.getter();
  if (v54._countAndFlagsBits == 1)
  {
    v44 = 2;
  }

  else
  {
    v44 = v54._countAndFlagsBits == 0;
  }

  *(a2 + v8[11]) = v44;
  if (qword_101694CA8 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v45, qword_10177BB90);
  Row.subscript.getter();
  v46 = type metadata accessor for Row();
  (*(*(v46 - 8) + 8))(a1, v46);
  result = *&v54._countAndFlagsBits;
  *(a2 + v8[13]) = v54;
  return result;
}

uint64_t type metadata accessor for AccessoryPairingAnalytics()
{
  result = qword_1016C8CA8;
  if (!qword_1016C8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10111DDA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C628, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10111DE24()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10111DF6C(319, &qword_1016B1C20, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      sub_10111DF6C(319, &qword_10169AC00, &type metadata accessor for MACAddress);
      if (v2 <= 0x3F)
      {
        sub_1000E3404();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10111DF6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_10111DFC4()
{
  result = qword_1016C8D08;
  if (!qword_1016C8D08)
  {
    sub_1000BC580(&qword_1016C8D10, qword_101408910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D08);
  }

  return result;
}

unint64_t sub_10111E02C()
{
  result = qword_1016C8D18;
  if (!qword_1016C8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D18);
  }

  return result;
}

uint64_t static SendPairingStatusCommandPayloadv2.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static SendPairingStatusCommandPayloadv2.expectedLength = a1;
  return result;
}

double SendPairingStatusCommandPayloadv2.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10111E2B0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10111E1B4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 85)
  {
    goto LABEL_34;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v12 != 2)
  {
    goto LABEL_35;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = v13;
  }

LABEL_20:
  if (v13 == 4)
  {
    if ((a6 >> 62) > 1)
    {
      if (a6 >> 62 == 2)
      {
        v18 = *(a5 + 16);
        v17 = *(a5 + 24);
        v11 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (!v11)
        {
LABEL_27:
          if (v16 == 1286)
          {
            *a7 = result;
            a7[1] = a2;
            a7[2] = a3;
            a7[3] = a4;
            a7[4] = a5;
            a7[5] = a6;
            return result;
          }

          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if (a6 >> 62 == 1)
    {
      LODWORD(v16) = HIDWORD(a5) - a5;
      if (!__OFSUB__(HIDWORD(a5), a5))
      {
        v16 = v16;
        goto LABEL_27;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10111E2B0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v16, v17);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v16);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v16, v17);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v19 = v11;
    sub_10015049C(v16, v17);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_10111E1B4(v8, v9, v10, v19, v12, v13, v18);
    sub_100007BAC(v16);
    result = sub_100007BAC(a1);
    v15 = v18[1];
    *a2 = v18[0];
    a2[1] = v15;
    a2[2] = v18[2];
  }

  return result;
}

unint64_t sub_10111E430(uint64_t a1)
{
  *(a1 + 8) = sub_10111E460();
  result = sub_100F9BFA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10111E460()
{
  result = qword_1016C8D28;
  if (!qword_1016C8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D28);
  }

  return result;
}

unint64_t sub_10111E504()
{
  result = qword_1016C8D30;
  if (!qword_1016C8D30)
  {
    sub_1000BC580(&qword_1016C8D38, qword_101408C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D30);
  }

  return result;
}

unint64_t sub_10111E56C()
{
  result = qword_1016C8D40;
  if (!qword_1016C8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D40);
  }

  return result;
}

uint64_t sub_10111E5C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000010136FDB0 == a2)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_10111E628(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - v9;
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = *(a1 + 16);
  sub_100009894(&qword_1016967B0, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v12, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_100DE8BCC(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}