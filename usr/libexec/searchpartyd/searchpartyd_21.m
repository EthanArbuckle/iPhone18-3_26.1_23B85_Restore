uint64_t sub_10024619C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for PairingErrorRecord(0);
  v8 = *(*(v56 - 8) + 64);
  v9 = __chkstk_darwin(v56);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v46 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v59 = a1;
  v58 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v18;
    if (v18 >= 1)
    {
      v32 = -v14;
      v33 = v31;
      v50 = a4;
      v51 = a1;
      v49 = v32;
      do
      {
        v47 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v52 = a2;
        v53 = a2 + v32;
        while (1)
        {
          if (v34 <= a1)
          {
            v59 = v34;
            v57 = v47;
            goto LABEL_59;
          }

          v37 = a3;
          v48 = v31;
          a3 += v32;
          v38 = v33 + v32;
          v39 = v54;
          sub_10024534C(v38, v54, type metadata accessor for PairingErrorRecord);
          v40 = v55;
          sub_10024534C(v35, v55, type metadata accessor for PairingErrorRecord);
          v41 = *(v56 + 20);
          v42 = v39 + v41 + *(type metadata accessor for PairingError(0) + 24);
          v43 = Date.compare(_:)();
          sub_1002453BC(v40, type metadata accessor for PairingErrorRecord);
          sub_1002453BC(v39, type metadata accessor for PairingErrorRecord);
          if (v43 == 1)
          {
            break;
          }

          v31 = v38;
          if (v37 < v33 || a3 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
          }

          else
          {
            v35 = v53;
            if (v37 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          a1 = v51;
          v36 = v38 > v50;
          v32 = v49;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v44 = v50;
        if (v37 < v52 || a3 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v48;
          v32 = v49;
        }

        else
        {
          v45 = v37 == v52;
          a2 = v53;
          v31 = v48;
          v32 = v49;
          if (!v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v51;
      }

      while (v33 > v44);
    }

LABEL_58:
    v59 = a2;
    v57 = v31;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v57 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v52 = a3;
      v20 = v55;
      do
      {
        v21 = v14;
        v22 = v54;
        sub_10024534C(a2, v54, type metadata accessor for PairingErrorRecord);
        v23 = a2;
        sub_10024534C(a4, v20, type metadata accessor for PairingErrorRecord);
        v24 = a4;
        v25 = *(v56 + 20);
        v26 = v22 + v25 + *(type metadata accessor for PairingError(0) + 24);
        v27 = Date.compare(_:)();
        sub_1002453BC(v20, type metadata accessor for PairingErrorRecord);
        sub_1002453BC(v22, type metadata accessor for PairingErrorRecord);
        v14 = v21;
        if (v27 == 1)
        {
          v28 = v23 + v21;
          a4 = v24;
          if (a1 < v23 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23 + v21;
            v29 = v52;
          }

          else
          {
            v29 = v52;
            if (a1 != v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v28;
          }
        }

        else
        {
          a4 = v24 + v21;
          v30 = v24;
          if (a1 < v24 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v52;
            a2 = v23;
          }

          else
          {
            v29 = v52;
            a2 = v23;
            if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = a4;
        }

        a1 += v14;
        v59 = a1;
      }

      while (a4 < v53 && a2 < v29);
    }
  }

LABEL_59:
  sub_10060AAE4(&v59, &v58, &v57);
  return 1;
}

unint64_t sub_1002466DC()
{
  result = qword_10169A768;
  if (!qword_10169A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A768);
  }

  return result;
}

uint64_t type metadata accessor for NFCTapResponse()
{
  result = qword_10169A7C8;
  if (!qword_10169A7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002467A4()
{
  result = type metadata accessor for ServerStatusCode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100246820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for ServerStatusCode();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_10169A800, &qword_101393F68);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for NFCTapResponse();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100246CDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v25 = 1;
  sub_100246D30();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_100246D88(v13, v21);
  sub_100007BAC(a1);
  return sub_100246DEC(v13);
}

uint64_t sub_100246B14()
{
  if (*v0)
  {
    result = 0x6F43737574617473;
  }

  else
  {
    result = 0x4D6572756C696166;
  }

  *v0;
  return result;
}

uint64_t sub_100246B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D6572756C696166 && a2 == 0xEE00656761737365;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
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

uint64_t sub_100246C4C(uint64_t a1)
{
  v2 = sub_100246CDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100246C88(uint64_t a1)
{
  v2 = sub_100246CDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100246CDC()
{
  result = qword_10169A808;
  if (!qword_10169A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A808);
  }

  return result;
}

unint64_t sub_100246D30()
{
  result = qword_10169A810;
  if (!qword_10169A810)
  {
    type metadata accessor for ServerStatusCode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A810);
  }

  return result;
}

uint64_t sub_100246D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NFCTapResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100246DEC(uint64_t a1)
{
  v2 = type metadata accessor for NFCTapResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100246E5C()
{
  result = qword_10169A818;
  if (!qword_10169A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A818);
  }

  return result;
}

unint64_t sub_100246EB4()
{
  result = qword_10169A820;
  if (!qword_10169A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A820);
  }

  return result;
}

unint64_t sub_100246F0C()
{
  result = qword_10169A828;
  if (!qword_10169A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A828);
  }

  return result;
}

__n128 sub_100246F60(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100246F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 32))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100246FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100247004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002475EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100247038(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_100247134(a1, *v1, *(v1 + 8));
}

unint64_t sub_10024705C(uint64_t a1)
{
  *(a1 + 8) = sub_10024708C();
  result = sub_1002470E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10024708C()
{
  result = qword_10169A830;
  if (!qword_10169A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A830);
  }

  return result;
}

unint64_t sub_1002470E0()
{
  result = qword_10169A838;
  if (!qword_10169A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A838);
  }

  return result;
}

uint64_t sub_100247134(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = sub_100519EE8(a2, a3);
  v14 = v7;
  sub_10015049C(v17, v18);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v11, v14);
  if (!v3)
  {
    sub_1000198E8();
    v12 = FixedWidthInteger.data.getter();
    v15 = v8;
    sub_10015049C(v17, v18);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v12, v15);
    sub_100235658();
    v13 = FixedWidthInteger.data.getter();
    v16 = v9;
    sub_10015049C(v17, v18);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v13, v16);
  }

  return sub_100007BAC(v17);
}

uint64_t sub_1002472D4(unsigned __int8 a1)
{
  v1 = 0x73736563637573;
  v2 = 0x4964696C61766E69;
  v3 = 0x726F707075736E75;
  if (a1 != 3)
  {
    v3 = 0x6168636165726E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x756C615677617228;
  v7._object = 0xEA00000000003A65;
  String.append(_:)(v7);

  return v4;
}

Swift::Int sub_100247454()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1002474CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

unsigned __int8 *sub_100247510@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 < 4)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1002475EC(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v32, v33);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    goto LABEL_10;
  }

  v8 = v6;
  v9 = v7;
  v30 = BYTE1(v6);
  v31 = v7;
  sub_100017D5C(v6, v7);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v8, v9);
    v10 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v10);
    swift_willThrow();
LABEL_9:
    sub_100016590(v8, v9);
LABEL_10:
    sub_100007BAC(v32);
    return sub_100007BAC(a1);
  }

  v12 = Data.trimmed.getter();
  v34 = v13;
  sub_100016590(v8, v9);
  sub_10015049C(v32, v33);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v15;
  sub_100017D5C(v14, v15);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v30 == 1)
  {
    v17 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for BinaryDecodingError.decodingError(_:), v17);
    swift_willThrow();
    v19 = v14;
    v20 = v16;
LABEL_8:
    sub_100016590(v19, v20);
    sub_100016590(v12, v34);
    goto LABEL_9;
  }

  v29 = v16;
  sub_10015049C(v32, v33);
  v21 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v23 = v22;
  v24 = v21;
  sub_100017D5C(v21, v22);
  static Endianness.current.getter();
  sub_100235658();
  v28 = v24;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v31 == 1)
  {
    v25 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for BinaryDecodingError.decodingError(_:), v25);
    swift_willThrow();
    sub_100016590(v28, v23);
    v19 = v14;
    v20 = v29;
    goto LABEL_8;
  }

  sub_100016590(v8, v9);
  sub_100016590(v14, v29);
  sub_100016590(v24, v23);
  sub_100007BAC(v32);
  sub_100007BAC(a1);
  return v12;
}

unint64_t sub_100247A38()
{
  result = qword_101696E30;
  if (!qword_101696E30)
  {
    type metadata accessor for BinaryDecodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696E30);
  }

  return result;
}

unint64_t sub_100247AA4()
{
  result = qword_10169A840;
  if (!qword_10169A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A840);
  }

  return result;
}

unint64_t sub_100247AF8()
{
  result = qword_10169A848;
  if (!qword_10169A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A848);
  }

  return result;
}

uint64_t sub_100247B68(uint64_t a1)
{
  v2 = sub_100247D1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100247BA4(uint64_t a1)
{
  v2 = sub_100247D1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100247C08(void *a1)
{
  v2 = sub_1000BC4D4(&qword_10169A850, &qword_101394388);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100247D1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100247D1C()
{
  result = qword_10169A858;
  if (!qword_10169A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A858);
  }

  return result;
}

unint64_t sub_100247D84()
{
  result = qword_10169A860;
  if (!qword_10169A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A860);
  }

  return result;
}

unint64_t sub_100247DDC()
{
  result = qword_10169A868;
  if (!qword_10169A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A868);
  }

  return result;
}

__n128 sub_100247E78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100247E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100247EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100247F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100247FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100248080()
{
  sub_100157BAC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1002480EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169A9A0, &qword_1013945D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024920C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v21[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v21[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[5];
  v17 = v3[6];
  v21[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[7];
  v20 = v3[8];
  v21[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002482CC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169A990, &qword_1013945C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1002491B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for Date();
  sub_100249260(&unk_101697F60);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for KeyDropLostItemDates(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10024847C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v25 - v9;
  v10 = sub_1000BC4D4(&qword_10169A9B0, &qword_1013945D8);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for KeyDropLostItemDates(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1002491B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = v14;
  v27 = v17;
  v19 = v30;
  v28 = v8;
  type metadata accessor for Date();
  v34 = 0;
  sub_100249260(&qword_101697F40);
  v21 = v31;
  v20 = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v27;
  sub_1001578A0(v20, v27);
  v33 = 1;
  v23 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v13, v21);
  sub_1001578A0(v23, v22 + *(v26 + 20));
  sub_100249874(v22, v29, type metadata accessor for KeyDropLostItemDates);
  sub_100007BAC(a1);
  return sub_1002498DC(v22, type metadata accessor for KeyDropLostItemDates);
}

uint64_t sub_1002487A8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169A9D0, &qword_1013945F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100249820();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for Date();
  sub_100249260(&unk_101697F60);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for DelegatedBeaconStartReunitedDates(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100248958@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v25 - v9;
  v10 = sub_1000BC4D4(&qword_10169A9C0, &qword_1013945E8);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  started = type metadata accessor for DelegatedBeaconStartReunitedDates(0);
  v15 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100249820();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = started;
  v27 = v17;
  v19 = v30;
  v28 = v8;
  type metadata accessor for Date();
  v34 = 0;
  sub_100249260(&qword_101697F40);
  v21 = v31;
  v20 = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v27;
  sub_1001578A0(v20, v27);
  v33 = 1;
  v23 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v13, v21);
  sub_1001578A0(v23, v22 + *(v26 + 20));
  sub_100249874(v22, v29, type metadata accessor for DelegatedBeaconStartReunitedDates);
  sub_100007BAC(a1);
  return sub_1002498DC(v22, type metadata accessor for DelegatedBeaconStartReunitedDates);
}

uint64_t sub_100248C84()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x696A6F6D65;
  v4 = 0x65566D6574737973;
  if (v1 != 3)
  {
    v4 = 0x754E6C6169726573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6449656C6F72;
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

uint64_t sub_100248D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002492A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100248D4C(uint64_t a1)
{
  v2 = sub_10024920C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100248D88(uint64_t a1)
{
  v2 = sub_10024920C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100248DC4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100249458(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100248E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000010134DA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010134DAB0 == a2)
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

uint64_t sub_100248F48(uint64_t a1)
{
  v2 = sub_1002491B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100248F84(uint64_t a1)
{
  v2 = sub_1002491B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100248FF0()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_10024902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000010134DA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010134DAD0 == a2)
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

uint64_t sub_100249110(uint64_t a1)
{
  v2 = sub_100249820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024914C(uint64_t a1)
{
  v2 = sub_100249820();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002491B8()
{
  result = qword_10169A998;
  if (!qword_10169A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A998);
  }

  return result;
}

unint64_t sub_10024920C()
{
  result = qword_10169A9A8;
  if (!qword_10169A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9A8);
  }

  return result;
}

uint64_t sub_100249260(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002492A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C6F72 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL)
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

uint64_t sub_100249458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_10169A9B8, &qword_1013945E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024920C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v38[0]) = 1;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38[0]) = 2;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v14;
  LOBYTE(v38[0]) = 3;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v15;
  v39 = 4;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = *(v6 + 8);
  v18 = v16;
  v27 = v19;
  v17(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v13;
  v21 = v30;
  v20 = v31;
  *&v34 = v30;
  *(&v34 + 1) = v29;
  *&v35 = v32;
  *(&v35 + 1) = v28;
  *&v36 = v31;
  *(&v36 + 1) = v18;
  v22 = v27;
  v37 = v27;
  sub_1002497B8(&v33, v38);
  sub_100007BAC(a1);
  v38[0] = v11;
  v38[1] = v13;
  v38[2] = v21;
  v38[3] = v29;
  v38[4] = v32;
  v38[5] = v28;
  v38[6] = v20;
  v38[7] = v18;
  v38[8] = v22;
  result = sub_1002497F0(v38);
  v24 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v24;
  *(a2 + 64) = v37;
  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_100249820()
{
  result = qword_10169A9C8;
  if (!qword_10169A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9C8);
  }

  return result;
}

uint64_t sub_100249874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002498DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100249970()
{
  result = qword_10169A9D8;
  if (!qword_10169A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9D8);
  }

  return result;
}

unint64_t sub_1002499C8()
{
  result = qword_10169A9E0;
  if (!qword_10169A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9E0);
  }

  return result;
}

unint64_t sub_100249A20()
{
  result = qword_10169A9E8;
  if (!qword_10169A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9E8);
  }

  return result;
}

unint64_t sub_100249A78()
{
  result = qword_10169A9F0;
  if (!qword_10169A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9F0);
  }

  return result;
}

unint64_t sub_100249AD0()
{
  result = qword_10169A9F8;
  if (!qword_10169A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9F8);
  }

  return result;
}

unint64_t sub_100249B28()
{
  result = qword_10169AA00;
  if (!qword_10169AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA00);
  }

  return result;
}

unint64_t sub_100249B80()
{
  result = qword_10169AA08;
  if (!qword_10169AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA08);
  }

  return result;
}

unint64_t sub_100249BD8()
{
  result = qword_10169AA10;
  if (!qword_10169AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA10);
  }

  return result;
}

unint64_t sub_100249C30()
{
  result = qword_10169AA18;
  if (!qword_10169AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA18);
  }

  return result;
}

uint64_t sub_100249CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64496572616873 && a2 == 0xE700000000000000)
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

uint64_t sub_100249D3C(uint64_t a1)
{
  v2 = sub_10024B8F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249D78(uint64_t a1)
{
  v2 = sub_10024B8F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249DB4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_10169AB70, &qword_101394B30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024B8F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10024B840(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100249F2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169AB80, &qword_101394B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024B7EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[15] = 0;
  type metadata accessor for UUID();
  sub_10024B840(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
    v12 = *(v3 + v11[5]);
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v11[6];
    v16[13] = 2;
    type metadata accessor for Date();
    sub_10024B840(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + v11[7]);
    v16[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10024A188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = type metadata accessor for Date();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&qword_10169AB60, &qword_101394B28);
  v34 = *(v37 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v37);
  v11 = &v29 - v10;
  v12 = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024B7EC();
  v36 = v11;
  v17 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v18 = v15;
  v20 = v32;
  v19 = v33;
  v42 = 0;
  sub_10024B840(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v20 + 32);
  v38 = v6;
  v21(v18, v35, v6);
  v41 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v12;
  *(v18 + *(v12 + 20)) = v22;
  v40 = 2;
  sub_10024B840(&qword_101697F40, &type metadata accessor for Date);
  v23 = v5;
  v24 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = a1;
  v26 = v35;
  (*(v31 + 32))(v18 + *(v35 + 6), v23, v24);
  v39 = 3;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v34 + 8))(v36, v37);
  *(v18 + *(v26 + 7)) = v27 & 1;
  sub_10024B888(v18, v30, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  sub_100007BAC(v25);
  return sub_10024B590(v18, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
}

unint64_t sub_10024A6A4()
{
  v1 = 0x64496572616873;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x43726F7469736976;
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

uint64_t sub_10024A730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10024BB74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024A758(uint64_t a1)
{
  v2 = sub_10024B7EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024A794(uint64_t a1)
{
  v2 = sub_10024B7EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024A800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(type metadata accessor for KeyDropJoinToken(0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10024A8F0, v3, 0);
}

uint64_t sub_10024A8F0()
{
  v24 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  (*(v0[13] + 16))(v1, v0[8], v0[12]);
  sub_10024B888(v3, v2, type metadata accessor for KeyDropJoinToken);
  v4 = sub_10024AE50(v1, v2);
  v0[15] = v4;
  v0[16] = v5;
  v0[17] = v6;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177CDD0);

  sub_100017D5C(v8, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  sub_100016590(v8, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = sub_100646BE8(v8, v9);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v15 = 7104878;
      v17 = 0xE300000000000000;
    }

    v18 = sub_1000136BC(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "KeyDropShareMetaDataRequest: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  v0[5] = &type metadata for KeyDropDelegatedShareMetadataRequest;
  v0[6] = sub_10024B51C();
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v9;

  sub_100017D5C(v8, v9);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_10024AC08;
  v20 = v0[10];
  v21 = v0[7];

  return sub_10103B89C(v21, (v0 + 2), 5);
}

uint64_t sub_10024AC08()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_10024ADC0;
  }

  else
  {
    v6 = *(v2 + 80);
    sub_100007BAC((v2 + 16));
    v5 = sub_10024AD30;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10024AD30()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  sub_100016590(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10024ADC0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

char *sub_10024AE50(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for P256.Signing.PrivateKey();
  object = *(v3 - 8);
  countAndFlagsBits = v3;
  v4 = object[8];
  __chkstk_darwin(v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256.Signing.ECDSASignature();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for JSONEncoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = JSONEncoder.init()();
  *v18 = sub_100281AE0;
  v18[1] = 0;
  (*(v15 + 104))(v18, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v14);
  v23 = a1;
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, a1, v24);
  sub_10024B840(&qword_10169AA28, type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent);
  v26 = v56;
  v27 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v26)
  {

    sub_10024B590(v59, type metadata accessor for KeyDropJoinToken);
    (*(v25 + 8))(a1, v24);
    sub_10024B590(v13, type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent);
  }

  else
  {
    v29 = v27;
    v56 = v22;
    v30 = v28;
    v50 = v9;
    v51 = v13;
    v49 = v6;
    v31 = (v59 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
    v32 = v31[1];
    v57 = *v31;
    v58 = v32;
    sub_100017D5C(v57, v32);
    v33 = v55;
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v57 = v29;
    v58 = v30;
    sub_1000E0A3C();
    P256.Signing.PrivateKey.signature<A>(for:)();
    v47 = v30;
    v48 = v23;
    v35 = (object[1])(v33, countAndFlagsBits);
    v13 = sub_100646BE0(v35);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v55 = qword_10177C218;
    v36 = [objc_opt_self() sharedInstance];
    v37 = [v36 isInternalBuild];

    v38 = v52;
    if (v37 && (v39 = String._bridgeToObjectiveC()(), v40 = [v55 BOOLForKey:v39], v39, (v40 & 1) != 0))
    {

      v41 = v50;
    }

    else
    {
      v55 = "DisableShareAuthorization";
      v41 = v50;
      v42 = P256.Signing.ECDSASignature.derRepresentation.getter();
      v44 = v43;
      v45 = Data.base64EncodedString(options:)(0);
      object = v45._object;
      countAndFlagsBits = v45._countAndFlagsBits;
      sub_100016590(v42, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v13;
      sub_100FFACA0(countAndFlagsBits, object, 0xD000000000000012, v55 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      v13 = v57;
    }

    sub_10024B590(v59, type metadata accessor for KeyDropJoinToken);
    (*(v25 + 8))(v48, v24);
    (*(v38 + 8))(v41, v49);
    sub_10024B590(v51, type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent);
  }

  return v13;
}

unint64_t sub_10024B51C()
{
  result = qword_10169AA20;
  if (!qword_10169AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA20);
  }

  return result;
}

uint64_t sub_10024B590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024B618()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10024B6DC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10024B770(uint64_t a1)
{
  result = sub_10024B798();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10024B798()
{
  result = qword_10169AB58;
  if (!qword_10169AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB58);
  }

  return result;
}

unint64_t sub_10024B7EC()
{
  result = qword_10169AB68;
  if (!qword_10169AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB68);
  }

  return result;
}

uint64_t sub_10024B840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024B888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024B8F0()
{
  result = qword_10169AB78;
  if (!qword_10169AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB78);
  }

  return result;
}

unint64_t sub_10024B968()
{
  result = qword_10169AB88;
  if (!qword_10169AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB88);
  }

  return result;
}

unint64_t sub_10024B9C0()
{
  result = qword_10169AB90;
  if (!qword_10169AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB90);
  }

  return result;
}

unint64_t sub_10024BA18()
{
  result = qword_10169AB98;
  if (!qword_10169AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB98);
  }

  return result;
}

unint64_t sub_10024BA70()
{
  result = qword_10169ABA0;
  if (!qword_10169ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ABA0);
  }

  return result;
}

unint64_t sub_10024BAC8()
{
  result = qword_10169ABA8;
  if (!qword_10169ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ABA8);
  }

  return result;
}

unint64_t sub_10024BB20()
{
  result = qword_10169ABB0;
  if (!qword_10169ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ABB0);
  }

  return result;
}

uint64_t sub_10024BB74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43726F7469736976 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134DAF0 == a2)
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

uint64_t sub_10024BCEC()
{
  _StringGuts.grow(_:)(21);

  type metadata accessor for MACAddress();
  sub_10024EB90(&qword_1016A4210, &type metadata accessor for MACAddress);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A4B524920;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  v3 = (v0 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x737365726464613CLL;
}

uint64_t sub_10024BE10(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169B548, &qword_101394FD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024EB3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for MACAddress();
  sub_10024EB90(&qword_10169B550, &type metadata accessor for MACAddress);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_100017D5C(v15, v12);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10024BFF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for MACAddress();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169B538, &qword_101394FD0);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for PeripheralConnectionMaterial(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10024EB3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_10024EB90(&qword_1016A41D0, &type metadata accessor for MACAddress);
  v19 = v31;
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v33 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v32;
  sub_10024EBD8(v22, v27);
  sub_100007BAC(a1);
  return sub_10024EC3C(v22);
}

uint64_t sub_10024C350()
{
  if (*v0)
  {
    result = 7041641;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_10024C384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7041641 && a2 == 0xE300000000000000)
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

uint64_t sub_10024C460(uint64_t a1)
{
  v2 = sub_10024EB3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024C49C(uint64_t a1)
{
  v2 = sub_10024EB3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10024C508(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for MACAddress();
  sub_10024EB90(&unk_1016BC080, &type metadata accessor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024C5B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MACAddress();
  sub_10024EB90(&unk_1016BC080, &type metadata accessor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return Data.hash(into:)();
}

Swift::Int sub_10024C64C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for MACAddress();
  sub_10024EB90(&unk_1016BC080, &type metadata accessor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static MACAddress.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8, v10, v11);
}

void sub_10024C7C4()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 BOOLForKey:v4];

    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
      if (v6 >> 60 != 15)
      {
        v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
        v8 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          if (v8 != 2)
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 16);
          v9 = *(v7 + 24);
          v11 = v9 - v10;
          if (!__OFSUB__(v9, v10))
          {
            goto LABEL_17;
          }

          __break(1u);
        }

        else if (!v8)
        {
          if (BYTE6(v6) < 0x20uLL)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (__OFSUB__(HIDWORD(v7), v7))
        {
          __break(1u);
          return;
        }

        v11 = HIDWORD(v7) - v7;
LABEL_17:
        sub_100017D5C(v7, v6);
        if (v11 < 32)
        {
          goto LABEL_20;
        }

LABEL_19:
        v12 = sub_100503ED4(0, 31, v7, v6);
        v14 = v13;
        v15 = *(v0 + 16);
        v16 = *(v0 + 24);
        sub_100017D5C(v15, v16);
        _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14, v15, v16);
        sub_100016590(v15, v16);
        sub_100016590(v12, v14);
LABEL_20:
        sub_100006654(v7, v6);
      }
    }
  }
}

uint64_t sub_10024C9A8()
{
  result = Data.init(base64Encoded:options:)();
  qword_10169ABB8 = result;
  qword_10169ABC0 = v1;
  return result;
}

void *sub_10024C9E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = xmmword_101394D60;
  *(v2 + 64) = xmmword_101394D60;
  *(v2 + 80) = 0xF000000000000000;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 128) = 0;
  v6 = v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  v3[14] = 0xF000000000000000;
  v3[15] = 0;
  v7 = type metadata accessor for UUID();
  v58 = v6;
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  *v8 = xmmword_10138BBF0;
  v56 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1;
  v57 = v8;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1) = xmmword_10138BBF0;
  v59 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = xmmword_10138BBF0;
  v9 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v60 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2) = xmmword_10138BBF0;
  v61 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed) = xmmword_10138BBF0;
  v11 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo);
  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_keyGenerationStatus) = 4;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = 256;
  v12 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = 1;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken) = xmmword_10138BBF0;
  v13 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
  v14 = type metadata accessor for MACAddress();
  v15 = *(*(v14 - 8) + 56);
  v16 = v3 + v13;
  v17 = a2;
  v15(v16, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) = 0;
  v18 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature) = xmmword_10138BBF0;
  v19 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial;
  v20 = type metadata accessor for PeripheralConnectionMaterial(0);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = 3;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_isPairingEligibilityDataComplete) = 0;
  v21 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_firmwareVersion;
  *v21 = 0;
  v21[4] = 1;
  v22 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  v23 = type metadata accessor for AccessoryProductInfo();
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
  v25 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_isSharedUnit) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_isManagedPeripheral) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs) = _swiftEmptyArrayStorage;
  v3[2] = a1;
  v3[3] = a2;
  sub_100017D5C(a1, a2);
  v26 = sub_100EF9784();
  v27 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  *v27 = v26;
  v27[1] = v28;
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100016590(a1, a2);
    sub_100016590(v3[2], v3[3]);
    sub_100006654(v3[5], v3[6]);
    sub_100006654(v3[7], v3[8]);
    sub_100006654(v3[9], v3[10]);
    v42 = v3[12];

    sub_100006654(v3[13], v3[14]);
    v43 = v3[16];

    sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
    sub_100006654(*v57, *(v57 + 1));
    sub_100006654(*v56, *(v56 + 1));
    sub_100006654(*v59, *(v59 + 1));
    sub_10000B3A8(v9, &qword_101697378, &unk_101391940);
    sub_10000B3A8(v10, &qword_101697320, &qword_10138BE90);
    sub_100006654(*v60, *(v60 + 1));
    sub_100006654(*v61, *(v61 + 1));
    v44 = v11[3];
    v62[2] = v11[2];
    v62[3] = v44;
    v62[4] = v11[4];
    v45 = v11[1];
    v62[0] = *v11;
    v62[1] = v45;
    sub_10000B3A8(v62, &qword_101697328, &unk_10138BEA0);
    v46 = v27[1];

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8));
    v47 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName + 8);

    v48 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8));
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress, &qword_1016A40D0, &unk_10138BE70);
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress, &qword_1016A40D0, &unk_10138BE70);
    v49 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8);

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature + 8));
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial, &qword_10169B558, &qword_1013E8940);
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8));
    v50 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);

    v51 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);

    v52 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8));
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8));
    v53 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs);

    type metadata accessor for AccessoryPairingInfo(0);
    v54 = *(*v3 + 48);
    v55 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v31 = result;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    *&v62[0] = uniqueChipID;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    *v34 = v33;
    v34[1] = v35;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v36 = result;
      chipID = MobileGestalt_get_chipID();

      *&v62[0] = chipID;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_100016590(a1, v17);
      v41 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
      *v41 = v38;
      v41[1] = v40;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D46C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashAlgorithm();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  __chkstk_darwin(v4);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v57 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  v54 = xmmword_101385D80;
  *(v11 + 16) = xmmword_101385D80;
  if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = Data.hexString.getter();
    v13 = v14;
  }

  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 64) = v15;
  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v13)
  {
    v17 = v13;
  }

  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  v18 = [objc_opt_self() defaultStore];
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    v21 = a2;
    if (a2 >> 60 == 15)
    {
      if (qword_1016944E8 != -1)
      {
        swift_once();
      }

      v21 = qword_10169ABC0;
      if (qword_10169ABC0 >> 60 == 15)
      {
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
LABEL_26:

        return 0;
      }

      v20 = qword_10169ABB8;
      sub_100017D5C(qword_10169ABB8, qword_10169ABC0);
    }

    sub_10002E98C(a1, a2);
    v22 = [v19 aa_primaryAppleAccount];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 aa_personID];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        static os_log_type_t.debug.getter();
        v29 = swift_allocObject();
        *(v29 + 16) = v54;
        *(v29 + 56) = &type metadata for String;
        *(v29 + 64) = v15;
        *(v29 + 32) = v26;
        *(v29 + 40) = v28;

        os_log(_:dso:log:_:_:)();

        static String.Encoding.utf8.getter();
        v30 = String.data(using:allowLossyConversion:)();
        v32 = v31;

        (*(v55 + 8))(v10, v56);
        if (v32 >> 60 != 15)
        {
          v34 = v51;
          v33 = v52;
          v35 = v30;
          v36 = v53;
          (*(v52 + 104))(v51, enum case for HashAlgorithm.sha256(_:), v53);
          v37 = v32;
          v38 = Data.hash(algorithm:)();
          v56 = v39;
          (*(v33 + 8))(v34, v36);
          sub_100017D5C(v20, v21);
          v40 = sub_10049C290(v20, v21);
          v42 = v41;
          v53 = v37;
          v55 = v35;
          v43 = objc_autoreleasePoolPush();
          *&v54 = v38;
          sub_100A79398(&v58, &v59);
          objc_autoreleasePoolPop(v43);
          sub_100495F0C(v59, v60, &v59);

          sub_100016590(v20, v21);
          sub_100016590(v40, v42);
          sub_100016590(v54, v56);
          sub_100006654(v55, v53);

          v44 = v59;
          v45 = v60;
          v46 = v50;
          v47 = *(v50 + 40);
          v48 = *(v50 + 48);
          *(v50 + 40) = v59;
          *(v46 + 48) = v45;
          sub_100017D5C(v44, v45);
          sub_100006654(v47, v48);
          return v44;
        }

        goto LABEL_25;
      }
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
LABEL_25:
    sub_100016590(v20, v21);
    goto LABEL_26;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_10024DAE0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3[8];
  if (v5 >> 60 == 15 || (v6 = v3[6], v6 >> 60 == 15))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
LABEL_6:
    sub_10024ECB0(&v46);
    goto LABEL_7;
  }

  v13 = v3[7];
  v14 = v3[5];
  v15 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
  if (!v15 || (v16 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8)) == 0)
  {
    sub_10002E98C(v3[7], v3[8]);
    sub_10002E98C(v14, v6);
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100006654(v14, v6);
    sub_100006654(v13, v5);
    goto LABEL_6;
  }

  v34 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
  v33 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
  sub_10002E98C(v13, v5);
  sub_10002E98C(v14, v6);

  static os_log_type_t.debug.getter();
  v31 = v15;
  v32 = v14;
  v30 = v16;
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  sub_100017D5C(v13, v5);
  v18 = Data.base64EncodedString(options:)(0);
  sub_100006654(v13, v5);
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v18;
  os_log(_:dso:log:_:_:)();

  v19 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
  v20 = v3[2];
  v21 = v3[3];
  v22 = v3[12];
  v27 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  v28 = v3[11];
  v26 = v13;
  v23 = v3[13];
  v25 = v3[14];

  sub_100017D5C(v20, v21);

  sub_10002E98C(v23, v25);
  *&v36 = a1;
  *(&v36 + 1) = a2;
  *&v37 = v26;
  *(&v37 + 1) = v5;
  *&v38 = v33;
  *(&v38 + 1) = v30;
  *&v39 = v34;
  *(&v39 + 1) = v31;
  *&v40 = v27;
  *(&v40 + 1) = v19;
  *&v41 = v20;
  *(&v41 + 1) = v21;
  *&v42 = v32;
  *(&v42 + 1) = v6;
  *&v43 = v28;
  *(&v43 + 1) = v22;
  *&v44 = v23;
  *(&v44 + 1) = v25;
  *&v45 = sub_10098E010();
  *(&v45 + 1) = v24;
  SharingCircleWildAdvertisementKey.init(key:)(&v36);
  sub_100017D5C(a1, a2);
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v46 = v36;
  v47 = v37;
LABEL_7:
  v7 = v53;
  a3[6] = v52;
  a3[7] = v7;
  v8 = v55;
  a3[8] = v54;
  a3[9] = v8;
  v9 = v49;
  a3[2] = v48;
  a3[3] = v9;
  v10 = v51;
  a3[4] = v50;
  a3[5] = v10;
  result = *&v46;
  v12 = v47;
  *a3 = v46;
  a3[1] = v12;
  return result;
}

double sub_10024DED0@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[10];
  if (v3 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_12;
  }

  v4 = v1[9];
  v5 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8);
      if (v7 >> 60 != 15)
      {
        v21 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
        v22 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
        v13 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
        v14 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
        v15 = v1[12];
        v19 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
        v20 = v1[11];
        v18 = v1[13];
        v17 = v1[14];
        sub_10002E98C(v4, v3);

        sub_10002E98C(v13, v7);

        sub_10002E98C(v18, v17);
        *&v23 = v21;
        *(&v23 + 1) = v6;
        *&v24 = v22;
        *(&v24 + 1) = v5;
        *&v25 = v19;
        *(&v25 + 1) = v14;
        *&v26 = v13;
        *(&v26 + 1) = v7;
        *&v27 = v4;
        *(&v27 + 1) = v3;
        *&v28 = v20;
        *(&v28 + 1) = v15;
        *&v29 = v18;
        *(&v29 + 1) = v17;
        *&v30 = sub_10098E010();
        *(&v30 + 1) = v16;
        SharingCircleWildAdvertisementKey.init(key:)(&v23);
        v35 = v27;
        v36 = v28;
        v37 = v29;
        v38 = v30;
        v31 = v23;
        v32 = v24;
        v33 = v25;
        v34 = v26;
        goto LABEL_13;
      }

      sub_10002E98C(v1[9], v1[10]);
      static os_log_type_t.error.getter();
      if (qword_1016950C8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  sub_10002E98C(v1[9], v1[10]);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_11:
  os_log(_:dso:log:_:_:)();
  sub_100006654(v4, v3);
LABEL_12:
  sub_10024EC98(&v31);
LABEL_13:
  v8 = v36;
  a1[4] = v35;
  a1[5] = v8;
  v9 = v38;
  a1[6] = v37;
  a1[7] = v9;
  v10 = v32;
  *a1 = v31;
  a1[1] = v10;
  result = *&v33;
  v12 = v34;
  a1[2] = v33;
  a1[3] = v12;
  return result;
}

void *sub_10024E1E8()
{
  sub_100016590(v0[2], v0[3]);
  sub_100006654(v0[5], v0[6]);
  sub_100006654(v0[7], v0[8]);
  sub_100006654(v0[9], v0[10]);
  v1 = v0[12];

  sub_100006654(v0[13], v0[14]);
  v2 = v0[16];

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId, &qword_1016980D0, &unk_10138F3B0);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2, &qword_101697378, &unk_101391940);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3, &qword_101697320, &qword_10138BE90);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8));
  sub_10024ECCC(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 72));
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8));
  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName + 8);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress, &qword_1016A40D0, &unk_10138BE70);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress, &qword_1016A40D0, &unk_10138BE70);
  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8);

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial, &qword_10169B558, &qword_1013E8940);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8));
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);

  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);

  v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo, &qword_101697268, &qword_101394FE0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8));
  v12 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs);

  return v0;
}

uint64_t sub_10024E65C()
{
  sub_10024E1E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10024E6DC()
{
  sub_10024E9E4(319, &qword_1016B1C20, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10024E9E4(319, &qword_10169AC00, &type metadata accessor for MACAddress);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10024E9E4(319, &qword_10169AC08, type metadata accessor for PeripheralConnectionMaterial);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10024E9E4(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10024E9E4(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10024E9E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10024EA80()
{
  result = type metadata accessor for MACAddress();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10024EB3C()
{
  result = qword_10169B540;
  if (!qword_10169B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B540);
  }

  return result;
}

uint64_t sub_10024EB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024EBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeripheralConnectionMaterial(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024EC3C(uint64_t a1)
{
  v2 = type metadata accessor for PeripheralConnectionMaterial(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10024EC98(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_10024ECB0(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10024ECCC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a2 >> 60 != 15)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    sub_100006654(a7, a8);

    return sub_100006654(a9, a10);
  }

  return result;
}

unint64_t sub_10024ED80()
{
  result = qword_10169B560;
  if (!qword_10169B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B560);
  }

  return result;
}

unint64_t sub_10024EDD8()
{
  result = qword_10169B568;
  if (!qword_10169B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B568);
  }

  return result;
}

unint64_t sub_10024EE30()
{
  result = qword_10169B570;
  if (!qword_10169B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B570);
  }

  return result;
}

unint64_t sub_10024EE84(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656E6E6F63736964;
    v6 = 0x656369766544656DLL;
    if (a1 != 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 != 5)
    {
      v7 = 0x6465687361656CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x646563726F66;
    v2 = 0x656C756465686373;
    v3 = 0x6F43657461647075;
    if (a1 != 3)
    {
      v3 = 0x6552746E65696C63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x646572696170;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

BOOL sub_10024EFF4()
{
  v1 = v0;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10177CEA0 + 24);

  AnyCurrentValuePublisher.value.getter();

  v3 = *(v1 + 176);
  v4 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C400;
  v6 = &_s8SPShared19LocalizationUtilityO5TableO7defaultyA2EmFWC_ptr;
  if (os_log_type_enabled(qword_10177C400, v4))
  {

    v7 = swift_slowAlloc();
    *v7 = 67109632;
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C218;
    v9 = [objc_opt_self() sharedInstance];
    v10 = [v9 isInternalBuild];

    v13 = 0;
    if (v10)
    {
      v11 = String._bridgeToObjectiveC()();
      v12 = [v8 BOOLForKey:v11];

      if (v12)
      {
        v13 = 1;
      }
    }

    *(v7 + 4) = v13;

    *(v7 + 8) = 1024;
    *(v7 + 10) = v22 == 1;
    *(v7 + 14) = 1024;
    *(v7 + 16) = v3 == 1;
    _os_log_impl(&_mh_execute_header, v5, v4, "isFirmwareUpdateAllowed: firmwareUpdateOverride: %{BOOL}d, isThisMeDevice: %{BOOL}d, singleDevice: %{BOOL}d.", v7, 0x14u);

    v6 = &_s8SPShared19LocalizationUtilityO5TableO7defaultyA2EmFWC_ptr;
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C218;
  v15 = v6[480];
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 isInternalBuild];

  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v14 BOOLForKey:v18];

    if (v19)
    {
      return 1;
    }
  }

  return v22 == 1 || v3 == 1;
}

uint64_t sub_10024F2F8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10024F394, v1, 0);
}

uint64_t sub_10024F394()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {
    v3 = v0[11];
    v4 = *(v1 + 144);

    v5 = sub_1000210EC(v3);
    if (v6)
    {
      v7 = v0[11];
      v8 = *(*(v2 + 56) + 8 * v5);
      v0[14] = v8;

      swift_beginAccess();
      sub_1007A9FC0(v7);
      swift_endAccess();

      return _swift_task_switch(sub_10024F4D0, v8, 0);
    }
  }

  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024F4D0()
{
  v2 = v0[13];
  v1 = v0[14];
  static DispatchTime.now()();
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000DFA14(v2, v1 + v4);
  swift_endAccess();
  type metadata accessor for AnalyticsPublisher();
  v0[15] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10024F60C;
  v6 = v0[14];

  return sub_101163F78(v6);
}

uint64_t sub_10024F60C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_10024F738, v3, 0);
}

uint64_t sub_10024F738()
{
  v1 = v0[14];

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10024F7A0(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 152);
  if (*(v4 + 16))
  {

    v5 = sub_1000210EC(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1007A9FC0(a1);
      swift_endAccess();

      type metadata accessor for Transaction();

      static Transaction.asyncTask(name:block:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10024F8AC(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10024F94C, a1, 0);
}

uint64_t sub_10024F94C()
{
  v1 = v0[5];
  v2 = v0[6];
  static DispatchTime.now()();
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000DFA14(v2, v1 + v4);
  swift_endAccess();
  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10024FA88;
  v6 = v0[5];

  return sub_101163F78(v6);
}

uint64_t sub_10024FA88()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void *sub_10024FBB4(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v34 = &v32 - v5;
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v32 - v18;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v20 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  UUID.init()();
  v1[14] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v1[15] = qword_10177B2E8;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);

  static DispatchQoS.unspecified.getter();
  v38[0] = _swiftEmptyArrayStorage;
  sub_10025B5E8(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[18] = _swiftEmptyDictionarySingleton;
  v1[19] = _swiftEmptyDictionarySingleton;
  v1[21] = 0;
  v1[22] = 0;
  v1[20] = 0;
  v22 = v37;
  v1[16] = v21;
  v1[17] = v22;
  v23 = v1[15];
  updated = type metadata accessor for FirmwareUpdateService();
  v40 = &off_1016148F0;
  v38[0] = v1;
  v24 = *(v23 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue);
  __chkstk_darwin(updated);
  *(&v32 - 2) = v38;
  *(&v32 - 1) = v23;

  v25 = v34;
  v26 = v36;
  OS_dispatch_queue.sync<A>(execute:)();
  (*(v35 + 8))(v25, v26);
  sub_100007BAC(v38);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v27 = *(qword_10177CEA0 + 24);

  v28 = AnyCurrentValuePublisher.publisher.getter();

  v38[0] = v28;
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  v29 = Publisher<>.sink(receiveValue:)();

  v30 = v2[21];
  v2[21] = v29;

  return v2;
}

uint64_t sub_100250200(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 == 1)
    {
      type metadata accessor for Transaction();

      static Transaction.asyncTask(name:block:)();
    }
  }

  return result;
}

uint64_t sub_1002502A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100250338();
}

uint64_t sub_100250338()
{
  v1[6] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169B780, &unk_101395260);
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169B788, &qword_1013A3770);
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v1[14] = v10;
  *v10 = v1;
  v10[1] = sub_1002504D4;

  return daemon.getter();
}

uint64_t sub_1002504D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  v3[15] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = type metadata accessor for Daemon();
  v3[17] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_10025B5E8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10025B5E8(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_1002506BC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002506BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[15];

    v8 = v4[6];
    v9 = sub_100250C04;
  }

  else
  {
    v9 = sub_100250800;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100250800()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_10001B108();
  v0[20] = v3;
  v4 = v0[17];
  v5 = v0[15];
  if (v2)
  {

    sub_10025B5E8(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_100250B90;
  }

  else
  {
    sub_10025B5E8(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_100250930;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100250930()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[6];

  return _swift_task_switch(sub_1002509A8, v3, 0);
}

uint64_t sub_1002509A8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = *(v0[20] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedPublisher);
  v0[4] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270);
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[21] = sub_10025B5E8(&qword_10169B7A0, v6, type metadata accessor for FirmwareUpdateService);
  v7 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_100250CE8;
  v10 = v0[13];
  v11 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v7);
}

uint64_t sub_100250B90()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[6];

  return _swift_task_switch(sub_100250C04, v3, 0);
}

uint64_t sub_100250C04()
{
  static os_log_type_t.error.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100250CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[6];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[21];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_100251160;
  }

  else
  {
    if (v5)
    {
      v11 = v2[21];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_100250E80;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_100250E80()
{
  v1 = *(v0 + 48);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  return _swift_task_switch(sub_100250EAC, v1, 0);
}

uint64_t sub_100250EAC()
{
  if ((*(v0 + 25) & 1) != 0 || *(v0 + 192) == *(*(v0 + 48) + 176))
  {
    v1 = *(v0 + 160);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 192);
    v8 = *(v0 + 48);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    *(v9 + 56) = &type metadata for Int;
    *(v9 + 64) = &protocol witness table for Int;
    *(v9 + 32) = v7;
    os_log(_:dso:log:_:_:)();

    *(v8 + 176) = v7;
    if (v7 == 1)
    {
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
      sub_100251FF8(9, v10);
      sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    }

    v13 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
    v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_100250CE8;
    v16 = *(v0 + 104);
    v17 = *(v0 + 88);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v17, v13);
  }
}

uint64_t sub_100251160()
{
  *(v0 + 40) = *(v0 + 184);
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1002511EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100251288, 0, 0);
}

uint64_t sub_100251288()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  return _swift_task_switch(sub_10025132C, v1, 0);
}

uint64_t sub_10025132C()
{
  v1 = *(v0 + 24);
  sub_100251FF8(8, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002513B4()
{
  v1 = *v0;
  v10 = _swiftEmptyArrayStorage;
  v2 = v0[16];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &v10;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10025B54C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101614B08;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v2, v6);
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_100251568(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 120);
    v5 = qword_101694940;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_10177B348;
    v7 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v8 = sub_1010746B4(v15);

    v9 = *(v6 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v10 = sub_1010746B4(v15);

    v11 = *(v6 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v12 = sub_101074698(v15);

    if ((v12 * 60) >> 64 == (60 * v12) >> 63)
    {
      v13 = sub_1010C1E70(v8 * 60.0, v10 * 60.0, (60 * v12));

      v14 = *a2;
      *a2 = v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100251748(char a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 120) = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10025185C, v2, 0);
}

uint64_t sub_10025185C()
{
  *(v0 + 16) = &_swiftEmptySetSingleton;
  if (sub_10024EE84(*(v0 + 120)) == 0x646563726F66 && v1 == 0xE600000000000000)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_100251BA4;
      v5 = *(v0 + 32);

      return sub_100257418();
    }
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  sub_1000D2A70(*(v0 + 24), v9, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_10000B3A8(*(v0 + 40), &qword_1016980D0, &unk_10138F3B0);
    v10 = &_swiftEmptySetSingleton;
  }

  else
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    (*(v14 + 32))(v11, *(v0 + 40), v15);
    (*(v14 + 16))(v13, v11, v15);
    sub_100DE8BCC(v12, v13);
    v16 = *(v14 + 8);
    v16(v12, v15);
    v16(v11, v15);
    v10 = *(v0 + 16);
  }

  *(v0 + 104) = v10;
  if (v10[2])
  {
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_100251E44;
    v18 = *(v0 + 32);
    v19 = *(v0 + 120);

    return sub_100255014(v10, v19);
  }

  else
  {

    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);
    v23 = *(v0 + 40);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100251BA4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100251CBC, v3, 0);
}

uint64_t sub_100251CBC()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  *(v0 + 104) = v1;
  if (*(v1 + 16))
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_100251E44;
    v3 = *(v0 + 32);
    v4 = *(v0 + 120);

    return sub_100255014(v1, v4);
  }

  else
  {

    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100251E44()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100251F70, v3, 0);
}

uint64_t sub_100251F70()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100251FF8(int a1, uint64_t a2)
{
  v67 = a2;
  v73 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v8);
  v68 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  __chkstk_darwin(v11 - 8);
  v65 = &v55 - v13;
  v14 = type metadata accessor for DispatchTimeInterval();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  __chkstk_darwin(v14);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DispatchTime();
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v55 - v24;
  __chkstk_darwin(v23);
  v72 = &v55 - v26;
  v66 = v2;
  if (sub_10024EFF4())
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v76 = 0xE900000000000074;
    result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if ((v74 & 1) == 0)
    {
      v62 = v8;
      static DispatchTime.now()();
      v28 = sub_10024EE84(v73);
      v61 = v7;
      if (v28 == 0x646572696170 && v29 == 0xE600000000000000)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
LABEL_19:
          v46 = *(v66 + 128);
          v47 = swift_allocObject();
          swift_weakInit();
          v48 = v65;
          sub_1000D2A70(v67, v65, &qword_1016980D0, &unk_10138F3B0);
          v49 = (*(v64 + 80) + 17) & ~*(v64 + 80);
          v50 = swift_allocObject();
          *(v50 + 16) = v73;
          sub_10012C154(v48, v50 + v49);
          *(v50 + ((v12 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;
          v79 = sub_10025B3C4;
          v80 = v50;
          aBlock = _NSConcreteStackBlock;
          v76 = 1107296256;
          v77 = sub_100006684;
          v78 = &unk_101614A68;
          v51 = _Block_copy(&aBlock);

          v52 = v68;
          static DispatchQoS.unspecified.getter();
          v74 = _swiftEmptyArrayStorage;
          sub_10025B5E8(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v53 = v61;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v54 = v72;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v51);
          (*(v4 + 8))(v53, v3);
          (*(v69 + 8))(v52, v62);
          (*(v70 + 8))(v54, v71);
        }
      }

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v31 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v32 = sub_101074698(aBlock);

      v33 = 60 * v32;
      if ((v32 * 60) >> 64 == (60 * v32) >> 63)
      {
        v59 = v4;
        v60 = v3;
        v58 = static os_log_type_t.default.getter();
        if (qword_1016950B8 == -1)
        {
LABEL_18:
          v57 = qword_10177C400;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_10138BBE0;
          aBlock = v33;
          v56 = v33;
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          *(v34 + 56) = &type metadata for String;
          v38 = sub_100008C00();
          *(v34 + 64) = v38;
          *(v34 + 32) = v35;
          *(v34 + 40) = v37;
          v39 = sub_10024EE84(v73);
          *(v34 + 96) = &type metadata for String;
          *(v34 + 104) = v38;
          *(v34 + 72) = v39;
          *(v34 + 80) = v40;
          os_log(_:dso:log:_:_:)();

          static DispatchTime.now()();
          *v17 = v56;
          v41 = v63;
          (*(v63 + 104))(v17, enum case for DispatchTimeInterval.seconds(_:), v14);
          + infix(_:_:)();
          (*(v41 + 8))(v17, v14);
          v43 = v70;
          v42 = v71;
          v44 = *(v70 + 8);
          v44(v22, v71);
          v45 = v72;
          v44(v72, v42);
          (*(v43 + 32))(v45, v25, v42);
          v3 = v60;
          v4 = v59;
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_18;
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

uint64_t sub_100252948(int a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v35 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  v34 = a1;
  v15 = sub_10024EE84(a1);
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_1000D2A70(a2, v13, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    v19 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v18;
  }

  else
  {
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v6 + 8))(v13, v5);
    v19 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v18;
    if (v22)
    {
      *v19 = v20;
      goto LABEL_8;
    }
  }

  *v19 = 1701736302;
  v22 = 0xE400000000000000;
LABEL_8:
  *(v14 + 80) = v22;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + 112);
    v25 = Strong;
    type metadata accessor for WorkItemQueue.WorkItem();
    v26 = v32;
    sub_1000D2A70(a2, v32, &qword_1016980D0, &unk_10138F3B0);
    v27 = (*(v31 + 80) + 25) & ~*(v31 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = v34;
    sub_10012C154(v26, v28 + v27);

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100252D98(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10003633C;

  return sub_100251748(a2, a3);
}

uint64_t sub_100252E44(uint64_t a1)
{
  v25 = a1;
  v3 = type metadata accessor for BeaconObservation();
  v5 = v3 - 8;
  v4 = *(v3 - 8);
  v6 = *(v4 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v24 = *(v13 + 16);
  v26 = v13 + 16;
  v24(v11, a1, v12);
  static Date.trustedNow.getter(&v11[*(v5 + 28)]);
  v11[*(v5 + 32)] = 1;
  v19 = *(v1 + 120);
  v14 = v19;
  v23 = sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v22 = *(v4 + 72);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v21 = xmmword_101385D80;
  *(v16 + 16) = xmmword_101385D80;
  v20 = type metadata accessor for BeaconObservation;
  sub_10025B334(v11, v16 + v15, type metadata accessor for BeaconObservation);
  type metadata accessor for Transaction();
  v31 = v14;
  v32 = v16;
  v33 = 0;
  v34 = 0;
  static Transaction.named<A>(_:with:)();

  v24(v9, v25, v12);
  static Date.trustedNow.getter(&v9[*(v5 + 28)]);
  v9[*(v5 + 32)] = 12;
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  sub_10025B334(v9, v17 + v15, v20);
  v27 = v19;
  v28 = v17;
  v29 = 0;
  v30 = 0;
  static Transaction.named<A>(_:with:)();

  sub_1000326A4(v9, type metadata accessor for BeaconObservation);
  return sub_1000326A4(v11, type metadata accessor for BeaconObservation);
}

uint64_t sub_10025314C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = type metadata accessor for OwnedBeaconRecord();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[22] = v12;
  v13 = *(v12 - 8);
  v2[23] = v13;
  v14 = *(v13 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100253368, v1, 0);
}

uint64_t sub_100253368()
{
  v1 = v0[12];
  v2 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[7] = v2;
  v0[31] = v2;
  if (!sub_10024EFF4())
  {
    v30 = v2;
    static os_log_type_t.default.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

LABEL_8:
    v17 = v0[29];
    v16 = v0[30];
    v19 = v0[27];
    v18 = v0[28];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[18];
    v25 = v0[15];

    v26 = v0[1];

    return v26(v30);
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    v6 = v0[11];
    v7 = *(v0[12] + 120);

    v9 = sub_10025A67C(v8, v7);

    if (*(v9 + 16))
    {

      static os_log_type_t.default.getter();
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v10 = v0[22];
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_101385D80;
      sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID);
      v12 = Set.description.getter();
      v14 = v13;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_100008C00();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      os_log(_:dso:log:_:_:)();

      v30 = v9;
    }

    else
    {

      static os_log_type_t.default.getter();
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v30 = v2;
      os_log(_:dso:log:_:_:)();
    }

    goto LABEL_8;
  }

  v28 = async function pointer to daemon.getter[1];
  v29 = swift_task_alloc();
  v0[32] = v29;
  *v29 = v0;
  v29[1] = sub_100253784;

  return daemon.getter();
}

uint64_t sub_100253784(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v12 = *v1;
  *(v3 + 264) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 272) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10025B5E8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10025B5E8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100253968;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100253968(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  v7 = v4[33];
  if (v1)
  {
    a1 = v4[12];

    v8 = sub_100254EC0;
  }

  else
  {

    v8 = sub_100253AC0;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_100253AC0()
{
  v1 = *(v0 + 280);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_100253BAC;
  v5 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_10025B814, v5, v4);
}

uint64_t sub_100253BAC()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_100253CC4, v2, 0);
}

uint64_t sub_100253CC4()
{
  v1 = v0[12];
  v0[38] = v0[8];
  return _swift_task_switch(sub_100253CE8, v1, 0);
}

uint64_t sub_100253CE8()
{
  v1 = v0[38];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    sub_101123D4C(0, v2, 0);
    v4 = v1 + 32;
    do
    {
      v5 = v0[30];
      sub_10001F280(v4, (v0 + 2));
      v6 = v0[5];
      v7 = v0[6];
      sub_1000035D0(v0 + 2, v6);
      (*(*(*(v7 + 8) + 8) + 32))(v6);
      sub_100007BAC(v0 + 2);
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_101123D4C(v8 > 1, v9 + 1, 1);
      }

      v10 = v0[30];
      v11 = v0[22];
      _swiftEmptyArrayStorage[2] = v9 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v10, v11);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v12 = v0[38];

  v13 = v0[35];
  v0[39] = sub_10000954C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100253EA0, v13, 0);
}

uint64_t sub_100253EA0()
{
  v1 = *(v0 + 280);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100253F8C;
  v5 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_100253F8C()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_1002540A4, v2, 0);
}

uint64_t sub_1002540A4()
{
  v1 = v0[12];
  v0[41] = v0[9];
  return _swift_task_switch(sub_1002540C8, v1, 0);
}

uint64_t sub_1002540C8()
{
  v1 = v0[41];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    v4 = v0[20];
    v17 = v0[19];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[29];
      v8 = v0[21];
      v7 = v0[22];
      sub_10025B334(v5, v8, type metadata accessor for OwnedBeaconRecord);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_1000326A4(v8, type metadata accessor for OwnedBeaconRecord);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[29];
      v12 = v0[22];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[41];

  v14 = v0[35];
  v0[42] = sub_10000954C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1002542BC, v14, 0);
}

uint64_t sub_1002542BC()
{
  v1 = *(v0 + 280);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  v4 = sub_1000BC4D4(&qword_10169B778, &qword_101395240);
  *v3 = v0;
  v3[1] = sub_1002543A8;
  v5 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_10025B32C, v5, v4);
}

uint64_t sub_1002543A8()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_1002544C0, v2, 0);
}

uint64_t sub_1002544C0()
{
  v1 = v0[12];
  v0[44] = v0[10];
  return _swift_task_switch(sub_1002544E4, v1, 0);
}

uint64_t sub_1002544E4()
{
  v1 = v0[44];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[23];
    v4 = v0[17];
    v113 = v0[16];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v110 = *(v4 + 72);
    do
    {
      v6 = v0[28];
      v7 = v0[22];
      v8 = v0[18];
      sub_10025B334(v5, v8, type metadata accessor for OwnedBeaconGroup);
      (*(v3 + 16))(v6, v8 + *(v113 + 24), v7);
      sub_1000326A4(v8, type metadata accessor for OwnedBeaconGroup);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[28];
      v12 = v0[22];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v110;
      --v2;
    }

    while (v2);
  }

  v13 = v0[44];

  v14 = v0[42];
  v15 = v0[39];
  v16 = v0[23];
  v17 = v0[14];
  v18 = v0[11];
  v95 = v0[12];
  v19 = sub_10000954C(_swiftEmptyArrayStorage);

  v20 = v18 + 56;
  v21 = -1 << *(v18 + 32);
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = (63 - v21) >> 6;
  v105 = v19;
  v106 = v14 + 56;
  v102 = v16;
  v24 = (v16 + 8);
  v104 = v19 + 56;
  v108 = v15 + 56;
  v109 = v15;
  v94 = (v17 + 8);
  v98 = v0[36];
  v101 = v18;
  v25 = v22 & *(v18 + 56);

  v27 = 0;
  v107 = v14;
  v99 = v23;
  v100 = v20;
  while (v25)
  {
    v28 = v27;
LABEL_15:
    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[22];
    v103 = (v25 - 1) & v25;
    v32 = *(v102 + 72);
    v111 = *(v102 + 16);
    v111(v29, *(v101 + 48) + v32 * (__clz(__rbit64(v25)) | (v28 << 6)), v31);
    (*(v102 + 32))(v30, v29, v31);
    if (*(v14 + 16) && (v33 = v0[26], v34 = v0[22], v35 = *(v14 + 40), sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID), v36 = dispatch thunk of Hashable._rawHashValue(seed:)(), v37 = -1 << *(v14 + 32), v38 = v36 & ~v37, ((*(v106 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
    {
      v39 = ~v37;
      while (1)
      {
        v40 = v0[25];
        v41 = v0[22];
        v111(v40, *(v14 + 48) + v38 * v32, v41);
        sub_10025B5E8(&qword_1016984A0, 255, &type metadata accessor for UUID);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *v24;
        (*v24)(v40, v41);
        if (v42)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        v14 = v107;
        if (((*(v106 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v76 = v0[25];
      v75 = v0[26];
      v77 = v0[24];
      v78 = v0[22];
      v111(v77, v75, v78);
      sub_100DE8BCC(v76, v77);
      v43(v76, v78);
      v73 = v75;
      v74 = v78;
LABEL_35:
      result = (v43)(v73, v74);
      v27 = v28;
      v14 = v107;
      v23 = v99;
      v20 = v100;
      v25 = v103;
    }

    else
    {
LABEL_20:
      v44 = v105;
      if (*(v105 + 16))
      {
        v45 = v0[26];
        v46 = v0[22];
        v47 = *(v105 + 40);
        sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID);
        v48 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v49 = -1 << *(v105 + 32);
        v50 = v48 & ~v49;
        if ((*(v104 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          v51 = ~v49;
          do
          {
            v52 = v0[25];
            v53 = v0[22];
            v111(v52, *(v44 + 48) + v50 * v32, v53);
            sub_10025B5E8(&qword_1016984A0, 255, &type metadata accessor for UUID);
            v54 = dispatch thunk of static Equatable.== infix(_:_:)();
            v43 = *v24;
            (*v24)(v52, v53);
            if (v54)
            {
              goto LABEL_33;
            }

            v50 = (v50 + 1) & v51;
            v44 = v105;
          }

          while (((*(v104 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0);
        }
      }

      if (*(v109 + 16))
      {
        v55 = v0[26];
        v56 = v0[22];
        v57 = *(v109 + 40);
        sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID);
        v58 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v59 = -1 << *(v109 + 32);
        v60 = v58 & ~v59;
        if ((*(v108 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          v61 = ~v59;
          while (1)
          {
            v62 = v0[25];
            v63 = v0[22];
            v111(v62, *(v109 + 48) + v60 * v32, v63);
            sub_10025B5E8(&qword_1016984A0, 255, &type metadata accessor for UUID);
            v64 = dispatch thunk of static Equatable.== infix(_:_:)();
            v43 = *v24;
            (*v24)(v62, v63);
            if (v64)
            {
              break;
            }

            v60 = (v60 + 1) & v61;
            if (((*(v108 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_33:
          v73 = v0[26];
          v74 = v0[22];
          goto LABEL_35;
        }
      }

LABEL_30:
      static os_log_type_t.error.getter();
      v25 = v103;
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v96 = v0[26];
      v112 = v0[22];
      v65 = v0[15];
      v97 = v0[13];
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_101385D80;
      v67 = UUID.uuidString.getter();
      v69 = v68;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = sub_100008C00();
      *(v66 + 32) = v67;
      *(v66 + 40) = v69;
      os_log(_:dso:log:_:_:)();

      v70 = *(v95 + 120);
      v71 = *(v70 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
      static DispatchWorkItemFlags.barrier.getter();
      v72 = swift_task_alloc();
      v72[2] = v70;
      v72[3] = v96;
      v72[4] = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
      v72[5] = 0;
      OS_dispatch_queue.sync<A>(flags:execute:)();

      (*v94)(v65, v97);
      result = (*v24)(v96, v112);
      v27 = v28;
      v14 = v107;
      v23 = v99;
      v20 = v100;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= v23)
    {
      break;
    }

    v25 = *(v20 + 8 * v28);
    ++v27;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  v79 = v0[42];
  v80 = v0[39];
  v81 = v0[35];
  v82 = v0[11];

  v114 = v0[7];
  v84 = v0[29];
  v83 = v0[30];
  v86 = v0[27];
  v85 = v0[28];
  v88 = v0[25];
  v87 = v0[26];
  v89 = v0[24];
  v90 = v0[21];
  v91 = v0[18];
  v92 = v0[15];

  v93 = v0[1];

  return v93(v114);
}

uint64_t sub_100254EC0()
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = v0[30];
  v13 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_100255014(uint64_t a1, char a2)
{
  *(v3 + 417) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v3 + 240) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v7 = type metadata accessor for BeaconObservation();
  *(v3 + 256) = v7;
  v8 = *(v7 - 8);
  *(v3 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v3 + 280) = v10;
  v11 = *(v10 - 8);
  *(v3 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v3 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_1002551F8, v2, 0);
}

uint64_t sub_1002551F8()
{
  v0[40] = *(v0[27] + 120);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v0[41] = 0;
  v2 = sub_1010746B4(v0[24]);

  if (sub_1010C294C(v2 * 60.0))
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  v0[42] = v3;
  if (!v3)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950B8 == -1)
    {
LABEL_11:
      os_log(_:dso:log:_:_:)();
      v9 = v0[38];
      v8 = v0[39];
      v10 = v0[37];
      v11 = v0[34];
      v12 = v0[31];
      v14 = v0[28];
      v13 = v0[29];

      v15 = v0[1];

      return v15();
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_1002554B8;
  v5 = v0[26];
  v6 = v0[27];

  return sub_10025314C(v5);
}

uint64_t sub_1002554B8(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_1002555D0, v3, 0);
}

uint64_t sub_1002555D0()
{
  if (*(v0[44] + 16))
  {
    v1 = type metadata accessor for AnalyticsEvent(0);
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    v4 = swift_allocObject();
    v0[45] = v4;
    swift_defaultActor_initialize();
    *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v6 = type metadata accessor for DispatchTime();
    v0[46] = v6;
    v7 = *(v6 - 8);
    v8 = *(v7 + 56);
    v0[47] = v8;
    v0[48] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(&v4[v5], 1, 1, v6);
    v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
    *(v4 + 15) = 0xD000000000000032;
    *(v4 + 16) = 0x800000010134E3D0;

    return _swift_task_switch(sub_10025582C, v4, 0);
  }

  else
  {

    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v9 = v0[42];
    os_log(_:dso:log:_:_:)();

    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[37];
    v13 = v0[34];
    v14 = v0[31];
    v16 = v0[28];
    v15 = v0[29];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10025582C()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[39];
  v6 = v0[27];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v7);
  swift_endAccess();

  return _swift_task_switch(sub_1002558FC, v6, 0);
}

uint64_t sub_1002558FC()
{
  v1 = *(v0 + 216);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 392) = v3;
  *v3 = v0;
  v3[1] = sub_1002559C0;
  v4 = *(v0 + 216);

  return unsafeBlocking<A>(_:)(v0 + 200, sub_100259BB8, v4, &type metadata for Int);
}

uint64_t sub_1002559C0()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_100255AD8, v2, 0);
}

uint64_t sub_100255AD8()
{
  v1 = v0[45];
  v2 = v0[26];
  v0[50] = v0[25];

  return _swift_task_switch(sub_100255B4C, v1, 0);
}

uint64_t sub_100255B4C()
{
  v1 = *(v0 + 328);
  sub_10116CEAC(*(v0 + 360), *(v0 + 400), *(v0 + 208), *(v0 + 417));
  *(v0 + 408) = v1;
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  if (v1)
  {

    v4 = sub_1002566DC;
  }

  else
  {
    v4 = sub_100255BF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100255BF4()
{
  v2 = 0;
  v3 = *(v1 + 352);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v91 = *(v1 + 352);
  v8 = -1 << *(v91 + 32);
  v9 = *(v1 + 408);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v10 = v7 & v4;
  v89 = *(v1 + 264);
  v96 = *(v1 + 256);
  v11 = (63 - v8) >> 6;
  v90 = *(v1 + 288);
  v85 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v86 = v11;
  v87 = v5;
  v88 = *(v1 + 216);
  while (v10)
  {
LABEL_11:
    v19 = *(v1 + 296);
    v18 = *(v1 + 304);
    v20 = *(v1 + 272);
    v21 = *(v1 + 280);
    v94 = v10;
    v92 = *(v90 + 72);
    v22 = *(v90 + 16);
    v22(v18, *(v91 + 48) + v92 * (__clz(__rbit64(v10)) | (v2 << 6)), v21);
    (*(v90 + 32))(v19, v18, v21);
    v95 = v20;
    v93 = v22;
    v22(v20, v19, v21);
    v23 = *(v96 + 20);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v1 + 160) = 0x7365547265646E75;
    *(v1 + 168) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v1 + 416) == 1)
    {
      v24 = [objc_opt_self() sharedInstance];
      v25 = [v24 isInternalBuild];

      if (v25)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v26 = *(v1 + 248);
        v27 = sub_1000076D4(*(v1 + 240), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v27, v26, &unk_101696900, &unk_10138B1E0);
        v28 = type metadata accessor for Date();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v26, 1, v28) != 1)
        {
          (*(v29 + 32))(v95 + v23, *(v1 + 248), v28);
          goto LABEL_35;
        }

        sub_10000B3A8(*(v1 + 248), &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    *(v1 + 40) = My;
    *(v1 + 48) = sub_10025B5E8(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
    v31 = sub_1000280DC((v1 + 16));
    (*(*(My - 8) + 104))(v31, v85, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v1 + 16));
    if (My)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v1 + 176) - *(v1 + 184) > 86400.0)
      {
        v33 = *(v1 + 224);
        v34 = *(v1 + 232);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v35 = type metadata accessor for TaskPriority();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v34, 1, 1, v35);
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        sub_1000D2A70(v34, v33, &qword_101698C00, &qword_10138B570);
        LODWORD(v34) = (*(v36 + 48))(v33, 1, v35);

        v38 = *(v1 + 224);
        if (v34 == 1)
        {
          sub_10000B3A8(*(v1 + 224), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v36 + 8))(v38, v35);
        }

        v39 = *(v37 + 16);
        v40 = *(v37 + 24);
        swift_unknownObjectRetain();

        if (v39)
        {
          swift_getObjectType();
          v41 = dispatch thunk of Actor.unownedExecutor.getter();
          v43 = v42;
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        sub_10000B3A8(*(v1 + 232), &qword_101698C00, &qword_10138B570);
        v44 = swift_allocObject();
        *(v44 + 16) = &unk_10138B610;
        *(v44 + 24) = v37;
        if (v43 | v41)
        {
          *(v1 + 56) = 0;
          *(v1 + 64) = 0;
          *(v1 + 72) = v41;
          *(v1 + 80) = v43;
        }

        swift_task_create();
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_35:
    v45 = *(v1 + 360);
    v46 = *(v1 + 320);
    v47 = *(v1 + 296);
    v48 = *(v1 + 272);
    *(v48 + *(v96 + 24)) = 9;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v49 = *(v89 + 72);
    v50 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_101385D80;
    sub_10025B334(v48, v51 + v50, type metadata accessor for BeaconObservation);
    type metadata accessor for Transaction();
    v52 = swift_task_alloc();
    v52[2] = v46;
    v52[3] = v51;
    v52[4] = 0;
    v52[5] = 0;
    static Transaction.named<A>(_:with:)();

    swift_beginAccess();

    v53 = *(v88 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v88 + 144);
    *(v88 + 144) = 0x8000000000000000;
    v55 = sub_1000210EC(v47);
    data = v0->data;
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(data, v58);
    v60 = &data[v58];
    if (v59)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
      goto LABEL_46;
    }

    v61 = v56;
    if (v0->length < v60)
    {
      v62 = *(v1 + 296);
      sub_100FE88F0(v60, isUniquelyReferenced_nonNull_native);
      v55 = sub_1000210EC(v62);
      v64 = v94;
      if ((v61 & 1) != (v63 & 1))
      {
        v84 = *(v1 + 280);

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_40:
      v65 = *(v1 + 360);
      if (v61)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    v64 = v94;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v71 = v55;
    sub_1010062CC();
    v55 = v71;
    v65 = *(v1 + 360);
    if (v61)
    {
LABEL_4:
      length = v0[1].length;
      v13 = *(length + 8 * v55);
      *(length + 8 * v55) = v65;

      goto LABEL_5;
    }

LABEL_41:
    v66 = *(v1 + 296);
    v67 = *(v1 + 280);
    *(&v0[2].isa + (v55 >> 6)) |= 1 << v55;
    v68 = v55;
    v93(&v0[1].data[v55 * v92], v66, v67);
    *(v0[1].length + 8 * v68) = v65;
    v69 = v0->data;
    v59 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v59)
    {
      goto LABEL_54;
    }

    v0->data = v70;
LABEL_5:
    v10 = (v64 - 1) & v64;
    v14 = *(v1 + 296);
    v16 = *(v1 + 272);
    v15 = *(v1 + 280);
    *(v88 + 144) = v0;
    swift_endAccess();
    sub_1000326A4(v16, type metadata accessor for BeaconObservation);
    (*(v90 + 8))(v14, v15);
    v11 = v86;
    v5 = v87;
  }

  while (1)
  {
    v17 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v17 >= v11)
    {
      break;
    }

    v10 = *(v5 + 8 * v17);
    ++v2;
    if (v10)
    {
      v2 = v17;
      goto LABEL_11;
    }
  }

  v72 = *(v1 + 352);

  v0 = SPOwnerInitiateFindMyAccessoryFirmwareUpdateNotification;
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    goto LABEL_55;
  }

LABEL_46:
  v73 = *(v1 + 360);
  v74 = *(v1 + 336);
  os_log(_:dso:log:_:_:)();
  CFNotificationCenterPostNotification(v74, v0, 0, 0, 1u);

  v76 = *(v1 + 304);
  v75 = *(v1 + 312);
  v77 = *(v1 + 296);
  v78 = *(v1 + 272);
  v79 = *(v1 + 248);
  v81 = *(v1 + 224);
  v80 = *(v1 + 232);

  v82 = *(v1 + 8);

  return v82();
}

uint64_t sub_1002566DC()
{
  v2 = 0;
  v3 = *(v1 + 352);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v90 = *(v1 + 352);
  v7 = -1;
  v8 = -1 << *(v90 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v88 = *(v1 + 264);
  v95 = *(v1 + 256);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v84 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v89 = *(v1 + 288);
  v85 = v10;
  v86 = v5;
  v87 = *(v1 + 216);
  while (v9)
  {
LABEL_11:
    v18 = *(v1 + 296);
    v17 = *(v1 + 304);
    v20 = *(v1 + 272);
    v19 = *(v1 + 280);
    v93 = v9;
    v91 = *(v89 + 72);
    v21 = *(v89 + 16);
    v21(v17, *(v90 + 48) + v91 * (__clz(__rbit64(v9)) | (v2 << 6)), v19);
    (*(v89 + 32))(v18, v17, v19);
    v94 = v20;
    v92 = v21;
    v21(v20, v18, v19);
    v22 = *(v95 + 20);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v1 + 160) = 0x7365547265646E75;
    *(v1 + 168) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v1 + 416) == 1)
    {
      v23 = [objc_opt_self() sharedInstance];
      v24 = [v23 isInternalBuild];

      if (v24)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v25 = *(v1 + 248);
        v26 = sub_1000076D4(*(v1 + 240), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v26, v25, &unk_101696900, &unk_10138B1E0);
        v27 = type metadata accessor for Date();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v25, 1, v27) != 1)
        {
          (*(v28 + 32))(v94 + v22, *(v1 + 248), v27);
          goto LABEL_35;
        }

        sub_10000B3A8(*(v1 + 248), &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    *(v1 + 40) = My;
    *(v1 + 48) = sub_10025B5E8(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
    v30 = sub_1000280DC((v1 + 16));
    (*(*(My - 8) + 104))(v30, v84, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v1 + 16));
    if (My)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v1 + 176) - *(v1 + 184) > 86400.0)
      {
        v32 = *(v1 + 224);
        v33 = *(v1 + 232);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v34 = type metadata accessor for TaskPriority();
        v35 = *(v34 - 8);
        (*(v35 + 56))(v33, 1, 1, v34);
        v36 = swift_allocObject();
        *(v36 + 16) = 0;
        *(v36 + 24) = 0;
        sub_1000D2A70(v33, v32, &qword_101698C00, &qword_10138B570);
        LODWORD(v33) = (*(v35 + 48))(v32, 1, v34);

        v37 = *(v1 + 224);
        if (v33 == 1)
        {
          sub_10000B3A8(*(v1 + 224), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v35 + 8))(v37, v34);
        }

        v38 = *(v36 + 16);
        v39 = *(v36 + 24);
        swift_unknownObjectRetain();

        if (v38)
        {
          swift_getObjectType();
          v40 = dispatch thunk of Actor.unownedExecutor.getter();
          v42 = v41;
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        sub_10000B3A8(*(v1 + 232), &qword_101698C00, &qword_10138B570);
        v43 = swift_allocObject();
        *(v43 + 16) = &unk_10138B610;
        *(v43 + 24) = v36;
        if (v42 | v40)
        {
          *(v1 + 56) = 0;
          *(v1 + 64) = 0;
          *(v1 + 72) = v40;
          *(v1 + 80) = v42;
        }

        swift_task_create();
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_35:
    v44 = *(v1 + 360);
    v45 = *(v1 + 320);
    v46 = *(v1 + 296);
    v47 = *(v1 + 272);
    *(v47 + *(v95 + 24)) = 9;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v48 = *(v88 + 72);
    v49 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_101385D80;
    sub_10025B334(v47, v50 + v49, type metadata accessor for BeaconObservation);
    type metadata accessor for Transaction();
    v51 = swift_task_alloc();
    v51[2] = v45;
    v51[3] = v50;
    v51[4] = 0;
    v51[5] = 0;
    static Transaction.named<A>(_:with:)();

    swift_beginAccess();

    v52 = *(v87 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v87 + 144);
    *(v87 + 144) = 0x8000000000000000;
    v54 = sub_1000210EC(v46);
    data = v0->data;
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(data, v57);
    v59 = &data[v57];
    if (v58)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
      goto LABEL_46;
    }

    v60 = v55;
    if (v0->length < v59)
    {
      v61 = *(v1 + 296);
      sub_100FE88F0(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_1000210EC(v61);
      v63 = v93;
      if ((v60 & 1) != (v62 & 1))
      {
        v83 = *(v1 + 280);

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_40:
      v64 = *(v1 + 360);
      if (v60)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    v63 = v93;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v70 = v54;
    sub_1010062CC();
    v54 = v70;
    v64 = *(v1 + 360);
    if (v60)
    {
LABEL_4:
      length = v0[1].length;
      v12 = *(length + 8 * v54);
      *(length + 8 * v54) = v64;

      goto LABEL_5;
    }

LABEL_41:
    v65 = *(v1 + 296);
    v66 = *(v1 + 280);
    *(&v0[2].isa + (v54 >> 6)) |= 1 << v54;
    v67 = v54;
    v92(&v0[1].data[v54 * v91], v65, v66);
    *(v0[1].length + 8 * v67) = v64;
    v68 = v0->data;
    v58 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v58)
    {
      goto LABEL_54;
    }

    v0->data = v69;
LABEL_5:
    v9 = (v63 - 1) & v63;
    v13 = *(v1 + 296);
    v15 = *(v1 + 272);
    v14 = *(v1 + 280);
    *(v87 + 144) = v0;
    swift_endAccess();
    sub_1000326A4(v15, type metadata accessor for BeaconObservation);
    (*(v89 + 8))(v13, v14);
    v10 = v85;
    v5 = v86;
  }

  while (1)
  {
    v16 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v16 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v16);
    ++v2;
    if (v9)
    {
      v2 = v16;
      goto LABEL_11;
    }
  }

  v71 = *(v1 + 352);

  v0 = SPOwnerInitiateFindMyAccessoryFirmwareUpdateNotification;
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    goto LABEL_55;
  }

LABEL_46:
  v72 = *(v1 + 360);
  v73 = *(v1 + 336);
  os_log(_:dso:log:_:_:)();
  CFNotificationCenterPostNotification(v73, v0, 0, 0, 1u);

  v75 = *(v1 + 304);
  v74 = *(v1 + 312);
  v76 = *(v1 + 296);
  v77 = *(v1 + 272);
  v78 = *(v1 + 248);
  v80 = *(v1 + 224);
  v79 = *(v1 + 232);

  v81 = *(v1 + 8);

  return v81();
}

unint64_t sub_1002571C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000044;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v12 = String._bridgeToObjectiveC()();

  *(inited + 48) = v12;
  *(inited + 56) = 0;
  *(inited + 64) = 0xD000000000000014;
  *(inited + 72) = 0x800000010134E530;
  *(inited + 80) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 88) = 0;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x800000010134E550;
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithInteger:*(a2 + 16)];
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000010134E570;
  sub_10024EE84(a3);
  v13 = String._bridgeToObjectiveC()();

  *(inited + 144) = v13;
  *(inited + 152) = 0;
  v14 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_100257418()
{
  v1[24] = v0;
  v2 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v1[25] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[27] = v4;
  v5 = *(v4 - 8);
  v1[28] = v5;
  v1[29] = *(v5 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[34] = v7;
  *v7 = v1;
  v7[1] = sub_100257570;

  return daemon.getter();
}

uint64_t sub_100257570(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v12 = *v1;
  *(v3 + 280) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 288) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10025B5E8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10025B5E8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100257754;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100257754(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 288);
  v7 = *v2;
  *(v5 + 296) = a1;
  *(v5 + 304) = v1;

  v8 = *(v4 + 280);
  if (v1)
  {

    v9 = sub_100258D30;
    v10 = 0;
  }

  else
  {

    v9 = sub_1002578AC;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1002578AC()
{
  v1 = *(v0 + 296);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_100257998;
  v5 = *(v0 + 296);

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_100257998()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return _swift_task_switch(sub_100257AB0, v2, 0);
}

uint64_t sub_100257AD4()
{
  *(v0 + 144) = &_swiftEmptySetSingleton;
  v1 = *(v0 + 320);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    *(v0 + 336) = 0;
    v3 = *(v0 + 296);
    v4 = *(v0 + 264);
    sub_10001F280(v1 + 32, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v5);
    (*(*(*(v6 + 8) + 8) + 32))(v5);
    v7 = sub_100257F80;
LABEL_17:
    v16 = v7;
    v17 = v3;
    v18 = 0;

    return _swift_task_switch(v16, v17, v18);
  }

  v8 = *(*(v0 + 192) + 120);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 304);
  v10 = qword_10177B348;
  v11 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C70(*(v0 + 152));

  v12 = *(v10 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = sub_1010746B4(*(v0 + 160));

  v14 = *(v10 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = sub_101074698(*(v0 + 168));

  if ((v15 * 60) >> 64 != (60 * v15) >> 63)
  {
    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

  v19 = *(v8 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v20 = sub_100034838(*(v0 + 176));

  v21 = sub_1010C6214(v20, 9, v13 * 60.0);
  v22 = sub_1010C6C3C(v20, v13 * 60.0, (60 * v15));
  v23 = sub_10039DA70(v21, v22);
  v24 = sub_1010C86EC(v20);

  v25 = sub_10039DA70(&_swiftEmptySetSingleton, v24);
  if (*(v23 + 16) <= v25[2] >> 3)
  {
    v50 = v25;
    sub_10087D5B4(v23);

    v26 = v50;
  }

  else
  {
    v26 = sub_100610BC8(v23, v25);
  }

  *(v0 + 376) = v26;
  v27 = *(v0 + 224);
  *(v0 + 184) = &_swiftEmptySetSingleton;
  v28 = *(v26 + 32);
  *(v0 + 449) = v28;
  v29 = -1;
  v30 = -1 << v28;
  if (-(-1 << v28) < 64)
  {
    v29 = ~(-1 << -(-1 << v28));
  }

  v31 = v29 & v26[7];
  if (v31)
  {
    v32 = 0;
LABEL_16:
    *(v0 + 384) = v31;
    *(v0 + 392) = v32;
    v3 = *(v0 + 296);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 216);
    v38 = v26[6] + v27[9] * (__clz(__rbit64(v31)) | (v32 << 6));
    v39 = v27[2];
    *(v0 + 400) = v39;
    *(v0 + 408) = (v27 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v35, v38, v37);
    v40 = v27[4];
    *(v0 + 416) = v40;
    *(v0 + 424) = (v27 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(v36, v35, v37);
    v7 = sub_1002587F0;
    goto LABEL_17;
  }

  v33 = 0;
  v34 = ((63 - v30) >> 6) - 1;
  while (v34 != v33)
  {
    v32 = v33 + 1;
    v31 = v26[v33++ + 8];
    if (v31)
    {
      goto LABEL_16;
    }
  }

  v41 = *(v0 + 296);

  v42 = *(v0 + 184);
  v44 = *(v0 + 256);
  v43 = *(v0 + 264);
  v46 = *(v0 + 240);
  v45 = *(v0 + 248);
  v47 = *(v0 + 208);

  v48 = *(v0 + 8);

  return v48(v42);
}

uint64_t sub_100257F80()
{
  v1 = v0[37];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  (*(v4 + 16))(v2, v0[33], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v6 + v3;
  v8 = swift_allocObject();
  v0[43] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v6, v2, v5);
  *(v8 + v7) = 1;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_1002580EC;
  v12 = v0[25];
  v11 = v0[26];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100259A6C, v8, v12);
}

uint64_t sub_1002580EC()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 296);
  v5 = *v0;

  return _swift_task_switch(sub_100258218, v3, 0);
}

uint64_t sub_100258218()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v3 + 8);
  *(v0 + 360) = v6;
  *(v0 + 368) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  *(v0 + 448) = *v5;
  sub_10000B3A8(&v5[*(v4 + 48)], &unk_101696900, &unk_10138B1E0);

  return _swift_task_switch(sub_1002582C4, 0, 0);
}

uint64_t sub_1002582C4()
{
  if (*(v0 + 448) == 1)
  {
    v2 = *(v0 + 360);
    v1 = *(v0 + 368);
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v5 = *(v0 + 216);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v7);
    (*(*(*(v6 + 8) + 8) + 32))(v7);
    sub_100DE8BCC(v3, v4);
    v2(v3, v5);
  }

  v8 = *(v0 + 328);
  v9 = *(v0 + 336) + 1;
  sub_100007BAC((v0 + 16));
  if (v9 != v8)
  {
    v31 = *(v0 + 336);
    *(v0 + 336) = v31 + 1;
    v32 = *(v0 + 296);
    v33 = *(v0 + 264);
    sub_10001F280(*(v0 + 320) + 40 * v31 + 72, v0 + 16);
    v34 = *(v0 + 40);
    v35 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v34);
    (*(*(*(v35 + 8) + 8) + 32))(v34);
    v36 = sub_100257F80;
LABEL_19:
    v20 = v36;
    v21 = v32;
    v22 = 0;

    return _swift_task_switch(v20, v21, v22);
  }

  v10 = *(v0 + 320);

  v11 = *(v0 + 144);
  v12 = *(*(v0 + 192) + 120);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 304);
  v14 = qword_10177B348;
  v15 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C70(*(v0 + 152));

  v16 = *(v14 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v17 = sub_1010746B4(*(v0 + 160));

  v18 = *(v14 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = sub_101074698(*(v0 + 168));

  if ((v19 * 60) >> 64 != (60 * v19) >> 63)
  {
    __break(1u);
    return _swift_task_switch(v20, v21, v22);
  }

  v23 = *(v12 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v24 = sub_100034838(*(v0 + 176));

  v25 = sub_1010C6214(v24, 9, v17 * 60.0);
  v26 = sub_1010C6C3C(v24, v17 * 60.0, (60 * v19));
  v27 = sub_10039DA70(v25, v26);
  v28 = sub_1010C86EC(v24);

  v29 = sub_10039DA70(v11, v28);
  if (*(v27 + 16) <= v29[2] >> 3)
  {
    v60 = v29;
    sub_10087D5B4(v27);

    v30 = v60;
  }

  else
  {
    v30 = sub_100610BC8(v27, v29);
  }

  *(v0 + 376) = v30;
  v37 = *(v0 + 224);
  *(v0 + 184) = &_swiftEmptySetSingleton;
  v38 = *(v30 + 32);
  *(v0 + 449) = v38;
  v39 = -1;
  v40 = -1 << v38;
  if (-(-1 << v38) < 64)
  {
    v39 = ~(-1 << -(-1 << v38));
  }

  v41 = v39 & v30[7];
  if (v41)
  {
    v42 = 0;
LABEL_18:
    *(v0 + 384) = v41;
    *(v0 + 392) = v42;
    v32 = *(v0 + 296);
    v46 = *(v0 + 240);
    v45 = *(v0 + 248);
    v47 = *(v0 + 216);
    v48 = v30[6] + v37[9] * (__clz(__rbit64(v41)) | (v42 << 6));
    v49 = v37[2];
    *(v0 + 400) = v49;
    *(v0 + 408) = (v37 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49(v45, v48, v47);
    v50 = v37[4];
    *(v0 + 416) = v50;
    *(v0 + 424) = (v37 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v50(v46, v45, v47);
    v36 = sub_1002587F0;
    goto LABEL_19;
  }

  v43 = 0;
  v44 = ((63 - v40) >> 6) - 1;
  while (v44 != v43)
  {
    v42 = v43 + 1;
    v41 = v30[v43++ + 8];
    if (v41)
    {
      goto LABEL_18;
    }
  }

  v51 = *(v0 + 296);

  v52 = *(v0 + 184);
  v54 = *(v0 + 256);
  v53 = *(v0 + 264);
  v56 = *(v0 + 240);
  v55 = *(v0 + 248);
  v57 = *(v0 + 208);

  v58 = *(v0 + 8);

  return v58(v52);
}

uint64_t sub_1002587F0()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 296);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  (*(v0 + 400))(v5, *(v0 + 240), v7);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v0 + 432) = v10;
  *(v10 + 16) = v4;
  v2(v10 + v9, v5, v7);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 440) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_100258954;

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v10, v13);
}

uint64_t sub_100258954()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_100258A6C, 0, 0);
}

uint64_t sub_100258A6C()
{
  if (*(v0 + 120))
  {
    sub_100031694((v0 + 96), v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_1000035D0((v0 + 56), v1);
    if ((*(v2 + 56))(v1, v2) == 21760)
    {
      v3 = *(v0 + 408);
      v5 = *(v0 + 256);
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v7 = *(v0 + 216);
      v8 = *(v0 + 224);
      (*(v0 + 400))(v5, v6, v7);
      sub_100DE8BCC(v4, v5);
      v9 = *(v8 + 8);
      v9(v4, v7);
      v9(v6, v7);
    }

    else
    {
      (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    }

    v10 = sub_100007BAC((v0 + 56));
  }

  else
  {
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    v10 = sub_10000B3A8(v0 + 96, &qword_101696920, &unk_10138B200);
  }

  v13 = *(v0 + 392);
  v14 = (*(v0 + 384) - 1) & *(v0 + 384);
  if (v14)
  {
    v15 = *(v0 + 376);
LABEL_13:
    *(v0 + 384) = v14;
    *(v0 + 392) = v13;
    v17 = *(v0 + 296);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 216);
    v21 = *(v0 + 224);
    v22 = *(v15 + 48) + v21[9] * (__clz(__rbit64(v14)) | (v13 << 6));
    v23 = v21[2];
    *(v0 + 400) = v23;
    *(v0 + 408) = (v21 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v18, v22, v20);
    v24 = v21[4];
    *(v0 + 416) = v24;
    *(v0 + 424) = (v21 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v19, v18, v20);
    v10 = sub_1002587F0;
    v11 = v17;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return _swift_task_switch(v10, v11, v12);
      }

      if (v16 >= (((1 << *(v0 + 449)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v0 + 376);
      v14 = *(v15 + 8 * v16 + 56);
      ++v13;
      if (v14)
      {
        v13 = v16;
        goto LABEL_13;
      }
    }

    v25 = *(v0 + 376);
    v26 = *(v0 + 296);

    v27 = *(v0 + 184);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v32 = *(v0 + 208);

    v33 = *(v0 + 8);

    return v33(v27);
  }
}

uint64_t sub_100258D30()
{
  static os_log_type_t.error.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[26];

  v6 = v0[1];

  return v6(&_swiftEmptySetSingleton);
}

uint64_t sub_100258E34()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v26);
  v25 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = *(v0 + 136);
  result = sub_100025044();
  v13 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v23[1] = v1;
    while (v14 < *(v13 + 16))
    {
      v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v17 = *(v5 + 72);
      sub_10025B334(v13 + v16 + v17 * v14, v10, type metadata accessor for OwnedBeaconRecord);
      sub_10025B334(&v10[*(v26 + 24)], v4, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1000326A4(v4, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        sub_10002A9D4(v10, v25, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_10112434C(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10002A9D4(v25, v15 + v16 + v21 * v17, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        result = sub_1000326A4(v10, type metadata accessor for OwnedBeaconRecord);
      }

      if (v24 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_13:

    v22 = v15[2];

    return v22;
  }

  return result;
}

uint64_t sub_100259124()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100259184()
{
  sub_100259124();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002591D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39[-v12];
  v14 = *(v1 + 136);
  sub_100AA33AC(a1, &v39[-v12]);
  v15 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_10000B3A8(v13, &unk_1016A9A20, &qword_10138B280);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
  }

  else
  {
    *(&v47 + 1) = v15;
    v48 = sub_10025B5E8(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
    v16 = sub_1000280DC(&v46);
    sub_10002A9D4(v13, v16, type metadata accessor for OwnedBeaconRecord);
  }

  v49[0] = v46;
  v49[1] = v47;
  v50 = v48;
  sub_1000D2A70(v49, &v44, &qword_101696920, &unk_10138B200);
  if (!v45)
  {
    sub_10000B3A8(v49, &qword_101696920, &unk_10138B200);
    return sub_10000B3A8(&v44, &qword_101696920, &unk_10138B200);
  }

  sub_100031694(&v44, &v46);
  v17 = *(&v47 + 1);
  v18 = v48;
  sub_1000035D0(&v46, *(&v47 + 1));
  if (((*(v18 + 96))(v17, v18) & 1) == 0)
  {
    goto LABEL_25;
  }

  v19 = *(a1 + *(type metadata accessor for BeaconObservation() + 24));
  if (v19 <= 0xA)
  {
    if ((v19 - 7) >= 2)
    {
      if (v19 == 1)
      {
        v27 = type metadata accessor for UUID();
        v28 = *(*(v27 - 8) + 56);
        v40 = 1;
        v28(v9, 1, 1, v27);
        goto LABEL_22;
      }

      if (v19 == 10)
      {
        v20 = type metadata accessor for UUID();
        v21 = *(v20 - 8);
        (*(v21 + 16))(v9, a1, v20);
        (*(v21 + 56))(v9, 0, 1, v20);
        v40 = 0;
LABEL_22:
        v41 = v5;
        v42 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v43 = v2;
        static os_log_type_t.default.getter();
        if (qword_1016950B8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_10138BBE0;
        v30 = UUID.uuidString.getter();
        v32 = v31;
        *(v29 + 56) = &type metadata for String;
        v33 = sub_100008C00();
        *(v29 + 64) = v33;
        *(v29 + 32) = v30;
        *(v29 + 40) = v32;
        v34 = sub_10091E6AC(v19);
        *(v29 + 96) = &type metadata for String;
        *(v29 + 104) = v33;
        *(v29 + 72) = v34;
        *(v29 + 80) = v35;
        os_log(_:dso:log:_:_:)();

        type metadata accessor for Transaction();
        v36 = v42;
        sub_1000D2A70(v9, v42, &qword_1016980D0, &unk_10138F3B0);
        v37 = (*(v41 + 80) + 25) & ~*(v41 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v43;
        *(v38 + 24) = v40;
        sub_10012C154(v36, v38 + v37);

        static Transaction.asyncTask(name:block:)();

        sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

LABEL_16:
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v40 = 3;
    goto LABEL_22;
  }

  if (v19 > 33)
  {
    if (v19 == 34)
    {
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
      v40 = 5;
      goto LABEL_22;
    }

    if (v19 == 35)
    {
      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
      v40 = 7;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v19 == 11)
  {
    goto LABEL_16;
  }

  if (v19 == 16)
  {
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    v40 = 6;
    goto LABEL_22;
  }

LABEL_25:
  sub_10000B3A8(v49, &qword_101696920, &unk_10138B200);
  return sub_100007BAC(&v46);
}

uint64_t sub_1002598C8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1002598F0, a1, 0);
}

uint64_t sub_1002598F0()
{
  v1 = *(v0 + 16);
  sub_100251FF8(*(v0 + 32), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100259978()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1002598C8(v4, v5, v0 + v3);
}

uint64_t sub_100259A6C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_100E73CFC(v4, v5, v6, a1);
}

unint64_t *sub_100259B1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100259BE0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100259BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100258E34();
  *a1 = result;
  return result;
}

uint64_t sub_100259BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v80[0] = a2;
  v81 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v85 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = v80 - v10;
  v11 = type metadata accessor for BeaconObservation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v80 - v17;
  v19 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v88 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = v80 - v23;
  v24 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v90 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v97 = v80 - v29;
  __chkstk_darwin(v28);
  v107 = v80 - v30;
  v31 = type metadata accessor for UUID();
  v32 = *(*(v31 - 8) + 64);
  result = __chkstk_darwin(v31);
  v110 = v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v36 = 0;
  v37 = *(a3 + 56);
  v84 = a3 + 56;
  v38 = 1 << *(a3 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v83 = (v38 + 63) >> 6;
  v100 = v34 + 16;
  v94 = (v12 + 56);
  v111 = v12;
  v91 = (v6 + 16);
  v105 = (v6 + 56);
  v106 = (v12 + 48);
  v103 = (v6 + 48);
  v87 = (v6 + 32);
  v86 = (v6 + 8);
  v101 = v34;
  v93 = (v34 + 8);
  v112 = v11;
  v89 = v5;
  v95 = result;
  v96 = a3;
  while (1)
  {
    while (1)
    {
      if (!v40)
      {
        v42 = v36;
        while (1)
        {
          v36 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_36;
          }

          if (v36 >= v83)
          {
            goto LABEL_34;
          }

          v43 = *(v84 + 8 * v36);
          ++v42;
          if (v43)
          {
            v41 = __clz(__rbit64(v43));
            v109 = (v43 - 1) & v43;
            goto LABEL_12;
          }
        }
      }

      v41 = __clz(__rbit64(v40));
      v109 = (v40 - 1) & v40;
LABEL_12:
      v44 = v41 | (v36 << 6);
      v45 = *(a3 + 48);
      v46 = *(v101 + 72);
      v92 = v44;
      v47 = v110;
      (*(v101 + 16))(v110, v45 + v46 * v44, v31);
      v48 = sub_100035730(v47, sub_100023854, 0);
      v49 = v48[2];
      if (v49)
      {
        v50 = v48 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        result = sub_10025B334(v50, v18, type metadata accessor for BeaconObservation);
        if (v49 == 1)
        {
LABEL_14:
          v51 = v98;
          sub_10002A9D4(v18, v98, type metadata accessor for BeaconObservation);
          v11 = v112;
          (*v94)(v51, 0, 1, v112);

          v5 = v89;
          goto LABEL_16;
        }

        v69 = 1;
        while (1)
        {
          v70 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            break;
          }

          sub_10025B334(v50 + *(v111 + 72) * v69, v16, type metadata accessor for BeaconObservation);
          v71 = *(v112 + 20);
          if (static Date.< infix(_:_:)())
          {
            sub_1000326A4(v18, type metadata accessor for BeaconObservation);
            result = sub_10002A9D4(v16, v18, type metadata accessor for BeaconObservation);
          }

          else
          {
            result = sub_1000326A4(v16, type metadata accessor for BeaconObservation);
          }

          ++v69;
          if (v70 == v49)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v51 = v98;
      (*v94)(v98, 1, 1, v11);

LABEL_16:
      v104 = *v106;
      if ((v104)(v51, 1, v11) == 1)
      {
        sub_10000B3A8(v51, &qword_1016A42E0, &qword_1013B0010);
        v52 = 1;
        v53 = v107;
      }

      else
      {
        v54 = v51 + *(v11 + 20);
        v53 = v107;
        (*v91)(v107, v54, v5);
        sub_1000326A4(v51, type metadata accessor for BeaconObservation);
        v52 = 0;
      }

      v55 = *v105;
      (*v105)(v53, v52, 1, v5);
      v56 = v97;
      sub_1000D2A70(v53, v97, &unk_101696900, &unk_10138B1E0);
      v102 = *v103;
      if (v102(v56, 1, v5) != 1)
      {
        break;
      }

      sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v56, &unk_101696900, &unk_10138B1E0);
      v31 = v95;
      result = (*v93)(v110, v95);
      v11 = v112;
      a3 = v96;
      v40 = v109;
    }

    v57 = *v87;
    (*v87)(v99, v56, v5);
    v58 = swift_allocObject();
    *(v58 + 16) = &off_101608510;
    v59 = v5;
    v60 = sub_100035730(v110, sub_10025B818, v58);

    v61 = v88;
    sub_1012BB138(v60, v88);
    v62 = v61;

    v63 = v61;
    v64 = v112;
    if ((v104)(v63, 1, v112) == 1)
    {
      sub_10000B3A8(v62, &qword_1016A42E0, &qword_1013B0010);
      v65 = v90;
      v55(v90, 1, 1, v59);
      v66 = v85;
      static Date.distantPast.getter();
      v67 = v102(v65, 1, v59);
      v5 = v59;
      v68 = v96;
      if (v67 != 1)
      {
        sub_10000B3A8(v90, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v72 = *v91;
      v73 = v62 + *(v64 + 20);
      v104 = v57;
      v74 = v90;
      v72(v90, v73, v59);
      sub_1000326A4(v62, type metadata accessor for BeaconObservation);
      v55(v74, 0, 1, v59);
      v66 = v85;
      v104(v85, v74, v59);
      v5 = v59;
      v68 = v96;
    }

    v75 = v99;
    v76 = static Date.> infix(_:_:)();
    v77 = v66;
    v78 = *v86;
    (*v86)(v77, v5);
    v78(v75, v5);
    sub_10000B3A8(v107, &unk_101696900, &unk_10138B1E0);
    v31 = v95;
    result = (*v93)(v110, v95);
    v40 = v109;
    a3 = v68;
    v11 = v112;
    if (v76)
    {
      *(v81 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
      if (__OFADD__(v82++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_34:

  return sub_10060AF64(v81, v80[0], v82, a3);
}

uint64_t sub_10025A67C(uint64_t a1, uint64_t a2)
{
  v92 = type metadata accessor for Date();
  v4 = *(v92 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v92);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v71 - v8;
  v9 = type metadata accessor for BeaconObservation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v71 - v15;
  v17 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v79 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v102 = &v71 - v21;
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v82 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v90 = &v71 - v27;
  __chkstk_darwin(v26);
  v97 = &v71 - v28;
  v103 = type metadata accessor for UUID();
  v29 = *(v103 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v103);
  v104 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v31) = *(a1 + 32);
  v32 = v31 & 0x3F;
  v72 = ((1 << v31) + 63) >> 6;
  v33 = 8 * v72;
  v100 = a2;

  v105 = v10;
  if (v32 > 0xD)
  {
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v69 = swift_slowAlloc();
      v70 = v100;

      v67 = sub_100259B1C(v69, v72, a1, v70);

      return v67;
    }

    v10 = v105;
  }

  v71 = &v71;
  __chkstk_darwin(v34);
  v73 = &v71 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v73, v33);
  v74 = 0;
  v35 = 0;
  v36 = *(a1 + 56);
  v76 = a1 + 56;
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v75 = (v37 + 63) >> 6;
  v93 = v29 + 16;
  v87 = (v10 + 56);
  v98 = (v10 + 48);
  v83 = (v4 + 16);
  v99 = (v4 + 56);
  v94 = (v4 + 48);
  v78 = (v4 + 32);
  v77 = (v4 + 8);
  v86 = (v29 + 8);
  v40 = a1;
  v33 = v10;
  a1 = v102;
  v41 = v97;
  v85 = v9;
  v88 = v29;
  v89 = v40;
  while (1)
  {
    while (1)
    {
      if (!v39)
      {
        v43 = v35;
        while (1)
        {
          v35 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_38;
          }

          if (v35 >= v75)
          {
            goto LABEL_35;
          }

          v44 = *(v76 + 8 * v35);
          ++v43;
          if (v44)
          {
            v42 = __clz(__rbit64(v44));
            v101 = (v44 - 1) & v44;
            goto LABEL_13;
          }
        }
      }

      v42 = __clz(__rbit64(v39));
      v101 = (v39 - 1) & v39;
LABEL_13:
      v45 = v42 | (v35 << 6);
      v46 = *(v40 + 48);
      v47 = *(v29 + 72);
      v84 = v45;
      v48 = v104;
      (*(v29 + 16))(v104, v46 + v47 * v45, v103);
      v49 = sub_100035730(v48, sub_100023854, 0);
      v4 = v49;
      v29 = v49[2];
      if (v29)
      {
        v33 = v49 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        sub_10025B334(v33, v16, type metadata accessor for BeaconObservation);
        if (v29 == 1)
        {
LABEL_15:
          a1 = v102;
          sub_10002A9D4(v16, v102, type metadata accessor for BeaconObservation);
          (*v87)(a1, 0, 1, v9);

          v41 = v97;
          goto LABEL_17;
        }

        a1 = 1;
        while (1)
        {
          v59 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          sub_10025B334(v33 + *(v105 + 72) * a1, v14, type metadata accessor for BeaconObservation);
          v60 = *(v9 + 20);
          if (static Date.< infix(_:_:)())
          {
            sub_1000326A4(v16, type metadata accessor for BeaconObservation);
            sub_10002A9D4(v14, v16, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_1000326A4(v14, type metadata accessor for BeaconObservation);
          }

          ++a1;
          if (v59 == v29)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      (*v87)(a1, 1, 1, v9);

LABEL_17:
      v95 = *v98;
      v50 = v95(a1, 1, v9);
      v51 = v92;
      v4 = v90;
      if (v50 == 1)
      {
        sub_10000B3A8(a1, &qword_1016A42E0, &qword_1013B0010);
        v52 = 1;
      }

      else
      {
        (*v83)(v41, a1 + *(v9 + 20), v92);
        sub_1000326A4(a1, type metadata accessor for BeaconObservation);
        v52 = 0;
      }

      v96 = *v99;
      v96(v41, v52, 1, v51);
      sub_1000D2A70(v41, v4, &unk_101696900, &unk_10138B1E0);
      v53 = *v94;
      if ((*v94)(v4, 1, v51) != 1)
      {
        break;
      }

      sub_10000B3A8(v41, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
      (*v86)(v104, v103);
      v29 = v88;
      v40 = v89;
      v39 = v101;
      a1 = v102;
      v9 = v85;
      v33 = v105;
    }

    v81 = *v78;
    v81(v91, v4, v51);
    v54 = swift_allocObject();
    *(v54 + 16) = &off_101608510;
    v55 = sub_100035730(v104, sub_10025B3BC, v54);

    v56 = v79;
    sub_1012BB138(v55, v79);

    v9 = v85;
    if (v95(v56, 1, v85) == 1)
    {
      sub_10000B3A8(v56, &qword_1016A42E0, &qword_1013B0010);
      v57 = v82;
      v96(v82, 1, 1, v51);
      v58 = v80;
      static Date.distantPast.getter();
      if (v53(v57, 1, v51) != 1)
      {
        sub_10000B3A8(v82, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v61 = v82;
      (*v83)(v82, v56 + *(v9 + 20), v51);
      sub_1000326A4(v56, type metadata accessor for BeaconObservation);
      v96(v61, 0, 1, v51);
      v58 = v80;
      v81(v80, v61, v51);
    }

    v62 = v91;
    v63 = static Date.> infix(_:_:)();
    v64 = v58;
    v4 = v63;
    v65 = *v77;
    (*v77)(v64, v51);
    v65(v62, v51);
    v41 = v97;
    sub_10000B3A8(v97, &unk_101696900, &unk_10138B1E0);
    (*v86)(v104, v103);
    v29 = v88;
    v40 = v89;
    v33 = v105;
    v39 = v101;
    a1 = v102;
    if (v4)
    {
      *&v73[(v84 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v84;
      if (__OFADD__(v74++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  v67 = sub_10060AF64(v73, v72, v74, v40);

  return v67;
}

uint64_t sub_10025B274(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100010F48(a1, v5);
}

uint64_t sub_10025B334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025B3C4()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);

  return sub_100252948(v4, v0 + v2, v3);
}

uint64_t sub_10025B460()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_100252D98(v4, v5, v0 + v3);
}

uint64_t sub_10025B558()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10024F8AC(v0);
}

uint64_t sub_10025B5E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10025B654()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1002511EC(v0);
}

uint64_t type metadata accessor for UpdateDeviceState()
{
  result = qword_10169B808;
  if (!qword_10169B808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025B758()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100157BAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10025B81C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  sub_10025C8CC(a1, a3, a4, a5, a6);
}

uint64_t sub_10025B880(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_1016950C0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  return a2(a1);
}

uint64_t sub_10025B9C0(char *a1, void (*a2)(void), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = type metadata accessor for ServerStatusCode();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NFCTapResponse();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v38 = a1;
  v18 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v20 = v19;
  sub_10025DB6C(&qword_10169B850, type metadata accessor for NFCTapResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v38 = v7;
  v21 = v37;
  sub_100016590(v18, v20);
  static os_log_type_t.default.getter();
  if (qword_1016950C0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  sub_10025DBB4(v14, v12, type metadata accessor for NFCTapResponse);
  v23 = String.init<A>(describing:)();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = v21;
  v27 = *(v21 + 16);
  v28 = v38;
  v27(v38, &v14[*(v8 + 20)], v4);
  v29 = (*(v26 + 88))(v28, v4);
  if (v29 == enum case for ServerStatusCode.success(_:))
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    (v40)(0);

    return sub_100018C40(v14, type metadata accessor for NFCTapResponse);
  }

  if (v29 == enum case for ServerStatusCode.badRequest(_:))
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_10025DC1C();
    v30 = swift_allocError();
    *v31 = 0;
LABEL_9:
    (v40)(v30);

    return sub_100018C40(v14, type metadata accessor for NFCTapResponse);
  }

  v32 = enum case for ServerStatusCode.unauthorized(_:);
  v33 = v29;
  static os_log_type_t.error.getter();
  if (v33 == v32)
  {
    os_log(_:dso:log:_:_:)();
    sub_10025DC1C();
    v30 = swift_allocError();
    *v34 = 1;
    goto LABEL_9;
  }

  os_log(_:dso:log:_:_:)();
  sub_10025DC1C();
  swift_allocError();
  *v36 = 2;
  v40();

  sub_100018C40(v14, type metadata accessor for NFCTapResponse);
  return (*(v26 + 8))(v28, v4);
}

void *sub_10025C054(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedKey();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  v4 = __chkstk_darwin(v2);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v37 - v6);
  v45 = type metadata accessor for DateInterval();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v45);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OwnedBeaconRecord();
  v13 = v12[13];
  v14 = (a1 + v12[12]);
  v15 = *v14;
  v43 = v14[1];
  v44 = v15;
  v16 = a1 + v13;
  v17 = *(a1 + v13);
  v41 = *(v16 + 8);
  v42 = v17;
  v37 = v12;
  v18 = v12[9];
  v40 = a1;
  v19 = (a1 + v18);
  v20 = *v19;
  v21 = v19[1];
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *&v49[0] = 0x7365547265646E75;
  *(&v49[0] + 1) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  v47 = sub_100A7563C(v20, v21, 1);
  v48 = v22;
  v23 = (v8 + 16);
  v24 = (v8 + 8);
  v25 = 1;
  v26 = _swiftEmptyArrayStorage;
  do
  {
    v27 = objc_autoreleasePoolPush();
    v29 = v47;
    v28 = v48;
    sub_100017D5C(v47, v48);
    sub_100A76468(v44, v43, v42, v41, v29, v28, 1, &v47, v49);
    sub_100016590(v29, v28);
    sub_1008849E8(v40 + v37[8], v25, 0xF, v11);
    v30 = v39;
    (*v23)(v7 + *(v39 + 20), v11, v45);
    *v7 = v25;
    v31 = (v7 + *(v30 + 24));
    v32 = v49[2];
    v33 = v49[0];
    v31[1] = v49[1];
    v31[2] = v32;
    *v31 = v33;
    sub_10025DBB4(v7, v46, type metadata accessor for TimeBasedKey);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_100A5BDF0(0, v26[2] + 1, 1, v26);
    }

    v35 = v26[2];
    v34 = v26[3];
    if (v35 >= v34 >> 1)
    {
      v26 = sub_100A5BDF0(v34 > 1, v35 + 1, 1, v26);
    }

    sub_100018C40(v7, type metadata accessor for TimeBasedKey);
    (*v24)(v11, v45);
    v26[2] = v35 + 1;
    sub_10025DC70(v46, v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35);
    objc_autoreleasePoolPop(v27);
    ++v25;
  }

  while (v25 != 21);
  sub_100016590(v47, v48);
  return v26;
}

uint64_t sub_10025C550(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v6 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for FMNAccountType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NFCTapEndPoint();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  v23 = enum case for FMNAccountType.searchParty(_:);
  v24 = *(v11 + 104);
  v24(v14, enum case for FMNAccountType.searchParty(_:), v10);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v22 = sub_1010B32C8(v14);
  v24(&v22[*(v16 + 28)], v23, v10);
  v25 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  v29 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v30 = type metadata accessor for ServerInteractionController(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  sub_10025DBB4(v22, v20, type metadata accessor for NFCTapEndPoint);
  v34 = sub_1006200F4(v20, v29, v33);
  sub_100018C40(v22, type metadata accessor for NFCTapEndPoint);
  sub_1004FC3CC(v39, v40, v41, 0, v34);

  v35 = swift_allocObject();
  v36 = v42;
  *(v35 + 16) = v42;
  *(v35 + 24) = a5;

  Future.addFailure(block:)();

  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a5;

  Future.addSuccess(block:)();
}

uint64_t sub_10025C8CC(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v140 = type metadata accessor for NFCTapRequestContent();
  v10 = *(*(v140 - 8) + 64);
  v11 = __chkstk_darwin(v140);
  v138 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v141 = &v134 - v13;
  v14 = type metadata accessor for UUID();
  v144 = *(v14 - 8);
  v15 = *(v144 + 64);
  __chkstk_darwin(v14);
  v143 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for StableIdentifier();
  v17 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v146 = (&v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for Date();
  v19 = *(v149 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v149);
  v148 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for HashAlgorithm();
  v22 = *(v161 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v161);
  v160 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for TimeBasedKey();
  v25 = *(v162 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v162);
  v167 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v28[5] = a5;

  v29 = a3;

  v147 = a1;
  v30 = sub_10025C054(a1);
  v31 = v30[2];
  if (v31)
  {
    v150 = v19;
    v142 = v14;
    v135 = v29;
    v139 = v28;
    v136 = a2;
    v137 = a4;
    v171 = _swiftEmptyArrayStorage;
    v29 = &v171;
    v32 = v30;
    v156 = v31;
    sub_1011244D8(0, v31, 0);
    v33 = v32;
    v34 = 0;
    v35 = 0;
    v36 = v171;
    v159 = v32 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v155 = enum case for HashAlgorithm.sha256(_:);
    v154 = (v22 + 104);
    v153 = (v22 + 8);
    v152 = xmmword_10138BBE0;
    v157 = v32;
    v158 = v25;
    do
    {
      if (v34 >= v33[2])
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v37 = v167;
      sub_10025DBB4(&v159[*(v25 + 72) * v34], v167, type metadata accessor for TimeBasedKey);
      v38 = sub_100A7A194(*(v37 + *(v162 + 24) + 16), *(v37 + *(v162 + 24) + 24));
      if (v35)
      {
        goto LABEL_48;
      }

      v14 = sub_100A7829C(v38, 0);
      v29 = v39;
      CCECCryptorRelease();
      v40 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v40 != 2)
        {
          goto LABEL_52;
        }

        v43 = *(v14 + 16);
        v42 = *(v14 + 24);
        v44 = __OFSUB__(v42, v43);
        v41 = v42 - v43;
        if (v44)
        {
          goto LABEL_35;
        }
      }

      else if (v40)
      {
        LODWORD(v41) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_36;
        }

        v41 = v41;
      }

      else
      {
        v41 = BYTE6(v29);
      }

      v165 = 0;
      if (v41 != 28)
      {
        if (v40 == 1)
        {
          LODWORD(v40) = HIDWORD(v14) - v14;
          if (!__OFSUB__(HIDWORD(v14), v14))
          {
            v35 = v40;
            goto LABEL_53;
          }

          __break(1u);
        }

        if (v40 != 2)
        {
          v35 = BYTE6(v29);
          goto LABEL_53;
        }

        v124 = *(v14 + 16);
        v123 = *(v14 + 24);
        v35 = v123 - v124;
        if (!__OFSUB__(v123, v124))
        {
          goto LABEL_53;
        }

        __break(1u);
LABEL_46:

        __break(1u);
LABEL_47:

        __break(1u);
LABEL_48:
        v125 = v35;
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v126 = swift_allocObject();
        *(v126 + 16) = xmmword_101385D80;
        v168 = v125;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v127 = String.init<A>(describing:)();
        v129 = v128;
        *(v126 + 56) = &type metadata for String;
        *(v126 + 64) = sub_100008C00();
        *(v126 + 32) = v127;
        *(v126 + 40) = v129;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v130 = swift_allocError();
        *v131 = 0;
        swift_willThrow();

        while (1)
        {
          v168 = 0;
          v169 = 0xE000000000000000;
          v29 = &v168;
          _StringGuts.grow(_:)(35);
          v132._countAndFlagsBits = 0xD000000000000021;
          v132._object = 0x800000010134CB30;
          String.append(_:)(v132);
          v170[0] = v130;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_52:
          v35 = 0;
LABEL_53:
          sub_100018350();
          v130 = swift_allocError();
          *v133 = 28;
          *(v133 + 8) = v35;
          *(v133 + 16) = 0;
          swift_willThrow();
          sub_100016590(v14, v29);
        }
      }

      v164 = v34;
      v166 = v36;
      v46 = v160;
      v45 = v161;
      (*v154)(v160, v155, v161);
      v47 = Data.hash(algorithm:)();
      v49 = v48;
      sub_100016590(v14, v29);
      (*v153)(v46, v45);
      LODWORD(v163) = static os_log_type_t.info.getter();
      if (qword_1016950C0 != -1)
      {
        swift_once();
      }

      v151 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = v152;
      v168 = v47;
      v169 = v49;
      sub_10025DB08();
      v51 = RawRepresentable<>.hexString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      v54 = sub_100008C00();
      *(v50 + 64) = v54;
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      v170[0] = v47;
      v170[1] = v49;
      v29 = v170;
      v55 = RawRepresentable<>.base64EncodedString(options:)();
      *(v50 + 96) = &type metadata for String;
      *(v50 + 104) = v54;
      *(v50 + 72) = v55;
      *(v50 + 80) = v56;
      os_log(_:dso:log:_:_:)();

      sub_100018C40(v167, type metadata accessor for TimeBasedKey);
      v36 = v166;
      v171 = v166;
      a4 = v166[2];
      v57 = v166[3];
      v14 = a4 + 1;
      if (a4 >= v57 >> 1)
      {
        v29 = &v171;
        sub_1011244D8((v57 > 1), a4 + 1, 1);
        v36 = v171;
      }

      v34 = v164 + 1;
      v36[2] = v14;
      v58 = &v36[2 * a4];
      v58[4] = v47;
      v58[5] = v49;
      v33 = v157;
      v35 = v165;
      v25 = v158;
    }

    while (v156 != v34);

    v59 = v148;
    static Date.trustedNow.getter(v148);
    Date.timeIntervalSince1970.getter();
    v61 = v60;
    v14 = *(v150 + 8);
    v150 += 8;
    (v14)(v59, v149);
    v62 = type metadata accessor for OwnedBeaconRecord();
    v63 = v147;
    v64 = v146;
    sub_10025DBB4(v147 + *(v62 + 24), v146, type metadata accessor for StableIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = *v64;
      v167 = v64[1];
      v66 = v64[2];
      v161 = v64[3];
      v162 = v66;
      v67 = v64[4];
      v163 = v64[5];
      v164 = v67;
      v68 = v144 + 16;
      v69 = v63 + *(v62 + 20);
      v160 = *(v144 + 16);
      (v160)(v143, v69, v142);
      v70 = sub_100907E70(_swiftEmptyArrayStorage);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v70;
      sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
      v72 = v168;
      v73 = [objc_opt_self() currentDevice];
      if (!v73)
      {
        goto LABEL_46;
      }

      v74 = v73;
      v158 = v68;
      v159 = v65;
      v166 = v36;
      v75 = [v73 serverFriendlyDescription];

      if (!v75)
      {
        goto LABEL_47;
      }

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v72;
      sub_100FFACA0(v76, v78, 0xD000000000000011, 0x800000010134EA40, v79);
      v80 = v168;
      v81 = v148;
      Date.init()();
      v82 = Date.epoch.getter();
      (v14)(v81, v149);
      v168 = v82;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v80;
      sub_100FFACA0(v83, v85, 0xD000000000000015, 0x800000010134EA60, v86);
      v87 = v168;
      v168 = 1;
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v87;
      sub_100FFACA0(v88, v90, 0xD000000000000013, 0x800000010134EA80, v91);
      v92 = v168;
      v93 = sub_1008D9A78();
      v95 = v94;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v92;
      sub_100FFACA0(v93, v95, 0x6567412D72657355, 0xEA0000000000746ELL, v96);
      v97 = v168;
      v98 = v141;
      v99 = v143;
      v100 = v142;
      (v160)(v141, v143, v142);
      v101 = v140;
      v102 = (v98 + *(v140 + 20));
      v103 = v161;
      *v102 = v162;
      v102[1] = v103;
      v104 = (v98 + v101[6]);
      v106 = v166;
      v105 = v167;
      *v104 = v159;
      v104[1] = v105;
      v107 = (v98 + v101[7]);
      v108 = v163;
      *v107 = v164;
      v107[1] = v108;
      v109 = (v98 + v101[8]);
      *v109 = v61;
      v109[1] = v106;
      v110 = type metadata accessor for JSONEncoder();
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();

      JSONEncoder.init()();
      sub_10025DB6C(&qword_10169B848, type metadata accessor for NFCTapRequestContent);
      v113 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v35)
      {

        static os_log_type_t.error.getter();
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_101385D80;
        v167 = v97;
        sub_10025DBB4(v98, v138, type metadata accessor for NFCTapRequestContent);
        v116 = String.init<A>(describing:)();
        *(v115 + 56) = &type metadata for String;
        *(v115 + 64) = v54;
        *(v115 + 32) = v116;
        *(v115 + 40) = v117;
        os_log(_:dso:log:_:_:)();

        sub_100018C40(v98, type metadata accessor for NFCTapRequestContent);
        (*(v144 + 8))(v99, v142);

        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        static os_signpost_type_t.end.getter();
        if (qword_101695068 != -1)
        {
          swift_once();
        }

        os_signpost(_:dso:log:name:signpostID:)();
        v118 = v137;
        swift_beginAccess();
        *(v118 + 16) = 0;
        dispatch_group_leave(v135);
      }

      else
      {
        v120 = v113;
        v121 = v114;

        sub_100018C40(v98, type metadata accessor for NFCTapRequestContent);
        (*(v144 + 8))(v99, v100);

        sub_100017D5C(v120, v121);

        sub_100016590(v120, v121);
        sub_10025C550(v97, v120, v121, sub_10025DAFC, v139);

        sub_100016590(v120, v121);
      }
    }

    else
    {

      static os_signpost_type_t.end.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:)();
      v119 = v137;
      swift_beginAccess();
      *(v119 + 16) = 0;
      dispatch_group_leave(v135);
      sub_100018C40(v64, type metadata accessor for StableIdentifier);
    }
  }

  else
  {

    static os_signpost_type_t.end.getter();
    if (qword_101695068 != -1)
    {
LABEL_37:
      swift_once();
    }

    os_signpost(_:dso:log:name:signpostID:)();
    swift_beginAccess();
    *(a4 + 16) = 0;
    dispatch_group_leave(v29);
  }
}

unint64_t sub_10025DB08()
{
  result = qword_10169BA70;
  if (!qword_10169BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BA70);
  }

  return result;
}

uint64_t sub_10025DB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025DBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10025DC1C()
{
  result = qword_10169B858;
  if (!qword_10169B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B858);
  }

  return result;
}

uint64_t sub_10025DC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025DCD4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v148 = a2;
  v140 = type metadata accessor for NFCTapRequestContent();
  v5 = *(*(v140 - 8) + 64);
  v6 = __chkstk_darwin(v140);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = &v134 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for HashAlgorithm();
  v15 = *(v157 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v157);
  v156 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for TimeBasedKey();
  v18 = *(v158 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v158);
  v165 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for StableIdentifier();
  v21 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v145 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v147 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = a1;
  v27 = sub_10025C054(a1);
  v28 = v27[2];
  if (v28)
  {
    v139 = v24;
    v143 = v23;
    v135 = v8;
    v142 = v14;
    v136 = v11;
    v137 = v10;
    v138 = a3;
    v169 = _swiftEmptyArrayStorage;
    v29 = &v169;
    v159 = v28;
    sub_1011244D8(0, v28, 0);
    v30 = 0;
    v31 = 0;
    v32 = v169;
    v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v160 = v27;
    v155 = v27 + v33;
    v153 = enum case for HashAlgorithm.sha256(_:);
    v152 = (v15 + 104);
    v151 = (v15 + 8);
    v150 = xmmword_10138BBE0;
    v154 = v18;
    while (1)
    {
      v34 = v160[2];
      if (v30 >= v34)
      {
        break;
      }

      v35 = *(v18 + 72);
      v163 = v30;
      v36 = v165;
      sub_10025DBB4(&v155[v35 * v30], v165, type metadata accessor for TimeBasedKey);
      v37 = sub_100A7A194(*(v36 + *(v158 + 24) + 16), *(v36 + *(v158 + 24) + 24));
      if (v31)
      {
        goto LABEL_43;
      }

      v14 = sub_100A7829C(v37, 0);
      v29 = v38;
      CCECCryptorRelease();
      v34 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_47;
        }

        v41 = *(v14 + 2);
        v40 = *(v14 + 3);
        v42 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v42)
        {
          goto LABEL_31;
        }
      }

      else if (v34)
      {
        LODWORD(v39) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_32;
        }

        v39 = v39;
      }

      else
      {
        v39 = BYTE6(v29);
      }

      v162 = 0;
      if (v39 != 28)
      {
        goto LABEL_33;
      }

      v164 = v32;
      v44 = v156;
      v43 = v157;
      (*v152)(v156, v153, v157);
      v45 = Data.hash(algorithm:)();
      v47 = v46;
      sub_100016590(v14, v29);
      (*v151)(v44, v43);
      LODWORD(v161) = static os_log_type_t.info.getter();
      if (qword_1016950C0 != -1)
      {
        swift_once();
      }

      v149 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v48 = swift_allocObject();
      *(v48 + 16) = v150;
      v167 = v45;
      v168 = v47;
      sub_10025DB08();
      v49 = v45;
      v50 = RawRepresentable<>.hexString.getter();
      v52 = v51;
      *(v48 + 56) = &type metadata for String;
      v53 = sub_100008C00();
      *(v48 + 64) = v53;
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      v166[0] = v45;
      v166[1] = v47;
      v29 = v166;
      v54 = RawRepresentable<>.base64EncodedString(options:)();
      *(v48 + 96) = &type metadata for String;
      *(v48 + 104) = v53;
      v55 = v53;
      *(v48 + 72) = v54;
      *(v48 + 80) = v56;
      os_log(_:dso:log:_:_:)();

      sub_100018C40(v165, type metadata accessor for TimeBasedKey);
      v32 = v164;
      v169 = v164;
      v58 = v164[2];
      v57 = v164[3];
      v14 = (v58 + 1);
      if (v58 >= v57 >> 1)
      {
        v29 = &v169;
        sub_1011244D8((v57 > 1), v58 + 1, 1);
        v32 = v169;
      }

      v31 = v162;
      v30 = v163 + 1;
      v32[2] = v14;
      v59 = &v32[2 * v58];
      v59[4] = v49;
      v59[5] = v47;
      v18 = v154;
      if (v159 == v30)
      {

        v60 = v147;
        static Date.trustedNow.getter(v147);
        Date.timeIntervalSince1970.getter();
        v62 = v61;
        v14 = *(v139 + 8);
        (v14)(v60, v143);
        v63 = type metadata accessor for OwnedBeaconRecord();
        v64 = v146;
        v65 = v145;
        sub_10025DBB4(v146 + *(v63 + 24), v145, type metadata accessor for StableIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          sub_10025DC1C();
          swift_allocError();
          *v121 = 4;
          v148();

          return sub_100018C40(v65, type metadata accessor for StableIdentifier);
        }

        v164 = v32;
        v66 = *v65;
        v67 = v65[1];
        v68 = v65[2];
        v160 = v65[3];
        v161 = v68;
        v69 = v65[5];
        v165 = v65[4];
        v163 = v69;
        v70 = v64 + *(v63 + 20);
        v158 = *(v136 + 16);
        v159 = v136 + 16;
        (v158)(v142, v70, v137);
        v71 = sub_100907E70(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = v71;
        sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
        v73 = v167;
        v74 = [objc_opt_self() currentDevice];
        if (v74)
        {
          v75 = v74;
          v156 = v67;
          v157 = v66;
          v76 = [v74 serverFriendlyDescription];

          if (v76)
          {
            v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v79 = v78;

            v80 = swift_isUniquelyReferenced_nonNull_native();
            v167 = v73;
            sub_100FFACA0(v77, v79, 0xD000000000000011, 0x800000010134EA40, v80);
            v81 = v167;
            v82 = v147;
            Date.init()();
            v83 = Date.epoch.getter();
            (v14)(v82, v143);
            v167 = v83;
            v84 = dispatch thunk of CustomStringConvertible.description.getter();
            v86 = v85;
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v167 = v81;
            sub_100FFACA0(v84, v86, 0xD000000000000015, 0x800000010134EA60, v87);
            v88 = v167;
            v167 = 1;
            v89 = dispatch thunk of CustomStringConvertible.description.getter();
            v91 = v90;
            v92 = swift_isUniquelyReferenced_nonNull_native();
            v167 = v88;
            sub_100FFACA0(v89, v91, 0xD000000000000013, 0x800000010134EA80, v92);
            v93 = v167;
            v94 = sub_1008D9A78();
            v96 = v95;
            v97 = swift_isUniquelyReferenced_nonNull_native();
            v167 = v93;
            sub_100FFACA0(v94, v96, 0x6567412D72657355, 0xEA0000000000746ELL, v97);
            v98 = v167;
            v99 = v141;
            v100 = v137;
            (v158)(v141, v142, v137);
            v101 = v140;
            v102 = (v99 + *(v140 + 20));
            v103 = v160;
            *v102 = v161;
            v102[1] = v103;
            v104 = (v99 + v101[6]);
            v105 = v156;
            *v104 = v157;
            v104[1] = v105;
            v106 = (v99 + v101[7]);
            v107 = v164;
            v108 = v163;
            *v106 = v165;
            v106[1] = v108;
            v109 = (v99 + v101[8]);
            *v109 = v62;
            v109[1] = v107;
            v110 = type metadata accessor for JSONEncoder();
            v111 = *(v110 + 48);
            v112 = *(v110 + 52);
            swift_allocObject();

            JSONEncoder.init()();
            sub_10025DB6C(&qword_10169B848, type metadata accessor for NFCTapRequestContent);
            v113 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            if (v31)
            {

              static os_log_type_t.error.getter();
              v115 = swift_allocObject();
              *(v115 + 16) = xmmword_101385D80;
              v165 = v98;
              sub_10025DBB4(v99, v135, type metadata accessor for NFCTapRequestContent);
              v116 = String.init<A>(describing:)();
              *(v115 + 56) = &type metadata for String;
              *(v115 + 64) = v55;
              *(v115 + 32) = v116;
              *(v115 + 40) = v117;
              os_log(_:dso:log:_:_:)();

              sub_100018C40(v99, type metadata accessor for NFCTapRequestContent);
              (*(v136 + 8))(v142, v100);

              static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)();
              sub_10025ED18();
              swift_allocError();
              *v118 = 0;
              v148();
            }

            else
            {
              v122 = v113;
              v123 = v114;

              sub_100018C40(v99, type metadata accessor for NFCTapRequestContent);
              (*(v136 + 8))(v142, v100);

              sub_100017D5C(v122, v123);

              sub_100016590(v122, v123);
              sub_10025C550(v98, v122, v123, v148, v138);

              return sub_100016590(v122, v123);
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          static os_log_type_t.error.getter();
          if (qword_101694BE0 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_101385D80;
          v167 = v31;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v127 = String.init<A>(describing:)();
          v129 = v128;
          *(v126 + 56) = &type metadata for String;
          *(v126 + 64) = sub_100008C00();
          *(v126 + 32) = v127;
          *(v126 + 40) = v129;
          os_log(_:dso:log:_:_:)();

          sub_1001BAF88();
          v130 = swift_allocError();
          *v131 = 0;
          swift_willThrow();

          while (1)
          {
            v167 = 0;
            v168 = 0xE000000000000000;
            v29 = &v167;
            _StringGuts.grow(_:)(35);
            v132._countAndFlagsBits = 0xD000000000000021;
            v132._object = 0x800000010134CB30;
            String.append(_:)(v132);
            v166[0] = v130;
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            _print_unlocked<A, B>(_:_:)();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_47:
            v31 = 0;
LABEL_48:
            sub_100018350();
            v130 = swift_allocError();
            *v133 = 28;
            *(v133 + 8) = v31;
            *(v133 + 16) = 0;
            swift_willThrow();
            sub_100016590(v14, v29);
          }
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (v34 == 1)
    {
      LODWORD(v34) = HIDWORD(v14) - v14;
      if (!__OFSUB__(HIDWORD(v14), v14))
      {
        v31 = v34;
        goto LABEL_48;
      }

      __break(1u);
    }

    if (v34 != 2)
    {
      v31 = BYTE6(v29);
      goto LABEL_48;
    }

    v124 = *(v14 + 2);
    v125 = *(v14 + 3);
    v31 = v125 - v124;
    if (!__OFSUB__(v125, v124))
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_41;
  }

  sub_10025DC1C();
  swift_allocError();
  *v120 = 3;
  v148();
}

unint64_t sub_10025ED18()
{
  result = qword_10169B860;
  if (!qword_10169B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B860);
  }

  return result;
}

unint64_t sub_10025ED80()
{
  result = qword_10169B868;
  if (!qword_10169B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B868);
  }

  return result;
}

uint64_t sub_10025EDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000D2A70(a3, v27 - v11, &qword_101698C00, &qword_10138B570);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10025F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000D2A70(a3, v27 - v11, &qword_101698C00, &qword_10138B570);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10025F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000D2A70(a3, v27 - v11, &qword_101698C00, &qword_10138B570);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10025F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000D2A70(a3, v27 - v11, &qword_101698C00, &qword_10138B570);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10025F9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000D2A70(a3, v27 - v11, &qword_101698C00, &qword_10138B570);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000B3A8(v12, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      type metadata accessor for WorkItemQueue.WorkItem();

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000B3A8(v27[0], &qword_101698C00, &qword_10138B570);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  type metadata accessor for WorkItemQueue.WorkItem();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10025FD00(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169BAA8, &unk_10139FDB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v43 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v41 - v6;
  v8 = sub_1000BC4D4(&qword_10169BAB0, &qword_1013956D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v41 - v10;
  v12 = sub_1000BC4D4(&qword_10169BAB8, &qword_1013956D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v41 - v14;
  v44 = a1;
  *&v45 = a1;

  sub_1000BC4D4(&qword_10169BAC0, &qword_1013956E0);
  sub_1000BC4D4(&qword_10169BA98, &qword_1013956A0);
  if (swift_dynamicCast())
  {
    sub_10000A748(v46, v48);
    sub_1000035D0(v48, v48[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v46[0] = v45;
    sub_100007BAC(v48);
    goto LABEL_42;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v16 = sub_10000B3A8(v46, &qword_10169BAA0, &qword_1013956A8);
  v46[0] = xmmword_10138C660;
  __chkstk_darwin(v16);
  v41[-2] = &v44;
  sub_10026792C(sub_10026968C);
  v17 = *&v11[*(v8 + 48)];
  sub_1000D2AD8(v11, v15, &qword_10169BAB8, &qword_1013956D8);
  v18 = *(&v46[0] + 1) >> 62;
  if ((*(&v46[0] + 1) >> 62) <= 1)
  {
    if (!v18)
    {
      if (v17 == BYTE14(v46[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v46[0]), v46[0]))
    {
      goto LABEL_46;
    }

    if (v17 != DWORD1(v46[0]) - LODWORD(v46[0]))
    {
LABEL_13:
      if (v18 == 2)
      {
        v23 = *(*&v46[0] + 24);
      }

      else if (v18 == 1)
      {
        v23 = *&v46[0] >> 32;
      }

      else
      {
        v23 = BYTE14(v46[0]);
      }

      goto LABEL_40;
    }

LABEL_18:
    v41[0] = 0;
    v41[1] = a1;
    v24 = 0;
    memset(v48, 0, 15);
    v25 = *(v12 + 44);
LABEL_19:
    v42 = v24;
    while (1)
    {
      sub_1000D2A70(&v15[v25], v7, &qword_10169BAA8, &unk_10139FDB0);
      v27 = type metadata accessor for Data.Iterator();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      v30 = v29(v7, 1, v27);
      sub_10000B3A8(v7, &qword_10169BAA8, &unk_10139FDB0);
      if (v30 != 1)
      {
        if (v29(&v15[v25], 1, v27) == 1)
        {
          goto LABEL_48;
        }

        sub_100267678(&qword_10169BAC8, &type metadata accessor for Data.Iterator);
        dispatch thunk of IteratorProtocol.next()();
        if (BYTE1(v45) != 1)
        {
          v38 = v42;
          *(v48 + v42) = v45;
          v24 = (v38 + 1);
          if ((v24 >> 8))
          {
            goto LABEL_47;
          }

          if ((v38 + 1) == 14)
          {
            *&v45 = v48[0];
            *(&v45 + 6) = *(v48 + 6);
            Data._Representation.append(contentsOf:)();
            v24 = 0;
          }

          goto LABEL_19;
        }
      }

      v31 = *(v15 + 1);
      v32 = *(*v15 + 16);
      if (v31 == v32)
      {
        if (v42)
        {
          *&v45 = v48[0];
          *(&v45 + 6) = *(v48 + 6);
          Data._Representation.append(contentsOf:)();
        }

        sub_10000B3A8(v15, &qword_10169BAB8, &qword_1013956D8);
        goto LABEL_42;
      }

      if (v31 >= v32)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v33 = *v15 + 16 * v31;
      v34 = *(v33 + 32);
      v35 = *(v33 + 40);
      *(v15 + 1) = v31 + 1;
      v36 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v36 == 2)
        {
          v37 = *(v34 + 16);
LABEL_20:
          sub_100017D5C(v34, v35);
        }
      }

      else if (v36)
      {
        goto LABEL_20;
      }

      v26 = v43;
      Data.Iterator.init(_:at:)();
      (*(v28 + 56))(v26, 0, 1, v27);
      sub_1002696E4(v26, &v15[v25]);
    }
  }

  if (v18 == 2)
  {
    v20 = *(*&v46[0] + 16);
    v19 = *(*&v46[0] + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (v21)
    {
      goto LABEL_45;
    }

    if (v17 != v22)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    goto LABEL_18;
  }

  v23 = 0;
LABEL_40:
  if (v23 < v17)
  {
    goto LABEL_44;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  sub_10000B3A8(v15, &qword_10169BAB8, &qword_1013956D8);
LABEL_42:
  v39 = v46[0];
  sub_100017D5C(*&v46[0], *(&v46[0] + 1));

  sub_100016590(v39, *(&v39 + 1));
  return v39;
}