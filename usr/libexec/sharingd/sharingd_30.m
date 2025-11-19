uint64_t sub_1004783A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1004783B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10047840C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100478468(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10047849C()
{
  result = qword_10097F028;
  if (!qword_10097F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F028);
  }

  return result;
}

uint64_t sub_1004784F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100478538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s13UploadRequestVMa()
{
  result = qword_10097F168;
  if (!qword_10097F168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100478614()
{
  sub_100478710();
  if (v0 <= 0x3F)
  {
    sub_1002F2B90(319, &unk_100978AB0);
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, &qword_100975790);
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, qword_1009771F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100478710()
{
  if (!qword_10097F178)
  {
    type metadata accessor for SFAirDrop.TransferIdentifier();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097F178);
    }
  }
}

uint64_t sub_100478780()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1004788C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100479DB4(*a1);
  *a2 = result;
  return result;
}

void sub_1004788F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x726566736E617254;
  v5 = 0xEF6D796E6F647565;
  v6 = 0x73507265646E6553;
  if (v2 != 5)
  {
    v6 = 0x75507265646E6553;
    v5 = 0xEF6E656B6F546873;
  }

  v7 = 0xE400000000000000;
  v8 = 1635017028;
  if (v2 != 3)
  {
    v8 = 0x6F4364616F6C7055;
    v7 = 0xEE006574656C706DLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007365;
  v10 = 0x7479426C61746F54;
  if (v2 != 1)
  {
    v10 = 0x2D746E65746E6F43;
    v9 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100478A00()
{
  v1 = *v0;
  v2 = 0x726566736E617254;
  v3 = 0x73507265646E6553;
  if (v1 != 5)
  {
    v3 = 0x75507265646E6553;
  }

  v4 = 1635017028;
  if (v1 != 3)
  {
    v4 = 0x6F4364616F6C7055;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7479426C61746F54;
  if (v1 != 1)
  {
    v5 = 0x2D746E65746E6F43;
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

unint64_t sub_100478B08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100479DB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100478B30(uint64_t a1)
{
  v2 = sub_100479928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100478B6C(uint64_t a1)
{
  v2 = sub_100479928();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100478BA8()
{
  v39 = type metadata accessor for ByteCountFormatStyle.Units();
  v36 = *(v39 - 8);
  v1 = *(v36 + 64);
  __chkstk_darwin(v39);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ByteCountFormatStyle.Style();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ByteCountFormatStyle();
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  v14._object = 0x8000000100791B10;
  v14._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v14);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100479B14(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v15._countAndFlagsBits = 0x746E65746E6F4320;
  v15._object = 0xEE0020657079542DLL;
  String.append(_:)(v15);
  v16 = _s13UploadRequestVMa();
  String.append(_:)(*(v0 + v16[6]));
  v17._countAndFlagsBits = 0x426C61746F74202CLL;
  v17._object = 0xEE00203A73657479;
  String.append(_:)(v17);
  v41._countAndFlagsBits = *(v0 + v16[5]);
  countAndFlagsBits = v41._countAndFlagsBits;
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 23328;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v40 = countAndFlagsBits;
  (*(v5 + 104))(v8, enum case for ByteCountFormatStyle.Style.file(_:), v4);
  static ByteCountFormatStyle.Units.all.getter();
  static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
  (*(v36 + 8))(v3, v39);
  (*(v5 + 8))(v8, v4);
  sub_1002F5340();
  sub_100479B14(&qword_10097F1C0, &type metadata accessor for ByteCountFormatStyle);
  sub_1004798D4();
  v21 = v37;
  BinaryInteger.formatted<A>(_:)();
  (*(v38 + 8))(v13, v21);
  String.append(_:)(v41);

  v22._countAndFlagsBits = 0x203A61746164202CLL;
  v22._object = 0xE800000000000000;
  String.append(_:)(v22);
  v23 = (v0 + v16[7]);
  v24 = v23[1];
  v25 = v24 >> 60;
  if (v24 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v26 = *v23;
  v30 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v30 != 2)
    {
LABEL_2:
      v26 = 0;
LABEL_3:
      v41._countAndFlagsBits = v26;
      LOBYTE(v41._object) = v25 > 0xE;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v27._object = 0x8000000100791B30;
      v27._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v27);
      LOBYTE(v41._countAndFlagsBits) = *(v0 + v16[8]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v28._countAndFlagsBits = 0x6F6475657370202CLL;
      v28._object = 0xED0000203A6D796ELL;
      String.append(_:)(v28);
      v41 = *(v0 + v16[9]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v29._countAndFlagsBits = 0x6F5468737570202CLL;
      v29._object = 0xED0000203A6E656BLL;
      String.append(_:)(v29);
      v41 = *(v0 + v16[10]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      return;
    }

    v33 = v26 + 16;
    v31 = *(v26 + 16);
    v32 = *(v33 + 8);
    v34 = __OFSUB__(v32, v31);
    v26 = v32 - v31;
    if (!v34)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v26 = BYTE6(v24);
    goto LABEL_3;
  }

  v34 = __OFSUB__(HIDWORD(v26), v26);
  LODWORD(v26) = HIDWORD(v26) - v26;
  if (!v34)
  {
    v26 = v26;
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_100479124(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097F1E8, &qword_100804D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100479928();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100479B14(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = _s13UploadRequestVMa();
    v12 = *(v3 + v11[5]);
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v27 = *v16;
    v28 = v17;
    v26[15] = 3;
    sub_1002A9924(v27, v17);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v27, v28);
    v18 = *(v3 + v11[8]);
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + v11[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = (v3 + v11[10]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004793F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v35 = sub_10028088C(&qword_10097F1D0, &qword_100804D70);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v35);
  v11 = &v33 - v10;
  v12 = _s13UploadRequestVMa();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v36 = a1;
  sub_10002CDC0(a1, v17);
  sub_100479928();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(v36);
  }

  v18 = v8;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  LOBYTE(v37) = 0;
  sub_100479B14(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v19 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v15;
  sub_1004799E4(v7, v15);
  LOBYTE(v37) = 1;
  v21 = v12;
  *(v20 + v12[5]) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37) = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = (v20 + v12[6]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 3;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v20 + v12[7]) = v37;
  LOBYTE(v37) = 4;
  *(v20 + v12[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v37) = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = (v20 + v12[9]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v37) = 6;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v29;
  (*(v18 + 8))(v11, v19);
  v31 = (v20 + v21[10]);
  *v31 = v28;
  v31[1] = v30;
  sub_100479A54(v20, v34);
  sub_10000C60C(v36);
  return sub_100479AB8(v20);
}

unint64_t sub_1004798D4()
{
  result = qword_10097F1C8;
  if (!qword_10097F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F1C8);
  }

  return result;
}

unint64_t sub_100479928()
{
  result = qword_10097F1D8;
  if (!qword_10097F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F1D8);
  }

  return result;
}

uint64_t sub_10047997C(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004799E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479A54(uint64_t a1, uint64_t a2)
{
  v4 = _s13UploadRequestVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479AB8(uint64_t a1)
{
  v2 = _s13UploadRequestVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100479B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SDAuthenticationTransportType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SDAuthenticationTransportType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100479CB0()
{
  result = qword_10097F1F8;
  if (!qword_10097F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F1F8);
  }

  return result;
}

unint64_t sub_100479D08()
{
  result = qword_10097F200;
  if (!qword_10097F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F200);
  }

  return result;
}

unint64_t sub_100479D60()
{
  result = qword_10097F208;
  if (!qword_10097F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F208);
  }

  return result;
}

unint64_t sub_100479DB4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7AE8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_100479E00()
{
  v1 = [*v0 devices];
  if (v1)
  {
    sub_100479FF4();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = sub_100468BC8(v2);
  }

  return v1;
}

id sub_100479EAC(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5)
{
  v6 = v5;
  isa = a4;
  if (a2)
  {
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11.super.isa = 0;
  if (a4)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  v15 = 0;
  v12 = [v6 sendProtobuf:a1 toDestinations:v11.super.isa priority:a3 options:isa identifier:a5 error:&v15];

  if (v12)
  {
    return v15;
  }

  v14 = v15;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_100479FF4()
{
  result = qword_10097F0C0;
  if (!qword_10097F0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097F0C0);
  }

  return result;
}

uint64_t sub_10047A040(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10047A0D4;

  return sub_10047A544();
}

uint64_t sub_10047A0D4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10047A1E4, v2, 0);
}

uint64_t sub_10047A1E4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;
  *(v0 + 32) = static AirDropActor.shared;

  return _swift_task_switch(sub_10047A280, v1, 0);
}

uint64_t sub_10047A280()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for SDAirDropService()) init];

  return _swift_task_switch(sub_10047A300, v1, 0);
}

uint64_t sub_10047A300()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = *(v3 + 112);
  *(v3 + 112) = v1;
  v5 = v1;

  return _swift_task_switch(sub_10047A378, v2, 0);
}

uint64_t sub_10047A378()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_10043778C();

  return _swift_task_switch(sub_10047A3E4, v2, 0);
}

uint64_t sub_10047A3E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A564()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[3] = v2;
  if (v2)
  {
    v3 = qword_1009735E0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = static AirDropActor.shared;

    return _swift_task_switch(sub_10047A644, v5, 0);
  }

  else
  {
    *(v1 + 112) = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10047A644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100437B10();

  return _swift_task_switch(sub_10047A6B0, v1, 0);
}

uint64_t sub_10047A6B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10047A718(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10047A734, a2, 0);
}

uint64_t sub_10047A734()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_10047A7C0;
  }

  else
  {
    v3 = sub_10047B700;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10047A7C0()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10047A858, v0, 0);
}

uint64_t sub_10047A858()
{
  v1 = *(v0 + 32);
  sub_100437B10();

  return _swift_task_switch(sub_10047B700, 0, 0);
}

uint64_t sub_10047A8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10047A8F8, a2, 0);
}

uint64_t sub_10047A8F8()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  if (v1)
  {
    v2 = qword_1009735E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = static AirDropActor.shared;
    v0[5] = static AirDropActor.shared;
    v5 = sub_10047A9E8;
  }

  else
  {
    v5 = sub_10047A9C0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10047A9E8()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10047AA84;

  return sub_100383F24();
}

uint64_t sub_10047AA84()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10047AB94, v2, 0);
}

uint64_t sub_10047AB94()
{

  return _swift_task_switch(sub_10047B700, 0, 0);
}

uint64_t sub_10047AC14()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_retain_n();
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  static Task<>.noThrow(priority:operation:)();

  return sub_10047B4C4(v3);
}

uint64_t sub_10047AD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10047AD3C, a2, 0);
}

uint64_t sub_10047AD3C()
{
  v1 = *(v0[3] + 112);
  v0[5] = v1;
  if (v1)
  {
    v2 = qword_1009735E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = static AirDropActor.shared;
    v0[6] = static AirDropActor.shared;
    v5 = sub_10047AE2C;
  }

  else
  {
    v5 = sub_10047AE04;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10047AE2C()
{
  v1 = v0[5];
  v2 = *(*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_idmsService] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[7] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10047AF2C;
    v4 = v0[4];

    return sub_100664D94(v4);
  }

  else
  {

    return _swift_task_switch(sub_10047B704, 0, 0);
  }
}

uint64_t sub_10047AF2C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_10047B058, v3, 0);
}

uint64_t sub_10047B058()
{

  return _swift_task_switch(sub_10047B704, 0, 0);
}

id sub_10047B318()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_10047B3E0(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10047AD1C(a1, v6, v1 + v5);
}

uint64_t sub_10047B4C4(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10047B52C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return sub_10047A8DC(a1, v1);
}

uint64_t sub_10047B5C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_10047A718(a1, v1);
}

uint64_t sub_10047B664(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_10047A040(a1, v1);
}

uint64_t sub_10047B708(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[31] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047B7A8, v3, 0);
}

uint64_t sub_10047B7A8()
{
  v1 = *(v0 + 240);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_10000EBD4(*(v0 + 232)), (v5 & 1) != 0))
  {
    sub_1002A9938(*(v3 + 56) + 40 * v4, v0 + 144);
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  swift_endAccess();
  if (*(v0 + 168))
  {
    sub_1000121F8((v0 + 144), v0 + 104);
    goto LABEL_15;
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v12 = *(v7 + v11);
  if (*(v12 + 16))
  {
    v13 = sub_100012854(v8, v10);
    v15 = v14;

    if (v15)
    {
      sub_1002D63B0(*(v12 + 56) + 48 * v13, v0 + 16);
      goto LABEL_12;
    }
  }

  else
  {
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_12:
  swift_endAccess();
  v16 = *(v0 + 40);
  if (v16)
  {
    v17 = *(v0 + 48);
    v18 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    *(v0 + 128) = v16;
    *(v0 + 136) = v17;
    v19 = sub_10002F604((v0 + 104));
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    sub_10000C60C((v0 + 16));
    if (!*(v0 + 168))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  if (*(v0 + 168))
  {
LABEL_14:
    sub_100005508(v0 + 144, &qword_100977DC8, &unk_1008091C0);
  }

LABEL_15:
  if (*(v0 + 128))
  {
    sub_1000121F8((v0 + 104), v0 + 64);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v20);
    v22 = *(v21 + 40);
    v27 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 256) = v24;
    *v24 = v0;
    v24[1] = sub_10047BAFC;

    return v27(v20, v21);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_100977DC8, &unk_1008091C0);
    v26 = *(v0 + 8);

    return v26(&_swiftEmptySetSingleton);
  }
}

uint64_t sub_10047BAFC(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10047BC14, v3, 0);
}

uint64_t sub_10047BC14()
{
  sub_10000C60C(v0 + 8);
  v1 = v0[33];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10047BC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000C4AC(v16, qword_10097F240);
  (*(v7 + 16))(v15, a1, v6);
  v54 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v57 = v13;
  v58 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v53 = a1;
    v23 = a2;
    v24 = v22;
    v63[0] = v22;
    *v21 = 136315138;
    sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v6;
    v27 = v3;
    v29 = v28;
    v30 = v15;
    v31 = v26;
    v55 = *(v7 + 8);
    v55(v30, v26);
    v32 = sub_10000C4E4(v25, v29, v63);
    v3 = v27;

    *(v21 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "Adding transferring endpointID: %s", v21, 0xCu);
    sub_10000C60C(v24);
    a2 = v23;
    a1 = v53;
  }

  else
  {

    v33 = v15;
    v31 = v6;
    v55 = *(v7 + 8);
    v55(v33, v6);
  }

  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v35 = *(v3 + v34);
  if (*(v35 + 16) && (v36 = sub_10000EBD4(a1), (v37 & 1) != 0))
  {
    v53 = v3;
    sub_1002A9938(*(v35 + 56) + 40 * v36, &v59);
    sub_1000121F8(&v59, v63);
    swift_endAccess();
    sub_1002A9938(v63, &v59);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v40 = 136315138;
      v41 = v60;
      v42 = v61;
      sub_10002CDC0(&v59, v60);
      v43 = v57;
      (*(v42 + 32))(v41, v42);
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v47 = v55;
      v55(v43, v31);
      sub_10000C60C(&v59);
      v48 = sub_10000C4E4(v44, v46, &v62);

      *(v40 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "Adding connectable to transferringConnectables: %s", v40, 0xCu);
      sub_10000C60C(v54);
    }

    else
    {

      sub_10000C60C(&v59);
      v43 = v57;
      v47 = v55;
    }

    v50 = v64;
    v51 = v65;
    sub_10002CDC0(v63, v64);
    v52 = v56;
    (*(v51 + 32))(v50, v51);
    swift_beginAccess();
    sub_10046E0A4(v43, v52);
    swift_endAccess();
    v47(v43, v31);
    sub_1002A9938(v63, a2);
    return sub_10000C60C(v63);
  }

  else
  {
    result = swift_endAccess();
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10047C214(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[41] = v4;
  v5 = *(v4 - 8);
  v2[42] = v5;
  v6 = *(v5 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v2[45] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047C354, v7, 0);
}

uint64_t sub_10047C354()
{
  v62 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 304);
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097F240);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 352);
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v61 = v13;
    *v12 = 136315138;
    sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = v11;
    v18 = *(v10 + 8);
    v18(v9, v17);
    v19 = sub_10000C4E4(v14, v16, &v61);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing transferring endpointID: %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  else
  {

    v20 = v11;
    v18 = *(v10 + 8);
    v18(v9, v20);
  }

  v21 = *(v0 + 312);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (*(v23 + 16) && (v24 = sub_10000EBD4(*(v0 + 304)), (v25 & 1) != 0))
  {
    sub_1002A9938(*(v23 + 56) + 40 * v24, v0 + 104);
    sub_1000121F8((v0 + 104), v0 + 64);
    swift_endAccess();
    sub_1002A9938(v0 + 64, v0 + 144);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 344);
      v58 = *(v0 + 328);
      v59 = *(v0 + 336);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v29 = 136315138;
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      sub_10002CDC0((v0 + 144), v31);
      (*(v32 + 32))(v31, v32);
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = v18;
      v18(v28, v58);
      sub_10000C60C((v0 + 144));
      v37 = sub_10000C4E4(v33, v35, &v61);

      *(v29 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Removing connectable from transferringConnectables: %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    else
    {

      sub_10000C60C((v0 + 144));
      v36 = v18;
    }

    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    v47 = *(v0 + 320);
    v46 = *(v0 + 328);
    v48 = *(v0 + 312);
    v49 = *(v0 + 88);
    v50 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v49);
    (*(v50 + 32))(v49, v50);
    swift_beginAccess();
    sub_10036DC54(v44, v47);
    swift_endAccess();
    v36(v44, v46);
    sub_100005508(v47, &unk_100976120, &qword_1007F9260);
    v51 = *(v0 + 88);
    v52 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v51);
    (*(v52 + 32))(v51, v52);
    swift_beginAccess();
    sub_1002B10D8(0, 0, v44);
    swift_endAccess();
    v53 = *(v0 + 88);
    v54 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v53);
    v55 = *(v54 + 40);
    v60 = (v55 + *v55);
    v56 = v55[1];
    v57 = swift_task_alloc();
    *(v0 + 368) = v57;
    *v57 = v0;
    v57[1] = sub_10047C9D4;

    return v60(v53, v54);
  }

  else
  {
    swift_endAccess();
    v39 = *(v0 + 344);
    v38 = *(v0 + 352);
    v40 = *(v0 + 312);
    v41 = *(v0 + 320);
    sub_10047E40C();

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_10047C9D4(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 376) = a1;

  return _swift_task_switch(sub_10047CAEC, v3, 0);
}

uint64_t sub_10047CAEC()
{
  v1 = (v0 + 64);
  v2 = *(*(v0 + 376) + 16);

  if (!v2)
  {
    v3 = *(v0 + 312);
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v5 = *(v3 + v4);
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;

    v7 = sub_1004973C8(sub_1004984F8, v6, v5);

    v8 = v7 + 64;
    v9 = -1;
    v10 = -1 << *(v7 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v7 + 64);
    v12 = (63 - v10) >> 6;
    v33 = v7;

    v14 = 0;
    while (v11)
    {
LABEL_12:
      v16 = (*(v33 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v16;
      v18 = v16[1];
      swift_beginAccess();
      v19 = *(v3 + v4);

      v20 = sub_100012854(v17, v18);
      LOBYTE(v19) = v21;

      if (v19)
      {
        v22 = *(v3 + v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v3 + v4);
        *(v3 + v4) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002CE38C();
        }

        v25 = *(*(v24 + 48) + 16 * v20 + 8);

        sub_1002D6398((*(v24 + 56) + 48 * v20), (v0 + 16));
        sub_1002D4104(v20, v24);
        v26 = *(v3 + v4);
        *(v3 + v4) = v24;
      }

      else
      {
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 16) = 0u;
      }

      v11 &= v11 - 1;
      sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
      result = swift_endAccess();
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        goto LABEL_12;
      }
    }

    if (*(v33 + 16))
    {
      v27 = *(v0 + 312);
      sub_100482808();
    }

    v1 = (v0 + 64);
  }

  sub_10000C60C(v1);
  v29 = *(v0 + 344);
  v28 = *(v0 + 352);
  v30 = *(v0 + 312);
  v31 = *(v0 + 320);
  sub_10047E40C();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10047CDB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFPlatform();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_10047CF64, v12, 0);
}

uint64_t sub_10047CF64()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  static SFPlatform.macOS.getter();
  v4 = static SFPlatform.isPlatform(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = v0[2];
    SFAirDropReceive.Transfer.state.getter();
    v9 = (*(v6 + 88))(v5, v7);
    if (v9 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
    {
      v10 = v0[9];
      (*(v0[8] + 96))(v10, v0[7]);
      v11 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v12 = *(v10 + v11[12]);

      v13 = *(v10 + v11[16]);

      v14 = v11[20];
      v15 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
      (*(*(v15 - 8) + 8))(v10 + v14, v15);
      v16 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_9:
      v30 = v0[6];
      v31 = v0[2];
      (*(*(v16 - 8) + 8))(v0[9]);
      SFAirDropReceive.Transfer.askRequest.getter();
      v32 = swift_task_alloc();
      v0[13] = v32;
      *v32 = v0;
      v32[1] = sub_10047D2FC;
      v33 = v0[6];
      v34 = v0[3];

      return sub_10047D484(v33);
    }

    if (v9 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
    {
      v17 = v0[9];
      (*(v0[8] + 96))(v17, v0[7]);
      v18 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
      v19 = v18[12];
      v20 = *(v17 + v18[16] + 8);

      v21 = *(v17 + v18[20]);

      v22 = *(v17 + v18[24]);

      v23 = *(v17 + v18[28]);

      v24 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v24 - 8) + 8))(v17 + v19, v24);
LABEL_8:
      v16 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      goto LABEL_9;
    }

    v25 = v0[8];
    v26 = v0[9];
    v27 = v0[7];
    if (v9 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
    {
      (*(v25 + 96))(v0[9], v27);
      v28 = *(sub_10028088C(&qword_10097A670, &unk_100804290) + 48);
      v29 = type metadata accessor for SFAirDropReceive.Failure();
      (*(*(v29 - 8) + 8))(v26 + v28, v29);
      goto LABEL_8;
    }

    (*(v25 + 8))(v0[9], v27);
  }

  v36 = v0[12];
  v37 = v0[9];
  v38 = v0[6];

  v39 = v0[1];

  return v39();
}

uint64_t sub_10047D2FC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  (*(v1[5] + 8))(v1[6], v1[4]);
  v4 = v1[12];
  v5 = v1[9];
  v6 = v1[6];

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_10047D484(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_10028088C(&unk_10097F330, &qword_1007F9410) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for SFPlatform();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_10047D628, v10, 0);
}

uint64_t sub_10047D628()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  static SFPlatform.macOS.getter();
  v4 = static SFPlatform.isPlatform(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[15];
    v6 = v0[8];
    v7 = v0[9];
    SFAirDropReceive.AskRequest.id.getter();
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (*(v9 + 16) && (v10 = sub_100570848(v0[15]), (v11 & 1) != 0))
    {
      v12 = v10;
      v46 = v0[15];
      v47 = v0[14];
      v13 = v0[13];
      v14 = v0[10];
      v15 = v0[11];
      v48 = v0[9];
      v44 = v0[12];
      v45 = v0[8];
      v16 = *(v9 + 56);
      v17 = type metadata accessor for NWEndpoint();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v15, v16 + *(v18 + 72) * v12, v17);
      v19 = *(v18 + 56);
      v19(v15, 0, 1, v17);
      sub_100005508(v15, &unk_10097F330, &qword_1007F9410);
      swift_endAccess();
      (*(v13 + 8))(v46, v44);
      SFAirDropReceive.AskRequest.id.getter();
      v19(v14, 1, 1, v17);
      swift_beginAccess();
      sub_1002B0370(v14, v47);
      swift_endAccess();
      v20 = *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
      v21 = sub_100486920();
      if (v21 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v0[9];

      sub_10055FA90(v22);
      v24 = v23 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler;
      v25 = *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
      if (v25)
      {
        v26 = v0[9];
        v27 = *(v24 + 8);

        sub_100486920();
        v25();
        sub_100015D04(v25);
      }
    }

    else
    {
      v28 = v0[15];
      v29 = v0[12];
      v30 = v0[13];
      v31 = v0[11];
      v32 = type metadata accessor for NWEndpoint();
      (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      sub_100005508(v31, &unk_10097F330, &qword_1007F9410);
      swift_endAccess();
      (*(v30 + 8))(v28, v29);
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000C4AC(v33, qword_10097F240);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "No receive displayable present, skipping remove", v36, 2u);
      }
    }
  }

  v37 = v0[18];
  v38 = v0[14];
  v39 = v0[15];
  v41 = v0[10];
  v40 = v0[11];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10047DA70(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(sub_10028088C(&unk_10097F330, &qword_1007F9410) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v5 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for SFPlatform();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v2[32] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047DC64, v12, 0);
}

uint64_t sub_10047DC64()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  static SFPlatform.macOS.getter();
  v4 = static SFPlatform.isPlatform(_:)();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) != 0 && (v5 = v0[22], v6 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs, swift_beginAccess(), *(*(v5 + v6) + 16)))
  {
    v7 = v0[21];
    v8 = SFAirDropReceive.AskRequest.senderID.getter();
    v10 = v9;
    v0[33] = v9;
    v11 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
    v13 = v12;
    v0[34] = v12;
    v14 = swift_task_alloc();
    v0[35] = v14;
    *v14 = v0;
    v14[1] = sub_10047DE10;
    v15 = v0[25];
    v16 = v0[22];

    return sub_1004924A4(v15, v8, v10, v11, v13);
  }

  else
  {
    v18 = v0[31];
    v19 = v0[28];
    v21 = v0[24];
    v20 = v0[25];
    v22 = v0[23];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10047DE10()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v6 = *v0;

  return _swift_task_switch(sub_10047DF60, v4, 0);
}

uint64_t sub_10047DF60()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v3, &unk_100976120, &qword_1007F9260);
LABEL_12:
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097F240);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "No matching AirDropable endpoint found, adding to receiving displayables", v24, 2u);
    }

    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);

    SFAirDropReceive.AskRequest.id.getter();
    sub_10062F3D4(v26);
    v29 = type metadata accessor for NWEndpoint();
    (*(*(v29 - 8) + 56))(v26, 0, 1, v29);
    swift_beginAccess();
    sub_1002B0370(v26, v25);
    swift_endAccess();
    v30 = *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
    v31 = sub_100486920();
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = *(v0 + 176);

    sub_10055FA90(v32);
    v34 = v33 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler;
    v35 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
    if (v35)
    {
      v36 = *(v0 + 176);
      v37 = *(v34 + 8);

      sub_100486920();
      v35();
      sub_100015D04(v35);
    }

    goto LABEL_20;
  }

  v4 = *(v0 + 176);
  (*(v2 + 32))(*(v0 + 224), v3, v1);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!*(v6 + 16) || (v7 = sub_10000EBD4(*(v0 + 224)), (v8 & 1) == 0))
  {
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);
    swift_endAccess();
    (*(v19 + 8))(v18, v20);
    goto LABEL_12;
  }

  sub_1002A9938(*(v6 + 56) + 40 * v7, v0 + 56);
  sub_1000121F8((v0 + 56), v0 + 16);
  swift_endAccess();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v9);
  if (((*(v10 + 24))(v9, v10) & 1) == 0)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_10000C60C((v0 + 16));
    goto LABEL_12;
  }

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097F240);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Connectable endpoint present, skipping receiving displayable addition", v14, 2u);
  }

  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 208);

  (*(v16 + 8))(v15, v17);
  sub_10000C60C((v0 + 16));
LABEL_20:
  v38 = *(v0 + 248);
  v39 = *(v0 + 224);
  v41 = *(v0 + 192);
  v40 = *(v0 + 200);
  v42 = *(v0 + 184);

  v43 = *(v0 + 8);

  return v43();
}

void sub_10047E40C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10047FAC0())
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097F240);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No AirDrop browse clients present, stopping all browsing", v10, 2u);
    }

    sub_10048223C();
    UUID.init()();
    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
    swift_beginAccess();
    (*(v3 + 40))(&v1[v11], v6, v2);
    swift_endAccess();
    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      (*(v3 + 16))(v6, &v1[v11], v2);
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v3 + 8))(v6, v2);
      v20 = sub_10000C4E4(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Rolled service sessionID with new ID %s", v15, 0xCu);
      sub_10000C60C(v16);
    }
  }
}

uint64_t sub_10047E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v5[14] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v11 = type metadata accessor for SDNearFieldTap();
  v5[16] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5[18] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v5[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_10047E8D4, v15, 0);
}

uint64_t sub_10047E8D4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v27 = v0[13];
  v28 = v0[18];
  v6 = v0[10];
  v5 = v0[11];
  v23 = v6;
  v24 = v0[7];
  v25 = v0[19];
  v26 = v0[6];
  sub_10049779C(v0[8], v2, type metadata accessor for SDNearFieldTap);
  v7 = (v2 + v1[13]);
  v9 = *v7;
  v8 = v7[1];
  *v4 = *v7;
  v4[1] = v8;
  v10 = v1[14];
  v11 = v3[5];
  v12 = *(v5 + 16);
  v0[21] = v12;
  v0[22] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v4 + v11, v2 + v10, v6);
  v13 = (v2 + v1[6]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (v4 + v3[7]);
  *v16 = v14;
  v16[1] = v15;
  *(v4 + v3[8]) = *(v2 + v1[17]) & 1;
  *(v4 + v3[9]) = *(v2 + v1[12]);
  LOBYTE(v1) = *(v2 + v1[19]);
  sub_100294008(v9, v8);

  sub_10049786C(v2, type metadata accessor for SDNearFieldTap);
  *(v4 + v3[10]) = v1;
  *(v4 + v3[6]) = v24;
  sub_100497804(v4, v25, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  swift_storeEnumTagMultiPayload();
  v12(v27, v26, v23);
  v17 = type metadata accessor for SDAirDropDiscoveredNearFieldDevice();
  v0[23] = v17;
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[24] = sub_100626478(v27);
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_10047EB18;
  v21 = v0[19];

  return sub_1006261A0(v21);
}

uint64_t sub_10047EB18()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_10047EC28, v2, 0);
}

uint64_t sub_10047EC28()
{
  v46 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[9];
  v4 = v0[6];
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v42 = v2;
  v43 = sub_100005430(&qword_10097F328, type metadata accessor for SDAirDropDiscoveredNearFieldDevice);
  v44 = &off_1008EBD48;
  v40 = v1;
  swift_beginAccess();

  sub_1002AFCBC(&v40, v5, v7);
  swift_endAccess();
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v8 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[6];
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097F240);
  v10(v11, v13, v12);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[24];
  v19 = v0[19];
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  if (v17)
  {
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v23 = 136315394;
    sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v19;
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    v27 = sub_10000C4E4(v24, v26, &v45);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v40 = 0;
    v41 = 0xE000000000000000;

    _StringGuts.grow(_:)(19);

    v40 = 0xD000000000000010;
    v41 = 0x8000000100791D00;
    String.append(_:)(v18[1]);
    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);

    v29 = sub_10000C4E4(v40, v41, &v45);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v15, v16, "Created near field endpoint for transaction %s: %s", v23, 0x16u);
    swift_arrayDestroy();

    v30 = v39;
  }

  else
  {

    (*(v21 + 8))(v20, v22);
    v30 = v19;
  }

  sub_10049786C(v30, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v31 = v0[22];
  v32 = v0[19];
  v33 = v0[17];
  v34 = v0[15];
  v36 = v0[12];
  v35 = v0[13];
  (v0[21])(v0[5], v0[6], v0[10]);

  v37 = v0[1];

  return v37();
}

void sub_10047F040(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v41 = v1;
  v15 = *(v1 + v14);
  if (*(v15 + 16))
  {
    v16 = sub_100012854(v11, v13);
    v18 = v17;

    if (v18)
    {
      sub_1002D63B0(*(v15 + 56) + 48 * v16, &v42);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
LABEL_6:
  swift_endAccess();
  v19 = *(&v43 + 1);
  sub_100005508(&v42, &qword_100976180, &unk_1007F9300);
  if (v19)
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097F240);
    (*(v4 + 16))(v10, a1, v3);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v42 = v40;
      *v23 = 136315138;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v4 + 8))(v10, v3);
      v27 = sub_10000C4E4(v24, v26, &v42);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Removing endpoint for near field transaction: %s", v23, 0xCu);
      sub_10000C60C(v40);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    v37 = UUID.uuidString.getter();
    v39 = v38;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    swift_beginAccess();
    sub_1002AFCBC(&v42, v37, v39);
    swift_endAccess();
  }

  else
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097F240);
    (*(v4 + 16))(v8, a1, v3);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v42 = v32;
      *v31 = 136315138;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v4 + 8))(v8, v3);
      v36 = sub_10000C4E4(v33, v35, &v42);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Not tracking endpoint for transaction ID %s", v31, 0xCu);
      sub_10000C60C(v32);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }
  }
}

uint64_t sub_10047F580(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[7] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_10047F6C8;

  return sub_10047B708(a2);
}

uint64_t sub_10047F6C8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10047F7E0, v3, 0);
}

void sub_10047F7E0()
{
  v1 = 0;
  v2 = v0[9];
  v3 = *(v2 + 56);
  v4 = v0[4];
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v9 = v1;
LABEL_8:
      v10 = v0[5];
      v11 = v0[6];
      v12 = v0[3];
      sub_10049779C(*(v2 + 48) + *(v4 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v11, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v0[5];
      if (EnumCaseMultiPayload == 3)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_10049786C(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v1 = v9;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v20 = *v14;
    v21 = [*v14 iconImageData];
    if (v21)
    {
      v22 = v21;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v23 = v0[9];
    v24 = v0[2];
    SFAirDrop.EndpointMetadata.init(imageData:)();

LABEL_12:
    v18 = v0[5];
    v17 = v0[6];

    v19 = v0[1];

    v19();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        v15 = v0[9];
        v16 = v0[2];

        SFAirDrop.EndpointMetadata.init(imageData:)();
        goto LABEL_12;
      }

      v7 = *(v2 + 56 + 8 * v9);
      ++v1;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10047F9F8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F240);
  v1 = sub_10000C4AC(v0, qword_10097F240);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047FAC0()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097F240);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Keeping browsers alive, browse client still present";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_12:

    return 0;
  }

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
  swift_beginAccess();
  if (*(*(v0 + v7) + 16))
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097F240);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Keeping browsers alive, transfer ongoing";
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_10047FD54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10028088C(&qword_10097C690, &qword_1008012B8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_10047FE80(uint64_t a1, uint64_t a2)
{
  sub_10028088C(&qword_10097C690, &qword_1008012B8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_10047FEF8(void *a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = qword_1009735E0;
  v9 = v1;
  v10 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v12 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v9;
  v13[5] = v10;

  v14 = sub_1002B36AC(0, 0, v6, &unk_100805170, v13);
  v15 = type metadata accessor for SDAirDropAgentClientToken();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_agentClient] = v10;
  *&v16[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_task] = v14;
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = v10;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_1004800E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5[3] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1004801BC;

  return sub_1004802EC(a5);
}

uint64_t sub_1004801BC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1004802CC, v2, 0);
}

uint64_t sub_1004802EC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004803F0, v6, 0);
}

uint64_t sub_1004803F0()
{
  v52 = v0;
  if ([*(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) currentConsoleUser])
  {
    v50 = *(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
    sub_10055EF80(*(v0 + 64));
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097F240);
    v4 = v2;
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      log = v6;
      v8 = *(v0 + 104);
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = *(v0 + 64);
      v12 = *(v0 + 72);
      v13 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v13 = 136315394;
      v48 = v7;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = sub_10000C4E4(v14, v15, &v51);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
      swift_beginAccess();
      v18 = *(v9 + 16);
      v18(v8, v12 + v17, v10);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v9 + 8))(v8, v10);
      v22 = sub_10000C4E4(v19, v21, &v51);

      *(v13 + 14) = v22;
      _os_log_impl(&_mh_execute_header, log, v48, "Adding AirDrop browse client %s for session %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v27 = *(v0 + 88);

      v18 = *(v27 + 16);
    }

    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v18(v29, v33 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_id, v30);
    swift_beginAccess();
    sub_10046E0A4(v28, v29);
    swift_endAccess();
    (*(v31 + 8))(v28, v30);
    v34 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_applicationServiceEndpointsOnly);
    sub_100481560(*(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_applicationServiceEndpointsOnly), *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_deviceFilters));
    v35 = sub_100486920();
    if (v35 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = *(v0 + 72);

    sub_10055FA90(v36);
    v38 = v37 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler;
    v39 = *(v37 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
    if (v39)
    {
      v40 = *(v0 + 72);
      v41 = *(v38 + 8);

      sub_100486920();
      v39();
      sub_100015D04(v39);
    }

    if (v34)
    {
      v42 = *(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_pseudonymService);
      v43 = swift_task_alloc();
      *(v0 + 112) = v43;
      *v43 = v0;
      v43[1] = sub_100480988;

      return sub_1005EAAE8();
    }
  }

  else
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_10097F240);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Browse is intended for different user, ignoring", v26, 2u);
    }
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100480988()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v7 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100480B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_100480BB4, v6, 0);
}

uint64_t sub_100480BB4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_task);
  v2 = async function pointer to Task.result.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100480C7C;

  return Task.result.getter(v0 + 56, v1, &type metadata for Bool, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100480C7C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100480D8C, v2, 0);
}

uint64_t sub_100480D8C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropAgentClientToken_agentClient);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100480E34;
  v3 = v0[3];

  return sub_100480F28(v1);
}

uint64_t sub_100480E34()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100480F28(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100481058, v7, 0);
}

uint64_t sub_100481058()
{
  v32 = v0;
  if ([*(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) currentConsoleUser])
  {
    v1 = *(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
    sub_10055F118(*(v0 + 64));
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097F240);
    v5 = v3;
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 104);
      v11 = *(v0 + 88);
      v12 = *(v0 + 64);
      v30 = *(v0 + 72);
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136315394;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = sub_10000C4E4(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
      swift_beginAccess();
      (*(v9 + 16))(v10, v30 + v17, v11);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v9 + 8))(v10, v11);
      v21 = sub_10000C4E4(v18, v20, &v31);

      *(v13 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "Removing AirDrop browse client %s for session %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 64);
    v25 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_id;
    swift_beginAccess();
    sub_10036DC54(v24 + v25, v22);
    swift_endAccess();
    sub_100005508(v22, &unk_100976120, &qword_1007F9260);
    sub_10047E40C();
  }

  v26 = *(v0 + 104);
  v27 = *(v0 + 80);

  v28 = *(v0 + 8);

  return v28();
}

void sub_100481560(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  sub_100481848();
  v10 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus);
  sub_100469844();

  if ((a1 & 1) == 0)
  {
    v11 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_idmsService);
    type metadata accessor for SFAirDropUserDefaults();
    v12 = static SFAirDropUserDefaults.shared.getter();
    v13 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v13)
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      v15 = qword_1009735E0;
      v16 = v11;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = static AirDropActor.shared;
      v18 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v18;
      v19[4] = v16;

      sub_1002B3098(0, 0, v9, &unk_100805190, v19);
    }

    sub_100481A44(a2);
    if (!*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser))
    {
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v22 = static MainActor.shared.getter();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = &protocol witness table for MainActor;
      v23[4] = v21;

      sub_1002B3098(0, 0, v9, &unk_100805188, v23);
    }
  }
}

void sub_100481848()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser))
  {
    v2 = v0;
    if ([*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) isAirDropAllowed])
    {
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_10097F240);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Starting application service browser", v6, 2u);
      }

      v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(type metadata accessor for SDAirDropApplicationServiceBrowser());

      v10 = sub_1004A2D88(v9, sub_100498394, v8);
      v11 = *(v2 + v1);
      *(v2 + v1) = v10;

      v12 = *(v2 + v1);
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_delegate + 8) = &off_1008E2F30;
        swift_unknownObjectWeakAssign();
        v13 = *(v2 + v1);
        if (v13)
        {
          v14 = v13;
          sub_1004A2544();
        }
      }
    }
  }
}

void sub_100481A44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser;
  v15 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser);
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = *&v15[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceFilters];
  if (*(v16 + 16))
  {
    v17 = v15;
    if ((sub_100495F18(v16, a1) & 1) == 0)
    {
      v70 = v9;
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_10097F240);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v69 = v8;
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Bonjour browse with new device filters requested", v21, 2u);
        v8 = v69;
      }

      sub_10047FAC0();
      v22 = *(v2 + v14);
      v9 = v70;
      if (v22)
      {
        v23 = v22;
        sub_1004C5400();
      }

      v17 = *(v2 + v14);
      *(v2 + v14) = 0;
    }
  }

  if (!*(v2 + v14))
  {
LABEL_13:
    v24 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus);
    if ([v24 isAirDropAllowed])
    {
      v66 = v24;
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v69 = v8;
      v70 = v9;
      v67 = v5;
      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097F240);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      v28 = os_log_type_enabled(v26, v27);
      v68 = v4;
      v64 = a1;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v73 = v30;
        *v29 = 136315138;
        sub_100294244();
        v31 = Set.description.getter();
        v33 = sub_10000C4E4(v31, v32, &v73);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "Starting bonjour browser - filters %s", v29, 0xCu);
        sub_10000C60C(v30);
      }

      v34 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bleController);
      v59 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_nearbyAgent);
      v60 = v34;
      v61 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_idmsService);
      v63 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = type metadata accessor for SDAirDropBonjourBrowser();
      v35 = objc_allocWithZone(v65);
      v36 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browserQueue;
      sub_1002DDC10();

      static DispatchQoS.default.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_100005430(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_10028088C(&unk_10097A630, &unk_1007F5680);
      sub_1002808D4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v67 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v68);
      *&v35[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser] = 0;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient] = 0;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult] = &_swiftEmptyDictionarySingleton;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount] = &_swiftEmptyDictionarySingleton;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections] = &_swiftEmptyDictionarySingleton;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints] = &_swiftEmptyDictionarySingleton;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceFilters] = v64;
      v37 = v66;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus] = v66;
      v39 = v59;
      v38 = v60;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_nearbyAgent] = v59;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_bleController] = v38;
      v40 = v61;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_idmsService] = v61;
      v41 = objc_opt_self();

      v42 = v37;
      v43 = v39;
      v44 = v38;
      v45 = v40;
      v46 = [v41 defaultCenter];
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_notificationCenter] = v46;
      v47 = v62;
      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger] = v63;
      v48 = &v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler];
      *v48 = sub_10049829C;
      v48[1] = v47;
      v73 = _swiftEmptyArrayStorage;
      v49 = sub_10028088C(&unk_10097F380, &qword_100806F10);
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();

      *&v35[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery] = CurrentValueSubject.init(_:)();
      v72.receiver = v35;
      v72.super_class = v65;
      v52 = objc_msgSendSuper2(&v72, "init");
      v53 = *&v52[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_notificationCenter];
      v54 = v52;
      [v53 addObserver:v54 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessModeChanged" object:0];
      [v53 addObserver:v54 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
      [v53 addObserver:v54 selector:"wirelessBluetoothStateChangedWithNotification:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];

      v55 = *(v2 + v14);
      *(v2 + v14) = v54;

      v56 = *(v2 + v14);
      if (v56)
      {
        *(v56 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_delegate + 8) = &off_1008E2F30;
        swift_unknownObjectWeakAssign();
        v57 = *(v2 + v14);
        if (v57)
        {
          v58 = v57;
          sub_1004C4FAC();
        }
      }
    }
  }
}

uint64_t sub_10048223C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v54 = &v49 - v5;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - v8;
  if (qword_1009738C0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097F240);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Stopping SDAirDropEndpointService", v13, 2u);
  }

  if (sub_10047FAC0())
  {
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser;
    v15 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser];
    if (v15)
    {
      v16 = v15;
      sub_1004A2B58();

      v15 = *&v1[v14];
    }

    *&v1[v14] = 0;
  }

  if (sub_10047FAC0())
  {
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser;
    v18 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser];
    if (v18)
    {
      v19 = v18;
      sub_1004C5400();

      v18 = *&v1[v17];
    }

    *&v1[v17] = 0;
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;

  sub_1002B3098(0, 0, v9, &unk_1007FA798, v23);

  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints;
  swift_beginAccess();
  v25 = *&v1[v24];
  *&v1[v24] = &_swiftEmptySetSingleton;

  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v27 = *&v1[v26];
  *&v1[v26] = &_swiftEmptyDictionarySingleton;

  sub_100482808();
  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations;
  swift_beginAccess();
  v50 = v1;
  v49 = v28;
  v29 = *&v1[v28];
  v9 = (v29 + 64);
  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v29 + 64);
  v33 = (v30 + 63) >> 6;
  v53 = v56 + 16;
  v52 = enum case for SFAirDropSend.Failure.resolveFailure(_:);
  v51 = v56 + 8;

  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_20:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v38 = v55;
      v37 = v56;
      v1 = v54;
      (*(v56 + 16))(v54, *(v29 + 56) + *(v56 + 72) * (v36 | (v35 << 6)), v55);
      v39 = type metadata accessor for SFAirDropSend.Failure();
      sub_100005430(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      v40 = swift_allocError();
      *v41 = 1;
      (*(*(v39 - 8) + 104))(v41, v52, v39);
      v57 = v40;
      CheckedContinuation.resume(throwing:)();
      (*(v37 + 8))(v1, v38);
      if (!v32)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
LABEL_16:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *&v9[8 * v35];
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_20;
    }
  }

  v42 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
  v43 = v50;
  swift_beginAccess();
  v44 = *&v43[v42];
  *&v43[v42] = &_swiftEmptySetSingleton;

  v45 = *&v43[v49];
  *&v43[v49] = &_swiftEmptyDictionarySingleton;

  v46 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables;
  swift_beginAccess();
  v47 = *&v43[v46];
  *&v43[v46] = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100482808()
{
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v64 = &v55 - v3;
  v63 = type metadata accessor for UUID();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v63);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v61 = &v55 - v9;
  __chkstk_darwin(v8);
  v70 = &v55 - v10;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v60 = v11;
  *(v0 + v11) = &_swiftEmptySetSingleton;

  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v14 = *(v0 + v13);
  v15 = *(v14 + 64);
  v56 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
  v65 = v14;

  v66 = v0;
  v59 = v19;
  swift_beginAccess();
  v20 = 0;
  v55 = (v16 + 63) >> 6;
  v71 = (v4 + 8);
  v58 = (v4 + 16);
  v57 = (v4 + 56);
  v21 = &_swiftEmptyDictionarySingleton;
  v22 = v63;
  if (v18)
  {
    while (1)
    {
      v69 = v21;
      v23 = v20;
LABEL_9:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      sub_1002D63B0(*(v65 + 56) + 48 * (v24 | (v23 << 6)), &v77);
      v25 = v78;
      sub_10002CDC0(&v77, v78);
      v26 = v61;
      (*(*(&v25 + 1) + 32))(v25, *(&v25 + 1));
      *&v67 = UUID.uuidString.getter();
      v28 = v27;
      v68 = *v71;
      v68(v26, v22);
      v29 = *v58;
      v30 = v64;
      (*v58)(v64, v66 + v59, v22);
      (*v57)(v30, 0, 1, v22);
      v31 = v70;
      sub_10062E9D8(v30, v67, v28, v70);

      sub_100005508(v30, &unk_100976120, &qword_1007F9260);
      v32 = v62;
      v29(v62, v31, v22);
      swift_beginAccess();
      sub_10046E0A4(v26, v32);
      swift_endAccess();
      v33 = v26;
      v34 = v68;
      v68(v33, v22);
      v67 = v78;
      v35 = v78;
      v36 = sub_10002CDC0(&v77, v78);
      *&v76[3] = v67;
      v37 = sub_10002F604(v76);
      (*(*(v35 - 8) + 16))(v37, v36, v35);
      sub_10000C60C(&v77);
      sub_1000121F8(v76, v73);
      v38 = v69;
      LOBYTE(v35) = swift_isUniquelyReferenced_nonNull_native();
      v72 = v38;
      v39 = v74;
      v40 = v75;
      v41 = sub_10002F5B4(v73, v74);
      v42 = *(*(v39 - 8) + 64);
      __chkstk_darwin(v41);
      v44 = &v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44);
      v46 = v70;
      sub_10049791C(v44, v70, v35, &v72, v39, v40);
      v34(v46, v22);
      sub_10000C60C(v73);
      v21 = v72;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v23 >= v55)
    {
      break;
    }

    v18 = *(v56 + 8 * v23);
    ++v20;
    if (v18)
    {
      v69 = v21;
      v20 = v23;
      goto LABEL_9;
    }
  }

  v47 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  v18 = v66;
  swift_beginAccess();
  v48 = *(v18 + v47);
  *(v18 + v47) = v21;

  v49 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
  v50 = sub_100486920();
  if (!(v50 >> 62))
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_17:
  v51 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:

  result = sub_10055FA90(v51);
  v53 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  if (v53)
  {
    v54 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);

    sub_100486920();
    v53();
    sub_100015D04(v53);
  }

  return result;
}

uint64_t sub_100482F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100482F28, 0, 0);
}

uint64_t sub_100482F28()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100483028;
    v4 = *(v0 + 56);

    return sub_10048313C(v4, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100483028()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_10048313C(uint64_t a1, char a2)
{
  *(v3 + 368) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v4 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v3 + 144) = v5;
  v6 = *(v5 - 8);
  *(v3 + 152) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  *(v3 + 264) = static AirDropActor.shared;

  return _swift_task_switch(sub_100483330, v8, 0);
}

uint64_t sub_100483330()
{
  v162 = v0;
  if (qword_1009738C0 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v1 = *(v0 + 120);
    v2 = type metadata accessor for Logger();
    *(v0 + 272) = sub_10000C4AC(v2, qword_10097F240);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 144);
      v6 = *(v0 + 120);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v161[0] = v8;
      *v7 = 136315138;
      v9 = Array.description.getter();
      v11 = sub_10000C4E4(v9, v10, v161);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "Endpoints discovered %s", v7, 0xCu);
      sub_10000C60C(v8);
    }

    v12 = *(v0 + 120);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v0 + 152);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      v17 = v12 + v15;
      v18 = _swiftEmptyArrayStorage;
      do
      {
        v19 = *(v0 + 256);
        v20 = *(v0 + 128);
        sub_10049779C(v17, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v21 = sub_100487690(v19, v20);
        v22 = *(v0 + 256);
        if (v21)
        {
          sub_100497804(v22, *(v0 + 248), type metadata accessor for SDAirDropDiscoveredEndpoint);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161[0] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FED0(0, v18[2] + 1, 1);
            v18 = v161[0];
          }

          v25 = v18[2];
          v24 = v18[3];
          if (v25 >= v24 >> 1)
          {
            sub_10028FED0(v24 > 1, v25 + 1, 1);
            v18 = v161[0];
          }

          v26 = *(v0 + 248);
          v18[2] = v25 + 1;
          sub_100497804(v26, v18 + v15 + v25 * v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
        }

        else
        {
          sub_10049786C(v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
        }

        v17 += v16;
        --v13;
      }

      while (v13);
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    v27 = *(v0 + 128);
    v28 = *(v0 + 368);
    v153 = sub_100292E1C(v18);
    *(v0 + 280) = v153;

    v29 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints;
    *(v0 + 288) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscoveredEndpoints;
    swift_beginAccess();
    v30 = *(v27 + v29);
    v154 = swift_task_alloc();
    *(v154 + 16) = v28;
    v31 = *(v30 + 32);
    LODWORD(v27) = v31 & 0x3F;
    v32 = ((1 << v31) + 63) >> 6;
    v33 = 8 * v32;

    if (v27 <= 0xD)
    {
      goto LABEL_16;
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_16:
    v151 = &v151;
    v152 = v32;
    v159 = *(v0 + 152);
    LODWORD(v157) = *(v0 + 368);
    __chkstk_darwin(v34);
    v155 = &v151 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v155, v33);
    v156 = 0;
    v35 = 0;
    v36 = v30 + 56;
    v37 = 1 << *(v30 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v30 + 56);
    v40 = (v37 + 63) >> 6;
    v160 = v30;
    while (v39)
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
LABEL_27:
      v44 = v41 | (v35 << 6);
      v46 = *(v0 + 232);
      v45 = *(v0 + 240);
      v47 = *(v0 + 144);
      v48 = *(v30 + 48);
      v49 = *(v159 + 72);
      v158 = v44;
      sub_10049779C(v48 + v49 * v44, v45, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v45, v46, type metadata accessor for SDAirDropDiscoveredEndpoint);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v51 = *(v0 + 232);
      v52 = *(v0 + 240);
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_10049786C(v51, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v30 = v160;
        }

        else
        {
          sub_10049786C(v51, type metadata accessor for SDAirDropDiscoveredEndpoint);
          sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v53 = v157 == 2;
LABEL_34:
          v30 = v160;
          if (v53)
          {
LABEL_36:
            *&v155[(v158 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v158;
            if (__OFADD__(v156++, 1))
            {
              __break(1u);
LABEL_39:
              v55 = sub_1006E3B80(v155, v152, v156, v30);
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          sub_10049786C(v51, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v53 = v157 == 1;
          goto LABEL_34;
        }

        sub_10049786C(v51, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v30 = v160;
        if (!v157)
        {
          goto LABEL_36;
        }
      }
    }

    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v40)
      {
        goto LABEL_39;
      }

      v43 = *(v36 + 8 * v35);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v39 = (v43 - 1) & v43;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_77:
    swift_once();
  }

  v150 = swift_slowAlloc();
  v55 = sub_1004976E8(v150, v32, v30, sub_10049827C, v154, sub_1006E32EC);

LABEL_40:
  *(v0 + 296) = v55;

  *(v0 + 112) = v153;
  v56 = *(v55 + 32);
  *(v0 + 369) = v56;
  v57 = -1;
  v58 = -1 << v56;
  if (-(-1 << v56) < 64)
  {
    v57 = ~(-1 << -v58);
  }

  v59 = v57 & *(v55 + 56);

  if (v59)
  {
    v60 = 0;
    v61 = *(v0 + 296);
LABEL_47:
    *(v0 + 304) = v59;
    *(v0 + 312) = v60;
    v64 = *(v0 + 280);
    v66 = *(v0 + 216);
    v65 = *(v0 + 224);
    sub_10049779C(*(v61 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v59)) | (v60 << 6)), v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v65, v66, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v67 = sub_100569540(v66, v64);
    v68 = *(v0 + 272);
    v69 = *(v0 + 216);
    if (v67)
    {
      sub_10049779C(v69, *(v0 + 208), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 208);
      if (v72)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v161[0] = v75;
        *v74 = 136315138;
        v76 = sub_10032DA30(v75);
        v78 = v77;
        sub_10049786C(v73, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v79 = sub_10000C4E4(v76, v78, v161);

        *(v74 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v70, v71, "Endpoint updated %s", v74, 0xCu);
        sub_10000C60C(v75);
      }

      else
      {

        sub_10049786C(v73, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v90 = *(v0 + 288);
      v92 = *(v0 + 192);
      v91 = *(v0 + 200);
      v93 = *(v0 + 128);
      sub_10049779C(*(v0 + 216), v92, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v91, v92);
      swift_endAccess();
      sub_10049786C(v91, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v94 = swift_task_alloc();
      *(v0 + 320) = v94;
      *v94 = v0;
      v94[1] = sub_100484390;
      v95 = *(v0 + 216);
      v96 = *(v0 + 128);
      v97 = *(v0 + 368);

      return sub_100487CBC(v95, v97);
    }

    else
    {
      sub_10049779C(v69, *(v0 + 184), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 184);
      if (v82)
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v161[0] = v85;
        *v84 = 136315138;
        v86 = sub_10032DA30(v85);
        v88 = v87;
        sub_10049786C(v83, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v89 = sub_10000C4E4(v86, v88, v161);

        *(v84 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v80, v81, "Endpoint disappeared %s", v84, 0xCu);
        sub_10000C60C(v85);
      }

      else
      {

        sub_10049786C(v83, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v99 = *(v0 + 288);
      v100 = *(v0 + 216);
      v102 = *(v0 + 128);
      v101 = *(v0 + 136);
      swift_beginAccess();
      sub_10036E788(v100, v101);
      swift_endAccess();
      sub_100005508(v101, &qword_1009763E0, &qword_1007F95D0);
      v103 = swift_task_alloc();
      *(v0 + 328) = v103;
      *v103 = v0;
      v103[1] = sub_100484E98;
      v104 = *(v0 + 216);
      v105 = *(v0 + 128);

      return sub_1004892AC(v104);
    }
  }

  else
  {
    v62 = 0;
    v63 = ((63 - v58) >> 6) - 1;
    v61 = *(v0 + 296);
    while (v63 != v62)
    {
      v60 = v62 + 1;
      v59 = *(v61 + 8 * v62++ + 64);
      if (v59)
      {
        goto LABEL_47;
      }
    }

    v106 = *(v0 + 280);

    v107 = *(v0 + 112);
    *(v0 + 336) = v107;
    v108 = *(v107 + 32);
    *(v0 + 370) = v108;
    v109 = -1;
    v110 = -1 << v108;
    if (-(-1 << v108) < 64)
    {
      v109 = ~(-1 << -(-1 << v108));
    }

    v111 = v109 & *(v107 + 56);
    if (v111)
    {
      v112 = 0;
LABEL_67:
      *(v0 + 344) = v111;
      *(v0 + 352) = v112;
      v115 = *(v0 + 272);
      v117 = *(v0 + 168);
      v116 = *(v0 + 176);
      v118 = *(v0 + 160);
      sub_10049779C(*(v107 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v111)) | (v112 << 6)), v116, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v116, v117, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v117, v118, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();
      v121 = os_log_type_enabled(v119, v120);
      v122 = *(v0 + 160);
      if (v121)
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v161[0] = v124;
        *v123 = 136315138;
        v125 = sub_10032DA30(v124);
        v127 = v126;
        sub_10049786C(v122, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v128 = sub_10000C4E4(v125, v127, v161);

        *(v123 + 4) = v128;
        _os_log_impl(&_mh_execute_header, v119, v120, "Endpoint discovered %s", v123, 0xCu);
        sub_10000C60C(v124);
      }

      else
      {

        sub_10049786C(v122, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v129 = *(v0 + 288);
      v131 = *(v0 + 192);
      v130 = *(v0 + 200);
      v132 = *(v0 + 128);
      sub_10049779C(*(v0 + 168), v131, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v130, v131);
      swift_endAccess();
      sub_10049786C(v130, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v133 = swift_task_alloc();
      *(v0 + 360) = v133;
      *v133 = v0;
      v133[1] = sub_100484FD4;
      v134 = *(v0 + 168);
      v135 = *(v0 + 128);
      v136 = *(v0 + 368);

      return sub_10048AE10(v134, v136);
    }

    else
    {
      v113 = 0;
      v114 = ((63 - v110) >> 6) - 1;
      while (v114 != v113)
      {
        v112 = v113 + 1;
        v111 = *(v107 + 8 * v113++ + 64);
        if (v111)
        {
          goto LABEL_67;
        }
      }

      v138 = *(v0 + 248);
      v137 = *(v0 + 256);
      v140 = *(v0 + 232);
      v139 = *(v0 + 240);
      v142 = *(v0 + 216);
      v141 = *(v0 + 224);
      v144 = *(v0 + 200);
      v143 = *(v0 + 208);
      v145 = *(v0 + 184);
      v155 = *(v0 + 192);
      v156 = v145;
      v146 = *(v0 + 168);
      v157 = *(v0 + 176);
      v158 = v146;
      v148 = *(v0 + 128);
      v147 = *(v0 + 136);
      v159 = *(v0 + 160);
      v160 = v147;

      sub_100482808();

      v149 = *(v0 + 8);

      return v149();
    }
  }
}

uint64_t sub_100484390()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_1004844CC, v2, 0);
}

uint64_t sub_1004844CC()
{
  v97 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  sub_10036E788(v1, v2);
  sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
  sub_10049786C(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v3 = *(v0 + 312);
  v4 = (*(v0 + 304) - 1) & *(v0 + 304);
  if (v4)
  {
    v5 = *(v0 + 296);
LABEL_7:
    *(v0 + 304) = v4;
    *(v0 + 312) = v3;
    v7 = *(v0 + 280);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    sub_10049779C(*(v5 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v4)) | (v3 << 6)), v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v8, v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v10 = sub_100569540(v9, v7);
    v11 = *(v0 + 272);
    v12 = *(v0 + 216);
    if (v10)
    {
      sub_10049779C(v12, *(v0 + 208), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 208);
      if (v15)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v96 = v18;
        *v17 = 136315138;
        v19 = sub_10032DA30(v18);
        v21 = v20;
        sub_10049786C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v22 = sub_10000C4E4(v19, v21, &v96);

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "Endpoint updated %s", v17, 0xCu);
        sub_10000C60C(v18);
      }

      else
      {

        sub_10049786C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v33 = *(v0 + 288);
      v35 = *(v0 + 192);
      v34 = *(v0 + 200);
      v36 = *(v0 + 128);
      sub_10049779C(*(v0 + 216), v35, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v34, v35);
      swift_endAccess();
      sub_10049786C(v34, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v37 = swift_task_alloc();
      *(v0 + 320) = v37;
      *v37 = v0;
      v37[1] = sub_100484390;
      v38 = *(v0 + 216);
      v39 = *(v0 + 128);
      v40 = *(v0 + 368);

      return sub_100487CBC(v38, v40);
    }

    else
    {
      sub_10049779C(v12, *(v0 + 184), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 184);
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v96 = v28;
        *v27 = 136315138;
        v29 = sub_10032DA30(v28);
        v31 = v30;
        sub_10049786C(v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v32 = sub_10000C4E4(v29, v31, &v96);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "Endpoint disappeared %s", v27, 0xCu);
        sub_10000C60C(v28);
      }

      else
      {

        sub_10049786C(v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v42 = *(v0 + 288);
      v43 = *(v0 + 216);
      v45 = *(v0 + 128);
      v44 = *(v0 + 136);
      swift_beginAccess();
      sub_10036E788(v43, v44);
      swift_endAccess();
      sub_100005508(v44, &qword_1009763E0, &qword_1007F95D0);
      v46 = swift_task_alloc();
      *(v0 + 328) = v46;
      *v46 = v0;
      v46[1] = sub_100484E98;
      v47 = *(v0 + 216);
      v48 = *(v0 + 128);

      return sub_1004892AC(v47);
    }
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
      }

      v5 = *(v0 + 296);
      if (v6 >= (((1 << *(v0 + 369)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v49 = *(v0 + 280);

    v50 = *(v0 + 112);
    *(v0 + 336) = v50;
    v51 = *(v50 + 32);
    *(v0 + 370) = v51;
    v52 = -1;
    v53 = -1 << v51;
    if (-(-1 << v51) < 64)
    {
      v52 = ~(-1 << -(-1 << v51));
    }

    v54 = v52 & *(v50 + 56);
    if (v54)
    {
      v55 = 0;
LABEL_27:
      *(v0 + 344) = v54;
      *(v0 + 352) = v55;
      v58 = *(v0 + 272);
      v60 = *(v0 + 168);
      v59 = *(v0 + 176);
      v61 = *(v0 + 160);
      sub_10049779C(*(v50 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v54)) | (v55 << 6)), v59, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v59, v60, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v60, v61, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 160);
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v96 = v67;
        *v66 = 136315138;
        v68 = sub_10032DA30(v67);
        v70 = v69;
        sub_10049786C(v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v71 = sub_10000C4E4(v68, v70, &v96);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v62, v63, "Endpoint discovered %s", v66, 0xCu);
        sub_10000C60C(v67);
      }

      else
      {

        sub_10049786C(v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      v72 = *(v0 + 288);
      v74 = *(v0 + 192);
      v73 = *(v0 + 200);
      v75 = *(v0 + 128);
      sub_10049779C(*(v0 + 168), v74, type metadata accessor for SDAirDropDiscoveredEndpoint);
      swift_beginAccess();
      sub_10046DE64(v73, v74);
      swift_endAccess();
      sub_10049786C(v73, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v76 = swift_task_alloc();
      *(v0 + 360) = v76;
      *v76 = v0;
      v76[1] = sub_100484FD4;
      v77 = *(v0 + 168);
      v78 = *(v0 + 128);
      v79 = *(v0 + 368);

      return sub_10048AE10(v77, v79);
    }

    else
    {
      v56 = 0;
      v57 = ((63 - v53) >> 6) - 1;
      while (v57 != v56)
      {
        v55 = v56 + 1;
        v54 = *(v50 + 8 * v56++ + 64);
        if (v54)
        {
          goto LABEL_27;
        }
      }

      v81 = *(v0 + 248);
      v80 = *(v0 + 256);
      v83 = *(v0 + 232);
      v82 = *(v0 + 240);
      v85 = *(v0 + 216);
      v84 = *(v0 + 224);
      v87 = *(v0 + 200);
      v86 = *(v0 + 208);
      v90 = *(v0 + 192);
      v91 = *(v0 + 184);
      v92 = *(v0 + 176);
      v93 = *(v0 + 168);
      v88 = *(v0 + 128);
      v94 = *(v0 + 160);
      v95 = *(v0 + 136);

      sub_100482808();

      v89 = *(v0 + 8);

      return v89();
    }
  }
}

uint64_t sub_100484E98()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_1004986CC, v2, 0);
}

uint64_t sub_100484FD4()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_100485110, v2, 0);
}

uint64_t sub_100485110()
{
  v46 = v0;
  sub_10049786C(*(v0 + 168), type metadata accessor for SDAirDropDiscoveredEndpoint);
  v1 = *(v0 + 352);
  v2 = (*(v0 + 344) - 1) & *(v0 + 344);
  if (v2)
  {
    v3 = *(v0 + 336);
LABEL_7:
    *(v0 + 344) = v2;
    *(v0 + 352) = v1;
    v5 = *(v0 + 272);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    sub_10049779C(*(v3 + 48) + *(*(v0 + 152) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v6, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v7, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 160);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v45 = v14;
      *v13 = 136315138;
      v15 = sub_10032DA30(v14);
      v17 = v16;
      sub_10049786C(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v18 = sub_10000C4E4(v15, v17, &v45);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Endpoint discovered %s", v13, 0xCu);
      sub_10000C60C(v14);
    }

    else
    {

      sub_10049786C(v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v19 = *(v0 + 288);
    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = *(v0 + 128);
    sub_10049779C(*(v0 + 168), v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    swift_beginAccess();
    sub_10046DE64(v20, v21);
    swift_endAccess();
    sub_10049786C(v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v23 = swift_task_alloc();
    *(v0 + 360) = v23;
    *v23 = v0;
    v23[1] = sub_100484FD4;
    v24 = *(v0 + 168);
    v25 = *(v0 + 128);
    v26 = *(v0 + 368);

    return sub_10048AE10(v24, v26);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
      }

      if (v4 >= (((1 << *(v0 + 370)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 336);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v28 = *(v0 + 336);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v36 = *(v0 + 200);
    v35 = *(v0 + 208);
    v39 = *(v0 + 192);
    v40 = *(v0 + 184);
    v41 = *(v0 + 176);
    v42 = *(v0 + 168);
    v37 = *(v0 + 128);
    v43 = *(v0 + 160);
    v44 = *(v0 + 136);

    sub_100482808();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_100485564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100485588, 0, 0);
}

uint64_t sub_100485588()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100485688;
    v4 = *(v0 + 56);

    return sub_10048313C(v4, 1);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100485688()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1002F9710, 0, 0);
}

uint64_t sub_10048579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10048586C, v7, v6);
}

uint64_t sub_10048586C()
{
  v1 = v0[10];

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097F240);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting classroom browser", v5, 2u);
  }

  v7 = v0[8];
  v6 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = swift_allocObject();
  v10 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = objc_allocWithZone(type metadata accessor for SDAirDropClassroomBrowser());

  v12 = sub_1002F723C(sub_1004980BC, v9);
  v13 = &off_1008E2F30;
  if (!Strong)
  {
    v13 = 0;
  }

  *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_delegate + 8] = v13;
  swift_unknownObjectWeakAssign();

  v14 = v12;
  sub_1002F733C();

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = qword_1009735E0;
  v19 = v14;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = v0[9];
  v21 = static AirDropActor.shared;
  v22 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v16;
  v23[5] = v19;
  v23[6] = &off_1008DAE70;

  sub_1002B3398(0, 0, v20, &unk_1008051A0, v23);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100485BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a1;

  sub_1002B3398(0, 0, v9, a4, v13);
}

uint64_t sub_100485D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100485D74, 0, 0);
}

uint64_t sub_100485D74()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100485688;
    v4 = *(v0 + 56);

    return sub_10048313C(v4, 2);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100485E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100485F14, v7, 0);
}

uint64_t sub_100485F14()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser);
    *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser) = *(v0 + 56);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v3 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100485FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v7;
  v4[12] = v6;

  return _swift_task_switch(sub_10048609C, v7, v6);
}

uint64_t sub_10048609C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser;
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v3 = static AirDropActor.shared;

    return _swift_task_switch(sub_100486328, v3, 0);
  }

  else
  {
    v4 = v0[10];

    v5 = v0[8];
    v6 = v0[9];
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = qword_1009735E0;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = v0[9];
    v12 = static AirDropActor.shared;
    v13 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v13;
    v14[4] = v8;

    sub_1002B3398(0, 0, v11, &unk_100805148, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100486328()
{
  v1 = *(v0[13] + v0[14]);
  v0[15] = v1;
  if (v1)
  {
    v2 = v0[11];
    v3 = v0[12];
    swift_unknownObjectRetain();
    v4 = sub_1004865AC;
    v5 = v2;
    v6 = v3;
  }

  else
  {
    v5 = v0[11];
    v6 = v0[12];
    v4 = sub_1004863C4;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1004863C4()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[8];
  v4 = v0[9];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = qword_1009735E0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = v0[9];
  v10 = static AirDropActor.shared;
  v11 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v6;

  sub_1002B3398(0, 0, v9, &unk_100805148, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004865AC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];

  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser;
  v5 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser);
  v6 = v0[15];
  if (v5)
  {
    [v5 invalidate];
    v7 = *(v1 + v4);
    *(v1 + v4) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v0[15];
    swift_unknownObjectRelease();
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = qword_1009735E0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = v0[9];
  v16 = static AirDropActor.shared;
  v17 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v12;

  sub_1002B3398(0, 0, v15, &unk_100805148, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004867D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100486874, v5, 0);
}

uint64_t sub_100486874()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = (Strong + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser);
    v5 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_classroomBrowser);
    *v4 = 0;
    v4[1] = 0;
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v3 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100486920()
{
  v1 = v0;
  v108 = type metadata accessor for UUID();
  v99 = *(v108 - 8);
  v2 = *(v99 + 64);
  __chkstk_darwin(v108);
  v107 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for NWEndpoint();
  v102 = *(v110 - 8);
  v4 = *(v102 + 64);
  v5 = __chkstk_darwin(v110);
  v101 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v106 = &v98 - v8;
  __chkstk_darwin(v7);
  v105 = (&v98 - v9);
  v109 = type metadata accessor for SFPlatform();
  v10 = *(v109 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v109);
  v104 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v98 = v13;
  v14 = *(v1 + v13);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v103 = (v10 + 8);
  v20 = v14;

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  if (v18)
  {
    while (1)
    {
LABEL_10:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      sub_1002D63B0(*(v20 + 56) + 48 * (v24 | (v21 << 6)), &v113);
      v25 = v104;
      static SFPlatform.watchOS.getter();
      v26 = static SFPlatform.isPlatform(_:)();
      (*v103)(v25, v109);
      if (v26)
      {
        goto LABEL_19;
      }

      sub_1002D63B0(&v113, v112);
      sub_10028088C(&unk_10097F340, &unk_1008050C0);
      type metadata accessor for SDAirDropDiscoveredDevice();
      if (swift_dynamicCast())
      {
        v27 = v111;
        v28 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
        swift_beginAccess();
        v29 = *(v27 + v28);

        LODWORD(v100) = sub_1004956D0(v30, v1);

        goto LABEL_15;
      }

      sub_1002D63B0(&v113, v112);
      type metadata accessor for SDAirDropDiscoveredPerson();
      if (swift_dynamicCast())
      {
        v31 = v111;
        v32 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_allEndpoints;
        swift_beginAccess();
        v33 = *(v31 + v32);

        LODWORD(v100) = sub_1004956D0(v34, v1);

LABEL_15:

        if (v100)
        {
          goto LABEL_19;
        }

LABEL_5:
        sub_10000C60C(&v113);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1002D63B0(&v113, v112);
        type metadata accessor for SDAirDropDiscoveredClassroom();
        if (!swift_dynamicCast())
        {
          goto LABEL_5;
        }

LABEL_19:
        sub_1002D6398(&v113, v112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FBFC(0, v22[2] + 1, 1);
          v22 = v116;
        }

        v37 = v22[2];
        v36 = v22[3];
        if (v37 >= v36 >> 1)
        {
          sub_10028FBFC((v36 > 1), v37 + 1, 1);
          v22 = v116;
        }

        v22[2] = v37 + 1;
        sub_1002D6398(v112, &v22[6 * v37 + 4]);
        if (!v18)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v23 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_10;
    }
  }

  *&v113 = v22;

  sub_100496058(&v113);

  v116 = _swiftEmptyArrayStorage;
  v38 = *(v113 + 16);
  v109 = v1;
  if (v38)
  {
    v100 = v113;
    v39 = v113 + 32;
    v104 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionID;
    swift_beginAccess();
    v40 = (v99 + 16);
    v41 = (v99 + 8);
    v42 = (v102 + 8);
    v103 = _swiftEmptyArrayStorage;
    v43 = v105;
    do
    {
      sub_1002D63B0(v39, &v113);
      v44 = v114;
      v45 = v115;
      sub_10002CDC0(&v113, v114);
      v46 = v106;
      (*(v45 + 8))(v44, v45);
      v47 = v107;
      v48 = v108;
      (*v40)(v107, &v104[v109], v108);
      sub_10062F040(v47, v43);
      (*v41)(v47, v48);
      v49 = *v42;
      v50 = v110;
      (*v42)(v46, v110);
      v51 = NWEndpoint.nw.getter();
      v49(v43, v50);
      sub_10000C60C(&v113);
      if (v51)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v103 = v116;
      }

      v39 += 48;
      --v38;
    }

    while (v38);

    v1 = v109;
  }

  else
  {

    v103 = _swiftEmptyArrayStorage;
  }

  v52 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_receivingDisplayables;
  swift_beginAccess();
  v106 = v52;
  v15 = *(v1 + v52);
  v107 = _swiftEmptyArrayStorage;
  v116 = _swiftEmptyArrayStorage;
  v53 = 1 << *(v15 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v15 + 64);
  v56 = (v53 + 63) >> 6;
  v108 = v102 + 16;
  swift_bridgeObjectRetain_n();
  v57 = 0;
  if (!v55)
  {
    goto LABEL_39;
  }

  do
  {
LABEL_37:
    while (1)
    {
      v58 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v59 = v102;
      v60 = v101;
      v61 = v110;
      (*(v102 + 16))(v101, *(v15 + 56) + *(v102 + 72) * (v58 | (v57 << 6)), v110);
      v62 = NWEndpoint.nw.getter();
      (*(v59 + 8))(v60, v61);
      if (v62)
      {
        break;
      }

      if (!v55)
      {
        goto LABEL_39;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v107 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v107 = v116;
  }

  while (v55);
LABEL_39:
  while (1)
  {
    v63 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v63 >= v56)
    {

      v116 = v103;
      v64 = v107;

      sub_100403554(v65);
      v15 = v116;
      if (v64 >> 62)
      {
        goto LABEL_64;
      }

      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_49;
    }

    v55 = *(v15 + 64 + 8 * v63);
    ++v57;
    if (v55)
    {
      v57 = v63;
      goto LABEL_37;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  v66 = _CocoaArrayWrapper.endIndex.getter();
LABEL_49:
  v67 = v109;

  if (v66)
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_10000C4AC(v68, qword_10097F240);
    v69 = v67;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v116 = v73;
      *v72 = 136315138;
      v74 = *&v106[v67];
      type metadata accessor for SFAirDrop.TransferIdentifier();
      sub_100005430(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);

      v67 = v109;
      v75 = Dictionary.Values.description.getter();
      v77 = v76;

      v78 = sub_10000C4E4(v75, v77, &v116);

      *(v72 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v70, v71, "Additional receive display endpoints %s", v72, 0xCu);
      sub_10000C60C(v73);
    }
  }

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_10000C4AC(v79, qword_10097F240);
  v80 = v67;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v116 = v84;
    *v83 = 136315138;
    v85 = *(v67 + v98);

    sub_10028088C(&unk_10097F340, &unk_1008050C0);
    v86 = Dictionary.description.getter();
    v88 = v87;

    v89 = sub_10000C4E4(v86, v88, &v116);

    *(v83 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v81, v82, "All unfiltered endpoints: %s", v83, 0xCu);
    sub_10000C60C(v84);
  }

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v116 = v93;
    *v92 = 136315138;
    sub_10028088C(&qword_10097C690, &qword_1008012B8);
    v94 = Array.description.getter();
    v96 = sub_10000C4E4(v94, v95, &v116);

    *(v92 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v90, v91, "Returning validated endpoints: %s", v92, 0xCu);
    sub_10000C60C(v93);
  }

  return v15;
}

uint64_t sub_100487690(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v3 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v41 - v22;
  sub_10049779C(a1, &v41 - v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
LABEL_10:
    sub_10049786C(v23, v27);
    v26 = 1;
    goto LABEL_11;
  }

  sub_100497804(v23, v16, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if ((sub_10032C7CC() & 0x4000) != 0 || (sub_10032C7CC() & 0x2000) != 0)
  {
    sub_10049786C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v26 = 0;
  }

  else
  {
    v25 = sub_10032C7CC();
    sub_10049786C(v16, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v26 = (*&v25 & 0x20000) == 0;
  }

LABEL_11:
  sub_10049779C(a1, v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      v39 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v40 = v21;
LABEL_25:
      sub_10049786C(v40, v39);
      return v26;
    }

    sub_100497804(v21, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v31 = &v5[*(v41 + 28)];
    v33 = *v31;
    v32 = *(v31 + 1);

    sub_10049786C(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    if (!v32)
    {
      return v26;
    }

LABEL_20:
    v37 = *(v42 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus);
    v38 = String._bridgeToObjectiveC()();

    v26 = [v37 contactWithContactIdentifier:v38];

    if (v26)
    {

      return 1;
    }

    return v26;
  }

  if (v28)
  {
    sub_100497804(v21, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v34 = &v9[*(v6 + 44)];
    v36 = *v34;
    v35 = *(v34 + 1);

    sub_10049786C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (!v35)
    {
      return v26;
    }

    goto LABEL_20;
  }

  sub_100497804(v21, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    if (contact_id)
    {
      String.init(cString:)();
      sub_10049786C(v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      goto LABEL_20;
    }

    v39 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v40 = v14;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

BOOL sub_100487B58(uint64_t a1, char a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10049779C(a1, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      return 0;
    }

    else
    {
      sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return a2 == 2;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v9 = a2 == 1;
      v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v9 = a2 == 0;
      v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    sub_10049786C(v7, v10);
  }

  return v9;
}

uint64_t sub_100487CBC(uint64_t a1, char a2)
{
  *(v3 + 704) = v2;
  *(v3 + 800) = a2;
  *(v3 + 696) = a1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v3 + 712) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  *(v3 + 736) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  *(v3 + 744) = static AirDropActor.shared;

  return _swift_task_switch(sub_100487DAC, v6, 0);
}

id sub_100487DAC()
{
  v104 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 736);
  v2 = *(v0 + 696);
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097F240);
  sub_10049779C(v2, v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 736);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v101 = v9;
    *v8 = 136315138;
    v10 = sub_10032DA30(v9);
    v12 = v11;
    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v13 = sub_10000C4E4(v10, v12, &v101);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating discovered endpoint: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v14 = *(v0 + 696);
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0;
  v15 = sub_10032EA74();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = *(v0 + 704);
    v20 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v21 = *(v19 + v20);
    if (!*(v21 + 16) || (v22 = sub_100012854(v17, v18), (v23 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_14;
    }

    v24 = *(v0 + 704);
    sub_1002D63B0(*(v21 + 56) + 48 * v22, v0 + 304);
    sub_1002D6398((v0 + 304), (v0 + 256));
    swift_endAccess();
    v25 = [*(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) meCard];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v17 == v28 && v18 == v30)
      {

LABEL_48:
        sub_10000C60C((v0 + 256));
        goto LABEL_14;
      }

      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v96)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    v41 = *(v0 + 280);
    v42 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v41);
    v97 = *(v42 + 48);
    v100 = (v97 + *v97);
    v98 = v97[1];
    v45 = swift_task_alloc();
    *(v0 + 752) = v45;
    *v45 = v0;
    v46 = sub_100488860;
    goto LABEL_50;
  }

LABEL_14:
  v31 = *(v0 + 696);
  v32 = sub_10032E82C();
  if (v33)
  {
    v34 = v33;
    v35 = v32;
    v36 = *(v0 + 704);
    v37 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v38 = *(v36 + v37);
    if (*(v38 + 16))
    {
      v39 = sub_100012854(v35, v34);
      if (v40)
      {
        sub_1002D63B0(*(v38 + 56) + 48 * v39, v0 + 208);
        sub_1002D6398((v0 + 208), (v0 + 160));
        swift_endAccess();

        v41 = *(v0 + 184);
        v42 = *(v0 + 192);
        sub_10002CDC0((v0 + 160), v41);
        v43 = *(v42 + 48);
        v100 = (v43 + *v43);
        v44 = v43[1];
        v45 = swift_task_alloc();
        *(v0 + 768) = v45;
        *v45 = v0;
        v46 = sub_100488C68;
LABEL_50:
        v45[1] = v46;
        v99 = *(v0 + 696);

        return v100(v99, v41, v42);
      }
    }

    swift_endAccess();
  }

  v47 = *(v0 + 712);
  sub_10049779C(*(v0 + 696), *(v0 + 728), type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = *(v0 + 728);
  if (EnumCaseMultiPayload == 3)
  {
    v50 = *v49;
    *(v0 + 784) = *v49;
    result = [v50 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = *(v0 + 704);
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v58 = *(v53 + v57);
    if (*(v58 + 16))
    {
      v59 = sub_100012854(v54, v56);
      v61 = v60;

      if (v61)
      {
        sub_1002D63B0(*(v58 + 56) + 48 * v59, v0 + 112);
        sub_1002D6398((v0 + 112), (v0 + 64));
        swift_endAccess();
        v41 = *(v0 + 88);
        v42 = *(v0 + 96);
        sub_10002CDC0((v0 + 64), v41);
        v62 = *(v42 + 48);
        v100 = (v62 + *v62);
        v63 = v62[1];
        v45 = swift_task_alloc();
        *(v0 + 792) = v45;
        *v45 = v0;
        v46 = sub_10048907C;
        goto LABEL_50;
      }
    }

    else
    {
    }

    swift_endAccess();
  }

  else
  {
    sub_10049786C(v49, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v66 = sub_10032B99C();
  v68 = v67;
  v69 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v70 = *(v64 + v69);
  if (*(v70 + 16))
  {
    v71 = sub_100012854(v66, v68);
    v73 = v72;

    if (v73)
    {
      sub_1002D63B0(*(v70 + 56) + 48 * v71, v0 + 16);
      goto LABEL_32;
    }
  }

  else
  {
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_32:
  swift_endAccess();
  v74 = *(v0 + 40);
  sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
  if (v74)
  {
    v75 = *(v0 + 696);
    v76 = sub_10032B99C();
    v78 = v77;
    sub_10032E398();
    if (!v79)
    {
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Discovered endpoint no longer has a device name, removing", v90, 2u);
      }

      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      swift_beginAccess();
      sub_1002AFCBC(&v101, v76, v78);
      swift_endAccess();
      goto LABEL_41;
    }

    v80 = *(v0 + 720);
    v81 = *(v0 + 696);

    sub_10049779C(v81, v80, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v82 = type metadata accessor for SDAirDropDiscoveredDevice();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v85 = sub_1004A4FAC(v80);
    *(&v102 + 1) = v82;
    v86 = sub_100005430(&qword_10097F360, type metadata accessor for SDAirDropDiscoveredDevice);
    *&v103 = v86;
    *(&v103 + 1) = &off_1008E3588;
    *&v101 = v85;
    swift_beginAccess();

    sub_1002AFCBC(&v101, v76, v78);
    swift_endAccess();
    sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
    *(v0 + 352) = v85;
    *(v0 + 376) = v82;
    *(v0 + 384) = v86;
  }

  if (*(v0 + 800) == 1)
  {
    sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
    if (!*(v0 + 456))
    {
      sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
      v91 = v0 + 432;
      goto LABEL_42;
    }

    v87 = *(v0 + 704);
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
  }

LABEL_41:
  v91 = v0 + 352;
LABEL_42:
  sub_100005508(v91, &qword_100977DC8, &unk_1008091C0);
  v92 = *(v0 + 736);
  v93 = *(v0 + 728);
  v94 = *(v0 + 720);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_100488860()
{
  v1 = *v0;
  v2 = *(*v0 + 752);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[95] = v4;
  *v4 = v3;
  v4[1] = sub_1004889BC;
  v5 = v1[88];
  v6 = v1[87];

  return sub_10048CA0C((v1 + 32), v6);
}

uint64_t sub_1004889BC()
{
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_100488ACC, v2, 0);
}

uint64_t sub_100488ACC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = sub_10002CDC0((v0 + 256), v1);
  *(v0 + 536) = v1;
  *(v0 + 544) = v2;
  v4 = sub_10002F604((v0 + 512));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v5 = *(v0 + 528);
  *(v0 + 352) = *(v0 + 512);
  *(v0 + 368) = v5;
  *(v0 + 384) = *(v0 + 544);
  sub_10000C60C((v0 + 256));
  if (*(v0 + 800) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 456))
  {
    v6 = *(v0 + 704);
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
LABEL_4:
    v7 = v0 + 352;
    goto LABEL_5;
  }

  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v7 = v0 + 432;
LABEL_5:
  sub_100005508(v7, &qword_100977DC8, &unk_1008091C0);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100488C68()
{
  v1 = *v0;
  v2 = *(*v0 + 768);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[97] = v4;
  *v4 = v3;
  v4[1] = sub_100488DC4;
  v5 = v1[88];
  v6 = v1[87];

  return sub_10048CA0C((v1 + 20), v6);
}

uint64_t sub_100488DC4()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_100488ED4, v2, 0);
}

uint64_t sub_100488ED4()
{
  v12 = *(v0 + 184);
  v1 = *(v0 + 184);
  v2 = sub_10002CDC0((v0 + 160), v1);
  *(v0 + 496) = v12;
  v3 = sub_10002F604((v0 + 472));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v4 = *(v0 + 488);
  *(v0 + 352) = *(v0 + 472);
  *(v0 + 368) = v4;
  *(v0 + 384) = *(v0 + 504);
  sub_10000C60C((v0 + 160));
  if (*(v0 + 800) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 456))
  {
    v5 = *(v0 + 704);
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
LABEL_4:
    v6 = v0 + 352;
    goto LABEL_5;
  }

  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v6 = v0 + 432;
LABEL_5:
  sub_100005508(v6, &qword_100977DC8, &unk_1008091C0);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10048907C()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_10048918C, v2, 0);
}

uint64_t sub_10048918C()
{
  sub_10000C60C((v0 + 64));
  if (*(v0 + 800) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 352, v0 + 432, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 456))
  {
    v1 = *(v0 + 704);
    sub_1000121F8((v0 + 432), v0 + 392);
    sub_10048CC80((v0 + 392));
    sub_10000C60C((v0 + 392));
LABEL_4:
    v2 = v0 + 352;
    goto LABEL_5;
  }

  sub_100005508(v0 + 352, &qword_100977DC8, &unk_1008091C0);
  v2 = v0 + 432;
LABEL_5:
  sub_100005508(v2, &qword_100977DC8, &unk_1008091C0);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004892AC(uint64_t a1)
{
  v2[87] = v1;
  v2[86] = a1;
  v3 = type metadata accessor for UUID();
  v2[88] = v3;
  v4 = *(v3 - 8);
  v2[89] = v4;
  v5 = *(v4 + 64) + 15;
  v2[90] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[91] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v2[94] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004893E8, v8, 0);
}

id sub_1004893E8()
{
  v100 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 744);
  v2 = *(v0 + 688);
  v3 = type metadata accessor for Logger();
  *(v0 + 760) = sub_10000C4AC(v3, qword_10097F240);
  sub_10049779C(v2, v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 744);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v99[0] = v9;
    *v8 = 136315138;
    v10 = sub_10032DA30(v9);
    v12 = v11;
    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v13 = sub_10000C4E4(v10, v12, v99);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing discovered endpoint: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_10049786C(v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v14 = *(v0 + 688);
  v15 = sub_10032EA74();
  *(v0 + 768) = v15;
  *(v0 + 776) = v16;
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = *(v0 + 696);
    v20 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 784) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v21 = *(v19 + v20);
    if (!*(v21 + 16) || (v22 = sub_100012854(v17, v18), (v23 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_14;
    }

    v24 = *(v0 + 696);
    sub_1002D63B0(*(v21 + 56) + 48 * v22, v0 + 352);
    sub_1002D6398((v0 + 352), (v0 + 304));
    swift_endAccess();
    v25 = [*(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) meCard];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v17 == v28 && v18 == v30)
      {

LABEL_41:

        sub_10000C60C((v0 + 304));
        goto LABEL_14;
      }

      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92)
      {
        goto LABEL_41;
      }
    }

    v41 = *(v0 + 328);
    v42 = *(v0 + 336);
    sub_10002CDC0((v0 + 304), v41);
    v93 = *(v42 + 56);
    v97 = (v93 + *v93);
    v94 = v93[1];
    v45 = swift_task_alloc();
    *(v0 + 792) = v45;
    *v45 = v0;
    v46 = sub_100489D8C;
    goto LABEL_43;
  }

LABEL_14:
  v31 = *(v0 + 688);
  v32 = sub_10032E82C();
  *(v0 + 816) = v32;
  *(v0 + 824) = v33;
  if (v33)
  {
    v34 = v33;
    v35 = v32;
    v36 = *(v0 + 696);
    v37 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 832) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v38 = *(v36 + v37);
    if (*(v38 + 16))
    {
      v39 = sub_100012854(v35, v34);
      if (v40)
      {
        sub_1002D63B0(*(v38 + 56) + 48 * v39, v0 + 256);
        sub_1002D6398((v0 + 256), (v0 + 208));
        swift_endAccess();
        v41 = *(v0 + 232);
        v42 = *(v0 + 240);
        sub_10002CDC0((v0 + 208), v41);
        v43 = *(v42 + 56);
        v97 = (v43 + *v43);
        v44 = v43[1];
        v45 = swift_task_alloc();
        *(v0 + 840) = v45;
        *v45 = v0;
        v46 = sub_10048A2FC;
LABEL_43:
        v45[1] = v46;
        v95 = *(v0 + 688);

        return v97(v95, v41, v42);
      }
    }

    swift_endAccess();
  }

  v47 = *(v0 + 728);
  sub_10049779C(*(v0 + 688), *(v0 + 736), type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = *(v0 + 736);
  if (EnumCaseMultiPayload == 3)
  {
    v50 = *v49;
    *(v0 + 864) = *v49;
    result = [v50 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = *(v0 + 696);
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 872) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v58 = *(v53 + v57);
    if (*(v58 + 16))
    {
      v59 = sub_100012854(v54, v56);
      v61 = v60;

      if (v61)
      {
        sub_1002D63B0(*(v58 + 56) + 48 * v59, v0 + 160);
        sub_1002D6398((v0 + 160), (v0 + 112));
        swift_endAccess();
        v41 = *(v0 + 136);
        v42 = *(v0 + 144);
        sub_10002CDC0((v0 + 112), v41);
        v62 = *(v42 + 56);
        v97 = (v62 + *v62);
        v63 = v62[1];
        v45 = swift_task_alloc();
        *(v0 + 880) = v45;
        *v45 = v0;
        v46 = sub_10048A86C;
        goto LABEL_43;
      }
    }

    else
    {
    }

    swift_endAccess();
  }

  else
  {
    sub_10049786C(v49, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v64 = *(v0 + 696);
  v65 = *(v0 + 688);
  v66 = sub_10032B99C();
  v68 = v67;
  v69 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v70 = *(v64 + v69);
  if (*(v70 + 16))
  {
    v71 = sub_100012854(v66, v68);
    v73 = v72;

    if (v73)
    {
      v74 = *(v0 + 720);
      v96 = *(v0 + 712);
      v98 = *(v0 + 704);
      v75 = *(v0 + 696);
      sub_1002D63B0(*(v70 + 56) + 48 * v71, v0 + 64);
      sub_1002D6398((v0 + 64), (v0 + 16));
      swift_endAccess();
      v76 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
      swift_beginAccess();
      v77 = *(v75 + v76);
      v79 = *(v0 + 40);
      v78 = *(v0 + 48);
      sub_10002CDC0((v0 + 16), v79);
      v80 = *(v78 + 32);

      v80(v79, v78);
      LOBYTE(v76) = sub_100569018(v74, v77);

      (*(v96 + 8))(v74, v98);
      if (v76)
      {
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "Skipping remove from allDiscovered endpoints because it's in a transfer", v83, 2u);
        }
      }

      else
      {
        v84 = *(v0 + 688);
        v85 = sub_10032B99C();
        v87 = v86;
        memset(v99, 0, sizeof(v99));
        swift_beginAccess();
        sub_1002AFCBC(v99, v85, v87);
        swift_endAccess();
      }

      sub_10000C60C((v0 + 16));
      goto LABEL_37;
    }
  }

  else
  {
  }

  swift_endAccess();
LABEL_37:
  v88 = *(v0 + 744);
  v89 = *(v0 + 736);
  v90 = *(v0 + 720);

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_100489D8C()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return _swift_task_switch(sub_100489E9C, v2, 0);
}

uint64_t sub_100489E9C()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_10002CDC0(v0 + 38, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[100] = v5;
  *v5 = v0;
  v5[1] = sub_100489FC0;

  return v7(v1, v2);
}

uint64_t sub_100489FC0(uint64_t a1)
{
  v2 = *(*v1 + 800);
  v3 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_10048A0D8, v3, 0);
}

uint64_t sub_10048A0D8()
{
  v27 = v0;
  v1 = *(v0[101] + 16);

  if (v1)
  {
    v2 = v0[97];
  }

  else
  {
    v3 = v0[90];
    v4 = v0[89];
    v5 = v0[88];
    v6 = v0[87];
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    swift_beginAccess();
    v8 = *(v6 + v7);
    v9 = v0[41];
    v10 = v0[42];
    sub_10002CDC0(v0 + 38, v9);
    v11 = *(v10 + 32);

    v11(v9, v10);
    LOBYTE(v6) = sub_100569018(v3, v8);

    (*(v4 + 8))(v3, v5);
    if (v6)
    {
      v12 = v0[97];
      v13 = v0[95];

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Skipping remove from allDiscovered endpoints because it's in a transfer", v16, 2u);
      }
    }

    else
    {
      v17 = v0[98];
      v18 = v0[97];
      v19 = v0[96];
      v20 = v0[87];
      memset(v26, 0, sizeof(v26));
      swift_beginAccess();
      sub_1002AFCBC(v26, v19, v18);
      swift_endAccess();
    }
  }

  sub_10000C60C(v0 + 38);
  v21 = v0[93];
  v22 = v0[92];
  v23 = v0[90];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10048A2FC()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return _swift_task_switch(sub_10048A40C, v2, 0);
}

uint64_t sub_10048A40C()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_10002CDC0(v0 + 26, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[106] = v5;
  *v5 = v0;
  v5[1] = sub_10048A530;

  return v7(v1, v2);
}

uint64_t sub_10048A530(uint64_t a1)
{
  v2 = *(*v1 + 848);
  v3 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 856) = a1;

  return _swift_task_switch(sub_10048A648, v3, 0);
}

uint64_t sub_10048A648()
{
  v27 = v0;
  v1 = *(v0[107] + 16);

  if (v1)
  {
    v2 = v0[103];
  }

  else
  {
    v3 = v0[90];
    v4 = v0[89];
    v5 = v0[88];
    v6 = v0[87];
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    swift_beginAccess();
    v8 = *(v6 + v7);
    v9 = v0[29];
    v10 = v0[30];
    sub_10002CDC0(v0 + 26, v9);
    v11 = *(v10 + 32);

    v11(v9, v10);
    LOBYTE(v6) = sub_100569018(v3, v8);

    (*(v4 + 8))(v3, v5);
    if (v6)
    {
      v12 = v0[103];
      v13 = v0[95];

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Skipping remove from allDiscovered endpoints because it's in a transfer", v16, 2u);
      }
    }

    else
    {
      v17 = v0[104];
      v18 = v0[103];
      v19 = v0[102];
      v20 = v0[87];
      memset(v26, 0, sizeof(v26));
      swift_beginAccess();
      sub_1002AFCBC(v26, v19, v18);
      swift_endAccess();
    }
  }

  sub_10000C60C(v0 + 26);
  v21 = v0[93];
  v22 = v0[92];
  v23 = v0[90];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10048A86C()
{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return _swift_task_switch(sub_10048A97C, v2, 0);
}

uint64_t sub_10048A97C()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10002CDC0(v0 + 14, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[111] = v5;
  *v5 = v0;
  v5[1] = sub_10048AAA0;

  return v7(v1, v2);
}

uint64_t sub_10048AAA0(uint64_t a1)
{
  v2 = *(*v1 + 888);
  v3 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 896) = a1;

  return _swift_task_switch(sub_10048ABB8, v3, 0);
}

id sub_10048ABB8()
{
  v30 = v0;
  v1 = *(*(v0 + 896) + 16);

  if (v1)
  {
  }

  else
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 712);
    v4 = *(v0 + 704);
    v5 = *(v0 + 696);
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    sub_10002CDC0((v0 + 112), v8);
    v10 = *(v9 + 32);

    v10(v8, v9);
    LOBYTE(v5) = sub_100569018(v2, v7);

    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v11 = *(v0 + 760);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 864);
      if (v14)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Skipping remove from allDiscovered endpoints because it's in a transfer", v16, 2u);
      }
    }

    else
    {
      result = [*(v0 + 864) identifier];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v18 = result;
      v19 = *(v0 + 872);
      v20 = *(v0 + 864);
      v21 = *(v0 + 696);
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      memset(v29, 0, sizeof(v29));
      swift_beginAccess();
      sub_1002AFCBC(v29, v22, v24);
      swift_endAccess();
    }
  }

  sub_10000C60C((v0 + 112));
  v25 = *(v0 + 744);
  v26 = *(v0 + 736);
  v27 = *(v0 + 720);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10048AE10(uint64_t a1, char a2)
{
  *(v3 + 1008) = v2;
  *(v3 + 1168) = a2;
  *(v3 + 1000) = a1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v3 + 1016) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 1024) = swift_task_alloc();
  *(v3 + 1032) = swift_task_alloc();
  *(v3 + 1040) = swift_task_alloc();
  *(v3 + 1048) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  *(v3 + 1056) = static AirDropActor.shared;

  return _swift_task_switch(sub_10048AF0C, v6, 0);
}

id sub_10048AF0C()
{
  v133 = v0;
  v1 = [*(*(v0 + 1008) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_nearbyAgent) idSelfIdentity];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 idsDeviceID];

    if (v3)
    {
      v4 = *(v0 + 1000);
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = sub_10032E82C();
      if (v9)
      {
        if (v5 == v8 && v9 == v7)
        {

LABEL_44:
          if (qword_1009738C0 != -1)
          {
            swift_once();
          }

          v80 = *(v0 + 1048);
          v81 = *(v0 + 1000);
          v82 = type metadata accessor for Logger();
          sub_10000C4AC(v82, qword_10097F240);
          sub_10049779C(v81, v80, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          v85 = os_log_type_enabled(v83, v84);
          v86 = *(v0 + 1048);
          if (v85)
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v132[0] = v88;
            *v87 = 136315138;
            v89 = sub_10032DA30(v88);
            v91 = v90;
            sub_10049786C(v86, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v92 = sub_10000C4E4(v89, v91, v132);

            *(v87 + 4) = v92;
            _os_log_impl(&_mh_execute_header, v83, v84, "Discovered endpoint is current device, ignoring %s", v87, 0xCu);
            sub_10000C60C(v88);
          }

          else
          {

            sub_10049786C(v86, type metadata accessor for SDAirDropDiscoveredEndpoint);
          }

          goto LABEL_58;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v11)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }
    }
  }

  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1040);
  v13 = *(v0 + 1000);
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097F240);
  sub_10049779C(v13, v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 1040);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v132[0] = v20;
    *v19 = 136315138;
    v21 = sub_10032DA30(v20);
    v23 = v22;
    sub_10049786C(v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v24 = sub_10000C4E4(v21, v23, v132);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Adding discovered endpoint: %s", v19, 0xCu);
    sub_10000C60C(v20);
  }

  else
  {

    sub_10049786C(v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v25 = *(v0 + 1000);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0;
  v26 = sub_10032EA74();
  *(v0 + 1064) = v26;
  *(v0 + 1072) = v27;
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v30 = [*(*(v0 + 1008) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus) meCard];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 identifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      if (v28 == v33 && v29 == v35)
      {

LABEL_22:

        goto LABEL_23;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_22;
      }
    }

    v47 = *(v0 + 1008);
    v48 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 1080) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v49 = *(v47 + v48);
    if (*(v49 + 16) && (v50 = sub_100012854(v28, v29), (v51 & 1) != 0))
    {
      sub_1002D63B0(*(v49 + 56) + 48 * v50, v0 + 160);
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
    }

    v68 = *(v0 + 192);
    *(v0 + 128) = *(v0 + 176);
    *(v0 + 144) = v68;
    *(v0 + 112) = *(v0 + 160);
    if (*(v0 + 136))
    {
      sub_1002D6398((v0 + 112), (v0 + 256));
    }

    else
    {
      v108 = type metadata accessor for SDAirDropDiscoveredPerson();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();

      v111 = sub_100406A2C(v28, v29);
      *(v0 + 280) = v108;
      *(v0 + 288) = sub_100005430(&unk_10097F370, type metadata accessor for SDAirDropDiscoveredPerson);
      *(v0 + 296) = &off_1008DFBD0;
      *(v0 + 256) = v111;
      sub_100005508(v0 + 112, &qword_100976180, &unk_1007F9300);
    }

    swift_endAccess();
    v74 = *(v0 + 280);
    v75 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v74);
    v112 = *(v75 + 48);
    v131 = (v112 + *v112);
    v113 = v112[1];
    v78 = swift_task_alloc();
    *(v0 + 1088) = v78;
    *v78 = v0;
    v79 = sub_10048BD24;
    goto LABEL_68;
  }

LABEL_23:
  v37 = *(v0 + 1000);
  v38 = sub_10032E82C();
  *(v0 + 1104) = v38;
  *(v0 + 1112) = v39;
  if (v39)
  {
    v40 = v39;
    v41 = v38;
    v42 = *(v0 + 1008);
    v43 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    *(v0 + 1120) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
    swift_beginAccess();
    v44 = *(v42 + v43);
    if (*(v44 + 16) && (v45 = sub_100012854(v41, v40), (v46 & 1) != 0))
    {
      sub_1002D63B0(*(v44 + 56) + 48 * v45, v0 + 16);
    }

    else
    {
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 16) = 0u;
    }

    v52 = *(v0 + 48);
    *(v0 + 512) = *(v0 + 32);
    *(v0 + 528) = v52;
    *(v0 + 496) = *(v0 + 16);
    if (*(v0 + 520))
    {
      sub_1002D6398((v0 + 496), (v0 + 544));
    }

    else
    {
      v69 = *(v0 + 1032);
      sub_10049779C(*(v0 + 1000), v69, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v70 = type metadata accessor for SDAirDropDiscoveredDevice();
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_1004A4FAC(v69);
      *(v0 + 568) = v70;
      *(v0 + 576) = sub_100005430(&qword_10097F360, type metadata accessor for SDAirDropDiscoveredDevice);
      *(v0 + 584) = &off_1008E3588;
      *(v0 + 544) = v73;
      sub_100005508(v0 + 496, &qword_100976180, &unk_1007F9300);
    }

    swift_endAccess();
    v74 = *(v0 + 568);
    v75 = *(v0 + 576);
    sub_10002CDC0((v0 + 544), v74);
    v76 = *(v75 + 48);
    v131 = (v76 + *v76);
    v77 = v76[1];
    v78 = swift_task_alloc();
    *(v0 + 1128) = v78;
    *v78 = v0;
    v79 = sub_10048C1E0;
    goto LABEL_68;
  }

  v53 = *(v0 + 1016);
  sub_10049779C(*(v0 + 1000), *(v0 + 1024), type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = *(v0 + 1024);
  if (EnumCaseMultiPayload != 3)
  {
    v93 = *(v0 + 1000);
    sub_10049786C(v55, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10032E398();
    if (v94)
    {
      v95 = *(v0 + 1032);
      v96 = *(v0 + 1008);
      v97 = *(v0 + 1000);

      v98 = sub_10032B99C();
      v100 = v99;
      sub_10049779C(v97, v95, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v101 = type metadata accessor for SDAirDropDiscoveredDevice();
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      v104 = sub_1004A4FAC(v95);
      v132[3] = v101;
      v105 = sub_100005430(&qword_10097F360, type metadata accessor for SDAirDropDiscoveredDevice);
      v132[4] = v105;
      v132[5] = &off_1008E3588;
      v132[0] = v104;
      swift_beginAccess();

      sub_1002AFCBC(v132, v98, v100);
      swift_endAccess();
      sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
      *(v0 + 632) = v104;
      *(v0 + 656) = v101;
      *(v0 + 664) = v105;
    }

    if (*(v0 + 1168) == 1)
    {
      sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
      if (!*(v0 + 776))
      {
        sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
        v107 = v0 + 752;
        goto LABEL_54;
      }

      v106 = *(v0 + 1008);
      sub_1000121F8((v0 + 752), v0 + 792);
      sub_10048CC80((v0 + 792));
      sub_10000C60C((v0 + 792));
    }

    v107 = v0 + 632;
LABEL_54:
    sub_100005508(v107, &qword_100977DC8, &unk_1008091C0);
LABEL_58:
    v114 = *(v0 + 1048);
    v115 = *(v0 + 1040);
    v116 = *(v0 + 1032);
    v117 = *(v0 + 1024);

    v118 = *(v0 + 8);

    return v118();
  }

  v56 = *v55;
  *(v0 + 1144) = *v55;
  result = [v56 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_73;
  }

  v58 = result;
  v59 = *(v0 + 1008);
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  *(v0 + 1152) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v64 = *(v59 + v63);
  if (*(v64 + 16))
  {
    v65 = sub_100012854(v60, v62);
    v67 = v66;

    if (v67)
    {
      sub_1002D63B0(*(v64 + 56) + 48 * v65, v0 + 304);
      goto LABEL_63;
    }
  }

  else
  {
  }

  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 304) = 0u;
LABEL_63:
  v119 = *(v0 + 336);
  *(v0 + 368) = *(v0 + 320);
  *(v0 + 384) = v119;
  *(v0 + 352) = *(v0 + 304);
  if (!*(v0 + 376))
  {
    result = [v56 identifier];
    if (result)
    {
      v120 = result;
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      v124 = type metadata accessor for SDAirDropDiscoveredClassroom();
      v125 = *(v124 + 48);
      v126 = *(v124 + 52);
      swift_allocObject();
      v127 = sub_10055A6CC(v121, v123);
      *(v0 + 232) = v124;
      *(v0 + 240) = sub_100005430(&qword_10097F368, type metadata accessor for SDAirDropDiscoveredClassroom);
      *(v0 + 248) = &off_1008E6F58;
      *(v0 + 208) = v127;
      sub_100005508(v0 + 352, &qword_100976180, &unk_1007F9300);
      goto LABEL_67;
    }

LABEL_73:
    __break(1u);
    return result;
  }

  sub_1002D6398((v0 + 352), (v0 + 208));
LABEL_67:
  swift_endAccess();
  v74 = *(v0 + 232);
  v75 = *(v0 + 240);
  sub_10002CDC0((v0 + 208), v74);
  v128 = *(v75 + 48);
  v131 = (v128 + *v128);
  v129 = v128[1];
  v78 = swift_task_alloc();
  *(v0 + 1160) = v78;
  *v78 = v0;
  v79 = sub_10048C6B4;
LABEL_68:
  v78[1] = v79;
  v130 = *(v0 + 1000);

  return v131(v130, v74, v75);
}

uint64_t sub_10048BD24()
{
  v1 = *(*v0 + 1088);
  v2 = *(*v0 + 1056);
  v4 = *v0;

  return _swift_task_switch(sub_10048BE34, v2, 0);
}

uint64_t sub_10048BE34()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[126];
  sub_1002D63B0((v0 + 32), (v0 + 8));
  swift_beginAccess();
  sub_1002AFCBC((v0 + 8), v3, v2);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[137] = v5;
  *v5 = v0;
  v5[1] = sub_10048BF24;
  v6 = v0[126];
  v7 = v0[125];

  return sub_10048CA0C((v0 + 32), v7);
}

uint64_t sub_10048BF24()
{
  v1 = *(*v0 + 1096);
  v2 = *(*v0 + 1056);
  v4 = *v0;

  return _swift_task_switch(sub_10048C034, v2, 0);
}

uint64_t sub_10048C034()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = sub_10002CDC0((v0 + 256), v1);
  *(v0 + 616) = v1;
  *(v0 + 624) = v2;
  v4 = sub_10002F604((v0 + 592));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v5 = *(v0 + 608);
  *(v0 + 632) = *(v0 + 592);
  *(v0 + 648) = v5;
  *(v0 + 664) = *(v0 + 624);
  sub_10000C60C((v0 + 256));
  if (*(v0 + 1168) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 776))
  {
    v6 = *(v0 + 1008);
    sub_1000121F8((v0 + 752), v0 + 792);
    sub_10048CC80((v0 + 792));
    sub_10000C60C((v0 + 792));
LABEL_4:
    v7 = v0 + 632;
    goto LABEL_5;
  }

  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v7 = v0 + 752;
LABEL_5:
  sub_100005508(v7, &qword_100977DC8, &unk_1008091C0);
  v8 = *(v0 + 1048);
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1032);
  v11 = *(v0 + 1024);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10048C1E0()
{
  v1 = *(*v0 + 1128);
  v2 = *(*v0 + 1056);
  v4 = *v0;

  return _swift_task_switch(sub_10048C2F0, v2, 0);
}

uint64_t sub_10048C2F0()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[126];
  sub_1002D63B0((v0 + 68), (v0 + 56));
  swift_beginAccess();
  sub_1002AFCBC((v0 + 56), v3, v2);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[142] = v5;
  *v5 = v0;
  v5[1] = sub_10048C3E0;
  v6 = v0[126];
  v7 = v0[125];

  return sub_10048CA0C((v0 + 68), v7);
}

uint64_t sub_10048C3E0()
{
  v1 = *(*v0 + 1136);
  v2 = *(*v0 + 1056);
  v4 = *v0;

  return _swift_task_switch(sub_10048C4F0, v2, 0);
}

uint64_t sub_10048C4F0()
{
  v13 = *(v0 + 568);
  v1 = *(v0 + 568);
  v2 = sub_10002CDC0((v0 + 544), v1);
  *(v0 + 736) = v13;
  v3 = sub_10002F604((v0 + 712));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v4 = *(v0 + 728);
  *(v0 + 632) = *(v0 + 712);
  *(v0 + 648) = v4;
  *(v0 + 664) = *(v0 + 744);
  sub_10000C60C((v0 + 544));
  if (*(v0 + 1168) != 1)
  {
    goto LABEL_4;
  }

  sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
  if (*(v0 + 776))
  {
    v5 = *(v0 + 1008);
    sub_1000121F8((v0 + 752), v0 + 792);
    sub_10048CC80((v0 + 792));
    sub_10000C60C((v0 + 792));
LABEL_4:
    v6 = v0 + 632;
    goto LABEL_5;
  }

  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v6 = v0 + 752;
LABEL_5:
  sub_100005508(v6, &qword_100977DC8, &unk_1008091C0);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1040);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 1024);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10048C6B4()
{
  v1 = *(*v0 + 1160);
  v2 = *(*v0 + 1056);
  v4 = *v0;

  return _swift_task_switch(sub_10048C7C4, v2, 0);
}

id sub_10048C7C4()
{
  result = [*(v0 + 1144) identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1008);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1002D63B0(v0 + 208, v0 + 400);
  swift_beginAccess();
  sub_1002AFCBC(v0 + 400, v6, v8);
  swift_endAccess();
  v20 = *(v0 + 232);
  v9 = *(v0 + 232);
  v10 = sub_10002CDC0((v0 + 208), v9);
  *(v0 + 696) = v20;
  v11 = sub_10002F604((v0 + 672));
  (*(*(v9 - 8) + 16))(v11, v10, v9);

  sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
  v12 = *(v0 + 688);
  *(v0 + 632) = *(v0 + 672);
  *(v0 + 648) = v12;
  *(v0 + 664) = *(v0 + 704);
  sub_10000C60C((v0 + 208));
  if (*(v0 + 1168) == 1)
  {
    sub_10000FF90(v0 + 632, v0 + 752, &qword_100977DC8, &unk_1008091C0);
    if (!*(v0 + 776))
    {
      sub_100005508(v0 + 632, &qword_100977DC8, &unk_1008091C0);
      v14 = v0 + 752;
      goto LABEL_6;
    }

    v13 = *(v0 + 1008);
    sub_1000121F8((v0 + 752), v0 + 792);
    sub_10048CC80((v0 + 792));
    sub_10000C60C((v0 + 792));
  }

  v14 = v0 + 632;
LABEL_6:
  sub_100005508(v14, &qword_100977DC8, &unk_1008091C0);
  v15 = *(v0 + 1048);
  v16 = *(v0 + 1040);
  v17 = *(v0 + 1032);
  v18 = *(v0 + 1024);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10048CA0C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_10048CB08, v7, 0);
}

uint64_t sub_10048CB08()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v3[3];
  v5 = v3[4];
  sub_10002CDC0(v3, v4);
  (*(v5 + 32))(v4, v5);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegateByConnectableID;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_10000EBD4(v0[10]), (v9 & 1) != 0))
  {
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    v15 = *(*(v7 + 56) + 16 * v8);
    swift_endAccess();
    v16 = *(v11 + 8);
    swift_unknownObjectRetain();
    v16(v10, v12);
    if (sub_10048D090(v14))
    {
      sub_1003C1A14(v0[6]);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    swift_endAccess();
    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10048CC80(void *a1)
{
  v3 = sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_10002CDC0(a1, v12);
  v14 = (*(v13 + 16))(v12, v13);
  v16 = v15;
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!*(v18 + 16))
  {

    return swift_endAccess();
  }

  v40 = v6;
  v19 = sub_100012854(v14, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v11, *(v18 + 56) + *(v8 + 72) * v19, v7);
  swift_endAccess();
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_10097F240);
  sub_1002A9938(a1, v43);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v25 = 136315138;
    sub_1002A9938(v43, v41);
    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    v26 = String.init<A>(describing:)();
    v39 = v8;
    v27 = v26;
    v29 = v28;
    sub_10000C60C(v43);
    v30 = sub_10000C4E4(v27, v29, &v42);

    *(v25 + 4) = v30;
    v8 = v39;
    _os_log_impl(&_mh_execute_header, v23, v24, "Bonjour discovery completed for waiting connectable: %s", v25, 0xCu);
    sub_10000C60C(v38);
  }

  else
  {

    sub_10000C60C(v43);
  }

  v32 = v40;
  v33 = a1[3];
  v34 = a1[4];
  sub_10002CDC0(a1, v33);
  v35 = (*(v34 + 16))(v33, v34);
  v37 = v36;
  (*(v8 + 56))(v32, 1, 1, v7);
  swift_beginAccess();
  sub_1002B1B98(v32, v35, v37);
  swift_endAccess();
  sub_1002A9938(a1, v43);
  CheckedContinuation.resume(returning:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10048D090(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  sub_10049779C(a1, &v33 - v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v19 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    v31 = v19;
    v32 = v16;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_100497804(v16, v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    v18 = sub_10032C7EC();
    sub_10049786C(v9, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if (v18)
    {
      return 1;
    }

    goto LABEL_8;
  }

  sub_100497804(v16, v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  v20 = v5[*(v2 + 64)];
  sub_10049786C(v5, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  if ((v20 & 1) == 0)
  {
LABEL_8:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    if ((sub_1004438B0(a1) & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097F240);
    sub_10049779C(a1, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      v27 = sub_10032DA30(v26);
      v29 = v28;
      sub_10049786C(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v30 = sub_10000C4E4(v27, v29, &v34);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v25, 0xCu);
      sub_10000C60C(v26);

      swift_unknownObjectRelease();

      return 1;
    }

    swift_unknownObjectRelease();
    v31 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    v32 = v14;
LABEL_16:
    sub_10049786C(v32, v31);
  }

  return 1;
}

uint64_t sub_10048D4A0(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v2[54] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2[56] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v8 = type metadata accessor for SFString();
  v2[58] = v8;
  v9 = *(v8 - 8);
  v2[59] = v9;
  v10 = *(v9 + 64) + 15;
  v2[60] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[65] = v12;
  v13 = *(v12 - 8);
  v2[66] = v13;
  v14 = *(v13 + 64) + 15;
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v2[79] = static AirDropActor.shared;

  return _swift_task_switch(sub_10048D770, v15, 0);
}

uint64_t sub_10048D770()
{
  v1 = *(v0 + 408);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_10000EBD4(*(v0 + 400)), (v5 & 1) != 0))
  {
    sub_1002A9938(*(v3 + 56) + 40 * v4, v0 + 144);
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  swift_endAccess();
  if (*(v0 + 168))
  {
    sub_1000121F8((v0 + 144), v0 + 104);
    goto LABEL_15;
  }

  v6 = *(v0 + 400);
  v7 = *(v0 + 408);
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_allDiscovered;
  swift_beginAccess();
  v12 = *(v7 + v11);
  if (*(v12 + 16))
  {
    v13 = sub_100012854(v8, v10);
    v15 = v14;

    if (v15)
    {
      sub_1002D63B0(*(v12 + 56) + 48 * v13, v0 + 16);
      goto LABEL_12;
    }
  }

  else
  {
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_12:
  swift_endAccess();
  v16 = *(v0 + 40);
  if (v16)
  {
    v17 = *(v0 + 48);
    v18 = sub_10002CDC0((v0 + 16), *(v0 + 40));
    *(v0 + 128) = v16;
    *(v0 + 136) = v17;
    v19 = sub_10002F604((v0 + 104));
    (*(*(v16 - 8) + 16))(v19, v18, v16);
    sub_10000C60C((v0 + 16));
    if (!*(v0 + 168))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100005508(v0 + 16, &qword_100976180, &unk_1007F9300);
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  if (*(v0 + 168))
  {
LABEL_14:
    sub_100005508(v0 + 144, &qword_100977DC8, &unk_1008091C0);
  }

LABEL_15:
  if (*(v0 + 128))
  {
    sub_1000121F8((v0 + 104), v0 + 64);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    sub_10002CDC0((v0 + 64), v20);
    v22 = *(v21 + 40);
    v47 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 640) = v24;
    *v24 = v0;
    v24[1] = sub_10048DBE4;

    return v47(v20, v21);
  }

  else
  {
    sub_100005508(v0 + 104, &qword_100977DC8, &unk_1008091C0);
    v26 = *(v0 + 624);
    v27 = *(v0 + 616);
    v28 = *(v0 + 608);
    v29 = *(v0 + 600);
    v30 = *(v0 + 592);
    v31 = *(v0 + 584);
    v32 = *(v0 + 576);
    v33 = *(v0 + 568);
    v34 = *(v0 + 560);
    v35 = *(v0 + 552);
    v37 = *(v0 + 544);
    v38 = *(v0 + 536);
    v39 = *(v0 + 512);
    v40 = *(v0 + 504);
    v41 = *(v0 + 496);
    v42 = *(v0 + 488);
    v43 = *(v0 + 480);
    v44 = *(v0 + 456);
    v45 = *(v0 + 440);
    v46 = *(v0 + 424);
    v48 = *(v0 + 416);

    v36 = *(v0 + 8);

    return v36(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }
}

uint64_t sub_10048DBE4(uint64_t a1)
{
  v2 = *(*v1 + 640);
  v3 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 648) = a1;

  return _swift_task_switch(sub_10048DCFC, v3, 0);
}

uint64_t sub_10048DCFC()
{
  v206 = v0;
  v1 = *(v0 + 648);
  v201 = *(v0 + 528);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = v1 + 56;
  v198 = *(v0 + 408);
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 56);
  v9 = (63 - v7) >> 6;
  v180 = (v2 + 8);
  v182 = (v2 + 104);
  v177 = enum case for SFString.maybeContact(_:);
  *(v0 + 688) = enum case for SFString.maybeContact(_:);
  v186 = (v3 + 44);
  v188 = (v4 + 28);
  v191 = v3;
  v194 = (v0 + 456);
  v203 = v1;

  v10 = 0;
  while (1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    do
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_116;
      }

      if (v18 >= v9)
      {
        v56 = *(v0 + 648);

        v57 = swift_task_alloc();
        *(v0 + 656) = v57;
        *v57 = v0;
        v57[1] = sub_10048F0A0;
        v58 = *(v0 + 408);

        return sub_100490B08(v0 + 264, v0 + 64);
      }

      v8 = *(v5 + 8 * v18);
      ++v10;
    }

    while (!v8);
    v10 = v18;
LABEL_13:
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);
    v21 = *(v0 + 520);
    sub_10049779C(*(v203 + 48) + *(v201 + 72) * (__clz(__rbit64(v8)) | (v10 << 6)), v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v19, v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 616);
    if (EnumCaseMultiPayload <= 0)
    {
      break;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v59 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v59 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      goto LABEL_48;
    }

    v24 = *v194;
    sub_100497804(v23, *v194, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v25 = *(v24 + *(v191 + 64));
    sub_10049786C(v24, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v25)
    {
      goto LABEL_49;
    }

LABEL_28:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v43 = Strong;
    v44 = *(v0 + 520);
    sub_10049779C(*(v0 + 624), *(v0 + 608), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v45 = swift_getEnumCaseMultiPayload();
    v46 = *(v0 + 608);
    v47 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v48 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    if (v45 > 1)
    {
      if (v45 != 2)
      {
        v51 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_40:
        sub_10049786C(v46, v51);
        goto LABEL_6;
      }

      v47 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v48 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v53 = v188;
      v52 = (v0 + 440);
      goto LABEL_37;
    }

    if (v45)
    {
      v52 = (v0 + 456);
      v53 = v186;
LABEL_37:
      v54 = *v52;
      sub_100497804(v46, *v52, v48);
      v55 = (v54 + *v53);
      v11 = *v55;
      v13 = v55[1];

      sub_10049786C(v54, v47);
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

    sub_100497804(v46, *(v0 + 504), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    result = NWEndpoint.nw.getter();
    if (!result)
    {
      goto LABEL_119;
    }

    contact_id = nw_endpoint_get_contact_id();
    swift_unknownObjectRelease();
    v50 = *(v0 + 504);
    if (!contact_id)
    {
      v51 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v46 = *(v0 + 504);
      goto LABEL_40;
    }

    v11 = String.init(cString:)();
    v13 = v12;
    sub_10049786C(v50, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_5:
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
    swift_beginAccess();
    sub_1002A9938(v43 + v14, v0 + 224);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    sub_10002CDC0((v0 + 224), v15);
    v17 = (*(v16 + 104))(v11, v13, v15, v16);

    sub_10000C60C((v0 + 224));
    if (v17)
    {
      if (qword_1009738C0 == -1)
      {
        goto LABEL_111;
      }

      goto LABEL_117;
    }

LABEL_6:
    swift_unknownObjectRelease();
LABEL_7:
    v8 &= v8 - 1;
    sub_10049786C(*(v0 + 624), type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  sub_100497804(v23, *(v0 + 512), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if ((sub_10032C7CC() & 0x4000000000) == 0)
  {
    v26 = *(v0 + 512);
    if ((sub_10032C7CC() & 0x8000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  v27 = *(v0 + 512);
  if ((sub_10032C7CC() & 0x4000000000) != 0 || (v28 = *(v0 + 512), (sub_10032C8C4() & 8) != 0))
  {
    v23 = *(v0 + 512);
    v59 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_48:
    sub_10049786C(v23, v59);
LABEL_49:
    v60 = *(v0 + 648);
    for (i = *(v0 + 624); ; i = v170)
    {
      sub_10049786C(i, type metadata accessor for SDAirDropDiscoveredEndpoint);

      v62 = 0;
      v63 = *(v0 + 648);
      v66 = *(v63 + 56);
      v65 = v63 + 56;
      v64 = v66;
      v67 = -1;
      v202 = *(v0 + 648);
      v68 = -1 << *(v202 + 32);
      if (-v68 < 64)
      {
        v67 = ~(-1 << -v68);
      }

      v69 = v67 & v64;
      v70 = (63 - v68) >> 6;
      v183 = *(v0 + 408);
      v192 = (*(v0 + 528) + 48);
      v196 = v65;
      v199 = v70;
      if ((v67 & v64) != 0)
      {
        break;
      }

LABEL_53:
      while (1)
      {
        v71 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v71 >= v70)
        {

          sub_10000C60C((v0 + 64));
          v152 = *(v0 + 624);
          v153 = *(v0 + 616);
          v154 = *(v0 + 608);
          v155 = *(v0 + 600);
          v156 = *(v0 + 592);
          v157 = *(v0 + 584);
          v158 = *(v0 + 576);
          v159 = *(v0 + 568);
          v160 = *(v0 + 560);
          v161 = *(v0 + 552);
          v179 = *(v0 + 544);
          v181 = *(v0 + 536);
          v184 = *(v0 + 512);
          v185 = *(v0 + 504);
          v187 = *(v0 + 496);
          v189 = *(v0 + 488);
          v190 = *(v0 + 480);
          v193 = *(v0 + 456);
          v195 = *(v0 + 440);
          v197 = *(v0 + 424);
          v200 = *(v0 + 416);

          v162 = *(v0 + 8);

          return v162(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
        }

        v69 = *(v65 + 8 * v71);
        ++v62;
        if (v69)
        {
          v62 = v71;
          goto LABEL_57;
        }
      }

LABEL_116:
      __break(1u);
LABEL_117:
      swift_once();
LABEL_111:
      v163 = *(v0 + 624);
      v164 = *(v0 + 600);
      v165 = type metadata accessor for Logger();
      sub_10000C4AC(v165, qword_10097F240);
      sub_10049779C(v163, v164, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();
      v168 = os_log_type_enabled(v166, v167);
      v169 = *(v0 + 648);
      v170 = *(v0 + 624);
      v171 = *(v0 + 600);
      if (v168)
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v205[0] = v173;
        *v172 = 136315138;
        v204 = sub_10032DA30();
        v175 = v174;
        sub_10049786C(v171, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v176 = sub_10000C4E4(v204, v175, v205);

        *(v172 + 4) = v176;
        _os_log_impl(&_mh_execute_header, v166, v167, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v172, 0xCu);
        sub_10000C60C(v173);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_10049786C(v171, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }
    }

    while (1)
    {
LABEL_57:
      v72 = *(v0 + 592);
      v73 = *(v0 + 584);
      v74 = *(v0 + 576);
      v75 = *(v0 + 520);
      sub_10049779C(*(v202 + 48) + *(*(v0 + 528) + 72) * (__clz(__rbit64(v69)) | (v62 << 6)), v72, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_100497804(v72, v73, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10049779C(v73, v74, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v76 = swift_getEnumCaseMultiPayload();
      v77 = *(v0 + 576);
      if (v76 > 1)
      {
        if (v76 == 2)
        {
          v94 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        }

        else
        {
          v94 = type metadata accessor for SDAirDropDiscoveredEndpoint;
        }

LABEL_75:
        v97 = v94;
        goto LABEL_76;
      }

      if (v76)
      {
        v95 = *v194;
        v96 = *(v0 + 448);
        sub_100497804(v77, *v194, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        LOBYTE(v96) = *(v95 + *(v96 + 64));
        sub_10049786C(v95, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v96)
        {
          goto LABEL_77;
        }
      }

      else
      {
        sub_100497804(v77, *(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        if ((sub_10032C7CC() & 0x4000000000) == 0)
        {
          v78 = *(v0 + 496);
          if ((sub_10032C7CC() & 0x8000000000) == 0)
          {
            goto LABEL_86;
          }
        }

        v79 = *(v0 + 496);
        if ((sub_10032C7CC() & 0x4000000000) != 0 || (v80 = *(v0 + 496), (sub_10032C8C4() & 8) != 0))
        {
          v77 = *(v0 + 496);
          v94 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          goto LABEL_75;
        }

        v81 = *(v0 + 496);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_120;
        }

        device_name = nw_endpoint_get_device_name();
        swift_unknownObjectRelease();
        if (device_name)
        {
          v83 = *(v0 + 496);
          v84 = String.init(cString:)();
          v86 = v85;
          if ((sub_10032C7CC() & 0x4000000000) != 0)
          {
            v88 = *(v0 + 472);
            v87 = *(v0 + 480);
            v89 = *(v0 + 464);
            (*(v88 + 104))(v87, *(v0 + 688), v89);
            sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_1007F5670;
            *(v90 + 56) = &type metadata for String;
            *(v90 + 64) = sub_100026764();
            *(v90 + 32) = v84;
            *(v90 + 40) = v86;
            SFString.format(_:)();

            (*(v88 + 8))(v87, v89);
          }

          v91 = *(v0 + 496);
          v92._countAndFlagsBits = 4408910;
          v92._object = 0xE300000000000000;
          v93 = String.hasPrefix(_:)(v92);

          sub_10049786C(v91, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          if (v93)
          {
            goto LABEL_77;
          }
        }

        else
        {
LABEL_86:
          sub_10049786C(*(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        }
      }

      v116 = swift_unknownObjectWeakLoadStrong();
      if (v116)
      {
        break;
      }

LABEL_84:
      v70 = v199;
      v69 &= v69 - 1;
      sub_10049786C(*(v0 + 584), type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (!v69)
      {
        goto LABEL_53;
      }
    }

    v117 = v116;
    v118 = *(v0 + 520);
    sub_10049779C(*(v0 + 584), *(v0 + 568), type metadata accessor for SDAirDropDiscoveredEndpoint);
    v119 = swift_getEnumCaseMultiPayload();
    v120 = *(v0 + 568);
    v121 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v122 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    if (v119 > 1)
    {
      if (v119 != 2)
      {
        v151 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_105:
        sub_10049786C(v120, v151);
        goto LABEL_106;
      }

      v121 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v122 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v129 = (v0 + 440);
      v130 = (v0 + 432);
      v131 = 28;
    }

    else
    {
      if (!v119)
      {
        sub_100497804(v120, *(v0 + 488), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_121;
        }

        v123 = nw_endpoint_get_contact_id();
        swift_unknownObjectRelease();
        v124 = v123;
        v125 = *(v0 + 488);
        if (v124)
        {
          v126 = String.init(cString:)();
          v128 = v127;
          sub_10049786C(v125, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          goto LABEL_97;
        }

        v151 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
        v120 = *(v0 + 488);
        goto LABEL_105;
      }

      v129 = (v0 + 456);
      v130 = (v0 + 448);
      v131 = 44;
    }

    v132 = *v129;
    v133 = *v130;
    sub_100497804(v120, *v129, v122);
    v134 = (v132 + *(v133 + v131));
    v126 = *v134;
    v128 = v134[1];

    sub_10049786C(v132, v121);
    if (v128)
    {
LABEL_97:
      v135 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v117 + v135, v0 + 184);
      v136 = *(v0 + 208);
      v137 = *(v0 + 216);
      sub_10002CDC0((v0 + 184), v136);
      v138 = (*(v137 + 104))(v126, v128, v136, v137);

      sub_10000C60C((v0 + 184));
      if (v138)
      {
        if (qword_1009738C0 != -1)
        {
          swift_once();
        }

        v139 = *(v0 + 584);
        v140 = *(v0 + 560);
        v141 = type metadata accessor for Logger();
        sub_10000C4AC(v141, qword_10097F240);
        sub_10049779C(v139, v140, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.default.getter();
        v144 = os_log_type_enabled(v142, v143);
        v145 = *(v0 + 560);
        if (v144)
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v205[0] = v147;
          *v146 = 136315138;
          v178 = sub_10032DA30();
          v149 = v148;
          sub_10049786C(v145, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v150 = sub_10000C4E4(v178, v149, v205);

          *(v146 + 4) = v150;
          _os_log_impl(&_mh_execute_header, v142, v143, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v146, 0xCu);
          sub_10000C60C(v147);

          swift_unknownObjectRelease();
          goto LABEL_77;
        }

        swift_unknownObjectRelease();

        v97 = type metadata accessor for SDAirDropDiscoveredEndpoint;
        v77 = v145;
LABEL_76:
        sub_10049786C(v77, v97);
LABEL_77:
        v98 = *(v0 + 584);
        v99 = *(v0 + 520);
        v100 = *(v0 + 424);
        *(swift_task_alloc() + 16) = v98;
        sub_1002CC594(sub_100498518, &_swiftEmptySetSingleton, v100);

        v101 = (*v192)(v100, 1, v99);
        v102 = *(v0 + 584);
        if (v101 == 1)
        {
          v103 = *(v0 + 544);
          v104 = *(v0 + 536);
          sub_100005508(*(v0 + 424), &qword_1009763E0, &qword_1007F95D0);
          sub_10049779C(v102, v104, type metadata accessor for SDAirDropDiscoveredEndpoint);
          sub_10046DE64(v103, v104);
          v105 = (v0 + 544);
        }

        else
        {
          sub_100497804(*(v0 + 424), *(v0 + 552), type metadata accessor for SDAirDropDiscoveredEndpoint);
          v106 = sub_10032FEAC();
          v107 = sub_10032FEAC();
          v108 = *(v0 + 584);
          if (v107 >= v106)
          {
            v114 = *(v0 + 544);
            v115 = *(v0 + 536);
            sub_10049779C(*(v0 + 584), v115, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v114, v115);
            v113 = v114;
          }

          else
          {
            v109 = *(v0 + 552);
            v110 = *(v0 + 544);
            v111 = *(v0 + 536);
            v112 = *(v0 + 416);
            sub_10049779C(v109, v111, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v110, v111);
            sub_10049786C(v110, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10036E788(v109, v112);
            sub_100005508(v112, &qword_1009763E0, &qword_1007F95D0);
            sub_10049779C(v108, v111, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v110, v111);
            v113 = v110;
          }

          sub_10049786C(v113, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v105 = (v0 + 552);
        }

        sub_10049786C(*v105, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v65 = v196;
        goto LABEL_84;
      }
    }

LABEL_106:
    swift_unknownObjectRelease();
    goto LABEL_84;
  }

  v29 = *(v0 + 512);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v31 = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (v31)
    {
      v32 = *(v0 + 512);
      v33 = String.init(cString:)();
      v35 = v34;
      if ((sub_10032C7CC() & 0x4000000000) != 0)
      {
        v36 = *(v0 + 480);
        v37 = *(v0 + 464);
        (*v182)(v36, v177, v37);
        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1007F5670;
        *(v38 + 56) = &type metadata for String;
        *(v38 + 64) = sub_100026764();
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        SFString.format(_:)();

        (*v180)(v36, v37);
      }

      v39 = *(v0 + 512);
      v40._countAndFlagsBits = 4408910;
      v40._object = 0xE300000000000000;
      v41 = String.hasPrefix(_:)(v40);

      sub_10049786C(v39, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v41)
      {
        goto LABEL_49;
      }

      goto LABEL_28;
    }

LABEL_27:
    sub_10049786C(*(v0 + 512), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    goto LABEL_28;
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
  return result;
}

uint64_t sub_10048F0A0()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = *(v2 + 632);
  if (v0)
  {
    v6 = sub_10048FF88;
  }

  else
  {
    v6 = sub_10048F1CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10048F1CC()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_10002CDC0(v0 + 33, v1);
  v3 = *(v2 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[84] = v5;
  *v5 = v0;
  v5[1] = sub_10048F2F0;

  return v7(v1, v2);
}

uint64_t sub_10048F2F0(uint64_t a1)
{
  v2 = *(*v1 + 672);
  v3 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 680) = a1;

  return _swift_task_switch(sub_10048F408, v3, 0);
}

uint64_t sub_10048F408()
{
  v123 = v0;
  result = sub_10000C60C((v0 + 264));
  v2 = 0;
  v3 = *(v0 + 680);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v120 = *(v0 + 680);
  v8 = -1 << *(v120 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v121 = *(v0 + 664);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v110 = (v0 + 456);
  v107 = *(v0 + 408);
  v114 = (*(v0 + 528) + 48);
  v116 = v5;
  v118 = v10;
  if ((v7 & v4) == 0)
  {
    while (1)
    {
LABEL_4:
      v11 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v11);
      ++v2;
      if (v9)
      {
        v2 = v11;
        goto LABEL_8;
      }
    }

    sub_10000C60C((v0 + 64));
    v92 = *(v0 + 624);
    v93 = *(v0 + 616);
    v94 = *(v0 + 608);
    v95 = *(v0 + 600);
    v96 = *(v0 + 592);
    v97 = *(v0 + 584);
    v98 = *(v0 + 576);
    v99 = *(v0 + 568);
    v100 = *(v0 + 560);
    v101 = *(v0 + 552);
    v103 = *(v0 + 544);
    v105 = *(v0 + 536);
    v106 = *(v0 + 512);
    v108 = *(v0 + 504);
    v109 = *(v0 + 496);
    v111 = *(v0 + 488);
    v112 = *(v0 + 480);
    v113 = *(v0 + 456);
    v115 = *(v0 + 440);
    v117 = *(v0 + 424);
    v119 = *(v0 + 416);

    v102 = *(v0 + 8);

    return v102(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  while (1)
  {
LABEL_8:
    v12 = *(v0 + 592);
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    v15 = *(v0 + 520);
    sub_10049779C(*(v120 + 48) + *(*(v0 + 528) + 72) * (__clz(__rbit64(v9)) | (v2 << 6)), v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v12, v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v0 + 576);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v34 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_26:
      v37 = v34;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload)
    {
      v35 = *v110;
      v36 = *(v0 + 448);
      sub_100497804(v17, *v110, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v36) = *(v35 + *(v36 + 64));
      sub_10049786C(v35, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v36)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }

    sub_100497804(v17, *(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C7CC() & 0x4000000000) == 0)
    {
      v18 = *(v0 + 496);
      if ((sub_10032C7CC() & 0x8000000000) == 0)
      {
LABEL_37:
        sub_10049786C(*(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        goto LABEL_38;
      }
    }

    v19 = *(v0 + 496);
    if ((sub_10032C7CC() & 0x4000000000) != 0 || (v20 = *(v0 + 496), (sub_10032C8C4() & 8) != 0))
    {
      v17 = *(v0 + 496);
      v34 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      goto LABEL_26;
    }

    v21 = *(v0 + 496);
    result = NWEndpoint.nw.getter();
    if (!result)
    {
      break;
    }

    device_name = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (!device_name)
    {
      goto LABEL_37;
    }

    v23 = *(v0 + 496);
    v24 = String.init(cString:)();
    v26 = v25;
    if ((sub_10032C7CC() & 0x4000000000) != 0)
    {
      v28 = *(v0 + 472);
      v27 = *(v0 + 480);
      v29 = *(v0 + 464);
      (*(v28 + 104))(v27, *(v0 + 688), v29);
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1007F5670;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100026764();
      *(v30 + 32) = v24;
      *(v30 + 40) = v26;
      SFString.format(_:)();

      (*(v28 + 8))(v27, v29);
    }

    v31 = *(v0 + 496);
    v32._countAndFlagsBits = 4408910;
    v32._object = 0xE300000000000000;
    v33 = String.hasPrefix(_:)(v32);

    sub_10049786C(v31, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if (v33)
    {
      goto LABEL_28;
    }

LABEL_38:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v57 = Strong;
      v58 = *(v0 + 520);
      sub_10049779C(*(v0 + 584), *(v0 + 568), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v59 = swift_getEnumCaseMultiPayload();
      v60 = *(v0 + 568);
      v61 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v62 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      if (v59 > 1)
      {
        if (v59 != 2)
        {
          v91 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_56:
          sub_10049786C(v60, v91);
          goto LABEL_57;
        }

        v61 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v62 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v70 = (v0 + 432);
        v69 = (v0 + 440);
        v71 = 28;
      }

      else
      {
        if (!v59)
        {
          sub_100497804(v60, *(v0 + 488), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          result = NWEndpoint.nw.getter();
          if (!result)
          {
            goto LABEL_63;
          }

          contact_id = nw_endpoint_get_contact_id();
          swift_unknownObjectRelease();
          v64 = contact_id;
          v65 = *(v0 + 488);
          if (v64)
          {
            v66 = String.init(cString:)();
            v68 = v67;
            sub_10049786C(v65, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
            goto LABEL_48;
          }

          v91 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v60 = *(v0 + 488);
          goto LABEL_56;
        }

        v70 = (v0 + 448);
        v69 = (v0 + 456);
        v71 = 44;
      }

      v72 = *v69;
      v73 = *v70;
      sub_100497804(v60, *v69, v62);
      v74 = (v72 + *(v73 + v71));
      v66 = *v74;
      v68 = v74[1];

      sub_10049786C(v72, v61);
      if (v68)
      {
LABEL_48:
        v75 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
        swift_beginAccess();
        sub_1002A9938(v57 + v75, v0 + 184);
        v76 = *(v0 + 208);
        v77 = *(v0 + 216);
        sub_10002CDC0((v0 + 184), v76);
        v78 = (*(v77 + 104))(v66, v68, v76, v77);

        sub_10000C60C((v0 + 184));
        if (v78)
        {
          if (qword_1009738C0 != -1)
          {
            swift_once();
          }

          v79 = *(v0 + 584);
          v80 = *(v0 + 560);
          v81 = type metadata accessor for Logger();
          sub_10000C4AC(v81, qword_10097F240);
          sub_10049779C(v79, v80, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();
          v84 = os_log_type_enabled(v82, v83);
          v85 = *(v0 + 560);
          if (v84)
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v122 = v87;
            *v86 = 136315138;
            v104 = sub_10032DA30();
            v89 = v88;
            sub_10049786C(v85, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v90 = sub_10000C4E4(v104, v89, &v122);

            *(v86 + 4) = v90;
            _os_log_impl(&_mh_execute_header, v82, v83, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v86, 0xCu);
            sub_10000C60C(v87);

            swift_unknownObjectRelease();
            goto LABEL_28;
          }

          swift_unknownObjectRelease();

          v37 = type metadata accessor for SDAirDropDiscoveredEndpoint;
          v17 = v85;
LABEL_27:
          sub_10049786C(v17, v37);
LABEL_28:
          v38 = *(v0 + 584);
          v39 = *(v0 + 520);
          v40 = *(v0 + 424);
          *(swift_task_alloc() + 16) = v38;
          sub_1002CC594(sub_100498518, &_swiftEmptySetSingleton, v40);

          v41 = (*v114)(v40, 1, v39);
          v42 = *(v0 + 584);
          if (v41 == 1)
          {
            v43 = *(v0 + 544);
            v44 = *(v0 + 536);
            sub_100005508(*(v0 + 424), &qword_1009763E0, &qword_1007F95D0);
            sub_10049779C(v42, v44, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v43, v44);
            v45 = (v0 + 544);
          }

          else
          {
            sub_100497804(*(v0 + 424), *(v0 + 552), type metadata accessor for SDAirDropDiscoveredEndpoint);
            v46 = sub_10032FEAC();
            v47 = sub_10032FEAC();
            v48 = *(v0 + 584);
            if (v47 >= v46)
            {
              v54 = *(v0 + 544);
              v55 = *(v0 + 536);
              sub_10049779C(*(v0 + 584), v55, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v54, v55);
              v53 = v54;
            }

            else
            {
              v49 = *(v0 + 552);
              v50 = *(v0 + 544);
              v51 = *(v0 + 536);
              v52 = *(v0 + 416);
              sub_10049779C(v49, v51, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v50, v51);
              sub_10049786C(v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10036E788(v49, v52);
              sub_100005508(v52, &qword_1009763E0, &qword_1007F95D0);
              sub_10049779C(v48, v51, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v50, v51);
              v53 = v50;
            }

            sub_10049786C(v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v45 = (v0 + 552);
          }

          sub_10049786C(*v45, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v5 = v116;
          goto LABEL_35;
        }
      }

LABEL_57:
      swift_unknownObjectRelease();
    }

LABEL_35:
    v10 = v118;
    v9 &= v9 - 1;
    result = sub_10049786C(*(v0 + 584), type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (!v9)
    {
      goto LABEL_4;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10048FF88()
{
  v116 = v0;
  v1 = *(v0 + 664);

  v3 = 0;
  v4 = -1;
  v5 = -1 << *(&_swiftEmptySetSingleton + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(&_swiftEmptySetSingleton + 7);
  v105 = *(v0 + 408);
  v7 = (63 - v5) >> 6;
  v108 = (v0 + 456);
  v112 = (*(v0 + 528) + 48);
  v114 = v7;
  if (!v6)
  {
    while (1)
    {
LABEL_4:
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v8 >= v7)
      {
        break;
      }

      v6 = *(&_swiftEmptySetSingleton + v8 + 7);
      ++v3;
      if (v6)
      {
        v3 = v8;
        goto LABEL_8;
      }
    }

    sub_10000C60C((v0 + 64));
    v88 = *(v0 + 624);
    v89 = *(v0 + 616);
    v90 = *(v0 + 608);
    v91 = *(v0 + 600);
    v92 = *(v0 + 592);
    v93 = *(v0 + 584);
    v94 = *(v0 + 576);
    v95 = *(v0 + 568);
    v96 = *(v0 + 560);
    v97 = *(v0 + 552);
    v99 = *(v0 + 544);
    v100 = *(v0 + 536);
    v101 = *(v0 + 512);
    v103 = *(v0 + 504);
    v104 = *(v0 + 496);
    v106 = *(v0 + 488);
    v107 = *(v0 + 480);
    v109 = *(v0 + 456);
    v110 = *(v0 + 440);
    v111 = *(v0 + 424);
    v113 = *(v0 + 416);

    v98 = *(v0 + 8);

    return v98(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  while (1)
  {
LABEL_8:
    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 576);
    v12 = *(v0 + 520);
    sub_10049779C(*(&_swiftEmptySetSingleton + 6) + *(*(v0 + 528) + 72) * (__clz(__rbit64(v6)) | (v3 << 6)), v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v9, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v10, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v0 + 576);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v31 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v31 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_26:
      v34 = v31;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload)
    {
      v32 = *v108;
      v33 = *(v0 + 448);
      sub_100497804(v14, *v108, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v33) = *(v32 + *(v33 + 64));
      sub_10049786C(v32, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (v33)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }

    sub_100497804(v14, *(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C7CC() & 0x4000000000) == 0)
    {
      v15 = *(v0 + 496);
      if ((sub_10032C7CC() & 0x8000000000) == 0)
      {
LABEL_37:
        sub_10049786C(*(v0 + 496), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        goto LABEL_38;
      }
    }

    v16 = *(v0 + 496);
    if ((sub_10032C7CC() & 0x4000000000) != 0 || (v17 = *(v0 + 496), (sub_10032C8C4() & 8) != 0))
    {
      v14 = *(v0 + 496);
      v31 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      goto LABEL_26;
    }

    v18 = *(v0 + 496);
    result = NWEndpoint.nw.getter();
    if (!result)
    {
      break;
    }

    device_name = nw_endpoint_get_device_name();
    swift_unknownObjectRelease();
    if (!device_name)
    {
      goto LABEL_37;
    }

    v20 = *(v0 + 496);
    v21 = String.init(cString:)();
    v23 = v22;
    if ((sub_10032C7CC() & 0x4000000000) != 0)
    {
      v25 = *(v0 + 472);
      v24 = *(v0 + 480);
      v26 = *(v0 + 464);
      (*(v25 + 104))(v24, *(v0 + 688), v26);
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007F5670;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100026764();
      *(v27 + 32) = v21;
      *(v27 + 40) = v23;
      SFString.format(_:)();

      (*(v25 + 8))(v24, v26);
    }

    v28 = *(v0 + 496);
    v29._countAndFlagsBits = 4408910;
    v29._object = 0xE300000000000000;
    v30 = String.hasPrefix(_:)(v29);

    sub_10049786C(v28, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if (v30)
    {
      goto LABEL_28;
    }

LABEL_38:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v54 = Strong;
      v55 = *(v0 + 520);
      sub_10049779C(*(v0 + 584), *(v0 + 568), type metadata accessor for SDAirDropDiscoveredEndpoint);
      v56 = swift_getEnumCaseMultiPayload();
      v57 = *(v0 + 568);
      v58 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v59 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      if (v56 > 1)
      {
        if (v56 != 2)
        {
          v87 = type metadata accessor for SDAirDropDiscoveredEndpoint;
LABEL_56:
          sub_10049786C(v57, v87);
          goto LABEL_57;
        }

        v58 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v59 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v66 = (v0 + 432);
        v65 = (v0 + 440);
        v67 = 28;
      }

      else
      {
        if (!v56)
        {
          sub_100497804(v57, *(v0 + 488), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          result = NWEndpoint.nw.getter();
          if (!result)
          {
            goto LABEL_63;
          }

          contact_id = nw_endpoint_get_contact_id();
          swift_unknownObjectRelease();
          v61 = *(v0 + 488);
          if (contact_id)
          {
            v62 = String.init(cString:)();
            v64 = v63;
            sub_10049786C(v61, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
            goto LABEL_48;
          }

          v87 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v57 = *(v0 + 488);
          goto LABEL_56;
        }

        v66 = (v0 + 448);
        v65 = (v0 + 456);
        v67 = 44;
      }

      v68 = *v65;
      v69 = *v66;
      sub_100497804(v57, *v65, v59);
      v70 = (v68 + *(v69 + v67));
      v62 = *v70;
      v64 = v70[1];

      sub_10049786C(v68, v58);
      if (v64)
      {
LABEL_48:
        v71 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
        swift_beginAccess();
        sub_1002A9938(v54 + v71, v0 + 184);
        v72 = *(v0 + 208);
        v73 = *(v0 + 216);
        sub_10002CDC0((v0 + 184), v72);
        v74 = (*(v73 + 104))(v62, v64, v72, v73);

        sub_10000C60C((v0 + 184));
        if (v74)
        {
          if (qword_1009738C0 != -1)
          {
            swift_once();
          }

          v75 = *(v0 + 584);
          v76 = *(v0 + 560);
          v77 = type metadata accessor for Logger();
          sub_10000C4AC(v77, qword_10097F240);
          sub_10049779C(v75, v76, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();
          v80 = os_log_type_enabled(v78, v79);
          v81 = *(v0 + 560);
          if (v80)
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v115 = v83;
            *v82 = 136315138;
            v102 = sub_10032DA30();
            v85 = v84;
            sub_10049786C(v81, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v86 = sub_10000C4E4(v102, v85, &v115);

            *(v82 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v78, v79, "endpoint.isConnectable is false. Treating endpoint as connectable due to delegate: %s", v82, 0xCu);
            sub_10000C60C(v83);

            swift_unknownObjectRelease();
            goto LABEL_28;
          }

          swift_unknownObjectRelease();

          v34 = type metadata accessor for SDAirDropDiscoveredEndpoint;
          v14 = v81;
LABEL_27:
          sub_10049786C(v14, v34);
LABEL_28:
          v35 = *(v0 + 584);
          v36 = *(v0 + 520);
          v37 = *(v0 + 424);
          *(swift_task_alloc() + 16) = v35;
          sub_1002CC594(sub_100498518, &_swiftEmptySetSingleton, v37);

          v38 = (*v112)(v37, 1, v36);
          v39 = *(v0 + 584);
          if (v38 == 1)
          {
            v40 = *(v0 + 544);
            v41 = *(v0 + 536);
            sub_100005508(*(v0 + 424), &qword_1009763E0, &qword_1007F95D0);
            sub_10049779C(v39, v41, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_10046DE64(v40, v41);
            v42 = (v0 + 544);
          }

          else
          {
            sub_100497804(*(v0 + 424), *(v0 + 552), type metadata accessor for SDAirDropDiscoveredEndpoint);
            v43 = sub_10032FEAC();
            v44 = sub_10032FEAC();
            v45 = *(v0 + 584);
            if (v44 >= v43)
            {
              v51 = *(v0 + 544);
              v52 = *(v0 + 536);
              sub_10049779C(*(v0 + 584), v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v51, v52);
              v50 = v51;
            }

            else
            {
              v46 = *(v0 + 552);
              v47 = *(v0 + 544);
              v48 = *(v0 + 536);
              v49 = *(v0 + 416);
              sub_10049779C(v46, v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v47, v48);
              sub_10049786C(v47, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10036E788(v46, v49);
              sub_100005508(v49, &qword_1009763E0, &qword_1007F95D0);
              sub_10049779C(v45, v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
              sub_10046DE64(v47, v48);
              v50 = v47;
            }

            sub_10049786C(v50, type metadata accessor for SDAirDropDiscoveredEndpoint);
            v42 = (v0 + 552);
          }

          sub_10049786C(*v42, type metadata accessor for SDAirDropDiscoveredEndpoint);
          goto LABEL_35;
        }
      }

LABEL_57:
      swift_unknownObjectRelease();
    }

LABEL_35:
    v7 = v114;
    v6 &= v6 - 1;
    result = sub_10049786C(*(v0 + 584), type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_100490B08(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_100490BB8, v4, 0);
}

uint64_t sub_100490BB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v6 = swift_allocObject();
  v0[7] = v6;
  swift_unknownObjectWeakInit();
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v2;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_10028088C(&qword_10097F358, &qword_1008050E8);
  *v9 = v0;
  v9[1] = sub_100490D38;
  v11 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v1, v5, 0xD000000000000024, 0x8000000100791D80, sub_100498538, v7, v10);
}