uint64_t sub_10058131C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      sub_100577CA0(v19, a4 & 1);
      v23 = *a5;
      v14 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v20 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      sub_1002D2190();
      v14 = v22;
    }
  }

  v25 = *a5;
  if (v20)
  {
    v26 = (v25[7] + 16 * v14);
    v27 = *v26;
    *v26 = a1;
    v26[1] = a7;

    return swift_unknownObjectRelease();
  }

  v25[(v14 >> 6) + 8] |= 1 << v14;
  v29 = (v25[6] + 16 * v14);
  *v29 = a2;
  v29[1] = a3;
  v30 = (v25[7] + 16 * v14);
  *v30 = a1;
  v30[1] = a7;
  v31 = v25[2];
  v18 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v32;
}

uint64_t sub_1005814F4(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_10057D72C(sub_1005815BC, v4, a1, a2);
}

uint64_t sub_10058154C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975018, &qword_1007F83C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100581638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005816A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100581708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100581770(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1005818AC()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100581914(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100581938, 0, 0);
}

uint64_t sub_100581938()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100581A60;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_100983CD8, &unk_10080B100);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10034B0A4;
  v0[13] = &unk_1008E7C18;
  v0[14] = v3;
  [v1 provisionPseudonymWithProperties:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100581A60()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_100581BA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(sub_100581BC4, 0, 0);
}

uint64_t sub_100581BC4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_100581CEC;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B600, &unk_1007FEA10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003D59F8;
  v0[13] = &unk_1008E7BF0;
  v0[14] = v3;
  [v1 revokePseudonym:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100581CEC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v0 + 160);
    v3 = *(v1 + 8);
    v5 = *v0;
  }

  return v3(v4);
}

id sub_100581E08(double a1)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 pseudonymPropertiesWithFeatureID:v4 expiryDurationInSeconds:a1];

  return v5;
}

void sub_100581EB8()
{
  if (!qword_100983D50)
  {
    type metadata accessor for SFAirDrop.ContactInfo.Handle();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100983D50);
    }
  }
}

uint64_t sub_100581F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100582078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1005821CC()
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v0 <= 0x3F)
  {
    sub_1002F2B90(319, qword_1009771F0);
    if (v1 <= 0x3F)
    {
      sub_100581EB8();
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, &unk_100978AB0);
        if (v3 <= 0x3F)
        {
          sub_1002F2B90(319, &unk_100983D58);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

Swift::Int sub_1005822C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005823E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100582524@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v17 = a1(0);
  v18 = (v2 + *(v17 + 24));
  if (v18[1])
  {
    v19 = v17;
    v20 = *v18;
    sub_10000FF90(v2 + *(v17 + 28), v8, &qword_100983CE0, &qword_10080B110);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100005508(v8, &qword_100983CE0, &qword_10080B110);
    }

    else
    {
      (*(v10 + 32))(v16, v8, v9);
      v21 = (v2 + *(v19 + 32));
      v22 = v21[1];
      if (v22 >> 60 != 15)
      {
        v31[1] = v20;
        v27 = *v21;
        v28 = (v2 + *(v19 + 20));
        v29 = *v28;
        v30 = v28[1];
        (*(v10 + 16))(v14, v16, v9);

        sub_1002A9924(v27, v22);

        SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();
        (*(v10 + 8))(v16, v9);
        v23 = &enum case for SFAirDrop.ContactRequest.contact(_:);
        goto LABEL_7;
      }

      (*(v10 + 8))(v16, v9);
    }
  }

  v23 = &enum case for SFAirDrop.ContactRequest.notNeeded(_:);
LABEL_7:
  v24 = *v23;
  v25 = type metadata accessor for SFAirDrop.ContactRequest();
  return (*(*(v25 - 8) + 104))(a2, v24, v25);
}

unint64_t sub_10058280C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15ExchangeRequestVMa(0);
  v12 = (v1 + v11[5]);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v15 = (v1 + v11[6]);
    v14 = v15[1];
    if (!v14)
    {
      goto LABEL_7;
    }

    v13 = *v15;
    v16 = v11;
    v17 = v15[1];

    v11 = v16;
  }

  sub_10000FF90(v1 + v11[7], v5, &qword_100983CE0, &qword_10080B110);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v28 = 0;
    v29 = 0xE000000000000000;

    _StringGuts.grow(_:)(45);

    v28 = 0xD000000000000020;
    v29 = 0x8000000100795A90;
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 544034336;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v13;
    v23._object = v14;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 23328;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    sub_100584908(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 93;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v20 = v28;
    (*(v7 + 8))(v10, v6);
    return v20;
  }

  sub_100005508(v5, &qword_100983CE0, &qword_10080B110);
LABEL_7:
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v28 = 0xD000000000000020;
  v29 = 0x8000000100795A90;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x746E6F63206F6E20;
  v19._object = 0xEB00000000746361;
  String.append(_:)(v19);
  return v28;
}

unint64_t sub_100582C08()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s16ExchangeResponseVMa(0);
  v12 = (v1 + v11[5]);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v15 = (v1 + v11[6]);
    v14 = v15[1];
    if (!v14)
    {
      goto LABEL_7;
    }

    v13 = *v15;
    v16 = v11;
    v17 = v15[1];

    v11 = v16;
  }

  sub_10000FF90(v1 + v11[7], v5, &qword_100983CE0, &qword_10080B110);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v28 = 0;
    v29 = 0xE000000000000000;

    _StringGuts.grow(_:)(46);

    v28 = 0xD000000000000021;
    v29 = 0x8000000100795AC0;
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 544034336;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v13;
    v23._object = v14;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 23328;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    sub_100584908(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 93;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v20 = v28;
    (*(v7 + 8))(v10, v6);
    return v20;
  }

  sub_100005508(v5, &qword_100983CE0, &qword_10080B110);
LABEL_7:
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v28 = 0xD000000000000021;
  v29 = 0x8000000100795AC0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x746E6F63206F6E20;
  v19._object = 0xEB00000000746361;
  String.append(_:)(v19);
  return v28;
}

unint64_t sub_100583018@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100584C9C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100583048@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100584C9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100583070(uint64_t a1)
{
  v2 = sub_100584844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005830AC(uint64_t a1)
{
  v2 = sub_100584844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005830E8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100983E50, &unk_10080B240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100584844();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35[0]) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = _s15ExchangeRequestVMa(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v35[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v35[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v11[7];
    LOBYTE(v35[0]) = 3;
    type metadata accessor for SFAirDrop.ContactInfo.Handle();
    sub_100584908(&qword_100983E58, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v3 + v11[8]);
    v20 = v19[1];
    v40 = *v19;
    v41 = v20;
    v43 = 4;
    sub_1002A9924(v40, v20);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v40, v41);
    v21 = v3 + v11[9];
    v22 = *(v21 + 48);
    v23 = *(v21 + 16);
    v36 = *(v21 + 32);
    v37 = v22;
    v24 = *(v21 + 48);
    v38 = *(v21 + 64);
    v25 = *(v21 + 16);
    v35[0] = *v21;
    v35[1] = v25;
    v31 = v36;
    v32 = v24;
    v33 = *(v21 + 64);
    v39 = *(v21 + 80);
    v34 = *(v21 + 80);
    v29 = v35[0];
    v30 = v23;
    v42 = 5;
    sub_10000FF90(v35, v27, &qword_10097B208, &qword_1007FE5A8);
    sub_100567494();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v28 = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_100005508(v27, &qword_10097B208, &qword_1007FE5A8);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005834A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10028088C(&qword_100983E38, &qword_10080B238);
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v37);
  v12 = &v32 - v11;
  v13 = _s15ExchangeRequestVMa(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100584844();
  v38 = v12;
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000C60C(a1);
  }

  v39 = v6;
  v19 = v35;
  LOBYTE(v40) = 0;
  sub_100584908(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v20 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 32))(v16, v20, v7);
  LOBYTE(v40) = 1;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = &v16[v13[5]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v40) = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = &v16[v13[6]];
  *v25 = v24;
  v25[1] = v26;
  type metadata accessor for SFAirDrop.ContactInfo.Handle();
  LOBYTE(v40) = 3;
  sub_100584908(&qword_100983E48, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
  v27 = v39;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100584898(v27, &v16[v13[7]]);
  v46 = 4;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v16[v13[8]] = v40;
  v46 = 5;
  sub_100566FA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v38, v37);
  v28 = &v16[v13[9]];
  v29 = v43;
  *(v28 + 2) = v42;
  *(v28 + 3) = v29;
  *(v28 + 4) = v44;
  *(v28 + 10) = v45;
  v30 = v41;
  *v28 = v40;
  *(v28 + 1) = v30;
  sub_1005849A4(v16, v33, _s15ExchangeRequestVMa);
  sub_10000C60C(a1);
  return sub_100584A0C(v16, _s15ExchangeRequestVMa);
}

uint64_t sub_100583AEC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100583BE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100584CE8(*a1);
  *a2 = result;
  return result;
}

void sub_100583C14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x726566736E617254;
  v5 = 0xE600000000000000;
  v6 = 0x656C646E6148;
  v7 = 0x7461446472614356;
  v8 = 0x80000001007886E0;
  if (v2 == 4)
  {
    v8 = 0xE900000000000061;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6D614E6E65766947;
  if (v2 != 1)
  {
    v10 = 0x656D614E6C6C7546;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100583CDC()
{
  v1 = *v0;
  v2 = 0x726566736E617254;
  v3 = 0x656C646E6148;
  v4 = 0x7461446472614356;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6E65766947;
  if (v1 != 1)
  {
    v5 = 0x656D614E6C6C7546;
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

unint64_t sub_100583DA0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100584CE8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100583DC8(uint64_t a1)
{
  v2 = sub_100584950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100583E04(uint64_t a1)
{
  v2 = sub_100584950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100583E40(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100983E70, &qword_10080B258);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100584950();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35[0]) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100584908(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = _s16ExchangeResponseVMa(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v35[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v35[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v11[7];
    LOBYTE(v35[0]) = 3;
    type metadata accessor for SFAirDrop.ContactInfo.Handle();
    sub_100584908(&qword_100983E58, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v3 + v11[8]);
    v20 = v19[1];
    v40 = *v19;
    v41 = v20;
    v43 = 4;
    sub_1002A9924(v40, v20);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v40, v41);
    v21 = v3 + v11[9];
    v22 = *(v21 + 48);
    v23 = *(v21 + 16);
    v36 = *(v21 + 32);
    v37 = v22;
    v24 = *(v21 + 48);
    v38 = *(v21 + 64);
    v25 = *(v21 + 16);
    v35[0] = *v21;
    v35[1] = v25;
    v31 = v36;
    v32 = v24;
    v33 = *(v21 + 64);
    v39 = *(v21 + 80);
    v34 = *(v21 + 80);
    v29 = v35[0];
    v30 = v23;
    v42 = 5;
    sub_10000FF90(v35, v27, &qword_10097B208, &qword_1007FE5A8);
    sub_100567494();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v28 = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_100005508(v27, &qword_10097B208, &qword_1007FE5A8);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100584200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10028088C(&qword_100983E60, &qword_10080B250);
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v37);
  v12 = &v32 - v11;
  v13 = _s16ExchangeResponseVMa(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100584950();
  v38 = v12;
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000C60C(a1);
  }

  v39 = v6;
  v19 = v35;
  LOBYTE(v40) = 0;
  sub_100584908(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v20 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 32))(v16, v20, v7);
  LOBYTE(v40) = 1;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = &v16[v13[5]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v40) = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = &v16[v13[6]];
  *v25 = v24;
  v25[1] = v26;
  type metadata accessor for SFAirDrop.ContactInfo.Handle();
  LOBYTE(v40) = 3;
  sub_100584908(&qword_100983E48, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
  v27 = v39;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100584898(v27, &v16[v13[7]]);
  v46 = 4;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v16[v13[8]] = v40;
  v46 = 5;
  sub_100566FA8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v38, v37);
  v28 = &v16[v13[9]];
  v29 = v43;
  *(v28 + 2) = v42;
  *(v28 + 3) = v29;
  *(v28 + 4) = v44;
  *(v28 + 10) = v45;
  v30 = v41;
  *v28 = v40;
  *(v28 + 1) = v30;
  sub_1005849A4(v16, v33, _s16ExchangeResponseVMa);
  sub_10000C60C(a1);
  return sub_100584A0C(v16, _s16ExchangeResponseVMa);
}

unint64_t sub_100584844()
{
  result = qword_100983E40;
  if (!qword_100983E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E40);
  }

  return result;
}

uint64_t sub_100584898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100983CE0, &qword_10080B110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100584908(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100584950()
{
  result = qword_100983E68;
  if (!qword_100983E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E68);
  }

  return result;
}

uint64_t sub_1005849A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100584A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100584A90()
{
  result = qword_100983E78;
  if (!qword_100983E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E78);
  }

  return result;
}

unint64_t sub_100584AE8()
{
  result = qword_100983E80;
  if (!qword_100983E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E80);
  }

  return result;
}

unint64_t sub_100584B40()
{
  result = qword_100983E88;
  if (!qword_100983E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E88);
  }

  return result;
}

unint64_t sub_100584B98()
{
  result = qword_100983E90;
  if (!qword_100983E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E90);
  }

  return result;
}

unint64_t sub_100584BF0()
{
  result = qword_100983E98;
  if (!qword_100983E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983E98);
  }

  return result;
}

unint64_t sub_100584C48()
{
  result = qword_100983EA0;
  if (!qword_100983EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983EA0);
  }

  return result;
}

unint64_t sub_100584C9C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7D00, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100584CE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7DB0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100584D54(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = type metadata accessor for SFPlatform();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v2[21] = v12;
  v13 = *(v12 - 8);
  v2[22] = v13;
  v14 = *(v13 + 64) + 15;
  v2[23] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[24] = v15;
  v16 = *(v15 - 8);
  v2[25] = v16;
  v17 = *(v16 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v2[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_100584FCC, v18, 0);
}

uint64_t sub_100584FCC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[11];
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.type.getter();
  v8 = *(v3 + 8);
  v0[29] = v8;
  v0[30] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = (*(v5 + 88))(v4, v6);
  if (v9 == enum case for SFAirDrop.TransferType.linksWithExchange(_:))
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    goto LABEL_3;
  }

  if (v9 == enum case for SFAirDrop.TransferType.filesWithExchange(_:))
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    goto LABEL_8;
  }

  if (v9 == enum case for SFAirDrop.TransferType.exchange(_:))
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    if (qword_100973A88 != -1)
    {
      swift_once();
    }

    v19 = qword_100983ED0;
    goto LABEL_14;
  }

  if (v9 == enum case for SFAirDrop.TransferType.links(_:))
  {
LABEL_3:
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];
    static SFPlatform.watchOS.getter();
    v13 = static SFPlatform.isPlatform(_:)();
    (*(v11 + 8))(v10, v12);
    if ((v13 & 1) == 0)
    {
      if (qword_100973A80 != -1)
      {
        goto LABEL_36;
      }

      goto LABEL_16;
    }

LABEL_9:
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  if (v9 != enum case for SFAirDrop.TransferType.files(_:))
  {
    if (v9 != enum case for SFAirDrop.TransferType.peerPayment(_:))
    {
      v42 = v0[22];
      v41 = v0[23];
      v43 = v0[21];
      v0[9] = _swiftEmptyArrayStorage;
      (*(v42 + 8))(v41, v43);
      goto LABEL_18;
    }

    if (qword_100973A98 != -1)
    {
      swift_once();
    }

    v19 = qword_100983EE0;
LABEL_14:
    v0[9] = v19;

    goto LABEL_18;
  }

LABEL_8:
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  static SFPlatform.watchOS.getter();
  v17 = static SFPlatform.isPlatform(_:)();
  (*(v15 + 8))(v14, v16);
  if (v17)
  {
    goto LABEL_9;
  }

  if (qword_100973A78 != -1)
  {
    goto LABEL_36;
  }

LABEL_16:
  while (1)
  {

LABEL_17:
    v0[9] = v18;
LABEL_18:
    if (qword_100973A90 != -1)
    {
      swift_once();
    }

    sub_100403468(v20);
    v21 = v0[9];
    v0[31] = v21;
    v22 = v21[2];
    v0[32] = v22;
    if (!v22)
    {
      break;
    }

    v0[33] = 0;
    if (v21[2])
    {
      v23 = v0[26];
      v24 = v0[11];
      v25 = v21[4];
      v0[34] = v25;
      v26 = v21[5];
      v0[35] = v26;
      v27 = *(v26 + 40);
      v0[5] = v25;
      v0[6] = v26;
      sub_10002F604(v0 + 2);
      v27(v25, v26);
      SFAirDropReceive.Transfer.askRequest.getter();
      v28 = *(v26 + 48);
      v44 = (v28 + *v28);
      v29 = v28[1];
      v30 = swift_task_alloc();
      v0[36] = v30;
      *v30 = v0;
      v30[1] = sub_100585518;
      v31 = v0[26];

      return v44(v31, v25, v26);
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  v33 = v0[10];

  *(v33 + 32) = 0;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  v35 = v0[26];
  v34 = v0[27];
  v36 = v0[23];
  v37 = v0[20];
  v38 = v0[17];
  v39 = v0[14];

  v40 = v0[1];

  return v40();
}

uint64_t sub_100585518(char a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 296) = a1;

  v4(v6, v7);

  return _swift_task_switch(sub_10058569C, v5, 0);
}

uint64_t sub_10058569C()
{
  v53 = v0;
  if (*(v0 + 296))
  {
    v1 = *(v0 + 248);

    if (qword_100973A70 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 88);
    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100983EA8);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 128);
      v10 = *(v0 + 136);
      v11 = *(v0 + 112);
      v48 = *(v0 + 120);
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v49 = *(v0 + 272);
      v14 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v14 = 136315394;
      v50 = v8;
      SFAirDropReceive.Transfer.id.getter();
      sub_1002891F4();
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      (*(v9 + 8))(v10, v48);
      v18 = sub_10000C4E4(v15, v17, &v52);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v0 + 56) = v49;
      sub_10028088C(&qword_100976920, &qword_100808E90);
      v19 = String.init<A>(describing:)();
      v21 = sub_10000C4E4(v19, v20, &v52);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v50, "Transfer %s using handler %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v28 = *(v0 + 128);
      v27 = *(v0 + 136);
      v29 = *(v0 + 120);

      (*(v28 + 8))(v27, v29);
    }

    sub_1002A9938(v0 + 16, *(v0 + 80));
    sub_10000C60C((v0 + 16));
    goto LABEL_10;
  }

  v22 = *(v0 + 256);
  v23 = *(v0 + 264) + 1;
  result = sub_10000C60C((v0 + 16));
  if (v23 == v22)
  {
    v25 = *(v0 + 248);
    v26 = *(v0 + 80);

    *(v26 + 32) = 0;
    *v26 = 0u;
    *(v26 + 16) = 0u;
LABEL_10:
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 136);
    v35 = *(v0 + 112);

    v36 = *(v0 + 8);

    return v36();
  }

  *(v0 + 264) = v23;
  v37 = *(v0 + 248);
  if (v23 >= *(v37 + 16))
  {
    __break(1u);
  }

  else
  {
    v38 = *(v0 + 208);
    v39 = *(v0 + 88);
    v40 = v37 + 16 * v23;
    v41 = *(v40 + 32);
    *(v0 + 272) = v41;
    v42 = *(v40 + 40);
    *(v0 + 280) = v42;
    v43 = *(v42 + 40);
    *(v0 + 40) = v41;
    *(v0 + 48) = v42;
    sub_10002F604((v0 + 16));
    v43(v41, v42);
    SFAirDropReceive.Transfer.askRequest.getter();
    v44 = *(v42 + 48);
    v51 = (v44 + *v44);
    v45 = v44[1];
    v46 = swift_task_alloc();
    *(v0 + 288) = v46;
    *v46 = v0;
    v46[1] = sub_100585518;
    v47 = *(v0 + 208);

    return v51(v47, v41, v42);
  }

  return result;
}

uint64_t sub_100585B4C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983EA8);
  v1 = sub_10000C4AC(v0, qword_100983EA8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100585C14()
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B510;
  *(v0 + 32) = type metadata accessor for SDAirDropContentHandlerCalendarEvents();
  *(v0 + 40) = &off_1008E6578;
  *(v0 + 48) = type metadata accessor for SDAirDropContentHandlerContacts();
  *(v0 + 56) = &off_1008E64A0;
  *(v0 + 64) = type metadata accessor for SDAirDropContentHandlerNotes();
  *(v0 + 72) = &off_1008E09F0;
  *(v0 + 80) = type metadata accessor for SDAirDropContentHandlerPhotos();
  *(v0 + 88) = &off_1008ED238;
  *(v0 + 96) = type metadata accessor for SDAirDropContentHandlerProfiles();
  *(v0 + 104) = &off_1008ED6A0;
  *(v0 + 112) = type metadata accessor for SDAirDropContentHandlerVoiceMails();
  *(v0 + 120) = &off_1008E31E8;
  *(v0 + 128) = type metadata accessor for SDAirDropContentHandlerVoiceMemos();
  *(v0 + 136) = &off_1008DAD40;
  *(v0 + 144) = type metadata accessor for SDAirDropContentHandlerWalletItems();
  *(v0 + 152) = &off_1008E57C8;
  *(v0 + 160) = type metadata accessor for SDAirDropContentHandlerPDFs();
  *(v0 + 168) = &off_1008E5E90;
  *(v0 + 176) = type metadata accessor for SDAirDropContentHandleriBooksItems();
  *(v0 + 184) = &off_1008D9000;
  *(v0 + 192) = type metadata accessor for SDAirDropContentHandlerIPA();
  *(v0 + 200) = &off_1008DEA88;
  *(v0 + 208) = type metadata accessor for SDAirDropContentHandlerPlaygroundItems();
  *(v0 + 216) = &off_1008E2620;
  result = type metadata accessor for SDAirDropContentHandlerGenericFiles();
  *(v0 + 224) = result;
  *(v0 + 232) = &off_1008E0860;
  qword_100983EC0 = v0;
  return result;
}

uint64_t sub_100585D6C()
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B520;
  *(v0 + 32) = type metadata accessor for SDAirDropContentHandlerCredentialLinks();
  *(v0 + 40) = &off_1008E41C0;
  *(v0 + 48) = type metadata accessor for SDAirDropContentHandlerSharediCloudDocumentsLinks();
  *(v0 + 56) = &off_1008E9288;
  *(v0 + 64) = type metadata accessor for SDAirDropContentHandlerKeynoteLiveLinks();
  *(v0 + 72) = &off_1008E02C0;
  *(v0 + 80) = type metadata accessor for SDAirDropContentHandlerFindMyFriendsLinks();
  *(v0 + 88) = &off_1008DC180;
  *(v0 + 96) = type metadata accessor for SDAirDropContentHandleriWorkLinks();
  *(v0 + 104) = &off_1008DFAD8;
  *(v0 + 112) = type metadata accessor for SDAirDropContentHandlerAppStoreLinks();
  *(v0 + 120) = &off_1008DC970;
  *(v0 + 128) = type metadata accessor for SDAirDropContentHandlerPhoneLinks();
  *(v0 + 136) = &off_1008E56F0;
  *(v0 + 144) = type metadata accessor for SDAirDropContentHandleriBooksLinks();
  *(v0 + 152) = &off_1008EE418;
  *(v0 + 160) = type metadata accessor for SDAirDropContentHandlerPodcastsLinks();
  *(v0 + 168) = &off_1008DDCD8;
  *(v0 + 176) = type metadata accessor for SDAirDropContentHandleriTunesULinks();
  *(v0 + 184) = &off_1008DEC88;
  *(v0 + 192) = type metadata accessor for SDAirDropContentHandleriTunesStoreLinks();
  *(v0 + 200) = &off_1008ED7B8;
  *(v0 + 208) = type metadata accessor for SDAirDropContentHandleriLifeLinks();
  *(v0 + 216) = &off_1008EC950;
  *(v0 + 224) = type metadata accessor for SDAirDropContentHandlerMapsLinks();
  *(v0 + 232) = &off_1008DC368;
  *(v0 + 240) = type metadata accessor for SDAirDropContentHandlerNewsLinks();
  *(v0 + 248) = &off_1008EA370;
  *(v0 + 256) = type metadata accessor for SDAirDropContentHandleriCloudFamilyLinks();
  *(v0 + 264) = &off_1008DBA40;
  *(v0 + 272) = type metadata accessor for SDAirDropContentHandlerGenericLinks();
  *(v0 + 280) = &off_1008DE920;
  result = type metadata accessor for SDAirDropContentHandlerWebLinks();
  *(v0 + 288) = result;
  *(v0 + 296) = &off_1008DB4E8;
  qword_100983EC8 = v0;
  return result;
}

uint64_t sub_100585F3C()
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007F8830;
  *(v0 + 32) = type metadata accessor for SDAirDropContentHandlerUnsupportedLinkType();
  *(v0 + 40) = &off_1008EC8B0;
  *(v0 + 48) = type metadata accessor for SDAirDropContentHandlerUnsupportedFileType();
  *(v0 + 56) = &off_1008E3600;
  result = type metadata accessor for SDAirDropContentHandlerMixedTypes();
  *(v0 + 64) = result;
  *(v0 + 72) = &off_1008DBFF0;
  qword_100983ED8 = v0;
  return result;
}

uint64_t sub_100585FF4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  sub_10028088C(&qword_100974EE8, &qword_10080B560);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F5670;
  result = a2(0);
  *(v7 + 32) = result;
  *(v7 + 40) = a3;
  *a4 = v7;
  return result;
}

uint64_t sub_1005860BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v11 = static SFPlatform.isPlatform(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    return (*(a3 + 56))(a1, 1, a2, a3);
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = SFLocalizedStringForKey();

  if (v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = (*(a3 + 56))(a1, 0, a2, a3);
  v17 = v16;
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007F5670;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100026764();
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = static String.localizedStringWithFormat(_:_:)();

  return v19;
}

uint64_t sub_1005862E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFPlatform();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = SFAirDropReceive.AskRequest.senderIsMe.getter();
  static SFPlatform.macOS.getter();
  v12 = static SFPlatform.isPlatform(_:)();
  (*(v7 + 8))(v10, v6);
  v13 = *(a3 + 56);
  if ((v11 & 1) == 0)
  {
    if (v12)
    {
      v19 = v13(a1, 0, a2, a3);
      v21 = v20;
      v22 = String._bridgeToObjectiveC()();
      v23 = SFLocalizedStringForKey();

      if (v23)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1007F8A70;
      *(v31 + 56) = &type metadata for String;
      v32 = sub_100026764();
      *(v31 + 64) = v32;
      *(v31 + 32) = v19;
      *(v31 + 40) = v21;
      v33 = SFAirDropReceive.AskRequest.senderDisplayName.getter();
      *(v31 + 96) = &type metadata for String;
      *(v31 + 104) = v32;
      *(v31 + 72) = v33;
      *(v31 + 80) = v34;
      v24 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_15;
    }

    v25 = v13(a1, 1, a2, a3);
    v27 = v26;
    v28 = String._bridgeToObjectiveC()();
    v29 = SFLocalizedStringForKey();

    if (v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1007F8A70;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_100026764();
    *(v35 + 64) = v36;
    *(v35 + 32) = v25;
    *(v35 + 40) = v27;
    v37 = SFAirDropReceive.AskRequest.senderDisplayName.getter();
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 72) = v37;
    *(v35 + 80) = v38;
    v24 = static String.localizedStringWithFormat(_:_:)();
LABEL_14:

LABEL_15:

    return v24;
  }

  if (v12)
  {
    v14 = v13(a1, 0, a2, a3);
    v16 = v15;
    v17 = String._bridgeToObjectiveC()();
    v18 = SFLocalizedStringForKey();

    if (v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1007F5670;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100026764();
    *(v30 + 32) = v14;
    *(v30 + 40) = v16;
    v24 = static String.localizedStringWithFormat(_:_:)();
    goto LABEL_14;
  }

  return v13(a1, 1, a2, a3);
}

uint64_t sub_100586750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a5;
  v6[21] = v5;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  v8 = *(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8);
  v6[22] = v8;
  v6[23] = *(v8 + 64);
  v6[24] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&qword_10097D430, &unk_100808E50) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v6[27] = v11;
  v12 = *(v11 - 8);
  v6[28] = v12;
  v13 = *(v12 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v6[31] = v14;
  v15 = *(v14 - 8);
  v6[32] = v15;
  v16 = *(v15 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6[36] = v17;
  v18 = *(v17 - 8);
  v6[37] = v18;
  v19 = *(v18 + 64) + 15;
  v6[38] = swift_task_alloc();
  v20 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v6[39] = v20;
  v21 = *(v20 - 8);
  v6[40] = v21;
  v22 = *(v21 + 64) + 15;
  v6[41] = swift_task_alloc();
  v23 = type metadata accessor for SFAirDropReceive.AskRequest();
  v6[42] = v23;
  v24 = *(v23 - 8);
  v6[43] = v24;
  v25 = *(v24 + 64) + 15;
  v6[44] = swift_task_alloc();
  v26 = *(a4 - 8);
  v6[45] = v26;
  v27 = *(v26 + 64) + 15;
  v6[46] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v6[47] = v28;
  v29 = *(v28 - 8);
  v6[48] = v29;
  v30 = *(v29 + 64) + 15;
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v31 = type metadata accessor for SFAirDrop.DeclineAction();
  v6[54] = v31;
  v32 = *(v31 - 8);
  v6[55] = v32;
  v33 = *(v32 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v34 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v6[58] = v34;
  v35 = *(v34 - 8);
  v6[59] = v35;
  v6[60] = *(v35 + 64);
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v36 = static AirDropActor.shared;
  v6[63] = static AirDropActor.shared;

  return _swift_task_switch(sub_100586C94, v36, 0);
}

void sub_100586C94()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 288);
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v8 = 0xE700000000000000;
    v5 = 0x656E696C636544;
  }

  v10 = *(v0 + 488);
  v9 = *(v0 + 496);
  v12 = *(v0 + 472);
  v11 = *(v0 + 480);
  v13 = *(v0 + 464);
  v14 = *(v0 + 424);
  v15 = *(v0 + 376);
  v16 = *(v0 + 384);
  v17 = *(v0 + 360);
  v183 = *(v0 + 368);
  v182 = *(v0 + 168);
  v178 = *(v0 + 456);
  v179 = *(v0 + 152);
  *v14 = v5;
  v14[1] = v8;
  v166 = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v169 = *(v16 + 104);
  v169(v14);
  v176 = *(v12 + 16);
  v176(v10, v9, v13);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v186 = *(v12 + 80);
  v19 = swift_allocObject();
  v173 = v18;
  v177 = *(v12 + 32);
  v177(v19 + v18, v10, v13);

  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  (*(v17 + 16))(v183, v182, v179);
  sub_10028088C(&qword_100983FB0, &qword_10080B5F8);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 496);
    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v23 = *(v0 + 336);
    v24 = *(v0 + 136);
    sub_1000121F8((v0 + 56), v0 + 16);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v25);
    SFAirDropReceive.Transfer.askRequest.getter();
    (*(v26 + 8))(v21, v20, v25, v26);
    (*(v22 + 8))(v21, v23);
    sub_10000C60C((v0 + 16));
  }

  else
  {
    v27 = *(v0 + 136);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100005508(v0 + 56, &qword_100983FB8, &qword_10080B600);
    if (SFAirDropReceive.Transfer.isPreviewSensitive.getter())
    {
      v28 = sub_10049F1E0();
      if (v30 == 2)
      {
        sub_1003C3F0C(v28, v29, 2u);
        v31 = String._bridgeToObjectiveC()();
        v32 = SFLocalizedStringForKey();

        if (v32)
        {
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
        }

        else
        {
          v35 = 0xE800000000000000;
          v33 = 0x65756E69746E6F43;
        }

        v53 = *(v0 + 408);
        v52 = *(v0 + 416);
        v54 = *(v0 + 376);
        v55 = *(v0 + 384);
        *v53 = v33;
        v53[1] = v35;
        (v169)(v53, v166, v54);
        (*(v55 + 32))(v52, v53, v54);
        v50 = 0xEA00000000007974;
        v51 = 0x656661536D6D6F43;
      }

      else
      {
        sub_1003C3F0C(v28, v29, v30);
        v41 = String._bridgeToObjectiveC()();
        v42 = SFLocalizedStringForKey();

        if (v42)
        {
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v45 = 0xE400000000000000;
          v43 = 2003789907;
        }

        v56 = *(v0 + 416);
        v57 = *(v0 + 400);
        v58 = *(v0 + 376);
        v59 = *(v0 + 384);
        *v57 = 0x6C6C69662E657965;
        v57[1] = 0xE800000000000000;
        v57[2] = v43;
        v57[3] = v45;
        (v169)(v57, enum case for SFAirDrop.ButtonConfiguration.symbolText(_:), v58);
        (*(v59 + 32))(v56, v57, v58);
        v50 = 0x8000000100795DF0;
        v51 = 0xD000000000000010;
      }
    }

    else
    {
      v36 = String._bridgeToObjectiveC()();
      v37 = SFLocalizedStringForKey();

      if (v37)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE600000000000000;
        v38 = 0x747065636341;
      }

      v46 = *(v0 + 416);
      v48 = *(v0 + 384);
      v47 = *(v0 + 392);
      v49 = *(v0 + 376);
      *v47 = v38;
      v47[1] = v40;
      (v169)(v47, v166, v49);
      (*(v48 + 32))(v46, v47, v49);
      v50 = 0xE700000000000000;
      v51 = 0x72616C75676552;
    }

    v167 = v51;
    v162 = *(v0 + 488);
    v164 = *(v0 + 496);
    v60 = *(v0 + 464);
    v62 = *(v0 + 416);
    v61 = *(v0 + 424);
    v64 = *(v0 + 376);
    v63 = *(v0 + 384);
    v65 = *(v0 + 320);
    v171 = *(v0 + 328);
    v180 = *(v0 + 312);
    v160 = *(v0 + 304);
    v66 = *(v0 + 296);
    v158 = *(v0 + 288);
    v184 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
    v67._countAndFlagsBits = v167;
    v67._object = v50;
    String.append(_:)(v67);

    (*(v63 + 16))(v61, v62, v64);
    (*(v66 + 104))(v160, enum case for SFAirDropReceive.ItemDestination.default(_:), v158);
    v176(v162, v164, v60);
    v68 = swift_allocObject();
    v177(v68 + v173, v162, v60);
    sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
    UUID.init()();
    (*(v65 + 104))(v171, enum case for SFAirDrop.AcceptAction.single<A>(_:), v180);
    sub_10028088C(&qword_100974EA8, &qword_1007F82E8);
    v69 = *(v65 + 72);
    v70 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1007F5670;
    (*(v65 + 32))(v71 + v70, v171, v180);
    (*(v63 + 8))(v62, v64);
  }

  v72 = *(v0 + 280);
  v73 = *(v0 + 240);
  UUID.init()();
  static Date.now.getter();
  v74 = String._bridgeToObjectiveC()();
  v75 = SFLocalizedStringForKey();

  if (v75)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v76 = *(v0 + 352);
  v77 = *(v0 + 136);
  v78 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v80 = *(v0 + 344);
  v79 = *(v0 + 352);
  v81 = *(v0 + 336);
  if (v78)
  {
    v82 = *(v0 + 352);
    sub_10049F300();
    v175 = v83;
    v181 = v84;
    v85 = *(v80 + 8);
    v85(v79, v81);
  }

  else
  {
    v86 = *(v0 + 168);
    v87 = (*(*(v0 + 160) + 80))(*(v0 + 352), 0, *(v0 + 152));
    v89 = v88;
    v85 = *(v80 + 8);
    v85(v79, v81);
    if (v89)
    {
      v175 = v87;
      v181 = v89;
    }

    else
    {
      v90 = *(v0 + 352);
      v91 = *(v0 + 336);
      v93 = *(v0 + 160);
      v92 = *(v0 + 168);
      v94 = *(v0 + 152);
      v95 = *(v0 + 136);
      SFAirDropReceive.Transfer.askRequest.getter();
      v175 = (*(v93 + 56))(v90, 0, v94, v93);
      v181 = v96;
      v85(v90, v91);
    }
  }

  v97 = *(v0 + 352);
  v98 = *(v0 + 336);
  v100 = *(v0 + 160);
  v99 = *(v0 + 168);
  v101 = *(v0 + 152);
  v102 = *(v0 + 136);
  SFAirDropReceive.Transfer.askRequest.getter();
  (*(v100 + 88))(v97, v101, v100);
  v85(v97, v98);
  v103 = String._bridgeToObjectiveC()();
  v104 = SFLocalizedStringForKey();

  if (v104)
  {
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0;
  }

  *(v0 + 112) = v105;
  *(v0 + 120) = v107;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  Optional.tryUnwrap(_:file:line:)();
  v108 = *(v0 + 352);
  v109 = *(v0 + 336);
  v110 = *(v0 + 136);

  v153 = *(v0 + 96);
  v154 = *(v0 + 104);
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007F8A70;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.senderDisplayName.getter();
  v85(v108, v109);
  v112 = String._bridgeToObjectiveC()();

  v113 = SFTruncateAirDropSenderNameForUI();

  v152 = v85;
  if (v113)
  {
    v142 = *(v0 + 504);
    v170 = *(v0 + 496);
    v140 = *(v0 + 488);
    v141 = *(v0 + 480);
    v143 = *(v0 + 472);
    v139 = *(v0 + 464);
    v174 = *(v0 + 456);
    v155 = *(v0 + 448);
    v168 = *(v0 + 440);
    v172 = *(v0 + 432);
    v144 = *(v0 + 424);
    v145 = *(v0 + 416);
    v146 = *(v0 + 408);
    v147 = *(v0 + 400);
    v148 = *(v0 + 392);
    v149 = *(v0 + 368);
    v163 = *(v0 + 352);
    v150 = *(v0 + 328);
    v151 = *(v0 + 304);
    v114 = *(v0 + 280);
    v131 = *(v0 + 336);
    v156 = *(v0 + 272);
    v161 = *(v0 + 264);
    v115 = *(v0 + 248);
    v116 = *(v0 + 256);
    v137 = v115;
    v165 = *(v0 + 240);
    v118 = *(v0 + 216);
    v117 = *(v0 + 224);
    v135 = v117;
    v157 = *(v0 + 232);
    v159 = *(v0 + 208);
    v134 = *(v0 + 192);
    v138 = *(v0 + 184);
    v136 = *(v0 + 176);
    v132 = *(v0 + 200);
    v133 = *(v0 + 144);
    v130 = *(v0 + 136);
    v185 = *(v0 + 128);

    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    *(v111 + 56) = &type metadata for String;
    v122 = sub_100026764();
    *(v111 + 32) = v119;
    *(v111 + 40) = v121;
    *(v111 + 96) = &type metadata for String;
    *(v111 + 104) = v122;
    *(v111 + 64) = v122;
    *(v111 + 72) = v175;
    *(v111 + 80) = v181;
    static String.localizedStringWithFormat(_:_:)();

    (*(v116 + 16))(v156, v114, v115);
    (*(v117 + 16))(v157, v165, v118);
    (*(v168 + 16))(v155, v174, v172);
    UUID.init()();
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.items.getter();
    v152(v163, v131);
    sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
    v123 = sub_10028088C(&qword_10097D440, &qword_100808E60);
    (*(*(v123 - 8) + 56))(v159, 0, 1, v123);
    SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
    v124 = type metadata accessor for TaskPriority();
    (*(*(v124 - 8) + 56))(v132, 1, 1, v124);
    sub_100592C6C(v133, v134);
    v176(v140, v170, v139);
    v125 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor);
    v126 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v142;
    *(v127 + 24) = v125;
    sub_100592CDC(v134, v127 + v126);
    v177(v127 + ((v138 + v186 + v126) & ~v186), v140, v139);

    v128 = sub_1002B282C(0, 0, v132, &unk_10080B610, v127);
    (*(v135 + 8))(v165, v118);
    (*(v116 + 8))(v114, v137);
    (*(v168 + 8))(v174, v172);
    (*(v143 + 8))(v170, v139);
    *(v185 + *(sub_10028088C(&qword_100976908, &unk_100801D60) + 52)) = v128;

    v129 = *(v0 + 8);

    v129();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100587FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v62 = a5;
  v63 = a8;
  v60 = a6;
  v61 = a7;
  v59 = a4;
  v52._countAndFlagsBits = a2;
  v52._object = a3;
  v49 = a1;
  v64 = a9;
  v9 = type metadata accessor for SFProgressTask();
  v56 = *(v9 - 8);
  v57 = v9;
  v58 = *(v56 + 64);
  __chkstk_darwin(v9);
  v55 = v46 - v10;
  v53 = type metadata accessor for SFAirDropReceive.Transfer();
  v50 = *(v53 - 8);
  v54 = *(v50 + 64);
  __chkstk_darwin(v53);
  v51 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[1] = v17;
  __chkstk_darwin(v15);
  v19 = (v46 - v18);
  v20 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.Transfer.id.getter();
  v25 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
  v27 = v26;
  (*(v21 + 8))(v24, v20);
  v65 = 0x2D6C65636E6143;
  v66 = 0xE700000000000000;
  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 45;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);

  String.append(_:)(v52);

  v52._countAndFlagsBits = v66;
  v52._object = v65;
  v30 = v19;
  *v19 = 0x662E657261757173;
  v19[1] = 0xEB000000006C6C69;
  v31 = v13;
  v32 = *(v13 + 104);
  v47 = v30;
  v48 = v12;
  v32(v30, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v12);
  (*(v13 + 16))(v17, v30, v12);
  v33 = v50;
  v34 = v51;
  v35 = v53;
  (*(v50 + 16))(v51, v49, v53);
  v36 = v55;
  v37 = v56;
  v38 = v57;
  (*(v56 + 16))(v55, v59, v57);
  v39 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v40 = (v54 + *(v37 + 80) + v39) & ~*(v37 + 80);
  v41 = swift_allocObject();
  v42 = v60;
  v43 = v61;
  *(v41 + 2) = v62;
  *(v41 + 3) = v42;
  v44 = v63;
  *(v41 + 4) = v43;
  *(v41 + 5) = v44;
  (*(v33 + 32))(&v41[v39], v34, v35);
  (*(v37 + 32))(&v41[v40], v36, v38);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  return (*(v31 + 8))(v47, v48);
}

uint64_t sub_100588474@<X0>(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v124 = a2;
  v8 = v7;
  v128 = a6;
  v122 = a4;
  LODWORD(v131) = a3;
  v132 = a1;
  v114 = a7;
  v113 = type metadata accessor for SFAirDropReceive.Transfer();
  v112 = *(v113 - 8);
  v10 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = v11;
  v120 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v119 = v98 - v14;
  v15 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v108 = v98 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v117 = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v107 = v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v116 = v98 - v25;
  v110 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v109 = *(v110 - 8);
  v26 = *(v109 + 64);
  __chkstk_darwin(v110);
  v118 = v98 - v27;
  v106 = type metadata accessor for SFAirDropReceive.AskRequest();
  v105 = *(v106 - 8);
  v28 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v30 = *(v121 - 1);
  v31 = *(v30 + 64);
  __chkstk_darwin(v121);
  v33 = (v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for SFAirDrop.DeclineAction();
  v129 = *(v34 - 8);
  v130 = v34;
  v35 = *(v129 + 64);
  v36 = __chkstk_darwin(v34);
  v115 = v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v135 = v98 - v39;
  v40 = *(a5 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v38);
  v44 = v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = v98 - v45;
  v140 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v133 = *(v140 - 8);
  v47 = *(v133 + 64);
  v48 = __chkstk_darwin(v140);
  v126 = v49;
  v127 = v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v51 = v98 - v50;
  v52 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v123 = "AIRDROP_RECEIVING_TEXT";
  v134 = v51;
  v103 = v52;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v53 = *(v40 + 16);
  v53(v46, v8, a5);
  type metadata accessor for SDAirDropContentHandlerUnsupportedLinkType();
  if (swift_dynamicCast())
  {

    v54 = 1;
  }

  else
  {
    v53(v44, v8, a5);
    type metadata accessor for SDAirDropContentHandlerUnsupportedFileType();
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = v54;

      v54 = v55;
    }
  }

  v56 = v134;
  v57 = v122;
  v122 = a5;
  v124 = sub_100590A64(v132, v124, v131 & 1, v57, v134, v54, a5);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  (*(v30 + 104))(v33, enum case for SFAirDrop.ButtonConfiguration.text(_:), v121);
  v58 = v133;
  v59 = *(v133 + 16);
  v60 = v127;
  v61 = v56;
  v62 = v140;
  v101 = v133 + 16;
  v100 = v59;
  v59(v127, v61, v140);
  v63 = *(v58 + 80);
  v64 = (v63 + 16) & ~v63;
  v65 = v63;
  v102 = v63 | 7;
  v66 = swift_allocObject();
  v68 = *(v58 + 32);
  v67 = v58 + 32;
  v121 = v68;
  v68(v66 + v64, v60, v62);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v69 = String._bridgeToObjectiveC()();
  v70 = SFLocalizedStringForKey();

  if (v70)
  {
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v136 = v71;
  v137 = v73;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  v74 = v125;
  Optional.tryUnwrap(_:file:line:)();
  v75 = v140;
  v76 = v134;
  if (v74)
  {

    (*(v129 + 8))(v135, v130);
    return (*(v133 + 8))(v76, v75);
  }

  else
  {
    v123 = 0;
    v125 = v67;
    v99 = ~v65;

    v98[3] = v138;
    v98[2] = v139;
    v78 = v104;
    SFAirDropReceive.Transfer.askRequest.getter();
    v122 = (*(v128 + 72))(v78, v122);
    v98[1] = v79;
    v80 = *(v105 + 8);
    v128 = v65;
    v81 = v106;
    v80(v78, v106);
    UUID.init()();
    static Date.now.getter();
    (*(v129 + 16))(v115, v135, v130);
    UUID.init()();
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.items.getter();
    v80(v78, v81);
    sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
    sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
    v82 = v108;
    SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
    v83 = sub_10028088C(&qword_10097D440, &qword_100808E60);
    (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
    v84 = 1800;
    if (v131)
    {
      v84 = 7;
    }

    v131 = v84;
    v85 = type metadata accessor for TaskPriority();
    (*(*(v85 - 8) + 56))(v119, 1, 1, v85);
    v86 = v127;
    v100(v127, v76, v140);
    v87 = v112;
    v88 = v113;
    (*(v112 + 16))(v120, v132, v113);
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v89 = static AirDropActor.shared;
    v90 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor);
    v91 = (v128 + 32) & v99;
    v92 = (v126 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = (v92 + *(v87 + 80) + 8) & ~*(v87 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v89;
    *(v94 + 24) = v90;
    v95 = v140;
    v121(v94 + v91, v86, v140);
    *(v94 + v92) = v131;
    (*(v87 + 32))(v94 + v93, v120, v88);

    v96 = sub_1002B282C(0, 0, v119, &unk_10080B570, v94);
    (*(v129 + 8))(v135, v130);
    (*(v133 + 8))(v134, v95);
    v97 = v114;
    (*(v109 + 32))(v114, v118, v110);
    result = sub_10028088C(&qword_100976908, &unk_100801D60);
    *(v97 + *(result + 52)) = v96;
  }

  return result;
}

uint64_t sub_100589278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v79 = a1;
  v95 = a3;
  v78 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v82 = *(v78 - 8);
  v3 = *(v82 + 64);
  __chkstk_darwin(v78);
  v85 = v4;
  v83 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v94 = v63 - v7;
  v75 = type metadata accessor for SFAirDropReceive.AskRequest();
  v74 = *(v75 - 8);
  v8 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v72 = v63 - v12;
  v13 = sub_10028088C(&qword_10097B128, &unk_1007FE3D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v70 = v63 - v15;
  v80 = type metadata accessor for SFInterventionWorkflow();
  v77 = *(v80 - 8);
  v16 = *(v77 + 8);
  __chkstk_darwin(v80);
  v89 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v92 = *(v18 - 8);
  v93 = v18;
  v19 = *(v92 + 64);
  v20 = __chkstk_darwin(v18);
  v88 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v63 - v22;
  v24 = type metadata accessor for UUID();
  v91 = *(v24 - 8);
  v25 = *(v91 + 64);
  v26 = __chkstk_darwin(v24);
  v87 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = v63 - v29;
  v65 = v63 - v29;
  __chkstk_darwin(v28);
  v32 = v63 - v31;
  v86 = sub_10028088C(&qword_100983FA0, &qword_10080B5B0);
  v33 = *(v86 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v86);
  v96 = v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = v63 - v36;
  type metadata accessor for SFInterventionResponse();
  v90 = v37;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  UUID.init()();
  static Date.now.getter();
  v38 = *(v91 + 16);
  v38(v30, v32, v24);
  v39 = *(v92 + 16);
  v81 = v23;
  v39(v88, v23, v93);
  (*(v77 + 13))(v89, enum case for SFInterventionWorkflow.receive(_:), v80);
  v77 = v32;
  v80 = v24;
  v38(v87, v32, v24);
  v40 = *(v33 + 16);
  v63[1] = v33 + 16;
  v64 = v40;
  v41 = v96;
  v42 = v37;
  v43 = v86;
  (v40)(v96, v42, v86);
  v44 = *(v33 + 80);
  v66 = ~v44;
  v71 = v34;
  v67 = v44 | 7;
  v45 = swift_allocObject();
  v76 = v33;
  v46 = *(v33 + 32);
  v69 = v33 + 32;
  v68 = v46;
  v46(v45 + ((v44 + 16) & ~v44), v41, v43);
  sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
  sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
  sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v47 = v78;
  SFAirDrop.PermissionRequest.InterventionAction.init(id:operation:)();
  UUID.init()();
  v48 = v73;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.items.getter();
  (*(v74 + 8))(v48, v75);
  v49 = v72;
  SFAirDrop.PermissionRequest.TelemetryData.init(id:items:)();
  v50 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v82;
  SFAirDrop.PermissionRequest.init(id:requestDate:interventionWorkflow:action:isAnswered:telemetryData:)();
  v52 = type metadata accessor for TaskPriority();
  (*(*(v52 - 8) + 56))(v94, 1, 1, v52);
  v53 = v86;
  v64(v96, v90);
  v54 = v47;
  v55 = v83;
  (*(v51 + 16))();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v56 = static AirDropActor.shared;
  v57 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor);
  v58 = (v44 + 32) & v66;
  v59 = (v58 + v71 + *(v51 + 80)) & ~*(v51 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v57;
  v68(v60 + v58, v96, v53);
  (*(v51 + 32))(v60 + v59, v55, v54);

  v61 = sub_1002B282C(0, 0, v94, &unk_10080B5C0, v60);
  (*(v92 + 8))(v81, v93);
  (*(v91 + 8))(v77, v80);
  (*(v76 + 8))(v90, v53);
  result = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v95 + *(result + 52)) = v61;
  return result;
}

uint64_t sub_100589CEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v101 = a1;
  v114 = a3;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v113 = v94 - v5;
  v6 = sub_10028088C(&qword_10097B258, &unk_100808E00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v110 = v94 - v8;
  v107 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v106 = *(v107 - 8);
  v9 = *(v106 + 64);
  __chkstk_darwin(v107);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for SFAirDropReceive.AskRequest();
  v96 = *(v97 - 8);
  v11 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
  v111 = *(v112 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v112);
  v134 = v94 - v14;
  v128 = type metadata accessor for Date();
  v133 = *(v128 - 8);
  v15 = *(v133 + 64);
  v16 = __chkstk_darwin(v128);
  v125 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = v94 - v18;
  v132 = type metadata accessor for UUID();
  v130 = *(v132 - 8);
  v19 = *(v130 + 64);
  v20 = __chkstk_darwin(v132);
  v123 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v129 = v94 - v22;
  v135 = type metadata accessor for SFAirDrop.ContactRequest();
  v122 = *(v135 - 8);
  v23 = *(v122 + 8);
  __chkstk_darwin(v135);
  v118 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10028088C(&qword_10097B260, &unk_1007FE620);
  v109 = *(v127 - 8);
  v25 = *(v109 + 64);
  __chkstk_darwin(v127);
  v117 = v94 - v26;
  v100 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v27 = *(v100 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v100);
  v30 = (v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for SFAirDrop.DeclineAction();
  v108 = *(v126 - 8);
  v31 = *(v108 + 64);
  v32 = __chkstk_darwin(v126);
  v102 = v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v140 = v94 - v34;
  v35 = sub_10028088C(&qword_10097B268, &unk_100808E10);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v121 = v37;
  __chkstk_darwin(v38);
  v40 = v94 - v39;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v115 = v30;
  *v30 = 0x776F4E20746F4ELL;
  v30[1] = 0xE700000000000000;
  LODWORD(v98) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v41 = *(v27 + 104);
  v99 = (v27 + 104);
  v116 = v41;
  v41(v30);
  v42 = v36 + 16;
  v119 = *(v36 + 16);
  v43 = v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v35;
  v119(v43, v40, v35);
  v44 = *(v36 + 80);
  v45 = (v44 + 16) & ~v44;
  v46 = swift_allocObject();
  v105 = v36;
  v48 = v36 + 32;
  v47 = *(v36 + 32);
  v47(v46 + v45, v43, v35);
  v49 = v115;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  *v49 = 0x6572616853;
  v49[1] = 0xE500000000000000;
  (v116)(v49, v98, v100);
  v50 = type metadata accessor for SFAirDrop.ContactInfo();
  v51 = v118;
  (*(*(v50 - 8) + 16))(v118, v120, v50);
  (*(v122 + 13))(v51, enum case for SFAirDrop.ContactRequest.contact(_:), v135);
  v122 = v40;
  v52 = v40;
  v53 = v117;
  v54 = v124;
  v98 = v42;
  v119(v43, v52, v124);
  v116 = v44;
  v55 = swift_allocObject();
  v100 = v48;
  v99 = v47;
  v47(v55 + v45, v43, v54);
  v56 = sub_100592EB4(&qword_10097B270, &type metadata accessor for SFAirDrop.ContactRequest);
  v57 = sub_100592EB4(&qword_10097B278, &type metadata accessor for SFAirDrop.ContactRequest);
  v94[0] = sub_100592EB4(&qword_10097B280, &type metadata accessor for SFAirDrop.ContactRequest);
  v94[1] = v57;
  v94[2] = v56;
  v58 = v53;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v59 = v129;
  UUID.init()();
  v60 = v131;
  static Date.now.getter();
  (*(v130 + 16))(v123, v59, v132);
  (*(v133 + 16))(v125, v60, v128);
  v138 = 0;
  v139 = 0xE000000000000000;
  v61._countAndFlagsBits = 0x6977206572616853;
  v61._object = 0xEB00000000206874;
  String.append(_:)(v61);
  v62 = v95;
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.senderDisplayName.getter();
  (*(v96 + 8))(v62, v97);
  v63 = String._bridgeToObjectiveC()();

  v64 = SFTruncateAirDropSenderNameForUI();

  v103 = v43;
  if (v64)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v118 = ~v116;
  v136 = v65;
  v137 = v67;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v68._countAndFlagsBits = 63;
  v68._object = 0xE100000000000000;
  String.append(_:)(v68);
  v115 = v138;
  v101 = v139;
  v138 = SFAirDrop.ContactInfo.fullName.getter();
  v139 = v69;
  v70._countAndFlagsBits = 10;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v71 = v104;
  SFAirDrop.ContactInfo.handle.getter();
  sub_100592EB4(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle);
  v72 = v107;
  v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v73);

  (*(v106 + 8))(v71, v72);
  sub_10028088C(&qword_10097B288, &unk_1007FE630);
  v74 = sub_10028088C(&qword_10097B290, &unk_100808E20);
  v75 = *(v74 - 8);
  v76 = *(v75 + 72);
  v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1007F5670;
  v79 = v78 + v77;
  LODWORD(v77) = *(sub_10028088C(&qword_10097B298, &unk_1007FE640) + 48);
  v80 = v109;
  (*(v109 + 16))(v79, v58, v127);
  UUID.init()();
  (*(v75 + 104))(v79, enum case for SFAirDrop.AcceptAction.single<A>(_:), v74);
  v81 = v108;
  (*(v108 + 16))(v102, v140, v126);
  v82 = sub_10028088C(&qword_10097B2A0, &qword_100808E30);
  (*(*(v82 - 8) + 56))(v110, 1, 1, v82);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v83 = type metadata accessor for TaskPriority();
  v84 = v113;
  (*(*(v83 - 8) + 56))(v113, 1, 1, v83);
  v85 = v103;
  v86 = v124;
  v119(v103, v122, v124);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v87 = static AirDropActor.shared;
  v88 = sub_100592EB4(&qword_100977C00, type metadata accessor for AirDropActor);
  v89 = (v116 + 32) & v118;
  v90 = swift_allocObject();
  *(v90 + 16) = v87;
  *(v90 + 24) = v88;
  v99(v90 + v89, v85, v86);

  v91 = sub_1002B2B00(0, 0, v84, &unk_10080B5E8, v90);
  (*(v133 + 8))(v131, v128);
  (*(v130 + 8))(v129, v132);
  (*(v80 + 8))(v117, v127);
  (*(v81 + 8))(v140, v126);
  (*(v105 + 8))(v122, v86);
  v92 = v114;
  (*(v111 + 32))(v114, v134, v112);
  result = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v92 + *(result + 52)) = v91;
  return result;
}

uint64_t sub_10058C73C(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v29 = a5;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v7 = type metadata accessor for SFAirDrop.TransferType();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDropReceive.AskRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFPlatform();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.visionOS.getter();
  v21 = static SFPlatform.isPlatform(_:)();
  v22 = *(v17 + 8);
  v22(v20, v16);
  if (v21)
  {
    v23 = 0;
  }

  else
  {
    if (v32)
    {
      v24 = a4;
    }

    else
    {
      v24 = v31 ^ 1 | a4;
    }

    static SFPlatform.macOS.getter();
    v25 = static SFPlatform.isPlatform(_:)();
    v22(v20, v16);
    if (v25)
    {
      v24 = (*(v30 + 32))(v29);
    }

    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.type.getter();
    (*(v12 + 8))(v15, v11);
    v26 = SFAirDrop.TransferType.isLinks.getter();
    (*(v34 + 8))(v10, v35);
    v23 = v24 & (v26 ^ 1);
  }

  return v23 & 1;
}

uint64_t sub_10058C9F0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983F80);
  v1 = sub_10000C4AC(v0, qword_100983F80);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10058CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = *(*(sub_10028088C(&unk_100983FC0, &qword_10080B618) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v7 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = *(*(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v17 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5[19] = v17;
  v18 = *(v17 - 8);
  v5[20] = v18;
  v5[21] = *(v18 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v5[24] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058CDB4, v19, 0);
}

uint64_t sub_10058CDB4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_100592C6C(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    v5 = v0[7];
    v6 = v0[5];
    sub_100005508(v0[18], &qword_100976928, &qword_1007F98A8);
    SFProgressContinuation.task.getter();
    v7 = async function pointer to SFProgressTask.finalValue.getter[1];
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_10058D0D4;
    v9 = v0[17];
    v10 = v0[15];
    v11 = v0[3];

    return SFProgressTask.finalValue.getter(v11, v10);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[20];
    v15 = v0[19];
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];
    v34 = v16;
    v35 = v0[9];
    v19 = v0[7];
    v32 = v0[21];
    v33 = v0[5];
    v20 = *(v14 + 32);
    v20(v12, v0[18], v15);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    (*(v14 + 16))(v13, v12, v15);
    v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v23 = swift_allocObject();
    v0[27] = v23;
    v20(v23 + v22, v13, v15);
    (*(v18 + 16))(v34, v33, v19);
    v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v25 = swift_allocObject();
    v0[28] = v25;
    (*(v18 + 32))(v25 + v24, v34, v19);
    v26 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
    v27 = swift_task_alloc();
    v0[29] = v27;
    *v27 = v0;
    v27[1] = sub_10058D250;
    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[12];

    return concurrentRace<A>(priority:operation:against:)(v28, v29, &unk_10080B628, v23, &unk_10080B638, v25, v30);
  }
}

uint64_t sub_10058D0D4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = v2[24];
  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v6 = sub_10058D5B0;
  }

  else
  {
    v6 = sub_10058D4EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10058D250()
{
  v2 = *v1;
  v3 = (*v1)[29];
  v4 = *v1;
  (*v1)[30] = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[24];
  sub_100005508(v2[11], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_10058D7D8;
  }

  else
  {
    v8 = sub_10058D3E8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10058D3E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  (*(v0[20] + 8))(v0[23], v0[19]);
  (*(v2 + 32))(v4, v1, v3);
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10058D4EC()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10058D5B0()
{
  v0[2] = v0[26];
  v1 = v0[6];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  v3 = swift_dynamicCast();
  v4 = *(*(v2 - 8) + 56);
  v5 = v0[6];
  if (v3)
  {
    v4(v5, 0, 1, v2);
    sub_100005508(v5, &unk_100983FC0, &qword_10080B618);
    swift_willThrow();
  }

  else
  {
    v4(v5, 1, 1, v2);
    sub_100005508(v5, &unk_100983FC0, &qword_10080B618);
    type metadata accessor for CancellationError();
    sub_100592EB4(&unk_10097A6B0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
  }

  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10058D7D8()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  v0[2] = v0[30];
  v1 = v0[6];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  v3 = swift_dynamicCast();
  v4 = *(*(v2 - 8) + 56);
  v5 = v0[6];
  if (v3)
  {
    v4(v5, 0, 1, v2);
    sub_100005508(v5, &unk_100983FC0, &qword_10080B618);
    swift_willThrow();
  }

  else
  {
    v4(v5, 1, 1, v2);
    sub_100005508(v5, &unk_100983FC0, &qword_10080B618);
    type metadata accessor for CancellationError();
    sub_100592EB4(&unk_10097A6B0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
  }

  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10058DA18(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058DB20, v6, 0);
}

uint64_t sub_10058DB20()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10058DBE4;
  v5 = v0[6];
  v6 = v0[4];

  return SFProgressTask.finalValue.getter(v0 + 2, v6);
}

uint64_t sub_10058DBE4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v16 = *v1;

  v5 = (v4 + 8);
  if (v0)
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[4];

    (*v5)(v7, v8);
    v9 = sub_1005930D8;
    v10 = v6;
  }

  else
  {
    v12 = v2[6];
    v11 = v2[7];
    v13 = v2[4];
    v14 = v2[2];

    (*v5)(v12, v13);
    v9 = sub_10058DD74;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10058DD74()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, enum case for SFAirDropReceive.Failure.askDismissed(_:), v2);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10058DE88(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058DF90, v6, 0);
}

uint64_t sub_10058DF90()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003C1614;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return SFProgressTask.finalValue.getter(v7, v6);
}

uint64_t sub_10058E054(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *a2, v7);
  sub_10028088C(a3, a4);
  SFProgressContinuation.fail(with:)();
}

uint64_t sub_10058E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058DF90, v8, 0);
}

uint64_t sub_10058E254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for SFInterventionResponse();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100983FA8, &qword_10080B5C8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v5[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058E3BC, v12, 0);
}

uint64_t sub_10058E3BC()
{
  v1 = v0[10];
  v2 = v0[3];
  sub_10028088C(&qword_100983FA0, &qword_10080B5B0);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10058E47C;
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  return SFProgressTask.finalValue.getter(v6, v7);
}

uint64_t sub_10058E47C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_10058E7FC;
  }

  else
  {
    v9 = sub_10058E604;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10058E604()
{
  v1 = (*(v0[6] + 88))(v0[7], v0[5]);
  if (v1 == enum case for SFInterventionResponse.accept(_:))
  {
    v2 = v0[10];
    v3 = v0[7];
    v4 = v0[4];
    v5 = v0[2];
    v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v6 - 8) + 16))(v5, v4, v6);

    v7 = v0[1];
LABEL_5:

    return v7();
  }

  if (v1 == enum case for SFInterventionResponse.reject(_:))
  {
    v8 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for SFAirDropReceive.Failure.declined(_:), v8);
    swift_willThrow();
    v10 = v0[10];
    v11 = v0[7];

    v7 = v0[1];
    goto LABEL_5;
  }

  v13 = v0[5];

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10058E7FC()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10058E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropReceive.Transfer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100983F80);
  (*(v11 + 16))(v14, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v18 = 136315138;
    SFAirDropReceive.Transfer.id.getter();
    sub_100592EB4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v28 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
    v22 = sub_10000C4E4(v19, v21, &v31);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Transfer %s was cancelled.", v18, 0xCu);
    sub_10000C60C(v27);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v23 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100592EB4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, enum case for SFAirDropReceive.Failure.receiverCancelled(_:), v23);
  type metadata accessor for SFProgressTask();
  SFProgressTask.cancel(_:)();
}

uint64_t sub_10058EC48()
{
  v0 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100983F80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "openRequest was dismissed.", v8, 2u);
  }

  (*(v1 + 104))(v4, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v0);
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.finish(with:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10058EE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for SFAirDropReceive.Transfer();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = *(v10 + 64);
  v6[13] = swift_task_alloc();
  v11 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v6[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058EFC4, v12, 0);
}

uint64_t sub_10058EFC4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[6];
  v21 = v0[5];
  v22 = v0[8];
  v9 = v0[3];
  v23 = v0[4];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v4 + 16))(v2, v9, v6);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v0[16] = v12;
  (*(v4 + 32))(v12 + v11, v2, v6);
  (*(v7 + 16))(v5, v21, v8);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v0[17] = v14;
  *(v14 + 16) = v23;
  (*(v7 + 32))(v14 + v13, v5, v8);
  v15 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
  v16 = swift_task_alloc();
  v0[18] = v16;
  v17 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *v16 = v0;
  v16[1] = sub_10058F1F0;
  v18 = v0[14];
  v19 = v0[2];

  return concurrentRace<A>(priority:operation:against:)(v19, v18, &unk_10080B580, v12, &unk_10080B590, v14, v17);
}

uint64_t sub_10058F1F0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 152) = v0;

  sub_100005508(v6, &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = v2[15];

    return _swift_task_switch(sub_10058F3C8, v8, 0);
  }

  else
  {
    v10 = v2[13];
    v9 = v2[14];
    v11 = v2[9];

    v12 = *(v7 + 8);

    return v12();
  }
}

uint64_t sub_10058F3C8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_10058F440(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10041C3D8, v6, 0);
}

uint64_t sub_10058F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v3[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_10058F700, v13, 0);
}

uint64_t sub_10058F700()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_10058F7F4;
  v7 = v0[13];

  return sub_10002ED10(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_10058F7F4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 112);
  if (v0)
  {
    v9 = sub_10058FC60;
  }

  else
  {
    v9 = sub_10058F97C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10058F97C()
{
  v32 = v0;
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100983F80);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v28 = v0[8];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 136315138;
    v29 = v7;
    SFAirDropReceive.Transfer.id.getter();
    sub_100592EB4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v28);
    v19 = sub_10000C4E4(v16, v18, &v31);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v29, ".waitingForOpenResponse request timeout for transfer %s", v15, 0xCu);
    sub_10000C60C(v30);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[13];
  v21 = v0[10];
  v22 = v0[7];
  v23 = v0[2];
  v24 = enum case for SFAirDropReceive.ItemDestination.noItem(_:);
  v25 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v25 - 8) + 104))(v23, v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_10058FC60()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_10058FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = type metadata accessor for SFAirDropReceive.Transfer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1002A9938(a2, v20);
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v16 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_1000121F8(v20, v17 + 16);
  *(v17 + 56) = a3;
  (*(v9 + 32))(v17 + v16, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  static Task<>.noThrow(priority:operation:)();

  sub_100005508(v14, &qword_100976160, &qword_1007F8770);
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_10058FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100590030, v8, 0);
}

uint64_t sub_100590030()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  sub_10002CDC0(v3, v4);
  SFAirDropReceive.Transfer.receiveID.getter();
  v6 = *(v5 + 16);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10059017C;
  v9 = v0[7];
  v11 = v0[3];
  v10 = v0[4];

  return v13(v11, v9, v10, v4, v5);
}

uint64_t sub_10059017C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 80) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 64);
  if (v1)
  {
    v11 = sub_10059043C;
  }

  else
  {
    v11 = sub_100590310;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100590310()
{
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100983F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Move to App finished with success: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10059043C()
{
  if (qword_100973AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983F80);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Move to App threw error %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005905E8(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Transfer();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v35 = v4;
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = &v34 - v7;
  v39 = type metadata accessor for UUID();
  v34 = *(v39 - 8);
  v8 = *(v34 + 64);
  v9 = __chkstk_darwin(v39);
  v10 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v34 - v11;
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SFAirDropReceive.AskRequest();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.Transfer.askRequest.getter();
  SFAirDropReceive.AskRequest.type.getter();
  (*(v18 + 8))(v21, v17);
  LOBYTE(v21) = SFAirDrop.TransferType.isFiles.getter();
  result = (*(v13 + 8))(v16, v12);
  if (v21)
  {
    v23 = v40;
    SFAirDropReceive.Transfer.receiveID.getter();
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
    v25 = v36;
    v26 = v37;
    v27 = v38;
    (*(v37 + 16))(v36, a1, v38);
    v28 = v34;
    v29 = v39;
    (*(v34 + 16))(v10, v23, v39);
    v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v31 = (v35 + *(v28 + 80) + v30) & ~*(v28 + 80);
    v32 = swift_allocObject();
    (*(v26 + 32))(v32 + v30, v25, v27);
    (*(v28 + 32))(v32 + v31, v10, v29);
    v33 = v41;
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v33, &qword_100976160, &qword_1007F8770);
    return (*(v28 + 8))(v40, v29);
  }

  return result;
}

void *sub_100590A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v162 = a6;
  v175 = a5;
  v168 = a4;
  LODWORD(v165) = a3;
  v177 = a2;
  v155 = a1;
  v158 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v161 = *(v158 - 8);
  v8 = *(v161 + 64);
  v9 = __chkstk_darwin(v158);
  v164 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v163 = &v149 - v11;
  v157 = type metadata accessor for SFAirDropReceive.Transfer();
  v154 = *(v157 - 8);
  v12 = *(v154 + 64);
  v13 = __chkstk_darwin(v157);
  v152 = v14;
  v159 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a7;
  v166 = *(a7 - 8);
  v15 = *(v166 + 64);
  __chkstk_darwin(v13);
  v167 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v179 = *(v174 - 8);
  v172 = *(v179 + 64);
  __chkstk_darwin(v174);
  v173 = &v149 - v17;
  v184 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v178 = *(v184 - 8);
  v18 = *(v178 + 64);
  v19 = __chkstk_darwin(v184);
  v21 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v180 = (&v149 - v22);
  v23 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v24 = *(v23 - 8);
  v182 = v23;
  v183 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v160 = (&v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v181 = (&v149 - v28);
  v171 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v176 = *(v171 - 8);
  v29 = *(v176 + 64);
  v30 = __chkstk_darwin(v171);
  v151 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v150 = &v149 - v33;
  v34 = __chkstk_darwin(v32);
  v156 = &v149 - v35;
  v36 = __chkstk_darwin(v34);
  v153 = &v149 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v149 - v39;
  __chkstk_darwin(v38);
  v42 = &v149 - v41;
  v43 = type metadata accessor for SFPlatform();
  v44 = *(v43 - 8);
  v45 = v44;
  v46 = *(v44 + 64);
  __chkstk_darwin(v43);
  v48 = &v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100981228, &qword_1008075A0);
  v49 = *(v44 + 72);
  v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1007F8830;
  static SFPlatform.iOS.getter();
  static SFPlatform.watchOS.getter();
  static SFPlatform.visionOS.getter();
  v187 = v51;
  sub_100592EB4(&qword_100981230, &type metadata accessor for SFPlatform);
  sub_10028088C(&qword_100981238, &qword_1008075A8);
  sub_100592524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v50) = static SFPlatform.isPlatform(_:)();
  v52 = *(v45 + 8);
  v52(v48, v43);
  if (v50)
  {
    if (v165)
    {
      v53 = _swiftEmptyArrayStorage;
      v55 = v176;
      v54 = v177;
LABEL_21:
      (*(v166 + 16))(v167, v169, v170);
      sub_10028088C(&qword_100982538, &qword_100808E98);
      if (swift_dynamicCast())
      {
        sub_1000121F8(v185, &v187);
        v99 = v188;
        v100 = v189;
        sub_10002CDC0(&v187, v188);
        if ((*(v100 + 8))(v54, v99, v100))
        {
          v101 = 0x8000000100795D20;
          v102 = 0xD000000000000013;
          if (v162)
          {
            v102 = 0x662E7265646C6F66;
            v101 = 0xEB000000006C6C69;
          }

          v103 = v160;
          *v160 = v102;
          v103[1] = v101;
          v104 = v182;
          v105 = v183;
          (*(v183 + 104))(v103, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v182);
          v176 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
          (*(v105 + 16))(v181, v103, v104);
          v106 = v180;
          *v180 = 0xD000000000000034;
          v106[1] = 0x800000010078AA10;
          (*(v178 + 104))();
          sub_1002A9938(&v187, v185);
          v107 = v154;
          v108 = v157;
          (*(v154 + 16))(v159, v155, v157);
          v109 = v179;
          v110 = v173;
          v111 = v174;
          (*(v179 + 16))(v173, v175, v174);
          v112 = (*(v107 + 80) + 64) & ~*(v107 + 80);
          v113 = (v152 + *(v109 + 80) + v112) & ~*(v109 + 80);
          v114 = swift_allocObject();
          sub_1000121F8(v185, v114 + 16);
          *(v114 + 56) = v177;
          (*(v107 + 32))(v114 + v112, v159, v108);
          v115 = v171;
          (*(v109 + 32))(v114 + v113, v110, v111);
          sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);

          v116 = v153;
          SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
          UUID.init()();
          (*(v55 + 104))(v116, enum case for SFAirDrop.AcceptAction.single<A>(_:), v115);
          v117 = v156;
          (*(v55 + 16))(v156, v116, v115);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_10028E7FC(0, v53[2] + 1, 1, v53);
          }

          v119 = v53[2];
          v118 = v53[3];
          if (v119 >= v118 >> 1)
          {
            v53 = sub_10028E7FC(v118 > 1, v119 + 1, 1, v53);
          }

          (*(v55 + 8))(v116, v115);
          (*(v183 + 8))(v160, v182);
          v53[2] = v119 + 1;
          (*(v55 + 32))(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v119, v117, v115);
        }

        sub_10000C60C(&v187);
      }

      else
      {
        v186 = 0;
        memset(v185, 0, sizeof(v185));
        sub_100005508(v185, &qword_100982540, &unk_100808EA0);
      }

      return v53;
    }

    if (v162)
    {
      v68 = String._bridgeToObjectiveC()();
      v69 = SFLocalizedStringForKey();

      if (!v69)
      {
        v70 = 0xE700000000000000;
        v71 = 0x70704120746547;
LABEL_18:
        v165 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
        v90 = v181;
        v89 = v182;
        *v181 = v71;
        v90[1] = v70;
        (*(v183 + 104))(v90, enum case for SFAirDrop.ButtonConfiguration.text(_:), v89);
        (*(v178 + 16))(v180, v168, v184);
        v91 = v179;
        v92 = v173;
        v93 = v174;
        (*(v179 + 16))(v173, v175, v174);
        v94 = (*(v91 + 80) + 16) & ~*(v91 + 80);
        v95 = swift_allocObject();
        (*(v91 + 32))(v95 + v94, v92, v93);
        sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
        SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
        UUID.init()();
        v55 = v176;
        v96 = v171;
        (*(v176 + 104))(v42, enum case for SFAirDrop.AcceptAction.single<A>(_:), v171);
        (*(v55 + 16))(v40, v42, v96);
        v53 = sub_10028E7FC(0, 1, 1, _swiftEmptyArrayStorage);
        v98 = v53[2];
        v97 = v53[3];
        if (v98 >= v97 >> 1)
        {
          v53 = sub_10028E7FC(v97 > 1, v98 + 1, 1, v53);
        }

        v54 = v177;
        (*(v55 + 8))(v42, v96);
        v53[2] = v98 + 1;
        (*(v55 + 32))(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v98, v40, v96);
        goto LABEL_21;
      }
    }

    else
    {
      v72 = String._bridgeToObjectiveC()();
      v69 = SFLocalizedStringForKey();

      if (!v69)
      {
        v70 = 0xE400000000000000;
        v71 = 2003134806;
        goto LABEL_18;
      }
    }

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v73;

    goto LABEL_18;
  }

  static SFPlatform.macOS.getter();
  v56 = static SFPlatform.isPlatform(_:)();
  v52(v48, v43);
  if ((v56 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v57 = v178;
  v58 = *(v178 + 16);
  v59 = v168;
  v60 = v184;
  v58(v21, v168, v184);
  v61 = (*(v57 + 88))(v21, v60);
  v62 = enum case for SFAirDropReceive.ItemDestination.default(_:);
  (*(v57 + 8))(v21, v60);
  if (v61 != v62)
  {
    return _swiftEmptyArrayStorage;
  }

  v63 = String._bridgeToObjectiveC()();
  v64 = SFLocalizedStringForKey();

  if (v64)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v67 = 0xEE007265646E6946;
    v65 = 0x206E6920776F6853;
  }

  v74 = v181;
  *v181 = v65;
  v74[1] = v67;
  v75 = *(v183 + 104);
  LODWORD(v170) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v183 += 104;
  v169 = v75;
  v75(v74);
  v58(v180, v59, v184);
  v76 = v179;
  v77 = v173;
  v78 = v174;
  v166 = *(v179 + 16);
  (v166)(v173, v175, v174);
  v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v80 = swift_allocObject();
  v81 = *(v76 + 32);
  v179 = v76 + 32;
  v165 = v81;
  v81(v80 + v79, v77, v78);
  v82 = sub_100592EB4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v83 = sub_100592EB4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v167 = sub_100592EB4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v168 = v83;
  v177 = v82;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v84 = String._bridgeToObjectiveC()();
  v85 = SFLocalizedStringForKey();

  if (v85)
  {
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
  }

  else
  {
    v88 = 0xE400000000000000;
    v86 = 1852141647;
  }

  v121 = v181;
  v120 = v182;
  *v181 = v86;
  v121[1] = v88;
  v169(v121, v170, v120);
  v122 = v180;
  *v180 = 0xD000000000000024;
  v122[1] = 0x8000000100795CB0;
  (*(v178 + 104))(v122, enum case for SFAirDropReceive.ItemDestination.customApp(_:), v184);
  v123 = v173;
  v124 = v174;
  (v166)(v173, v175, v174);
  v125 = swift_allocObject();
  v165(v125 + v79, v123, v124);
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v126 = String._bridgeToObjectiveC()();
  v127 = SFLocalizedStringForKey();

  if (v127)
  {
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;
  }

  else
  {
    v130 = 0xE700000000000000;
    v128 = 0x736E6F6974704FLL;
  }

  v131 = v176;
  v132 = v158;
  v133 = *(sub_10028088C(&qword_100983F98, &qword_10080B598) + 48);
  v135 = v181;
  v134 = v182;
  *v181 = v128;
  v135[1] = v130;
  v169(v135, v170, v134);
  sub_10028088C(&qword_100974F10, &qword_1007F8328);
  v136 = v161;
  v137 = *(v161 + 72);
  v138 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1007F8A70;
  v140 = v139 + v138;
  v141 = *(v136 + 16);
  v141(v140, v164, v132);
  v141(v140 + v137, v163, v132);
  v142 = v150;
  SFAirDrop.AcceptAction.Composite.init(buttonConfiguration:actions:)();
  UUID.init()();
  v143 = v171;
  (*(v131 + 104))(v142, enum case for SFAirDrop.AcceptAction.composite<A>(_:), v171);
  v144 = v151;
  (*(v131 + 16))(v151, v142, v143);
  v53 = sub_10028E7FC(0, 1, 1, _swiftEmptyArrayStorage);
  v146 = v53[2];
  v145 = v53[3];
  if (v146 >= v145 >> 1)
  {
    v53 = sub_10028E7FC(v145 > 1, v146 + 1, 1, v53);
  }

  (*(v131 + 8))(v142, v143);
  v147 = *(v161 + 8);
  v147(v164, v132);
  v147(v163, v132);
  v53[2] = v146 + 1;
  (*(v131 + 32))(v53 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v146, v144, v143);
  return v53;
}

uint64_t sub_100592174()
{
  v0 = *(*(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8) + 80);

  return sub_10058EC48();
}

uint64_t sub_1005921E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100005C00;

  return sub_10058EE14(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_100592358(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10058F440(a1, v1 + v5);
}

uint64_t sub_100592440(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10058F548(a1, v6, v1 + v5);
}

unint64_t sub_100592524()
{
  result = qword_100981240;
  if (!qword_100981240)
  {
    sub_100280938(&qword_100981238, &qword_1008075A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981240);
  }

  return result;
}

uint64_t sub_100592588(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v7 = *(v1 + 56);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10058FCDC(a1, v1 + 16, v7, v1 + v4, v8);
}

uint64_t sub_100592670(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10058FF30(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_10059276C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100983FA0, &qword_10080B5B0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFAirDropReceive.ItemDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_10058E254(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1005928C8(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10058E14C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005929C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for SFAirDropReceive.Transfer() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for SFProgressTask() - 8);
  v9 = v0 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10058E86C(v0 + v6, v9, v1, v2, v3);
}

uint64_t sub_100592ADC(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10052CC44(a1, v6, v7, v1 + v5);
}

uint64_t sub_100592C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976928, &qword_1007F98A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100592CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976928, &qword_1007F98A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100592D4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_10058CAB8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100592EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100592EFC(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_1009764E8, &qword_1007F9790) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10058DA18(a1, v1 + v5);
}

uint64_t sub_100592FE4(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10058DE88(a1, v1 + v5);
}

uint64_t sub_1005930E8()
{
  v1 = v0;
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983FD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting to advertise for PIN Pairing", v5, 2u);
  }

  v6 = *(v1 + 40);
  NWListener.stateUpdateHandler.setter();
  NWListener.newConnectionHandler.setter();
  v7 = *(v1 + 16);
  NWListener.start(queue:)();
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  sub_1005C2A08();

  return sub_100593A30();
}

void sub_100593254()
{
  v1 = v0;
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983FD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping temp pairing server", v5, 2u);
  }

  if (v1[9])
  {
    v6 = v1[9];
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v7 = v1[9];
    v1[9] = 0;
    swift_unknownObjectRelease();
  }

  v8 = v1[5];
  NWListener.cancel()();
  v9 = v1[8];
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v17 = v1[8];
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    ++v11;
    v13 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
    NWConnection.cancel()();
  }

  while (v10 != v11);

LABEL_16:
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  sub_1005C2D24();
  v14 = v1[3];
  if (v14)
  {
    v15 = v1[4];

    v14(v16);

    sub_1002F5A40(v14, v15);
  }
}

uint64_t sub_1005934B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983FD0);
  v1 = sub_10000C4AC(v0, qword_100983FD0);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100593578()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100282710(v0, qword_100983FE8);
  *sub_10000C4AC(v0, qword_100983FE8) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_100593608(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100983FD0);
  v11 = *(v3 + 16);
  v11(v9, a1, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v11(v7, v9, v2);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_10000C4E4(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pairing listener state changed: %s", v14, 0xCu);
    sub_10000C60C(v15);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }
}

void sub_100593878(uint64_t *a1)
{
  v1 = *a1;
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983FD0);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;

    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Pairing listener new connection: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  else
  {
  }
}

uint64_t sub_100593A30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  v4 = __chkstk_darwin(v2);
  v46 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v45 = &v39 - v6;
  v7 = type metadata accessor for DispatchTime();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v7);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v39 - v11;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v40);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v39);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v25 = *(v0 + 72);
    *(v0 + 72) = 0;
    swift_unknownObjectRelease();
  }

  sub_10042B59C();
  static OS_dispatch_source.TimerFlags.strict.getter();
  v26 = *(v0 + 16);
  v27 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v21 + 8))(v24, v20);
  v28 = *(v1 + 72);
  *(v1 + 72) = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v29 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1005943EC;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8148;
  v30 = _Block_copy(aBlock);

  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  sub_1005944AC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v30);
  (*(v12 + 8))(v15, v40);
  (*(v16 + 8))(v19, v39);

  v31 = v41;
  static DispatchTime.now()();
  if (qword_100973AB0 != -1)
  {
    swift_once();
  }

  v32 = v48;
  sub_10000C4AC(v48, qword_100983FE8);
  v33 = v42;
  + infix(_:_:)();
  v34 = v44;
  v43 = *(v43 + 8);
  (v43)(v31, v44);
  v35 = v45;
  sub_1002EAB84(v45);
  v36 = v46;
  sub_1002EABF8(v46);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v37 = *(v47 + 8);
  v37(v36, v32);
  v37(v35, v32);
  (v43)(v33, v34);
  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}

uint64_t sub_100593FCC()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = qword_1009735E0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = static AirDropActor.shared;
    v9 = sub_10002CE80();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v5;

    sub_1002B3098(0, 0, v3, &unk_10080B6A0, v10);
  }

  return result;
}

uint64_t sub_10059415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005941F8, v5, 0);
}

uint64_t sub_1005941F8()
{
  v1 = *(v0 + 16);
  sub_100594258();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100594258()
{
  if (qword_100973AA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100983FD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Timer fired, stopping server", v3, 2u);
  }

  sub_100593254();
}

uint64_t sub_100594344()
{
  sub_1002F5A40(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100594394()
{
  sub_100594344();

  return swift_deallocClassInstance();
}

uint64_t sub_1005943F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10059415C(a1, v4, v5, v6);
}

uint64_t sub_1005944AC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100594568()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009840D0);
  v1 = sub_10000C4AC(v0, qword_1009840D0);
  if (qword_1009736D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100594680(uint64_t a1, void (*a2)(void), const char *a3, SEL *a4)
{
  a2();
  v8 = String.init(cString:)();
  v10 = v9;
  if (qword_100973AB8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009840D0);
  v12 = v4;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v15 = 136315394;
    v23 = *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 16];
    sub_1002A9924(*&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
    v16 = String.init<A>(describing:)();
    v22 = a1;
    v18 = a4;
    v19 = sub_10000C4E4(v16, v17, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_10000C4E4(v8, v10, &v24);

    *(v15 + 14) = v20;
    a4 = v18;
    a1 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return [*&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] *a4];
}

id sub_1005948A4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer] = 0;
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue] = a1;
  v11 = &v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v12 = objc_allocWithZone(CBAdvertiser);
  v13 = a1;
  sub_1002A9924(a2, a3);
  v14 = [v12 init];
  *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] = v14;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, "init");
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultCenter];
  [v18 addObserver:v17 selector:"handleRapportIdentitiesChanged" name:off_1009731D0 object:0];

  sub_10028BCC0(a2, a3);
  return v17;
}

void sub_100594A00(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue];
  *v11 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = v8 + 13;
  v47 = v8[13];
  v47(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v12;
  v16 = _dispatchPreconditionTest(_:)();
  v46 = v8[1];
  v46(v11, v7);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v44 = a1;
  v45 = a2;
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
  [*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] setDispatchQueue:v15];
  v43 = v17;
  v18 = *&v4[v17];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_100597968;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v3 = 1107296256;
  v49 = 1107296256;
  v50 = sub_100011678;
  v51 = &unk_1008E8278;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  [v21 setAdvertisingAddressChangedHandler:v20];
  _Block_release(v20);

  *v11 = v15;
  v47(v11, v13, v7);
  v22 = _dispatchPreconditionTest(_:)();
  v46(v11, v7);
  if ((v22 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_6;
  }

  v14 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  v23 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8];
  if (v23 >> 60 != 15)
  {
    v24 = v14[2];
    v25 = *v14;
    sub_100294008(*v14, *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
    LOBYTE(aBlock) = BYTE1(v24) & 1;
    sub_100596D58(v25, v23, v24 & 0xFFFFFFFFFFFF00FFLL | ((BYTE1(v24) & 1) << 8));
    sub_10028BCC0(v25, v23);
  }

  sub_1005954A8();
  if (qword_100973AB8 != -1)
  {
    goto LABEL_17;
  }

LABEL_6:
  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_1009840D0);
  v27 = v4;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    if (v14[1] >> 60 == 15)
    {
      v32 = 0x6E4979627261654ELL;
    }

    else
    {
      v32 = 0x706F7244726941;
    }

    if (v14[1] >> 60 == 15)
    {
      v33 = 0xEC00000032566F66;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    v34 = sub_10000C4E4(v32, v33, &aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting to advertise for %s", v30, 0xCu);
    sub_10000C60C(v31);
  }

  v36 = v44;
  v35 = v45;
  v37 = *&v4[v43];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v36;
  v39[4] = v35;
  v52 = sub_100597998;
  v53 = v39;
  aBlock = _NSConcreteStackBlock;
  v49 = v3;
  v50 = sub_1005CC610;
  v51 = &unk_1008E82C8;
  v40 = _Block_copy(&aBlock);
  v41 = v37;
  sub_1002F5A3C(v36);

  [v41 activateWithCompletion:v40];
  _Block_release(v40);
}

void sub_100594F24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100973AB8 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_1009840D0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Bluetooth address changed, updating temp auth tag if necessary", v12, 2u);
  }

  sub_1005954A8();
}

void sub_1005950F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_1009840D0);
      swift_errorRetain();
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v11 = 136315394;
        v27 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 16];
        sub_1002A9924(*&v8[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
        v12 = String.init<A>(describing:)();
        v14 = sub_10000C4E4(v12, v13, &v29);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        swift_errorRetain();
        sub_10028088C(&unk_10097A930, &unk_1007F9050);
        v15 = String.init<A>(describing:)();
        v17 = sub_10000C4E4(v15, v16, &v29);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to start advertising for %s: %s", v11, 0x16u);
        swift_arrayDestroy();

        if (!a3)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (!a3)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_1009840D0);
      v19 = v6;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136315138;
        v28 = *&v19[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 16];
        sub_1002A9924(*&v19[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], *&v19[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
        v24 = String.init<A>(describing:)();
        v26 = sub_10000C4E4(v24, v25, &v29);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Started advertising for %s", v22, 0xCu);
        sub_10000C60C(v23);
      }

      sub_1005954A8();
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    a3();
LABEL_14:
  }
}

void sub_1005954A8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  v1 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  if (*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8] >> 60 == 15)
  {
    return;
  }

  v10 = sub_1005970E4();
  if (v11 >> 60 == 15)
  {
    return;
  }

  v2 = v10;
  v9 = v11;
  if (qword_100973AB8 != -1)
  {
    goto LABEL_16;
  }

LABEL_5:
  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009840D0);
  v13 = v0;
  sub_1002A9924(v2, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  sub_10028BCC0(v2, v9);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    v29 = v28[0];
    *v16 = 136315394;
    if (*(v1 + 1) >> 60 == 15)
    {
      v17 = 0x6E4979627261654ELL;
    }

    else
    {
      v17 = 0x706F7244726941;
    }

    if (*(v1 + 1) >> 60 == 15)
    {
      v18 = 0xEC00000032566F66;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = sub_10000C4E4(v17, v18, &v29);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v28[1] = sub_100467BE4(v2, v9);
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v23 = sub_10000C4E4(v20, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Setting auth tag on %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
  v25 = *&v13[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v25 setAirdropTempAuthTagData:isa];

  v27 = *&v13[v24];
  [v27 setAirdropFlags:{objc_msgSend(v27, "airdropFlags") | 0x40}];
  sub_10028BCC0(v2, v9);
}

uint64_t sub_1005958B0(void (*a1)(uint64_t), uint64_t a2, double a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v36 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v37);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchTime();
  v34 = *(v40 - 8);
  v13 = *(v34 + 64);
  v14 = __chkstk_darwin(v40);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v33[1] = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = a1;
    v27[4] = a2;
    sub_1002F5A3C(a1);
    if (a3 <= 0.0)
    {

      sub_100595DC8(v32, a1);
    }

    else
    {
      static DispatchTime.now()();
      + infix(_:_:)();
      v34 = *(v34 + 8);
      (v34)(v16, v40);
      v28 = swift_allocObject();
      *(v28 + 16) = sub_100597A24;
      *(v28 + 24) = v27;
      aBlock[4] = sub_100597A30;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008E8368;
      v29 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v41 = _swiftEmptyArrayStorage;
      sub_1002DDC68();
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v30 = v36;
      v31 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v29);

      (*(v38 + 8))(v30, v31);
      (*(v35 + 8))(v12, v37);
      (v34)(v18, v40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100595DC8(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100973AB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009840D0);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8] >> 60 == 15)
      {
        v11 = 0x6E4979627261654ELL;
      }

      else
      {
        v11 = 0x706F7244726941;
      }

      if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8] >> 60 == 15)
      {
        v12 = 0xEC00000032566F66;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      v13 = sub_10000C4E4(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating %s advertiser", v9, 0xCu);
      sub_10000C60C(v10);
    }

    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
    [*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] invalidate];
    v15 = [objc_allocWithZone(CBAdvertiser) init];
    v16 = *&v6[v14];
    *&v6[v14] = v15;

    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer;
    if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer])
    {
      v18 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer];
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      v19 = *&v6[v17];
    }

    *&v6[v17] = 0;
    v20 = swift_unknownObjectRelease();
    if (a2)
    {
      a2(v20);
    }
  }
}

uint64_t sub_100596038(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v3);
  v61 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v58 = (v49 - v7);
  v8 = type metadata accessor for DispatchTime();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  v10 = __chkstk_darwin(v8);
  v55 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = v49 - v12;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v54 - 8);
  v13 = *(v52 + 64);
  __chkstk_darwin(v54);
  v50 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v53);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v27, v23);
  if (v30)
  {
    v32 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer;
    if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer))
    {
      v33 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    sub_10042B59C();
    static OS_dispatch_source.TimerFlags.strict.getter();
    v34 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v19 + 8))(v22, v18);
    v35 = *(v2 + v32);
    *(v2 + v32) = v34;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v49[1] = v34;
    ObjectType = swift_getObjectType();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1005979A4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008E82F0;
    v38 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v39 = v50;
    v64 = ObjectType;
    sub_1005944AC();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v38);
    (*(v52 + 8))(v39, v54);
    (*(v51 + 8))(v17, v53);

    v40 = v55;
    static DispatchTime.now()();
    v41 = v58;
    *v58 = v57;
    v43 = v62;
    v42 = v63;
    (*(v62 + 104))(v41, enum case for DispatchTimeInterval.seconds(_:), v63);
    v44 = v56;
    + infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v41, v42);
    v46 = v60;
    v47 = *(v59 + 8);
    v47(v40, v60);
    sub_1002EAB84(v41);
    v48 = v61;
    sub_1002EABF8(v61);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v45(v48, v42);
    v45(v41, v42);
    v47(v44, v46);
    OS_dispatch_source.activate()();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005966CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_100596728()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer;
    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer))
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1005958B0(sub_1005979D4, v11, 0.0);

      if (*(v1 + v10))
      {
        v12 = *(v1 + v10);
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        v13 = *(v1 + v10);
      }

      *(v1 + v10) = 0;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005968E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v10 = v11;
  v12 = v7[13];
  v29 = enum case for DispatchPredicate.onQueue(_:);
  v28 = v12;
  v12(v10);
  v13 = v11;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = v7[1];
  v15(v10, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v27[1] = v3;
  v16 = a3;
  v17 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration);
  v18 = a2;
  v19 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration);
  v20 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8);
  v21 = v13;
  v22 = v17[2];
  v23 = v30;
  *v17 = v30;
  v17[1] = v18;
  v17[2] = v16;
  sub_1002A9924(v23, v18);
  sub_10028BCC0(v19, v20);
  *v10 = v21;
  v28(v10, v29, v6);
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v15(v10, v6);
  if ((v21 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v24 = v17[1];
  if (v24 >> 60 != 15)
  {
    v25 = v17[2];
    v26 = *v17;
    sub_100294008(*v17, v17[1]);
    v31 = BYTE1(v25) & 1;
    sub_100596D58(v26, v24, v25 & 0xFFFFFFFFFFFF00FFLL | ((BYTE1(v25) & 1) << 8));
    sub_10028BCC0(v26, v24);
  }

  sub_1005954A8();
}

void sub_100596B10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration);
    v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8);
    if (v3 >> 60 != 15)
    {
      v4 = *v2;
      v5 = v2[2];
      sub_100294008(*v2, v3);
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_1009840D0);
      v7 = v1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315138;
        if (v2[1] >> 60 == 15)
        {
          v12 = 0x6E4979627261654ELL;
        }

        else
        {
          v12 = 0x706F7244726941;
        }

        if (v2[1] >> 60 == 15)
        {
          v13 = 0xEC00000032566F66;
        }

        else
        {
          v13 = 0xE700000000000000;
        }

        v14 = sub_10000C4E4(v12, v13, &v15);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Changing advertisement rate to default on %s advertiser", v10, 0xCu);
        sub_10000C60C(v11);
      }

      sub_100294008(v4, v3);
      sub_1005968E8(v4, v3, 256);
      sub_100594A00(0, 0);
      sub_10028BCC0(v4, v3);
      sub_10028BCC0(v4, v3);
    }
  }
}

id sub_100596D58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
    [*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser) setAdvertiseRate:HIDWORD(a3)];
    [*(v3 + v13) setAirdropVersion:3];
    v14 = *(v3 + v13);
    v15 = Data._Representation.subscript.getter();
    [v14 setAirdropHash1:(Data._Representation.subscript.getter() | (v15 << 8))];

    v16 = *(v3 + v13);
    v17 = Data._Representation.subscript.getter();
    [v16 setAirdropHash2:(Data._Representation.subscript.getter() | (v17 << 8))];

    v18 = *(v3 + v13);
    v19 = Data._Representation.subscript.getter();
    [v18 setAirdropHash3:(Data._Representation.subscript.getter() | (v19 << 8))];

    v20 = *(v3 + v13);
    v21 = Data._Representation.subscript.getter();
    [v20 setAirdropHash4:(Data._Representation.subscript.getter() | (v21 << 8))];

    if ((a3 & 0x100) == 0)
    {
      [*(v3 + v13) setAirdropModel:a3];
    }

    [*(v3 + v13) setAirdropConfigData:BYTE3(a3)];
    return [*(v3 + v13) setAirdropFlags:BYTE2(a3)];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005970E4()
{
  v1 = [objc_opt_self() sharedNearbyAgent];
  v2 = [v1 idSelfIdentity];

  if (v2)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser) advertisingAddressDataNonConnectable];
    if (v3)
    {
      v4 = v3;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v22 = 0;
      v9 = [v2 authTagForData:isa type:5 error:&v22];

      v10 = v22;
      if (v9)
      {
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100026AC0(v5, v7);
        return v11;
      }

      v13 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_1009840D0);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        swift_errorRetain();
        sub_10028088C(&unk_10097A930, &unk_1007F9050);
        v19 = String.init<A>(describing:)();
        v21 = sub_10000C4E4(v19, v20, &v22);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create auth tag: %s", v17, 0xCu);
        sub_10000C60C(v18);

        sub_100026AC0(v5, v7);
      }

      else
      {

        sub_100026AC0(v5, v7);
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1005973EC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100597960;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8250;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void sub_1005976AC()
{
  if (qword_100973AB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009840D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Rapport identities changed, updating temp auth tag if necessary", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1005954A8();
  }
}

uint64_t sub_100597804(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10059782C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100597880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1005978D4(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100597918()
{
  if (*(v0 + 8) >> 60 == 15)
  {
    return 0x6E4979627261654ELL;
  }

  else
  {
    return 0x706F7244726941;
  }
}

uint64_t sub_1005979DC()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100597A30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

const char *sub_100597A58(int a1)
{
  if (a1 > 39)
  {
    if (a1 <= 44)
    {
      if (a1 == 40)
      {
        return "Medium";
      }

      if (a1 == 42)
      {
        return "MediumMid";
      }
    }

    else
    {
      switch(a1)
      {
        case '-':
          return "MediumHigh";
        case '2':
          return "High";
        case '<':
          return "Max";
      }
    }
  }

  else if (a1 <= 14)
  {
    if (!a1)
    {
      return "Default";
    }

    if (a1 == 10)
    {
      return "Periodic";
    }
  }

  else
  {
    switch(a1)
    {
      case 15:
        return "PeriodicHigh";
      case 20:
        return "Background";
      case 30:
        return "Low";
    }
  }

  return "?";
}

const char *sub_100597B40(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

uint64_t sub_1005985D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10059862C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1005986AC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984130);
  v1 = sub_10000C4AC(v0, qword_100984130);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100598774(void *a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v58 - v5;
  v7 = type metadata accessor for AuthenticationSecurityRequest(0);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v65 = v11;
  v66 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v58 - v12);
  v14 = type metadata accessor for Date();
  v67 = *(v14 - 8);
  v15 = *(v67 + 64);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v62 = v14;
    if (qword_100973AC0 == -1)
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
  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_100984130);
  v26 = a1;
  v27 = v1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v58 = v13;
    v31 = v30;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v59 = v6;
    v34 = v17;
    v35 = v33;
    v70[0] = v33;
    *v31 = 138412546;
    *(v31 + 4) = v26;
    *v32 = v26;
    *(v31 + 12) = 2080;
    v36 = v26;
    v37 = UUID.uuidString.getter();
    v39 = sub_10000C4E4(v37, v38, v70);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Received authentication pairing request: %@ for sessionID %s", v31, 0x16u);
    sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v35);
    v17 = v34;
    v6 = v59;

    v13 = v58;
  }

  sub_1004FDD9C();
  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v27[v40], &v68, &qword_100982080, &unk_1007FDD30);
  if (v69)
  {
    sub_1000121F8(&v68, v70);
    v41 = *&v27[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
    v61 = v26;
    if (v41 > 0x15)
    {
      v42 = 786431;
    }

    else
    {
      v42 = qword_10080B920[v41];
    }

    Date.init()();
    v46 = v62;
    v47 = *(v63 + 20);
    v48 = v17;
    v60 = v17;
    v49 = v67;
    (*(v67 + 16))(v13 + v47, v48, v62);
    *v13 = v42;
    v50 = type metadata accessor for TaskPriority();
    (*(*(v50 - 8) + 56))(v6, 1, 1, v50);
    v51 = v66;
    sub_100356068(v13, v66);
    sub_1002A9938(v70, &v68);
    v52 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v53 = (v65 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v27;
    sub_100464F60(v51, v54 + v52);
    v55 = v61;
    *(v54 + v53) = v61;
    sub_1000121F8(&v68, v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    v56 = v55;
    v57 = v27;
    sub_1002B3098(0, 0, v6, &unk_10080B910, v54);

    sub_1003560CC(v13);
    (*(v49 + 8))(v60, v46);
    return sub_10000C60C(v70);
  }

  else
  {
    sub_100005508(&v68, &qword_100982080, &unk_1007FDD30);
    v43 = sub_100010F88(10, 0xD000000000000014, 0x80000001007967D0);
    sub_10059EEE0(v43, v44, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);
  }
}

uint64_t sub_100598E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[41] = v8;
  v9 = *(v8 - 8);
  v7[42] = v9;
  v10 = *(v9 + 64) + 15;
  v7[43] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[44] = v11;
  v12 = *(v11 - 8);
  v7[45] = v12;
  v13 = *(v12 + 64) + 15;
  v7[46] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v7[47] = v14;
  v15 = *(v14 - 8);
  v7[48] = v15;
  v16 = *(v15 + 64) + 15;
  v7[49] = swift_task_alloc();

  return _swift_task_switch(sub_100598F80, 0, 0);
}

uint64_t sub_100598F80()
{
  v131 = v0;
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, v0 + 64, &qword_10097A9C8, &unk_1007FDD40);
  if (*(v0 + 88))
  {
    sub_1002A9938(v0 + 64, v0 + 144);
    sub_100005508(v0 + 64, &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0((v0 + 144), *(v0 + 168)) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    v4 = *sub_10002CDC0(v3, v3[3]);
    v5 = swift_task_alloc();
    *(v0 + 400) = v5;
    *v5 = v0;
    v5[1] = sub_100599E88;
    v6 = *(v0 + 304);

    return sub_100351944(v6);
  }

  sub_100005508(v0 + 64, &qword_10097A9C8, &unk_1007FDD40);
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 296);
  v9 = type metadata accessor for Logger();
  *(v0 + 416) = sub_10000C4AC(v9, qword_100984130);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v130[0] = v15;
    *v14 = 136315138;
    v16 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
    v17 = sub_100027340();
    v19 = sub_10000C4E4(v17, v18, v130);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Authentication Session type: %s", v14, 0xCu);
    sub_10000C60C(v15);
  }

  v20 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  *(v0 + 424) = v20;
  if (!v20)
  {
    v25 = sub_100010F88(10, 0xD000000000000039, 0x80000001007967F0);
    v27 = v26;
    sub_1000115C8();
    v28 = swift_allocError();
    *v29 = v25;
    *(v29 + 8) = v27;
    swift_willThrow();
    goto LABEL_16;
  }

  v21 = *(v0 + 296);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  *(v0 + 432) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v23 = *(v21 + v22);
  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 440) = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 448) = *(v21 + v24);
  if (v23 == 8)
  {

    sub_10067B040();
    sub_10067A7F8(0, 0xF000000000000000);
    v32 = v31;

    *(v0 + 488) = v32;
    v61 = *(v0 + 424);
    v62 = *(v0 + 432);
    v63 = *(v0 + 296);
    v64 = v32;
    UUID.uuidString.getter();
    v65 = String._bridgeToObjectiveC()();

    [v61 setSessionID:v65];

    [v61 setVersion:1];
    v66 = Data.init(referencing:)();
    v68 = v67;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v66, v68);
    [v61 setToken:isa];

    if (HIDWORD(*(v63 + v62)))
    {
      __break(1u);
      goto LABEL_53;
    }

    v70 = *(v0 + 296);
    [*(v0 + 424) setType:?];
    v71 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
    if (*(v70 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
    {
      v72 = *(v0 + 416);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Requesting arming UI", v75, 2u);
      }

      v76 = *(v0 + 424);

      [v76 setRequestArmingUI:*(v70 + v71)];
    }

    v77 = [*(v0 + 424) data];
    if (v77)
    {
      v78 = v77;
      v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      *(v0 + 496) = v79;
      *(v0 + 504) = v81;
      v82 = [objc_opt_self() standardUserDefaults];
      v83 = String._bridgeToObjectiveC()();
      v84 = [v82 integerForKey:v83];

      if (v84 >= 1)
      {
        v85 = *(v0 + 416);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 134217984;
          *(v88 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v86, v87, "### TESTING ONLY: start delaySendingPairingResponse for %ld seconds", v88, 0xCu);
        }

        v89 = *(v0 + 392);

        static Clock<>.continuous.getter();
        v90 = swift_task_alloc();
        *(v0 + 512) = v90;
        *v90 = v0;
        v90[1] = sub_10059C2CC;
        v91 = *(v0 + 392);

        return sub_10002ED10(1000000000000000000 * v84, (v84 * 0xDE0B6B3A7640000uLL) >> 64, 0, 0, 1);
      }

      v115 = *(v0 + 496);
      v114 = *(v0 + 504);
      v126 = *(v0 + 488);
      v127 = *(v0 + 424);
      v116 = *(v0 + 368);
      v117 = *(v0 + 344);
      v128 = *(v0 + 360);
      v129 = *(v0 + 352);
      v118 = *(v0 + 328);
      v119 = *(v0 + 336);
      v120 = *(v0 + 296);
      v125 = *&v120[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
      sub_1002A9938(*(v0 + 320), v0 + 104);
      v121 = swift_allocObject();
      v121[2] = v120;
      v121[3] = v115;
      v121[4] = v114;
      sub_1000121F8((v0 + 104), (v121 + 5));
      *(v0 + 48) = sub_10059FFB4;
      *(v0 + 56) = v121;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100011678;
      *(v0 + 40) = &unk_1008E84D8;
      v122 = _Block_copy((v0 + 16));
      v123 = v120;
      sub_100294008(v115, v114);
      static DispatchQoS.unspecified.getter();
      *(v0 + 288) = _swiftEmptyArrayStorage;
      sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v122);
      sub_100026AC0(v115, v114);

      (*(v119 + 8))(v117, v118);
      (*(v128 + 8))(v116, v129);
      v124 = *(v0 + 56);

      goto LABEL_47;
    }

    v109 = *(v0 + 424);
    v110 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v112 = v111;
    sub_1000115C8();
    v28 = swift_allocError();
    *v113 = v110;
    *(v113 + 8) = v112;
    swift_willThrow();

LABEL_16:
    *(v0 + 248) = v28;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v33 = *(v0 + 296);

      sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      v34 = *(v0 + 248);
LABEL_46:

LABEL_47:
      v105 = *(v0 + 392);
      v106 = *(v0 + 368);
      v107 = *(v0 + 344);

      v108 = *(v0 + 8);

      return v108();
    }

    v35 = *(v0 + 248);

    *(v0 + 256) = v28;
    swift_errorRetain();
    sub_1004F42D4();
    if (!swift_dynamicCast())
    {
      v42 = *(v0 + 256);

      if (qword_100973AC0 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v9, qword_100984130);
      swift_errorRetain();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v130[0] = v46;
        *v45 = 136315138;
        *(v0 + 272) = v28;
        swift_errorRetain();
        v47 = String.init<A>(describing:)();
        v49 = sub_10000C4E4(v47, v48, v130);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "Unexpected error: %s", v45, 0xCu);
        sub_10000C60C(v46);
      }

      v50 = *(v0 + 296);
      v51 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v51, v52, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_46;
    }

    v68 = *(v0 + 264);
    v36 = [v68 code];
    v37 = [v68 domain];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {

LABEL_28:
      v54 = *(v0 + 296);
      v55 = SFAuthenticationErrorCodeToString();
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_100010F88(v36, v56, v58);
      sub_10059EEE0(v59, v60, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_45:
      v104 = *(v0 + 256);
      goto LABEL_46;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_28;
    }

    if (qword_100973AC0 == -1)
    {
LABEL_42:
      sub_10000C4AC(v9, qword_100984130);
      v92 = v68;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v130[0] = v96;
        *v95 = 136315138;
        *(v0 + 280) = v92;
        v97 = v92;
        v98 = String.init<A>(describing:)();
        v100 = sub_10000C4E4(v98, v99, v130);

        *(v95 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v93, v94, "Unexpected error: %s", v95, 0xCu);
        sub_10000C60C(v96);
      }

      v101 = *(v0 + 296);
      v102 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v102, v103, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_45;
    }

LABEL_53:
    swift_once();
    goto LABEL_42;
  }

  v30 = swift_task_alloc();
  *(v0 + 456) = v30;
  *v30 = v0;
  v30[1] = sub_10059B2D0;

  return sub_100678A54();
}

uint64_t sub_100599E88()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_10059AD74;
  }

  else
  {
    v3 = sub_100599F9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100599F9C()
{
  v127 = v0;
  sub_10000C60C((v0 + 144));
  v1 = *(v0 + 408);
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v3 = type metadata accessor for Logger();
  *(v0 + 416) = sub_10000C4AC(v3, qword_100984130);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 296);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v126[0] = v9;
    *v8 = 136315138;
    v10 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
    v11 = sub_100027340();
    v13 = sub_10000C4E4(v11, v12, v126);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Authentication Session type: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  v14 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  *(v0 + 424) = v14;
  if (!v14)
  {
    v21 = sub_100010F88(10, 0xD000000000000039, 0x80000001007967F0);
    v23 = v22;
    sub_1000115C8();
    v20 = swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();
    goto LABEL_14;
  }

  v15 = *(v0 + 296);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  *(v0 + 432) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v17 = *(v15 + v16);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 440) = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 448) = *(v15 + v18);
  if (v17 != 8)
  {

    v25 = swift_task_alloc();
    *(v0 + 456) = v25;
    *v25 = v0;
    v25[1] = sub_10059B2D0;

    return sub_100678A54();
  }

  v19 = v14;

  sub_10067B040();
  v20 = v1;
  if (v1)
  {

    goto LABEL_14;
  }

  sub_10067A7F8(0, 0xF000000000000000);
  v28 = v27;

  *(v0 + 488) = v28;
  v57 = *(v0 + 424);
  v58 = *(v0 + 432);
  v59 = *(v0 + 296);
  v60 = v28;
  UUID.uuidString.getter();
  v61 = String._bridgeToObjectiveC()();

  [v57 setSessionID:v61];

  [v57 setVersion:1];
  v62 = Data.init(referencing:)();
  v64 = v63;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v62, v64);
  [v57 setToken:isa];

  if (HIDWORD(*(v59 + v58)))
  {
    __break(1u);
    goto LABEL_51;
  }

  v66 = *(v0 + 296);
  [*(v0 + 424) setType:?];
  v67 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
  if (*(v66 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
  {
    v68 = *(v0 + 416);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Requesting arming UI", v71, 2u);
    }

    v72 = *(v0 + 424);

    [v72 setRequestArmingUI:*(v66 + v67)];
  }

  v73 = [*(v0 + 424) data];
  if (!v73)
  {
    v105 = *(v0 + 424);
    v106 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v108 = v107;
    sub_1000115C8();
    v20 = swift_allocError();
    *v109 = v106;
    *(v109 + 8) = v108;
    swift_willThrow();

LABEL_14:
    *(v0 + 248) = v20;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v29 = *(v0 + 296);

      sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      v30 = *(v0 + 248);
LABEL_44:

LABEL_45:
      v101 = *(v0 + 392);
      v102 = *(v0 + 368);
      v103 = *(v0 + 344);

      v104 = *(v0 + 8);

      return v104();
    }

    v31 = *(v0 + 248);

    *(v0 + 256) = v20;
    swift_errorRetain();
    sub_1004F42D4();
    if (!swift_dynamicCast())
    {
      v38 = *(v0 + 256);

      if (qword_100973AC0 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v3, qword_100984130);
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v126[0] = v42;
        *v41 = 136315138;
        *(v0 + 272) = v20;
        swift_errorRetain();
        v43 = String.init<A>(describing:)();
        v45 = sub_10000C4E4(v43, v44, v126);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unexpected error: %s", v41, 0xCu);
        sub_10000C60C(v42);
      }

      v46 = *(v0 + 296);
      v47 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v47, v48, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_44;
    }

    v64 = *(v0 + 264);
    v32 = [v64 code];
    v33 = [v64 domain];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

LABEL_26:
      v50 = *(v0 + 296);
      v51 = SFAuthenticationErrorCodeToString();
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_100010F88(v32, v52, v54);
      sub_10059EEE0(v55, v56, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_43:
      v100 = *(v0 + 256);
      goto LABEL_44;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_26;
    }

    if (qword_100973AC0 == -1)
    {
LABEL_40:
      sub_10000C4AC(v3, qword_100984130);
      v88 = v64;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v126[0] = v92;
        *v91 = 136315138;
        *(v0 + 280) = v88;
        v93 = v88;
        v94 = String.init<A>(describing:)();
        v96 = sub_10000C4E4(v94, v95, v126);

        *(v91 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v89, v90, "Unexpected error: %s", v91, 0xCu);
        sub_10000C60C(v92);
      }

      v97 = *(v0 + 296);
      v98 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v98, v99, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_43;
    }

LABEL_51:
    swift_once();
    goto LABEL_40;
  }

  v74 = v73;
  v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  *(v0 + 496) = v75;
  *(v0 + 504) = v77;
  v78 = [objc_opt_self() standardUserDefaults];
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 integerForKey:v79];

  if (v80 < 1)
  {
    v111 = *(v0 + 496);
    v110 = *(v0 + 504);
    v122 = *(v0 + 488);
    v123 = *(v0 + 424);
    v112 = *(v0 + 368);
    v113 = *(v0 + 344);
    v124 = *(v0 + 360);
    v125 = *(v0 + 352);
    v114 = *(v0 + 328);
    v115 = *(v0 + 336);
    v116 = *(v0 + 296);
    v121 = *&v116[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    sub_1002A9938(*(v0 + 320), v0 + 104);
    v117 = swift_allocObject();
    v117[2] = v116;
    v117[3] = v111;
    v117[4] = v110;
    sub_1000121F8((v0 + 104), (v117 + 5));
    *(v0 + 48) = sub_10059FFB4;
    *(v0 + 56) = v117;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100011678;
    *(v0 + 40) = &unk_1008E84D8;
    v118 = _Block_copy((v0 + 16));
    v119 = v116;
    sub_100294008(v111, v110);
    static DispatchQoS.unspecified.getter();
    *(v0 + 288) = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v118);
    sub_100026AC0(v111, v110);

    (*(v115 + 8))(v113, v114);
    (*(v124 + 8))(v112, v125);
    v120 = *(v0 + 56);

    goto LABEL_45;
  }

  v81 = *(v0 + 416);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 134217984;
    *(v84 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v82, v83, "### TESTING ONLY: start delaySendingPairingResponse for %ld seconds", v84, 0xCu);
  }

  v85 = *(v0 + 392);

  static Clock<>.continuous.getter();
  v86 = swift_task_alloc();
  *(v0 + 512) = v86;
  *v86 = v0;
  v86[1] = sub_10059C2CC;
  v87 = *(v0 + 392);

  return sub_10002ED10(1000000000000000000 * v80, (v80 * 0xDE0B6B3A7640000uLL) >> 64, 0, 0, 1);
}

uint64_t sub_10059AD74()
{
  v53 = v0;
  sub_10000C60C((v0 + 144));
  v1 = *(v0 + 408);
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 296);

    sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    v3 = *(v0 + 248);
    goto LABEL_22;
  }

  v4 = *(v0 + 248);

  *(v0 + 256) = v1;
  swift_errorRetain();
  sub_1004F42D4();
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 264);
    v6 = [v5 code];
    v7 = [v5 domain];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        if (qword_100973AC0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10000C4AC(v14, qword_100984130);
        v5 = v5;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v52 = v18;
          *v17 = 136315138;
          *(v0 + 280) = v5;
          v19 = v5;
          v20 = String.init<A>(describing:)();
          v22 = sub_10000C4E4(v20, v21, &v52);

          *(v17 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected error: %s", v17, 0xCu);
          sub_10000C60C(v18);
        }

        v23 = *(v0 + 296);
        v24 = 10;
        v25 = 0;
        v26 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v39 = *(v0 + 296);
    v40 = SFAuthenticationErrorCodeToString();
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v24 = v6;
    v25 = v41;
    v26 = v43;
LABEL_21:
    v44 = sub_100010F88(v24, v25, v26);
    sub_10059EEE0(v44, v45, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    v46 = *(v0 + 256);
    goto LABEL_22;
  }

  v27 = *(v0 + 256);

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_100984130);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136315138;
    *(v0 + 272) = v1;
    swift_errorRetain();
    v33 = String.init<A>(describing:)();
    v35 = sub_10000C4E4(v33, v34, &v52);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unexpected error: %s", v31, 0xCu);
    sub_10000C60C(v32);
  }

  v36 = *(v0 + 296);
  v37 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_10059EEE0(v37, v38, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_22:

  v47 = *(v0 + 392);
  v48 = *(v0 + 368);
  v49 = *(v0 + 344);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10059B2D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 456);
  v9 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v6 = sub_10059CC90;
  }

  else
  {
    v7 = v4[56];

    v6 = sub_10059B3F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10059B3F0()
{
  v153 = v0;
  v1 = [*(v0 + 312) longTermKey];
  if (!v1)
  {
    v21 = *(v0 + 464);
    v22 = *(v0 + 472);
    v23 = *(v0 + 424);
    v24 = sub_100010F88(10, 0xD000000000000015, 0x800000010078CD90);
    v26 = v25;
    sub_1000115C8();
    v27 = swift_allocError();
    *v28 = v24;
    *(v28 + 8) = v26;
    swift_willThrow();
    sub_100026AC0(v21, v22);

    goto LABEL_9;
  }

  v2 = *(v0 + 440);
  v3 = *(v0 + 296);
  v4 = v1;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + v2);
  v9 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksManager);

  sub_100294008(v5, v7);
  v150 = v5;
  v10 = v7;
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 24);
  v12 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 32);
  v14 = sub_10002CDC0((v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice), v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v13);
  (*(v12 + 8))(v13, v12);
  v19 = v18;
  (*(v15 + 8))(v17, v13);
  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v29 = *(v0 + 480);

  [v9 signAndStoreRemoteLTK:v11.super.isa forDeviceID:v20];

  sub_10067A2BC();
  v27 = v29;
  if (v29)
  {
    v31 = *(v0 + 464);
    v30 = *(v0 + 472);
    v32 = *(v0 + 424);

    sub_100026AC0(v150, v10);

    sub_100026AC0(v31, v30);
    sub_100026AC0(v150, v10);
    goto LABEL_9;
  }

  sub_10067A7F8(0, 0xF000000000000000);
  v34 = *(v0 + 464);
  v33 = *(v0 + 472);
  v67 = v66;
  v68 = *(v0 + 416);

  sub_100026AC0(v150, v10);
  v69 = v67;
  sub_100294008(v34, v33);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  sub_100026AC0(v34, v33);
  if (os_log_type_enabled(v70, v71))
  {
    v73 = *(v0 + 464);
    v72 = *(v0 + 472);
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v152[0] = v75;
    *v74 = 136315138;
    v76 = Data.debugDescription.getter();
    v78 = sub_10000C4E4(v76, v77, v152);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v70, v71, "Sending localAttestedLTK: %s", v74, 0xCu);
    sub_10000C60C(v75);
  }

  v80 = *(v0 + 464);
  v79 = *(v0 + 472);
  v81 = *(v0 + 424);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v81 setLongTermKey:isa];

  sub_100026AC0(v150, v10);
  sub_100026AC0(v80, v79);
  *(v0 + 488) = v69;
  v38 = *(v0 + 424);
  v83 = *(v0 + 432);
  v84 = *(v0 + 296);
  UUID.uuidString.getter();
  v85 = String._bridgeToObjectiveC()();

  [v38 setSessionID:v85];

  [v38 setVersion:1];
  v86 = Data.init(referencing:)();
  v88 = v87;

  v89 = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v86, v88);
  [v38 setToken:v89];

  if (HIDWORD(*(v84 + v83)))
  {
    __break(1u);
    goto LABEL_48;
  }

  v90 = *(v0 + 296);
  [*(v0 + 424) setType:?];
  v91 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
  if (*(v90 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
  {
    v92 = *(v0 + 416);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Requesting arming UI", v95, 2u);
    }

    v96 = *(v0 + 424);

    [v96 setRequestArmingUI:*(v90 + v91)];
  }

  v97 = [*(v0 + 424) data];
  if (!v97)
  {
    v130 = *(v0 + 424);
    v131 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v133 = v132;
    sub_1000115C8();
    v27 = swift_allocError();
    *v134 = v131;
    *(v134 + 8) = v133;
    swift_willThrow();

LABEL_9:
    *(v0 + 248) = v27;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v35 = *(v0 + 296);

      sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      v36 = *(v0 + 248);
LABEL_41:

LABEL_42:
      v126 = *(v0 + 392);
      v127 = *(v0 + 368);
      v128 = *(v0 + 344);

      v129 = *(v0 + 8);

      return v129();
    }

    v37 = *(v0 + 248);

    *(v0 + 256) = v27;
    swift_errorRetain();
    sub_1004F42D4();
    if (!swift_dynamicCast())
    {
      v45 = *(v0 + 256);

      if (qword_100973AC0 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000C4AC(v46, qword_100984130);
      swift_errorRetain();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v152[0] = v50;
        *v49 = 136315138;
        *(v0 + 272) = v27;
        swift_errorRetain();
        v51 = String.init<A>(describing:)();
        v53 = sub_10000C4E4(v51, v52, v152);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unexpected error: %s", v49, 0xCu);
        sub_10000C60C(v50);
      }

      v54 = *(v0 + 296);
      v55 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v55, v56, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_41;
    }

    v38 = *(v0 + 264);
    v39 = [v38 code];
    v40 = [v38 domain];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
    {

LABEL_21:
      v58 = *(v0 + 296);
      v59 = SFAuthenticationErrorCodeToString();
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = v39;
      v64 = v60;
      v65 = v62;
LABEL_40:
      v123 = sub_100010F88(v63, v64, v65);
      sub_10059EEE0(v123, v124, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      v125 = *(v0 + 256);
      goto LABEL_41;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_21;
    }

    if (qword_100973AC0 == -1)
    {
LABEL_37:
      v113 = type metadata accessor for Logger();
      sub_10000C4AC(v113, qword_100984130);
      v38 = v38;
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v152[0] = v117;
        *v116 = 136315138;
        *(v0 + 280) = v38;
        v118 = v38;
        v119 = String.init<A>(describing:)();
        v121 = sub_10000C4E4(v119, v120, v152);

        *(v116 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v114, v115, "Unexpected error: %s", v116, 0xCu);
        sub_10000C60C(v117);
      }

      v122 = *(v0 + 296);
      v63 = 10;
      v64 = 0;
      v65 = 0xE000000000000000;
      goto LABEL_40;
    }

LABEL_48:
    swift_once();
    goto LABEL_37;
  }

  v98 = v97;
  v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  *(v0 + 496) = v99;
  *(v0 + 504) = v101;
  v102 = [objc_opt_self() standardUserDefaults];
  v103 = String._bridgeToObjectiveC()();
  v104 = [v102 integerForKey:v103];

  if (v104 < 1)
  {
    v136 = *(v0 + 496);
    v135 = *(v0 + 504);
    v147 = *(v0 + 488);
    v148 = *(v0 + 424);
    v137 = *(v0 + 368);
    v138 = *(v0 + 344);
    v149 = *(v0 + 360);
    v151 = *(v0 + 352);
    v139 = *(v0 + 328);
    v140 = *(v0 + 336);
    v141 = *(v0 + 296);
    v146 = *&v141[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    sub_1002A9938(*(v0 + 320), v0 + 104);
    v142 = swift_allocObject();
    v142[2] = v141;
    v142[3] = v136;
    v142[4] = v135;
    sub_1000121F8((v0 + 104), (v142 + 5));
    *(v0 + 48) = sub_10059FFB4;
    *(v0 + 56) = v142;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100011678;
    *(v0 + 40) = &unk_1008E84D8;
    v143 = _Block_copy((v0 + 16));
    v144 = v141;
    sub_100294008(v136, v135);
    static DispatchQoS.unspecified.getter();
    *(v0 + 288) = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v143);
    sub_100026AC0(v136, v135);

    (*(v140 + 8))(v138, v139);
    (*(v149 + 8))(v137, v151);
    v145 = *(v0 + 56);

    goto LABEL_42;
  }

  v105 = *(v0 + 416);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 134217984;
    *(v108 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v106, v107, "### TESTING ONLY: start delaySendingPairingResponse for %ld seconds", v108, 0xCu);
  }

  v109 = *(v0 + 392);

  static Clock<>.continuous.getter();
  v110 = swift_task_alloc();
  *(v0 + 512) = v110;
  *v110 = v0;
  v110[1] = sub_10059C2CC;
  v111 = *(v0 + 392);

  return sub_10002ED10(1000000000000000000 * v104, (v104 * 0xDE0B6B3A7640000uLL) >> 64, 0, 0, 1);
}

uint64_t sub_10059C2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v5 = sub_10059C71C;
  }

  else
  {
    v5 = sub_10059C434;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10059C434()
{
  v1 = v0[52];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "### TESTING ONLY: end delaySendingPairingResponse", v4, 2u);
  }

  v6 = v0[62];
  v5 = v0[63];
  v22 = v0[61];
  v23 = v0[53];
  v7 = v0[46];
  v8 = v0[43];
  v24 = v0[45];
  v25 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v11 = v0[37];
  v21 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  sub_1002A9938(v0[40], (v0 + 13));
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v6;
  v12[4] = v5;
  sub_1000121F8((v0 + 13), (v12 + 5));
  v0[6] = sub_10059FFB4;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E84D8;
  v13 = _Block_copy(v0 + 2);
  v14 = v11;
  sub_100294008(v6, v5);
  static DispatchQoS.unspecified.getter();
  v0[36] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v13);
  sub_100026AC0(v6, v5);

  (*(v10 + 8))(v8, v9);
  (*(v24 + 8))(v7, v25);
  v15 = v0[7];

  v16 = v0[49];
  v17 = v0[46];
  v18 = v0[43];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10059C71C()
{
  v56 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 424);

  sub_100026AC0(v1, v2);
  v4 = *(v0 + 520);
  *(v0 + 248) = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 296);

    sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    v6 = *(v0 + 248);
    goto LABEL_22;
  }

  v7 = *(v0 + 248);

  *(v0 + 256) = v4;
  swift_errorRetain();
  sub_1004F42D4();
  if (swift_dynamicCast())
  {

    v8 = *(v0 + 264);
    v9 = [v8 code];
    v10 = [v8 domain];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        if (qword_100973AC0 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000C4AC(v17, qword_100984130);
        v8 = v8;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v55 = v21;
          *v20 = 136315138;
          *(v0 + 280) = v8;
          v22 = v8;
          v23 = String.init<A>(describing:)();
          v25 = sub_10000C4E4(v23, v24, &v55);

          *(v20 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v18, v19, "Unexpected error: %s", v20, 0xCu);
          sub_10000C60C(v21);
        }

        v26 = *(v0 + 296);
        v27 = 10;
        v28 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v42 = *(v0 + 296);
    v43 = SFAuthenticationErrorCodeToString();
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v27 = v9;
    v28 = v44;
    v29 = v46;
LABEL_21:
    v47 = sub_100010F88(v27, v28, v29);
    sub_10059EEE0(v47, v48, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    v49 = *(v0 + 256);
    goto LABEL_22;
  }

  v30 = *(v0 + 256);

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000C4AC(v31, qword_100984130);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v55 = v35;
    *v34 = 136315138;
    *(v0 + 272) = v4;
    swift_errorRetain();
    v36 = String.init<A>(describing:)();
    v38 = sub_10000C4E4(v36, v37, &v55);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unexpected error: %s", v34, 0xCu);
    sub_10000C60C(v35);
  }

  v39 = *(v0 + 296);
  v40 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_10059EEE0(v40, v41, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_22:

  v50 = *(v0 + 392);
  v51 = *(v0 + 368);
  v52 = *(v0 + 344);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_10059CC90()
{
  v54 = v0;
  v1 = *(v0 + 448);

  v2 = *(v0 + 480);
  *(v0 + 248) = v2;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 296);

    sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    v4 = *(v0 + 248);
    goto LABEL_22;
  }

  v5 = *(v0 + 248);

  *(v0 + 256) = v2;
  swift_errorRetain();
  sub_1004F42D4();
  if (swift_dynamicCast())
  {

    v6 = *(v0 + 264);
    v7 = [v6 code];
    v8 = [v6 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (qword_100973AC0 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_100984130);
        v6 = v6;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v53 = v19;
          *v18 = 136315138;
          *(v0 + 280) = v6;
          v20 = v6;
          v21 = String.init<A>(describing:)();
          v23 = sub_10000C4E4(v21, v22, &v53);

          *(v18 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v16, v17, "Unexpected error: %s", v18, 0xCu);
          sub_10000C60C(v19);
        }

        v24 = *(v0 + 296);
        v25 = 10;
        v26 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v40 = *(v0 + 296);
    v41 = SFAuthenticationErrorCodeToString();
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v25 = v7;
    v26 = v42;
    v27 = v44;
LABEL_21:
    v45 = sub_100010F88(v25, v26, v27);
    sub_10059EEE0(v45, v46, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    v47 = *(v0 + 256);
    goto LABEL_22;
  }

  v28 = *(v0 + 256);

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_100984130);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53 = v33;
    *v32 = 136315138;
    *(v0 + 272) = v2;
    swift_errorRetain();
    v34 = String.init<A>(describing:)();
    v36 = sub_10000C4E4(v34, v35, &v53);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unexpected error: %s", v32, 0xCu);
    sub_10000C60C(v33);
  }

  v37 = *(v0 + 296);
  v38 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_10059EEE0(v38, v39, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_22:

  v48 = *(v0 + 392);
  v49 = *(v0 + 368);
  v50 = *(v0 + 344);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_10059D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100984130);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending authentication pairing response", v11, 2u);
  }

  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v12, &v31, &qword_10097A9C8, &unk_1007FDD40);
  if (v32)
  {
    sub_1000121F8(&v31, v33);
    v13 = sub_10002CDC0(v33, v33[3]);
    v30 = a2;
    if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
    {
      v14 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_armingUITransportType);
    }

    else
    {
      v14 = sub_1004FE08C(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
    }

    v18 = *v13;
    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v8, qword_1009895D8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v31 = v22;
      *v21 = 136315138;
      v29 = a3;
      v23 = a4;
      if (v14 <= 2u)
      {
        v24 = 0xEB0000000074656ELL;
        if (v14)
        {
          if (v14 == 1)
          {
            v24 = 0xE800000000000000;
            v25 = 0x6C61636F4C736469;
          }

          else
          {
            v25 = 0x7265746E49736469;
          }
        }

        else
        {
          v24 = 0xEB00000000746E65;
          v25 = 0x674179627261656ELL;
        }
      }

      else if (v14 > 4u)
      {
        if (v14 == 5)
        {
          v24 = 0x80000001007888E0;
          v25 = 0xD000000000000010;
        }

        else
        {
          v24 = 0xED000068746F6F74;
          v25 = 0x65756C4265726F63;
        }
      }

      else if (v14 == 3)
      {
        v24 = 0xE900000000000054;
        v25 = 0x4274726F70706172;
      }

      else
      {
        v24 = 0xEB000000004C4457;
        v25 = 0x4174726F70706172;
      }

      v26 = sub_10000C4E4(v25, v24, &v31);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Using transport type %s", v21, 0xCu);
      sub_10000C60C(v22);

      a4 = v23;
      a3 = v29;
    }

    else
    {
    }

    v27 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
    sub_1005CCC7C(v30, a3, a4, 4u, v14);
    sub_10000C60C(v33);
  }

  else
  {
    sub_100005508(&v31, &qword_10097A9C8, &unk_1007FDD40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Warning: No delegate to send response to", v17, 2u);
    }
  }

  return sub_1004FD4B0(0, 1);
}

id sub_10059D67C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_100973AC0 == -1)
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
  v10 = type metadata accessor for Logger();
  v11 = sub_10000C4AC(v10, qword_100984130);
  v12 = a1;
  v13 = v1;
  v139 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v146[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v19 = v12;
    v20 = UUID.uuidString.getter();
    v22 = sub_10000C4E4(v20, v21, v146);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received authentication pairing create secret: %@ for sessionID %s", v16, 0x16u);
    sub_100005508(v17, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v18);
  }

  sub_1004FDD9C();
  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v13[v23], &v142, &qword_100982080, &unk_1007FDD30);
  sub_10000FF90(&v142, &v140, &qword_100982080, &unk_1007FDD30);
  if (v141)
  {
    sub_100005508(&v142, &qword_100982080, &unk_1007FDD30);
    sub_1000121F8(&v140, v146);
    v24 = [v12 token];
    if (v24)
    {
      v25 = v24;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = *&v13[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession];

      v43 = sub_1006794BC(v26, v28);

      v44 = [objc_allocWithZone(SDAuthenticationPairingCreateRecord) init];
      if (v44)
      {
        v45 = v44;
        v134 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
        UUID.uuidString.getter();
        v46 = String._bridgeToObjectiveC()();

        [v45 setSessionID:v46];

        [v45 setToken:v43];
        v47 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
        [v45 setRequestArmingUI:v13[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI]];
        v48 = [v45 data];
        if (v48)
        {
          v137 = v45;
          v138 = v43;
          v49 = v48;
          v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v50;

          v51 = [objc_opt_self() standardUserDefaults];
          v52 = String._bridgeToObjectiveC()();
          v53 = [v51 BOOLForKey:v52];

          v54 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
          swift_beginAccess();
          sub_10000FF90(&v13[v54], &v140, &qword_10097A9C8, &unk_1007FDD40);
          if (v141)
          {
            v133 = v54;
            sub_1000121F8(&v140, &v142);
            v55 = v138;
            if (v53)
            {
              v56 = Logger.logObject.getter();
              v57 = static os_log_type_t.error.getter();
              v58 = os_log_type_enabled(v56, v57);
              v59 = v137;
              if (v58)
              {
                v60 = swift_slowAlloc();
                *v60 = 0;
                _os_log_impl(&_mh_execute_header, v56, v57, "### TESTING ONLY: Skip sending authentication pairing create record due to default skipSendAuthenticationPairingCreateRecord", v60, 2u);
                v55 = v138;
              }

              v61 = v59;
            }

            else
            {
              v76 = sub_10002CDC0(&v142, v144);
              v61 = v137;
              if (v13[v47] == 1)
              {
                LODWORD(v132) = v13[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_armingUITransportType];
              }

              else
              {
                LODWORD(v132) = sub_1004FE08C(*&v13[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
              }

              v131 = *v76;
              if (qword_100973C48 != -1)
              {
                swift_once();
              }

              sub_10000C4AC(v10, qword_1009895D8);
              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                *&v140 = v80;
                *v79 = 136315138;
                if (v132 <= 2u)
                {
                  v82 = 0xEB0000000074656ELL;
                  v81 = v80;
                  if (v132)
                  {
                    if (v132 == 1)
                    {
                      v82 = 0xE800000000000000;
                      v83 = 0x6C61636F4C736469;
                    }

                    else
                    {
                      v83 = 0x7265746E49736469;
                    }
                  }

                  else
                  {
                    v82 = 0xEB00000000746E65;
                    v83 = 0x674179627261656ELL;
                  }
                }

                else
                {
                  v81 = v80;
                  if (v132 > 4u)
                  {
                    if (v132 == 5)
                    {
                      v82 = 0x80000001007888E0;
                      v83 = 0xD000000000000010;
                    }

                    else
                    {
                      v82 = 0xED000068746F6F74;
                      v83 = 0x65756C4265726F63;
                    }
                  }

                  else if (v132 == 3)
                  {
                    v82 = 0xE900000000000054;
                    v83 = 0x4274726F70706172;
                  }

                  else
                  {
                    v82 = 0xEB000000004C4457;
                    v83 = 0x4174726F70706172;
                  }
                }

                v84 = sub_10000C4E4(v83, v82, &v140);

                *(v79 + 4) = v84;
                _os_log_impl(&_mh_execute_header, v77, v78, "Using transport type %s", v79, 0xCu);
                sub_10000C60C(v81);

                v55 = v138;
                v61 = v137;
              }

              else
              {
              }

              v85 = *(v131 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
              sub_1005CCC7C(v135, v136, v146, 5u, v132);
            }

            v86 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
            if (*&v13[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] == 5)
            {
              sub_1004FD4B0(0, 1);
            }

            sub_10000C60C(&v142);
            v87 = *&v13[v86];
            if (v87 != 3)
            {
LABEL_71:
              if (v87 == 5)
              {
                sub_10000C60C(v146);

                sub_100026AC0(v135, v136);
                return sub_100026AC0(v26, v28);
              }

              else
              {
                sub_10000FF90(&v13[v133], &v142, &qword_10097A9C8, &unk_1007FDD40);
                v126 = v136;
                v127 = v135;
                if (v144)
                {
                  sub_1002A9938(&v142, &v140);
                  sub_100005508(&v142, &qword_10097A9C8, &unk_1007FDD40);
                  v128 = sub_10002CDC0(&v140, v141);
                  sub_1004E2F7C(v13, *v128);
                  sub_100026AC0(v26, v28);
                  sub_100026AC0(v127, v126);

                  sub_10000C60C(v146);
                  return sub_10000C60C(&v140);
                }

                else
                {
                  sub_10000C60C(v146);

                  sub_100026AC0(v127, v126);
                  sub_100026AC0(v26, v28);
                  return sub_100005508(&v142, &qword_10097A9C8, &unk_1007FDD40);
                }
              }
            }

            v131 = v86;
            v88 = v13;
            v89 = Logger.logObject.getter();
            LODWORD(v90) = static os_log_type_t.info.getter();

            v132 = v89;
            if (!os_log_type_enabled(v89, v90))
            {

LABEL_61:
              result = [objc_opt_self() sharedManager];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v110 = result;
              UUID.uuidString.getter();
              v111 = String._bridgeToObjectiveC()();

              sub_10000FF90(&v13[v23], &v142, &qword_100982080, &unk_1007FDD30);
              v112 = v144;
              if (v144)
              {
                v113 = v111;
                v114 = v145;
                v115 = sub_10002CDC0(&v142, v144);
                v134 = v129;
                v116 = *(v112 - 8);
                v117 = *(v116 + 64);
                __chkstk_darwin(v115);
                v119 = v129 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v116 + 16))(v119);
                sub_100005508(&v142, &qword_100982080, &unk_1007FDD30);
                (*(v114 + 8))(v112, v114);
                v121 = v120;
                (*(v116 + 8))(v119, v112);
                if (v121)
                {
                  v122 = String._bridgeToObjectiveC()();
                }

                else
                {
                  v122 = 0;
                }

                v55 = v138;
                v111 = v113;
                v61 = v137;
              }

              else
              {
                sub_100005508(&v142, &qword_100982080, &unk_1007FDD30);
                v122 = 0;
              }

              [v110 setPairingID:v111 forWatchID:v122];

              v123 = Logger.logObject.getter();
              v124 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v123, v124))
              {
                v125 = swift_slowAlloc();
                *v125 = 0;
                _os_log_impl(&_mh_execute_header, v123, v124, "Pairing enabled", v125, 2u);
                v55 = v138;
              }

              v87 = *&v13[v131];
              goto LABEL_71;
            }

            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v140 = v92;
            *v91 = 136315394;
            v93 = UUID.uuidString.getter();
            v95 = sub_10000C4E4(v93, v94, &v140);

            *(v91 + 4) = v95;
            *(v91 + 12) = 2080;
            sub_10000FF90(&v13[v23], &v142, &qword_100982080, &unk_1007FDD30);
            v96 = v144;
            if (v144)
            {
              v97 = v145;
              v98 = sub_10002CDC0(&v142, v144);
              v129[1] = v129;
              v99 = *(v96 - 8);
              v130 = v90;
              v90 = v99;
              v100 = *(v99 + 64);
              __chkstk_darwin(v98);
              v129[2] = v92;
              v102 = v91;
              v103 = v129 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v90 + 16))(v103);
              sub_100005508(&v142, &qword_100982080, &unk_1007FDD30);
              v104 = (*(v97 + 8))(v96, v97);
              v106 = v105;
              v107 = v103;
              v91 = v102;
              (*(v90 + 8))(v107, v96);
              LOBYTE(v90) = v130;
              if (v106)
              {
LABEL_60:
                v108 = sub_10000C4E4(v104, v106, &v140);

                *(v91 + 14) = v108;
                v109 = v132;
                _os_log_impl(&_mh_execute_header, v132, v90, "Setting pairing ID: %s for device: %s", v91, 0x16u);
                swift_arrayDestroy();

                v55 = v138;
                v61 = v137;
                goto LABEL_61;
              }
            }

            else
            {
              sub_100005508(&v142, &qword_100982080, &unk_1007FDD30);
            }

            v106 = 0x8000000100789F30;
            v104 = 0xD000000000000015;
            goto LABEL_60;
          }

          sub_100005508(&v140, &qword_10097A9C8, &unk_1007FDD40);
          v142 = 0;
          v143 = 0xE000000000000000;
          _StringGuts.grow(_:)(61);
          v70._countAndFlagsBits = 0xD00000000000003BLL;
          v70._object = 0x8000000100796890;
          String.append(_:)(v70);
          v71._countAndFlagsBits = 0x5F28656C646E6168;
          v71._object = 0xEA0000000000293ALL;
          String.append(_:)(v71);
          v72 = sub_100010F88(25, v142, v143);
          v74 = v73;
          sub_1000115C8();
          v33 = swift_allocError();
          *v75 = v72;
          *(v75 + 8) = v74;
          swift_willThrow();
          sub_100026AC0(v26, v28);
          sub_100026AC0(v135, v136);
        }

        else
        {
          v66 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
          v68 = v67;
          sub_1000115C8();
          v33 = swift_allocError();
          *v69 = v66;
          *(v69 + 8) = v68;
          swift_willThrow();
          sub_100026AC0(v26, v28);
        }
      }

      else
      {
        v62 = sub_100010F88(10, 0xD00000000000003ELL, 0x8000000100796850);
        v64 = v63;
        sub_1000115C8();
        v33 = swift_allocError();
        *v65 = v62;
        *(v65 + 8) = v64;
        swift_willThrow();
        sub_100026AC0(v26, v28);
      }
    }

    else
    {
      v35 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
      v37 = v36;
      sub_1000115C8();
      v33 = swift_allocError();
      *v38 = v35;
      *(v38 + 8) = v37;
      swift_willThrow();
    }

    sub_10000C60C(v146);
  }

  else
  {
    sub_100005508(&v140, &qword_100982080, &unk_1007FDD30);
    v30 = sub_100010F88(10, 0xD00000000000001BLL, 0x8000000100796830);
    v32 = v31;
    sub_1000115C8();
    v33 = swift_allocError();
    *v34 = v30;
    *(v34 + 8) = v32;
    swift_willThrow();
    sub_100005508(&v142, &qword_100982080, &unk_1007FDD30);
  }

  v142 = v33;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v39 = v146[0];
    v40 = v146[1];
  }

  else
  {
    v146[0] = v33;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    if (swift_dynamicCast())
    {
      v41 = v142;
    }

    else
    {
      v41 = 25;
    }

    v39 = sub_100010F88(v41, 0, 0xE000000000000000);
  }

  sub_10059EEE0(v39, v40, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);
}

void sub_10059E9D0(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_100973AC0 == -1)
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
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984130);
  v11 = a1;
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2080;
    v18 = v11;
    v19 = UUID.uuidString.getter();
    v21 = sub_10000C4E4(v19, v20, &v39);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received authentication pairing response: %@ for sessionID %s", v15, 0x16u);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v17);
  }

  if ([v11 hasErrorCode])
  {
    v22 = [v11 errorCode];
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v39 = 0xD00000000000001ELL;
    v40 = 0x800000010078DE50;
    v23 = SFAuthenticationErrorCodeToString();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    LODWORD(v23) = sub_100010F88(v22, v39, v40);
    v29 = v28;
    sub_1000115C8();
    v30 = swift_allocError();
    *v31 = v23;
    *(v31 + 8) = v29;
    swift_willThrow();
    v38 = v30;
    swift_errorRetain();
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v32 = v39;
      v33 = v40;
    }

    else
    {
      v39 = v30;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      if (swift_dynamicCast())
      {
        v37 = v38;
      }

      else
      {
        v37 = 25;
      }

      v32 = sub_100010F88(v37, 0, 0xE000000000000000);
    }

    sub_10059EEE0(v32, v33, &unk_1008E8560, sub_10059FFF4, &unk_1008E8578);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Got message that should include error but didn't include error", v36, 2u);
    }
  }
}