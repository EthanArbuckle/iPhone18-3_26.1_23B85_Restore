uint64_t sub_100519780(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v14 + 16) && (v15 = sub_100771E30(a1, a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    v20 = *(v19 - 8);
    sub_100524368(v18 + *(v20 + 72) * v17, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
    v21 = *(v20 + 56);
    v21(v13, 0, 1, v19);
    sub_10000B3A8(v13, &qword_101699858, &qword_101391FF0);
    sub_10051A590(a1, a2, v11);
    v22 = sub_1005183F0(a1, a2);
    v23 = sub_100521BB0(a1, a2);
    if (v23 == 3)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v25 = &v11[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    *v25 = v22;
    v25[1] = HIBYTE(v22) & 1;
    v25[2] = v24;
    swift_storeEnumTagMultiPayload();
    v21(v11, 0, 1, v19);
    sub_100017D5C(a1, a2);
    sub_1001DD6C0(v11, a1, a2);
    return 1;
  }

  else
  {
    v27 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
    sub_10000B3A8(v13, &qword_101699858, &qword_101391FF0);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C418);
    sub_100017D5C(a1, a2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v33 = String.init(data:encoding:)();
      if (!v34)
      {
        v33 = Data.hexString.getter();
      }

      v35 = sub_1000136BC(v33, v34, &v37);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Invalid serial number: %{private,mask.hash}s. Unpair failed!", v31, 0x16u);
      sub_100007BAC(v32);
    }

    return 0;
  }
}

uint64_t sub_100519BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = *(v3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v18 + 16) && (v19 = sub_100771E30(a1, a2), (v20 & 1) != 0))
  {
    sub_100524368(*(v18 + 56) + *(v8 + 72) * v19, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v15, v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v17, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v22 = *(v21 + 48);
      sub_100006654(*&v12[*(v21 + 64)], *&v12[*(v21 + 64) + 8]);
      v23 = type metadata accessor for UUID();
      v24 = *(v23 - 8);
      (*(v24 + 32))(a3, v12, v23);
      (*(v24 + 56))(a3, 0, 1, v23);
      return sub_10000B3A8(&v12[v22], &qword_1016A40D0, &unk_10138BE70);
    }

    else
    {
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
      return sub_100523C5C(v12, type metadata accessor for OwnedBeaconGroup.PairingState);
    }
  }

  else
  {
    v26 = type metadata accessor for UUID();
    v27 = *(*(v26 - 8) + 56);

    return v27(a3, 1, 1, v26);
  }
}

uint64_t sub_100519EE8(uint64_t result, unint64_t a2)
{
  v11 = result;
  v12 = a2;
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v3 = 0;
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
LABEL_10:
      sub_100017D5C(result, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_14;
    }

    v3 = HIDWORD(result) - result;
    goto LABEL_10;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  v3 = BYTE6(a2);
LABEL_11:
  result = 20 - v3;
  if (!__OFSUB__(20, v3))
  {
    v9 = sub_100845C88(result);
    v10 = v6;
    sub_100776394(&v9, 0);
    v7 = v9;
    v8 = v10;
    Data.append(_:)();
    sub_100016590(v7, v8);
    return v11;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100519FB0()
{
  v57 = type metadata accessor for UUID();
  v1 = *(v57 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v57);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v55 = &v50 - v6;
  __chkstk_darwin(v5);
  v54 = &v50 - v7;
  v61 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v61);
  v64 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v50 - v11;
  v12 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v50 - v17;
  v65 = &_swiftEmptySetSingleton;
  v18 = *(v0 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v52 = (v1 + 16);
  v53 = (v1 + 32);
  v51 = (v1 + 8);
  v60 = v18;

  v25 = 0;
  v63 = v16;
  if (!v22)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v26 = v25;
LABEL_14:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v30 = v29 | (v26 << 6);
      v31 = (*(v60 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = v58;
      sub_100524368(*(v60 + 56) + *(v59 + 72) * v30, v58, type metadata accessor for OwnedBeaconGroup.PairingState);
      v35 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      v36 = *(v35 + 48);
      v37 = v63;
      *v63 = v32;
      v37[1] = v33;
      v38 = v34;
      v16 = v37;
      sub_100523BF4(v38, v37 + v36, type metadata accessor for OwnedBeaconGroup.PairingState);
      (*(*(v35 - 8) + 56))(v16, 0, 1, v35);
      sub_100017D5C(v32, v33);
      v28 = v26;
LABEL_15:
      v39 = v62;
      sub_1000D2AD8(v16, v62, &unk_1016BBEA0, &unk_101395A80);
      v40 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {

        return v65;
      }

      sub_100016590(*v39, *(v39 + 8));
      sub_100523BF4(v39 + *(v40 + 48), v64, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      result = sub_100523C5C(v64, type metadata accessor for OwnedBeaconGroup.PairingState);
      v25 = v28;
      if (!v22)
      {
        goto LABEL_7;
      }
    }

    v41 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v42 = *(v41 + 48);
    v43 = v64;
    sub_100006654(*(v64 + *(v41 + 64)), *(v64 + *(v41 + 64) + 8));
    v25 = v28;
    v44 = v54;
    v45 = v57;
    (*v53)(v54, v43, v57);
    sub_10000B3A8(v43 + v42, &qword_1016A40D0, &unk_10138BE70);
    v46 = v56;
    (*v52)(v56, v44, v45);
    v47 = v55;
    sub_100DE8BCC(v55, v46);
    v48 = *v51;
    v16 = v63;
    (*v51)(v47, v45);
    result = v48(v44, v45);
  }

  while (v22);
LABEL_7:
  if (v23 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v49 - 8) + 56))(v16, 1, 1, v49);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10051A590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - v18;
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  v22 = *(v3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v22 + 16) && (v23 = sub_100771E30(a1, a2), (v24 & 1) != 0))
  {
    sub_100524368(*(v22 + 56) + *(v12 + 72) * v23, v19, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v19, v21, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523BF4(v21, v16, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_1000D2AD8(v16, v10, &qword_1016A40D0, &unk_10138BE70);
      return sub_1000D2AD8(v10, a3, &qword_1016A40D0, &unk_10138BE70);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v26 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v27 = *(v26 + 48);
      sub_100006654(*&v16[*(v26 + 64)], *&v16[*(v26 + 64) + 8]);
      sub_1000D2AD8(&v16[v27], v10, &qword_1016A40D0, &unk_10138BE70);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 8))(v16, v28);
      return sub_1000D2AD8(v10, a3, &qword_1016A40D0, &unk_10138BE70);
    }

    v32 = type metadata accessor for MACAddress();
    return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }

  else
  {
    v29 = type metadata accessor for MACAddress();
    v30 = *(*(v29 - 8) + 56);

    return v30(a3, 1, 1, v29);
  }
}

unint64_t sub_10051A8E8(uint64_t a1)
{
  result = *(*(v1 + *(a1 + 40)) + 16);
  if (result > 0xFF)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_10051A904(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 24);
  type metadata accessor for UUID();
  sub_100523A38(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10051A9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  type metadata accessor for UUID();
  sub_100523A38(&qword_1016967B0, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10051AA20(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v3 = *(a2 + 24);
  type metadata accessor for UUID();
  sub_100523A38(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10051AAD4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10051AC00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005254A4(*a1);
  *a2 = result;
  return result;
}

void sub_10051AC30(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xEA00000000007373;
  v6 = 0x657264644163616DLL;
  if (v2 != 5)
  {
    v6 = 0x614D6E6F63616562;
    v5 = 0xE900000000000070;
  }

  v7 = 0x8000000101347C70;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000101347C50;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10051AD24()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x657264644163616DLL;
  if (v1 != 5)
  {
    v3 = 0x614D6E6F63616562;
  }

  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x696669746E656469;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

unint64_t sub_10051AE14@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005254A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10051AE3C(uint64_t a1)
{
  v2 = sub_100524204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051AE78(uint64_t a1)
{
  v2 = sub_100524204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051AEB4(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016A42D0, &unk_1013B0000);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100525EFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10051B01C(void *a1, int a2)
{
  v3 = BYTE2(a2);
  v5 = sub_1000BC4D4(&unk_1016A42B0, &qword_1013AFFF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100525EA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12[13] = v3;
    v12[12] = 1;
    sub_100525E54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10051B198(uint64_t a1)
{
  v2 = sub_100525EFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051B1D4(uint64_t a1)
{
  v2 = sub_100525EFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10051B210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005254F0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10051B258()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = *v0;
  v4 = v0[1];
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v6)
  {
    return Data.hexString.getter();
  }

  return result;
}

uint64_t sub_10051B2F0()
{
  if (*v0)
  {
    result = 0x54676E6972696170;
  }

  else
  {
    result = 0x644974726170;
  }

  *v0;
  return result;
}

uint64_t sub_10051B330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644974726170 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54676E6972696170 && a2 == 0xEB00000000657079)
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

uint64_t sub_10051B40C(uint64_t a1)
{
  v2 = sub_100525EA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051B448(uint64_t a1)
{
  v2 = sub_100525EA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051B484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100525664(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result);
  }

  return result;
}

uint64_t sub_10051B528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for UUID();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  v19 = v69;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v19)
  {
    v60 = v6;
    v61 = v13;
    v59 = v11;
    v21 = v64;
    v20 = v65;
    v62 = v14;
    v69 = v17;
    sub_10015049C(v67, v68);
    v22 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v26 = v22;
    v27 = v23;
    if (v22 == 117 && v23 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      type metadata accessor for MACAddress();
      sub_10015049C(v67, v68);
      sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress);
      v28 = v61;
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v29 = a1;
      sub_10015049C(v67, v68);
      v30 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
      v31 = v30;
      v32 = (v30 >> 8) & 1;
      sub_10015049C(v67, v68);
      sub_100525E00();
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v33 = v66[0];
      v34 = v69;
      v35 = (v34 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      sub_1000D2AD8(v28, v34, &qword_1016A40D0, &unk_10138BE70);
      *v35 = v31;
      v35[1] = v32;
      v35[2] = v33;
LABEL_9:
      v36 = v63;
LABEL_10:
      swift_storeEnumTagMultiPayload();
      sub_100007BAC(v67);
      sub_100523BF4(v34, v36, type metadata accessor for OwnedBeaconGroup.PairingState);
      v24 = v29;
      return sub_100007BAC(v24);
    }

    if (v26 == 112 && v27 == 0xE100000000000000)
    {

      v37 = v20;
      v38 = v21;
LABEL_16:
      sub_10015049C(v67, v68);
      sub_100523A38(&qword_101698300, &type metadata accessor for UUID);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      type metadata accessor for MACAddress();
      sub_10015049C(v67, v68);
      sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress);
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v29 = a1;
      sub_10015049C(v67, v68);
      sub_1000E307C();
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v65 = v66[0];
      v64 = v66[1];
      sub_10015049C(v67, v68);
      v40 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
      v58 = v41;
      v61 = v40;
      sub_10015049C(v67, v68);
      v57 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
      v56 = (v57 >> 8) & 1;
      sub_10015049C(v67, v68);
      sub_100525E00();
      dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
      v55 = LOBYTE(v66[0]);
      v42 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v43 = v42[12];
      v34 = v69;
      v44 = &v69[v42[16]];
      v45 = &v69[v42[20]];
      v46 = &v69[v42[24]];
      (*(v38 + 32))(v69, v60, v37);
      sub_1000D2AD8(v59, v34 + v43, &qword_1016A40D0, &unk_10138BE70);
      v47 = v64;
      *v44 = v65;
      v44[1] = v47;
      *v45 = v61;
      v45[8] = v58 & 1;
      LOBYTE(v47) = v56;
      *v46 = v57;
      v46[1] = v47;
      v46[2] = v55;
      goto LABEL_9;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v37 = v20;
      v38 = v21;

      goto LABEL_16;
    }

    v29 = a1;
    if (v26 == 108 && v27 == 0xE100000000000000)
    {

      v36 = v63;
      v34 = v69;
      goto LABEL_10;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v36 = v63;
    v34 = v69;
    if (v39)
    {

      goto LABEL_10;
    }

    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177ACC8);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66[0] = v52;
      *v51 = 136446210;
      v53 = sub_1000136BC(v26, v27, v66);

      *(v51 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Unhandled type code: %{public}s", v51, 0xCu);
      sub_100007BAC(v52);
    }

    else
    {
    }

    sub_100523AF8();
    swift_allocError();
    *v54 = 6;
    swift_willThrow();
    sub_100007BAC(v67);
  }

  v24 = a1;
  return sub_100007BAC(v24);
}

uint64_t sub_10051BEC4(void *a1)
{
  v2 = v1;
  v71 = type metadata accessor for UUID();
  v73 = *(v71 - 8);
  v4 = *(v73 + 64);
  __chkstk_darwin(v71);
  v72 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MACAddress();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  v8 = __chkstk_darwin(v6);
  v67 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v61[-v10];
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v68 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v74 = &v61[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v61[-v19];
  __chkstk_darwin(v18);
  v22 = &v61[-v21];
  v23 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v61[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100524368(v2, v26, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = &v26[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
    v45 = *v44;
    v46 = v44[1];
    v47 = v44[2];
    sub_1000D2AD8(v26, v22, &qword_1016A40D0, &unk_10138BE70);
    sub_10015049C(v77, v78);
    v48 = v79;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v48)
    {
LABEL_6:
      sub_10000B3A8(v22, &qword_1016A40D0, &unk_10138BE70);
      return sub_100007BAC(v77);
    }

    LODWORD(v79) = v45;
    sub_1000D2A70(v22, v20, &qword_1016A40D0, &unk_10138BE70);
    v50 = v69;
    v51 = v70;
    if ((*(v69 + 48))(v20, 1, v70) == 1)
    {
      sub_10000B3A8(v20, &qword_1016A40D0, &unk_10138BE70);
      if (v46)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v74) = v47;
      (*(v50 + 32))(v11, v20, v51);
      sub_10015049C(v77, v78);
      sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      (*(v50 + 8))(v11, v51);
      v47 = v74;
      if (v46)
      {
LABEL_19:
        if (v47 != 3)
        {
          LOBYTE(v75) = v47;
          sub_10015049C(v77, v78);
          sub_100525E54();
          dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        }

        goto LABEL_6;
      }
    }

    sub_10015049C(v77, v78);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v30 = v29[12];
    v31 = &v26[v29[16]];
    v32 = *v31;
    v33 = v31[1];
    v34 = &v26[v29[20]];
    v65 = *v34;
    v35 = v34[8];
    v36 = &v26[v29[24]];
    v66 = *v36;
    v37 = v36[1];
    v63 = v35;
    v64 = v37;
    v62 = v36[2];
    v39 = v72;
    v38 = v73;
    v40 = v71;
    (*(v73 + 32))(v72, v26, v71);
    v41 = &v26[v30];
    v42 = v74;
    sub_1000D2AD8(v41, v74, &qword_1016A40D0, &unk_10138BE70);
    sub_10015049C(v77, v78);
    v43 = v79;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v43)
    {
      sub_100006654(v32, v33);
      sub_10000B3A8(v42, &qword_1016A40D0, &unk_10138BE70);
      (*(v38 + 8))(v39, v40);
    }

    else
    {
      sub_10015049C(v77, v78);
      sub_100523A38(&qword_101698330, &type metadata accessor for UUID);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v52 = v68;
      sub_1000D2A70(v74, v68, &qword_1016A40D0, &unk_10138BE70);
      v53 = v69;
      v54 = v70;
      v55 = v33;
      if ((*(v69 + 48))(v52, 1, v70) == 1)
      {
        sub_10000B3A8(v52, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        v56 = v67;
        (*(v53 + 32))(v67, v52, v54);
        sub_10015049C(v77, v78);
        sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress);
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        (*(v53 + 8))(v56, v54);
        v40 = v71;
      }

      if (v55 >> 60 != 15)
      {
        v75 = v32;
        v76 = v55;
        sub_10015049C(v77, v78);
        sub_1000E3190();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      }

      v57 = v64;
      if (v63)
      {
        v58 = v72;
        v59 = v62;
      }

      else
      {
        sub_10015049C(v77, v78);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v58 = v72;
        v59 = v62;
        v57 = v64;
      }

      if (v57)
      {
        v60 = v73;
      }

      else
      {
        sub_10015049C(v77, v78);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v60 = v73;
        v59 = v62;
      }

      if (v59 == 3)
      {
        sub_100006654(v32, v55);
        sub_10000B3A8(v74, &qword_1016A40D0, &unk_10138BE70);
        (*(v60 + 8))(v58, v40);
      }

      else
      {
        LOBYTE(v75) = v59;
        sub_10015049C(v77, v78);
        sub_100525E54();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        sub_100006654(v32, v55);
        sub_10000B3A8(v74, &qword_1016A40D0, &unk_10138BE70);
        (*(v73 + 8))(v58, v40);
      }
    }
  }

  else
  {
    sub_10015049C(v77, v78);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100007BAC(v77);
}

uint64_t sub_10051D0F8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A4420, &qword_1013B07D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005266E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 8);
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_1005243D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0) + 20);
    v14[14] = 1;
    type metadata accessor for MACAddress();
    sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10051D2D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = type metadata accessor for MACAddress();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016A4410, &qword_1013B07D0);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v30);
  v9 = &v23 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005266E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v24 = v10;
    v25 = v6;
    v15 = v13;
    v17 = v28;
    v16 = v29;
    v34 = 0;
    sub_100524258();
    v18 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v32;
    v20 = v15;
    *v15 = v31;
    v15[8] = v19;
    v33 = 1;
    sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress);
    v21 = v25;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v18);
    (*(v26 + 32))(v20 + *(v24 + 20), v21, v16);
    sub_100523BF4(v20, v27, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  }

  return sub_100007BAC(a1);
}

unint64_t sub_10051D678()
{
  result = qword_1016A4120;
  if (!qword_1016A4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4120);
  }

  return result;
}

uint64_t sub_10051D6CC()
{
  if (*v0)
  {
    result = 0x657264644163616DLL;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_10051D70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373)
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

uint64_t sub_10051D7F0(uint64_t a1)
{
  v2 = sub_1005266E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051D82C(uint64_t a1)
{
  v2 = sub_1005266E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051D898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v5 = *(a3 + 20);
  return static MACAddress.== infix(_:_:)();
}

uint64_t sub_10051D8D8(void *a1, uint64_t a2, int a3)
{
  v24 = a3;
  v22 = a2;
  v23 = sub_1000BC4D4(&qword_1016A4270, &qword_1013AFFD0);
  v21 = *(v23 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v20 = sub_1000BC4D4(&qword_1016A4278, &qword_1013AFFD8);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v20);
  v10 = &v19 - v9;
  v11 = sub_1000BC4D4(&unk_1016A4280, &qword_1013AFFE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100525D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v24)
  {
    v25 = 0;
    sub_100525DAC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v20);
  }

  else
  {
    v26 = 1;
    sub_100525D58();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v23;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v6, v18);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10051DBD0()
{
  if (*v0)
  {
    result = 0x656E6F6973726576;
  }

  else
  {
    result = 0x79636167656CLL;
  }

  *v0;
  return result;
}

uint64_t sub_10051DC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79636167656CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F6973726576 && a2 == 0xE900000000000064)
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

uint64_t sub_10051DCEC(uint64_t a1)
{
  v2 = sub_100525D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051DD28(uint64_t a1)
{
  v2 = sub_100525D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051DD64(uint64_t a1)
{
  v2 = sub_100525DAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051DDA0(uint64_t a1)
{
  v2 = sub_100525DAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051DDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_10051DE7C(uint64_t a1)
{
  v2 = sub_100525D58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051DEB8(uint64_t a1)
{
  v2 = sub_100525D58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051DEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10052582C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

Swift::Int sub_10051DF48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v3 = v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10051DFA8()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10051DFF0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10051E050()
{
  if (v0[1])
  {
    return 0x79636167656C2ELL;
  }

  v4 = *v0;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x6E6F69737265762ELL;
}

BOOL sub_10051E0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_10051E13C()
{
  result = qword_1016A4128;
  if (!qword_1016A4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4128);
  }

  return result;
}

void sub_10051E190()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177AEF8);
  sub_1000076D4(v0, qword_10177AEF8);
  v6 = objc_autoreleasePoolPush();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v7, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v1 + 8))(v5, v0);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_10051E304(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = *a1;
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v15 = [v9 encryptedValues];
  ObjectType = swift_getObjectType();
  v17 = *(v2 + 24);
  v63 = v15;
  v64 = ObjectType;
  if (v17 != 1)
  {
    v24 = *(v2 + 16);
    if (v24 != 1)
    {
      if (qword_1016946D0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177ACC8);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unexpected OwnedBeaconGroup version: %ld!", v38, 0xCu);
      }

      goto LABEL_21;
    }

    v25 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
    v26 = *(v4 + 20);
    v27 = type metadata accessor for MACAddress();
    (*(*(v27 - 8) + 16))(&v7[v26], v2 + v25, v27);
    *v7 = 1;
    v7[8] = 0;
    v28 = sub_10051EC44();
    v30 = v29;
    sub_100523C5C(v7, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
    CKRecordKeyValueSetting.subscript.getter();
    v32 = v65;
    v31 = v66;
    if (v66 >> 60 == 15)
    {
      if (v30 >> 60 == 15)
      {
        sub_100006654(v65, v66);
        goto LABEL_21;
      }
    }

    else if (v30 >> 60 != 15)
    {
      sub_100017D5C(v28, v30);
      sub_100017D5C(v28, v30);
      sub_10002E98C(v32, v31);
      v59 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v32, v31, v28, v30);
      sub_100016590(v28, v30);
      sub_100006654(v32, v31);
      sub_100006654(v28, v30);
      sub_100006654(v32, v31);
      if (v59)
      {
        sub_100016590(v28, v30);
        goto LABEL_21;
      }

LABEL_19:
      v67 = &type metadata for Data;
      v68 = &protocol witness table for Data;
      v65 = v28;
      v66 = v30;
      sub_100017D5C(v28, v30);
      CKRecordKeyValueSetting.subscript.setter();
      sub_100016590(v28, v30);
      goto LABEL_21;
    }

    sub_100017D5C(v28, v30);
    sub_100006654(v32, v31);
    sub_100006654(v28, v30);
    goto LABEL_19;
  }

  CKRecordKeyValueSetting.subscript.getter();
  v19 = v65;
  v18 = v66;
  v20 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
  v22 = MACAddress.dataRepresentation.getter();
  v23 = v21;
  if (v18 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      sub_100006654(v19, v18);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v21 >> 60 == 15)
  {
LABEL_10:
    sub_100006654(v19, v18);
    sub_100006654(v22, v23);
LABEL_11:
    v33 = MACAddress.dataRepresentation.getter();
    v67 = &type metadata for Data;
    v68 = &protocol witness table for Data;
    v65 = v33;
    v66 = v34;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

  sub_10002E98C(v19, v18);
  sub_100017D5C(v22, v23);
  v39 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v18, v22, v23);
  sub_100016590(v22, v23);
  sub_100006654(v19, v18);
  sub_100006654(v22, v23);
  sub_100006654(v19, v18);
  if ((v39 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v41 = v65;
  v40 = v66;
  v42 = type metadata accessor for OwnedBeaconGroup(0);
  v43 = (v2 + v42[9]);
  v44 = *v43;
  v45 = v43[1];
  if (!v40)
  {
    goto LABEL_27;
  }

  if (v41 != v44 || v40 != v45)
  {
    v46 = *v43;
    v47 = v43[1];
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_28;
    }

LABEL_27:
    v67 = &type metadata for String;
    v68 = &protocol witness table for String;
    v65 = v44;
    v66 = v45;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_28;
  }

LABEL_28:
  CKRecordKeyValueSetting.subscript.getter();
  v49 = *(v2 + v42[8]);
  if (v65 == 2 || ((v49 ^ v65) & 1) != 0)
  {
    v67 = &type metadata for Bool;
    v68 = &protocol witness table for Bool;
    LOBYTE(v65) = v49;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v51 = v65;
  v50 = v66;
  v52 = *(v2 + v42[10]);
  type metadata accessor for OwnedBeaconGroup.PairingState(0);
  sub_100523B4C();
  sub_100523BA0();
  sub_100101BAC();
  sub_100523A38(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523A38(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState);
  v62 = v52;
  v54 = Dictionary<>.dataRepresentation.getter();
  v55 = v53;
  if (v50 >> 60 == 15)
  {
    if (v53 >> 60 == 15)
    {
      swift_unknownObjectRelease();
      return sub_100006654(v51, v50);
    }
  }

  else if (v53 >> 60 != 15)
  {
    sub_10002E98C(v51, v50);
    sub_100017D5C(v54, v55);
    v61 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v51, v50, v54, v55);
    sub_100016590(v54, v55);
    sub_100006654(v51, v50);
    sub_100006654(v54, v55);
    sub_100006654(v51, v50);
    if (v61)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_36;
  }

  sub_100006654(v51, v50);
  sub_100006654(v54, v55);
LABEL_36:
  v57 = Dictionary<>.dataRepresentation.getter();
  v67 = &type metadata for Data;
  v68 = &protocol witness table for Data;
  v65 = v57;
  v66 = v58;
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

uint64_t sub_10051EC44()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  sub_100523A38(&unk_1016A4198, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

uint64_t sub_10051EE00(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016A41E8, &qword_1013AFF90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100524204();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 8);
  v23 = *v3;
  v24 = v11;
  v22 = 0;
  sub_100017D5C(v23, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v23, v24);
  }

  else
  {
    sub_100016590(v23, v24);
    v12 = *(v3 + 24);
    v23 = *(v3 + 16);
    LOBYTE(v24) = v12;
    v22 = 1;
    sub_1005243D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = type metadata accessor for OwnedBeaconGroup(0);
    v14 = v13[6];
    LOBYTE(v23) = 2;
    type metadata accessor for UUID();
    sub_100523A38(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v13[8]);
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = (v3 + v13[9]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v13[7];
    LOBYTE(v23) = 5;
    type metadata accessor for MACAddress();
    sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v3 + v13[10]);
    v22 = 6;
    sub_1000BC4D4(&qword_1016A41D8, &qword_1013AFF88);
    sub_100524424();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10051F15C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for MACAddress();
  v36 = *(v33 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000BC4D4(&qword_1016A41A8, &qword_1013AFF80);
  v35 = *(v38 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v38);
  v12 = &v31 - v11;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_1000035D0(a1, v18);
  sub_100524204();
  v37 = v12;
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(v40);
  }

  v20 = v9;
  v39 = v5;
  v21 = v16;
  v23 = v35;
  v22 = v36;
  v42 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v21 = v41;
  v42 = 1;
  sub_100524258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = BYTE8(v41);
  *(v21 + 16) = v41;
  *(v21 + 24) = v24;
  LOBYTE(v41) = 2;
  sub_100523A38(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 32))(v21 + v13[6], v20, v6);
  LOBYTE(v41) = 3;
  *(v21 + v13[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v41) = 4;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = (v21 + v13[9]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v41) = 5;
  sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress);
  v28 = v39;
  v29 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 32))(v21 + v13[7], v28, v29);
  sub_1000BC4D4(&qword_1016A41D8, &qword_1013AFF88);
  v42 = 6;
  sub_1005242AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v37, v38);
  *(v21 + v13[10]) = v41;
  sub_100524368(v21, v32, type metadata accessor for OwnedBeaconGroup);
  sub_100007BAC(v40);
  return sub_100523C5C(v21, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_10051FA1C()
{
  v1 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  result = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(v0 + *(result + 40));
  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
LABEL_15:

      return 0;
    }

    goto LABEL_6;
  }

  v12 = sub_1003A8624(*(v10 + 16), 0);
  v13 = sub_1003A9374(v20, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v11, v10);
  v18[1] = v20[3];
  v19 = v13;
  v18[0] = v20[4];

  result = sub_1000128F8();
  if (v19 == v11)
  {
    v14 = v12[2];
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_6:
    v15 = 0;
    v16 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v15 < v12[2])
    {
      sub_100524368(&v16[*(v2 + 72) * v15], v8, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523BF4(v8, v6, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload())
      {
        result = sub_100523C5C(v6, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v17 = v6[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48) + 2];
        if (v17 == 3)
        {
          result = sub_10000B3A8(v6, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          result = sub_10000B3A8(v6, &qword_1016A40D0, &unk_10138BE70);
          if (v17 == 2)
          {

            return 1;
          }
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10051FCAC()
{
  v1 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  result = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(v0 + *(result + 40));
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage[2];
    if (!v17)
    {
LABEL_15:

      return 1;
    }

    goto LABEL_6;
  }

  v15 = sub_1003A8624(*(v13 + 16), 0);
  v16 = sub_1003A9374(v26, v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v14, v13);
  v24 = v26[2];
  v25 = v16;
  v23[1] = v26[4];
  v23[2] = v26[3];

  result = sub_1000128F8();
  if (v25 == v14)
  {
    v17 = v15[2];
    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_6:
    v18 = 0;
    v25 = v2;
    v19 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = v9 + 2;
    while (v18 < v15[2])
    {
      sub_100524368(&v19[*(v25 + 72) * v18], v11, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100524368(v11, v9, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100523C5C(v9, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v20 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v21 = v24[*(v20 + 48)];
        if (v21 == 3)
        {
          sub_10000B3A8(v9, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          sub_10000B3A8(v9, &qword_1016A40D0, &unk_10138BE70);
          if (v21 == 1)
          {

            sub_100523C5C(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
            return 0;
          }
        }
      }

      swift_storeEnumTagMultiPayload();
      v22 = sub_100524658(v11, v6);
      sub_100523C5C(v6, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100523C5C(v11, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (v22)
      {

        return 0;
      }

      if (v17 == ++v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10051FFDC()
{
  v1 = type metadata accessor for OwnedBeaconGroup(0);
  v2 = sub_100523D34(*(v0 + *(v1 + 40)));
  v3 = sub_100518664(v2);

  return v3;
}

uint64_t sub_100520038()
{
  v97 = type metadata accessor for MACAddress();
  v1 = *(v97 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v97);
  v93 = &v85[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v92 = &v85[-v5];
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v96 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v100 = &v85[-v10];
  v11 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v101 = &v85[-v16];
  v17 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v105 = &v85[-v22];
  v23 = *(v0 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v24 = v15;
  v104 = v15;
  v25 = v23 + 64;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 64);
  v99 = v24 + 2;
  v29 = (v26 + 63) >> 6;
  v95 = (v1 + 48);
  v90 = (v1 + 16);
  v91 = (v1 + 32);
  v88 = v1 + 8;
  v89 = v1;
  v30 = v1 + 40;
  v31 = v11;
  v87 = v30;
  v103 = v23;

  v94 = _swiftEmptyDictionarySingleton;
  v106 = v21;
  v98 = v11;
  v32 = 0;
  if (v28)
  {
    while (1)
    {
      while (1)
      {
        v33 = v31;
        v34 = v32;
LABEL_13:
        v37 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v38 = v37 | (v34 << 6);
        v39 = (*(v103 + 48) + 16 * v38);
        v40 = *v39;
        v41 = v39[1];
        v42 = v101;
        sub_100524368(*(v103 + 56) + *(v102 + 72) * v38, v101, type metadata accessor for OwnedBeaconGroup.PairingState);
        v43 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        v44 = *(v43 + 48);
        v45 = v106;
        *v106 = v40;
        v45[1] = v41;
        v46 = v42;
        v21 = v45;
        sub_100523BF4(v46, v45 + v44, type metadata accessor for OwnedBeaconGroup.PairingState);
        (*(*(v43 - 8) + 56))(v21, 0, 1, v43);
        sub_100017D5C(v40, v41);
        v36 = v34;
LABEL_14:
        v47 = v105;
        sub_1000D2AD8(v21, v105, &unk_1016BBEA0, &unk_101395A80);
        v48 = v47;
        v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
        {

          return v94;
        }

        v107 = v36;
        v51 = *v48;
        v50 = v48[1];
        v52 = v48 + *(v49 + 48);
        v53 = v104;
        sub_100523BF4(v52, v104, type metadata accessor for OwnedBeaconGroup.PairingState);
        v31 = v33;
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        sub_100016590(v51, v50);
        sub_100523C5C(v53, type metadata accessor for OwnedBeaconGroup.PairingState);
        v32 = v107;
LABEL_23:
        if (!v28)
        {
          goto LABEL_5;
        }
      }

      v54 = *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48);
      v55 = v53;
      v56 = v100;
      v57 = v99[v54];
      sub_1000D2AD8(v55, v100, &qword_1016A40D0, &unk_10138BE70);
      if (v57 != 2)
      {
        break;
      }

      v58 = v96;
      sub_1000D2A70(v56, v96, &qword_1016A40D0, &unk_10138BE70);
      if ((*v95)(v58, 1, v97) == 1)
      {
        sub_10000B3A8(v56, &qword_1016A40D0, &unk_10138BE70);
        sub_100016590(v51, v50);
        sub_10000B3A8(v58, &qword_1016A40D0, &unk_10138BE70);
LABEL_22:
        v21 = v106;
        v32 = v107;
        v31 = v98;
        goto LABEL_23;
      }

      v60 = v92;
      v61 = *v91;
      v62 = v58;
      v63 = v97;
      (*v91)(v92, v62, v97);
      (*v90)(v93, v60, v63);
      v64 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v64;
      v66 = sub_100771E30(v51, v50);
      v67 = v64[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        goto LABEL_39;
      }

      v70 = v65;
      v31 = v98;
      v21 = v106;
      if (v64[3] >= v69)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          LODWORD(v94) = v65;
          v83 = v66;
          sub_101008A74();
          v66 = v83;
          v70 = v94;
        }
      }

      else
      {
        sub_100FEE04C(v69, isUniquelyReferenced_nonNull_native);
        v71 = sub_100771E30(v51, v50);
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_41;
        }

        v66 = v71;
      }

      v73 = v108;
      v94 = v108;
      if (v70)
      {
        v74 = v89;
        v75 = v97;
        (*(v89 + 40))(v108[7] + *(v89 + 72) * v66, v93, v97);
        sub_100016590(v51, v50);
        (*(v74 + 8))(v92, v75);
        sub_10000B3A8(v100, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        v108[(v66 >> 6) + 8] |= 1 << v66;
        v76 = (v73[6] + 16 * v66);
        *v76 = v51;
        v76[1] = v50;
        v77 = v89;
        v78 = v97;
        v61(v73[7] + *(v89 + 72) * v66, v93, v97);
        v79 = v94;
        (*(v77 + 8))(v92, v78);
        sub_10000B3A8(v100, &qword_1016A40D0, &unk_10138BE70);
        v80 = v79[2];
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        if (v81)
        {
          goto LABEL_40;
        }

        v79[2] = v82;
      }

      v32 = v107;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    sub_10000B3A8(v56, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v51, v50);
    goto LABEL_22;
  }

LABEL_5:
  if (v29 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v29;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
      v33 = v31;
      v59 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v59 - 8) + 56))(v21, 1, 1, v59);
      v28 = 0;
      goto LABEL_14;
    }

    v28 = *(v25 + 8 * v34);
    ++v32;
    if (v28)
    {
      v33 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005208F4()
{
  v16 = xmmword_10138C660;
  v1 = type metadata accessor for OwnedBeaconGroup(0);
  v2 = sub_100523D34(*(v0 + *(v1 + 40)));
  v3 = sub_100518664(v2);

  sub_100515594(v3);

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    swift_beginAccess();
    sub_100017D5C(v16, *(&v16 + 1));
    v9 = Data.hexString.getter();
    v11 = v10;
    sub_100016590(v16, *(&v16 + 1));
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "unpairedSerialNumbersData: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  swift_beginAccess();
  v13 = v16;
  sub_100017D5C(v16, *(&v16 + 1));
  sub_100016590(v13, *(&v13 + 1));
  return v13;
}

uint64_t sub_100520B14()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v63 - v8;
  v9 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (&v63 - v14);
  v16 = *(v0 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v64 = (v18 + 63) >> 6;
  v67 = v16;

  v21 = 0;
  v22 = &_swiftEmptyDictionarySingleton;
  v69 = v15;
  v70 = v13;
  for (i = v17; ; v17 = i)
  {
    v75 = v22;
    if (!v20)
    {
      break;
    }

    v25 = v21;
LABEL_16:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v67 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    v33 = v65;
    sub_100524368(*(v67 + 56) + *(v66 + 72) * v29, v65, type metadata accessor for OwnedBeaconGroup.PairingState);
    v34 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v35 = *(v34 + 48);
    *v13 = v31;
    v13[1] = v32;
    sub_100523BF4(v33, v13 + v35, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
    sub_100017D5C(v31, v32);
LABEL_17:
    sub_1000D2AD8(v13, v15, &unk_1016BBEA0, &unk_101395A80);
    v36 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
    {

      return v75;
    }

    v37 = *v15;
    v38 = v15[1];
    v39 = v71;
    sub_100523BF4(v15 + *(v36 + 48), v71, type metadata accessor for OwnedBeaconGroup.PairingState);
    static String.Encoding.utf8.getter();
    v40 = String.init(data:encoding:)();
    v73 = v38;
    v74 = v37;
    if (!v41)
    {
      v40 = Data.hexString.getter();
    }

    v42 = v40;
    v43 = v41;
    v44 = v39;
    v45 = sub_1005210C4();
    v46 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v46;
    v49 = sub_100771D58(v42, v43);
    v50 = v46[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_34;
    }

    v53 = v48;
    if (v46[3] >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v56 = v76;
        if (v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_101008CF0();
        v56 = v76;
        if (v53)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_100FEE3D4(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_100771D58(v42, v43);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_36;
      }

      v49 = v54;
      v56 = v76;
      if (v53)
      {
LABEL_4:
        v22 = v56;
        v23 = v56[7];
        v24 = *(v23 + 8 * v49);
        *(v23 + 8 * v49) = v45;

        goto LABEL_5;
      }
    }

    v56[(v49 >> 6) + 8] |= 1 << v49;
    v57 = (v56[6] + 16 * v49);
    *v57 = v42;
    v57[1] = v43;
    *(v56[7] + 8 * v49) = v45;
    v58 = v56[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_35;
    }

    v22 = v56;
    v56[2] = v60;
LABEL_5:
    sub_100016590(v74, v73);
    sub_100523C5C(v44, type metadata accessor for OwnedBeaconGroup.PairingState);
    v15 = v69;
    v13 = v70;
  }

  if (v64 <= v21 + 1)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = v64;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v64)
    {
      v61 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
      v20 = 0;
      v21 = v27;
      goto LABEL_17;
    }

    v20 = *(v17 + 8 * v25);
    ++v21;
    if (v20)
    {
      v21 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1005210C4()
{
  v1 = type metadata accessor for UUID();
  v80 = *(v1 - 8);
  v81 = v1;
  v2 = *(v80 + 64);
  __chkstk_darwin(v1);
  v79 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v74 - v9;
  v11 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v78 = &v74 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v74 - v19;
  __chkstk_darwin(v18);
  v77 = &v74 - v21;
  v22 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C218;
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 isInternalBuild];

  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
    v30 = [v26 BOOLForKey:v29];

    if (v30)
    {
      v31 = objc_allocWithZone(SPPairingState);

      return [v31 initWithStatus:2 beaconIdentifier:0 macAddress:0 pairingEpoch:0 partId:255 pairingType:-1];
    }
  }

  sub_100524368(v0, v25, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return [objc_allocWithZone(SPPairingState) initWithStatus:2 beaconIdentifier:0 macAddress:0 pairingEpoch:0 partId:255 pairingType:-1];
    }

    v34 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v35 = v34[12];
    sub_100006654(*&v25[v34[16]], *&v25[v34[16] + 8]);
    v36 = &v25[v34[20]];
    v74 = *v36;
    v37 = v36[8];
    v38 = &v25[v34[24]];
    LODWORD(v77) = *v38;
    v75 = v38[1];
    v76 = v38[2];
    v39 = v79;
    v40 = v80;
    v41 = v81;
    (*(v80 + 32))(v79, v25, v81);
    v42 = &v25[v35];
    v43 = v78;
    sub_1000D2AD8(v42, v78, &qword_1016A40D0, &unk_10138BE70);
    (*(v40 + 16))(v8, v39, v41);
    (*(v40 + 56))(v8, 0, 1, v41);
    sub_1000D2A70(v43, v15, &qword_1016A40D0, &unk_10138BE70);
    v44 = type metadata accessor for MACAddress();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v15, 1, v44) == 1)
    {
      sub_10000B3A8(v15, &qword_1016A40D0, &unk_10138BE70);
      v46 = 0;
      v47 = 0xF000000000000000;
      v49 = v80;
      v48 = v81;
      if ((v37 & 1) == 0)
      {
LABEL_12:
        v50.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
LABEL_18:
        if (v75)
        {
          v61 = -1;
        }

        else
        {
          v61 = v77;
        }

        v62 = qword_1013B08F0[v76];
        if ((*(v49 + 48))(v8, 1, v48) == 1)
        {
          isa = 0;
        }

        else
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v49 + 8))(v8, v48);
        }

        if (v47 >> 60 == 15)
        {
          v64 = 0;
        }

        else
        {
          v64 = Data._bridgeToObjectiveC()().super.isa;
          sub_100006654(v46, v47);
        }

        v65 = [objc_allocWithZone(SPPairingState) initWithStatus:1 beaconIdentifier:isa macAddress:v64 pairingEpoch:v50.super.super.isa partId:v61 pairingType:v62];

        sub_10000B3A8(v78, &qword_1016A40D0, &unk_10138BE70);
        (*(v49 + 8))(v79, v48);
        return v65;
      }
    }

    else
    {
      v46 = MACAddress.data.getter();
      v47 = v60;
      (*(v45 + 8))(v15, v44);
      v49 = v80;
      v48 = v81;
      if ((v37 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v50.super.super.isa = 0;
    goto LABEL_18;
  }

  v51 = &v25[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  v55 = v77;
  sub_1000D2AD8(v25, v77, &qword_1016A40D0, &unk_10138BE70);
  (*(v80 + 56))(v10, 1, 1, v81);
  sub_1000D2A70(v55, v20, &qword_1016A40D0, &unk_10138BE70);
  v56 = type metadata accessor for MACAddress();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v20, 1, v56) == 1)
  {
    sub_10000B3A8(v20, &qword_1016A40D0, &unk_10138BE70);
    v58 = 0;
    v59 = 0xF000000000000000;
  }

  else
  {
    v58 = MACAddress.data.getter();
    v59 = v66;
    (*(v57 + 8))(v20, v56);
  }

  if (v53)
  {
    v67 = -1;
  }

  else
  {
    v67 = v52;
  }

  v68 = qword_1013B08F0[v54];
  v70 = v80;
  v69 = v81;
  if ((*(v80 + 48))(v10, 1, v81) == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v70 + 8))(v10, v69);
  }

  if (v59 >> 60 == 15)
  {
    v72 = 0;
  }

  else
  {
    v72 = Data._bridgeToObjectiveC()().super.isa;
    sub_100006654(v58, v59);
  }

  v73 = [objc_allocWithZone(SPPairingState) initWithStatus:0 beaconIdentifier:v71 macAddress:v72 pairingEpoch:0 partId:v67 pairingType:v68];

  sub_10000B3A8(v77, &qword_1016A40D0, &unk_10138BE70);
  return v73;
}

uint64_t sub_10052197C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v16 + 16))
  {
    v17 = sub_100771E30(a1, a2);
    if (v18)
    {
      sub_100524368(*(v16 + 56) + *(v6 + 72) * v17, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523BF4(v13, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523BF4(v15, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v20 = &v10[*(v19 + 64)];
        v21 = *v20;
        v22 = *(v20 + 1);
        sub_10000B3A8(&v10[*(v19 + 48)], &qword_1016A40D0, &unk_10138BE70);
        v23 = type metadata accessor for UUID();
        (*(*(v23 - 8) + 8))(v10, v23);
        return v21;
      }

      sub_100523C5C(v10, type metadata accessor for OwnedBeaconGroup.PairingState);
    }
  }

  return 0;
}

uint64_t sub_100521BB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (!*(v16 + 16))
  {
    return 3;
  }

  v17 = sub_100771E30(a1, a2);
  if ((v18 & 1) == 0)
  {
    return 3;
  }

  sub_100524368(*(v16 + 56) + *(v6 + 72) * v17, v13, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v13, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v15, v10, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v22 = v10[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48) + 2];
    sub_10000B3A8(v10, &qword_1016A40D0, &unk_10138BE70);
    return v22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 3;
  }

  v20 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
  v21 = v20[12];
  sub_100006654(*&v10[v20[16]], *&v10[v20[16] + 8]);
  v22 = v10[v20[24] + 2];
  sub_10000B3A8(&v10[v21], &qword_1016A40D0, &unk_10138BE70);
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 8))(v10, v23);
  return v22;
}

BOOL sub_100521E14(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  sub_100519BCC(a1, a2, &v26 - v12);
  v14 = type metadata accessor for UUID();
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  if (v15 == 1)
  {
    v16 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    LODWORD(v16) = *(type metadata accessor for OwnedBeaconGroup(0) + 40);
    sub_100017D5C(a1, a2);
    sub_1001DD6C0(v9, a1, a2);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C418);
    sub_100017D5C(a1, a2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v22 = String.init(data:encoding:)();
      if (!v23)
      {
        v22 = Data.hexString.getter();
      }

      v24 = sub_1000136BC(v22, v23, &v27);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{private,mask.hash}s is already paired!", v20, 0x16u);
      sub_100007BAC(v21);
    }
  }

  return v15 == 1;
}

uint64_t sub_100522190()
{
  v1 = v0;
  v2 = &qword_1016A40D0;
  v3 = &unk_10138BE70;
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v154 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v153 = &v145 - v8;
  v9 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v152 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v148 = &v145 - v15;
  v16 = __chkstk_darwin(v14);
  v151 = &v145 - v17;
  v18 = __chkstk_darwin(v16);
  v147 = &v145 - v19;
  v20 = __chkstk_darwin(v18);
  v150 = &v145 - v21;
  v22 = __chkstk_darwin(v20);
  v146 = &v145 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v145 - v25;
  __chkstk_darwin(v24);
  v155 = &v145 - v27;
  v28 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v159 = (&v145 - v33);
  v145 = type metadata accessor for OwnedBeaconGroup(0);
  v162 = *(v145 + 40);
  v163 = v1;
  v34 = *(v1 + v162);
  v35 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 64);
  v149 = (v36 + 63) >> 6;
  v156 = v34;

  v39 = 0;
  v164 = v9;
  v157 = v35;
  v158 = v26;
  v160 = v32;
  v161 = v10;
  while (v38)
  {
    v41 = v39;
LABEL_16:
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v44 | (v41 << 6);
    v46 = v155;
    v47 = (*(v156 + 48) + 16 * v45);
    v48 = *v47;
    v49 = v47[1];
    sub_100524368(*(v156 + 56) + *(v161 + 72) * v45, v155, type metadata accessor for OwnedBeaconGroup.PairingState);
    v50 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v51 = *(v50 + 48);
    v52 = v160;
    *v160 = v48;
    v52[1] = v49;
    v53 = v46;
    v32 = v52;
    sub_100523BF4(v53, v52 + v51, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v50 - 8) + 56))(v32, 0, 1, v50);
    sub_100017D5C(v48, v49);
LABEL_17:
    v54 = v159;
    sub_1000D2AD8(v32, v159, &unk_1016BBEA0, &unk_101395A80);
    v55 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
    }

    v56 = v54[1];
    v165 = *v54;
    v166 = v56;
    sub_100523BF4(v54 + *(v55 + 48), v26, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v58 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v59 = v58[12];
        sub_100006654(*&v26[v58[16]], *&v26[v58[16] + 8]);
        v60 = &v26[v58[24]];
        LOBYTE(v58) = *v60;
        v61 = v60[1];
        v62 = v60[2];
        v63 = v2;
        v64 = v3;
        v65 = v154;
        sub_1000D2AD8(&v26[v59], v154, v63, v64);
        v66 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v67 = v147;
        v68 = (v147 + *(v66 + 48));
        v69 = v65;
        v3 = v64;
        v2 = v63;
        sub_1000D2A70(v69, v147, v63, v3);
        *v68 = v58;
        v68[1] = v61;
        v68[2] = v62;
        swift_storeEnumTagMultiPayload();
        sub_100523BF4(v67, v151, type metadata accessor for OwnedBeaconGroup.PairingState);
        v71 = v162;
        v70 = v163;
        v72 = *(v163 + v162);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v70 + v71);
        v167 = v74;
        v75 = sub_100771E30(v165, v166);
        v77 = v74[2];
        v78 = (v76 & 1) == 0;
        v79 = __OFADD__(v77, v78);
        v80 = v77 + v78;
        if (v79)
        {
          goto LABEL_54;
        }

        v81 = v76;
        if (v74[3] >= v80)
        {
          v35 = v157;
          v26 = v158;
          v32 = v160;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v142 = v75;
            sub_10100586C();
            v75 = v142;
          }
        }

        else
        {
          sub_100FE71DC(v80, isUniquelyReferenced_nonNull_native);
          v75 = sub_100771E30(v165, v166);
          v35 = v157;
          v26 = v158;
          v32 = v160;
          if ((v81 & 1) != (v82 & 1))
          {
            goto LABEL_60;
          }
        }

        v124 = v161;
        v125 = v167;
        if (v81)
        {
          sub_100101D24(v151, v167[7] + *(v161 + 72) * v75);
          sub_100016590(v165, v166);
          sub_10000B3A8(v154, v2, v3);
        }

        else
        {
          v167[(v75 >> 6) + 8] |= 1 << v75;
          v126 = (v125[6] + 16 * v75);
          v127 = v166;
          *v126 = v165;
          v126[1] = v127;
          sub_100523BF4(v151, v125[7] + *(v124 + 72) * v75, type metadata accessor for OwnedBeaconGroup.PairingState);
          sub_10000B3A8(v154, v2, v3);
          v128 = v125[2];
          v79 = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (v79)
          {
            goto LABEL_59;
          }

          v125[2] = v129;
        }

        *(v163 + v162) = v125;
        v40 = type metadata accessor for UUID();
        (*(*(v40 - 8) + 8))(v26, v40);
      }

      else
      {
        v104 = v2;
        v105 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v106 = v148;
        v107 = &v148[*(v105 + 48)];
        v108 = *(v145 + 28);
        v109 = type metadata accessor for MACAddress();
        v110 = *(v109 - 8);
        v111 = v163;
        (*(v110 + 16))(v106, v163 + v108, v109);
        (*(v110 + 56))(v106, 0, 1, v109);
        *v107 = 256;
        v107[2] = 3;
        swift_storeEnumTagMultiPayload();
        sub_100523BF4(v106, v152, type metadata accessor for OwnedBeaconGroup.PairingState);
        v112 = v162;
        v113 = *(v111 + v162);
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v167 = *(v111 + v112);
        v115 = v167;
        v116 = sub_100771E30(v165, v166);
        v118 = v115[2];
        v119 = (v117 & 1) == 0;
        v79 = __OFADD__(v118, v119);
        v120 = v118 + v119;
        if (v79)
        {
          goto LABEL_55;
        }

        v121 = v117;
        v35 = v157;
        if (v115[3] >= v120)
        {
          v2 = v104;
          v26 = v158;
          v32 = v160;
          if ((v114 & 1) == 0)
          {
            v143 = v116;
            sub_10100586C();
            v116 = v143;
          }
        }

        else
        {
          sub_100FE71DC(v120, v114);
          v116 = sub_100771E30(v165, v166);
          v26 = v158;
          v32 = v160;
          if ((v121 & 1) != (v122 & 1))
          {
            goto LABEL_60;
          }

          v2 = v104;
        }

        v3 = &unk_10138BE70;
        v136 = v167;
        v137 = v161;
        if (v121)
        {
          sub_100101D24(v152, v167[7] + *(v161 + 72) * v116);
          sub_100016590(v165, v166);
        }

        else
        {
          v167[(v116 >> 6) + 8] |= 1 << v116;
          v138 = (v136[6] + 16 * v116);
          v139 = v166;
          *v138 = v165;
          v138[1] = v139;
          sub_100523BF4(v152, v136[7] + *(v137 + 72) * v116, type metadata accessor for OwnedBeaconGroup.PairingState);
          v140 = v136[2];
          v79 = __OFADD__(v140, 1);
          v141 = v140 + 1;
          if (v79)
          {
            goto LABEL_57;
          }

          v136[2] = v141;
        }

        *(v163 + v162) = v136;
      }
    }

    else
    {
      v83 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v84 = &v26[*(v83 + 48)];
      v85 = *v84;
      v86 = v84[1];
      v87 = v84[2];
      v88 = v153;
      sub_1000D2AD8(v26, v153, v2, v3);
      v89 = v146;
      v90 = (v146 + *(v83 + 48));
      sub_1000D2A70(v88, v146, v2, v3);
      *v90 = v85;
      v90[1] = v86;
      v90[2] = v87;
      swift_storeEnumTagMultiPayload();
      sub_100523BF4(v89, v150, type metadata accessor for OwnedBeaconGroup.PairingState);
      v92 = v162;
      v91 = v163;
      v93 = *(v163 + v162);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v95 = *(v91 + v92);
      v167 = v95;
      v97 = sub_100771E30(v165, v166);
      v98 = v95[2];
      v99 = (v96 & 1) == 0;
      v100 = v98 + v99;
      if (__OFADD__(v98, v99))
      {
        goto LABEL_56;
      }

      v101 = v96;
      if (v95[3] >= v100)
      {
        v35 = v157;
        v26 = v158;
        if ((v94 & 1) == 0)
        {
          sub_10100586C();
        }
      }

      else
      {
        sub_100FE71DC(v100, v94);
        v102 = sub_100771E30(v165, v166);
        v35 = v157;
        v26 = v158;
        if ((v101 & 1) != (v103 & 1))
        {
          goto LABEL_60;
        }

        v97 = v102;
      }

      v130 = v161;
      v131 = v167;
      if (v101)
      {
        sub_100101D24(v150, v167[7] + *(v161 + 72) * v97);
        sub_100016590(v165, v166);
        sub_10000B3A8(v153, v2, v3);
      }

      else
      {
        v167[(v97 >> 6) + 8] |= 1 << v97;
        v132 = (v131[6] + 16 * v97);
        v133 = v166;
        *v132 = v165;
        v132[1] = v133;
        sub_100523BF4(v150, v131[7] + *(v130 + 72) * v97, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_10000B3A8(v153, v2, v3);
        v134 = v131[2];
        v79 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v79)
        {
          goto LABEL_58;
        }

        v131[2] = v135;
      }

      *(v163 + v162) = v131;
      v32 = v160;
    }
  }

  if (v149 <= v39 + 1)
  {
    v42 = v39 + 1;
  }

  else
  {
    v42 = v149;
  }

  v43 = v42 - 1;
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v149)
    {
      v123 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v123 - 8) + 56))(v32, 1, 1, v123);
      v38 = 0;
      v39 = v43;
      goto LABEL_17;
    }

    v38 = *(v35 + 8 * v41);
    ++v39;
    if (v38)
    {
      v39 = v41;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100522DB8(unsigned __int8 a1)
{
  v47 = a1;
  v53 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v51 = *(v53 - 8);
  v2 = *(v51 + 64);
  v3 = __chkstk_darwin(v53);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v50 = &v46[-v6];
  v7 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v54 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v46[-v11];
  v13 = *(v1 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v52 = v13;

  v20 = 0;
  v48 = v12;
  v49 = v5;
  while (v17)
  {
    v21 = v20;
LABEL_16:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v21 << 6);
    v27 = (*(v52 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = v50;
    sub_100524368(*(v52 + 56) + *(v51 + 72) * v26, v50, type metadata accessor for OwnedBeaconGroup.PairingState);
    v31 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v32 = *(v31 + 48);
    v24 = v54;
    *v54 = v28;
    *(v24 + 8) = v29;
    sub_100523BF4(v30, v24 + v32, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v31 - 8) + 56))(v24, 0, 1, v31);
    sub_100017D5C(v28, v29);
    v12 = v48;
    v5 = v49;
LABEL_17:
    sub_1000D2AD8(v24, v12, &unk_1016BBEA0, &unk_101395A80);
    v33 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v33 - 8) + 48))(v12, 1, v33) == 1)
    {

      return 0;
    }

    v34 = *v12;
    v35 = v12[1];
    sub_100523BF4(v12 + *(v33 + 48), v5, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v34;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {

        sub_100016590(v34, v35);
        return 0;
      }

      v37 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v38 = v37[12];
      sub_100006654(*&v5[v37[16]], *&v5[v37[16] + 8]);
      v39 = &v5[v37[24]];
      v40 = *v39;
      v41 = v39[1];
      sub_10000B3A8(&v5[v38], &qword_1016A40D0, &unk_10138BE70);
      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 8))(v5, v42);
      if (v41)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v43 = &v5[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
      v40 = *v43;
      v44 = v43[1];
      sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
      if (v44)
      {
        goto LABEL_5;
      }
    }

    if (v40 == v47)
    {

      return v55;
    }

LABEL_5:
    result = sub_100016590(v55, v35);
  }

  if (v18 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v18;
  }

  v23 = v22 - 1;
  v24 = v54;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v45 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v45 - 8) + 56))(v24, 1, 1, v45);
      v17 = 0;
      v20 = v23;
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005232D8(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = type metadata accessor for Date();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  __chkstk_darwin(v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v47 - v8;
  v9 = type metadata accessor for BeaconObservation();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v49 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = *(a2 + 16);
  v50 = v15;
  if (v18)
  {
    v19 = 0;
    v20 = *(v15 + 72);
    v21 = _swiftEmptyArrayStorage;
    v55 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v57 = a2 + v55;
    do
    {
      sub_100524368(v57 + v20 * v19, v17, type metadata accessor for BeaconObservation);
      sub_100525F50();
      v58 = Set.init(minimumCapacity:)();
      sub_100DEEF64(&v59, 37);
      sub_100DEEF64(&v59, 38);
      v22 = v58;
      if (*(v58 + 16))
      {
        v23 = v9;
        v24 = v17[*(v9 + 24)];
        v25 = *(v58 + 40);
        Hasher.init(_seed:)();
        v26 = qword_1013B0910[v24];
        Hasher._combine(_:)(v26);
        v27 = Hasher._finalize()();
        v28 = -1 << *(v22 + 32);
        v29 = v27 & ~v28;
        if ((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          while (qword_1013B0910[*(*(v22 + 48) + v29)] != v26)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          sub_100523BF4(v17, v56, type metadata accessor for BeaconObservation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124308(0, v21[2] + 1, 1);
            v21 = v60;
          }

          v33 = v21[2];
          v32 = v21[3];
          if (v33 >= v32 >> 1)
          {
            sub_101124308(v32 > 1, v33 + 1, 1);
            v21 = v60;
          }

          v21[2] = v33 + 1;
          sub_100523BF4(v56, v21 + v55 + v33 * v20, type metadata accessor for BeaconObservation);
        }

        else
        {
LABEL_10:

          sub_100523C5C(v17, type metadata accessor for BeaconObservation);
        }

        v9 = v23;
      }

      else
      {

        sub_100523C5C(v17, type metadata accessor for BeaconObservation);
      }

      ++v19;
    }

    while (v19 != v18);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v34 = v51;
  sub_1012BB138(v21, v51);

  if ((*(v50 + 48))(v34, 1, v9) == 1)
  {
    sub_10000B3A8(v34, &qword_1016A42E0, &qword_1013B0010);
    v35 = 0;
    v36 = 1;
    v38 = v53;
    v37 = v54;
    v39 = v52;
  }

  else
  {
    v40 = v49;
    sub_100523BF4(v34, v49, type metadata accessor for BeaconObservation);
    v41 = v9;
    v42 = *(v40 + *(v9 + 24));
    v38 = v53;
    v37 = v54;
    v39 = v52;
    if (v42 == 37)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v43 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073CEC(v58);

      v44 = v40 + *(v41 + 20);
      Date.addingTimeInterval(_:)();
      v45 = v48;
      static Date.trustedNow.getter(v48);
      v35 = static Date.> infix(_:_:)();
      (*(v39 + 8))(v45, v38);
      sub_100523C5C(v40, type metadata accessor for BeaconObservation);
      v36 = 0;
    }

    else
    {
      sub_100523C5C(v40, type metadata accessor for BeaconObservation);
      v35 = 0;
      v36 = 1;
    }
  }

  (*(v39 + 56))(v37, v36, 1, v38);
  return v35 & 1;
}

uint64_t sub_1005238D8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100523A38(&unk_1016A4160, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return sub_100016590(a1, a2);
}

uint64_t sub_1005239B4(uint64_t a1)
{
  *(a1 + 8) = sub_100523A38(&qword_1016A4130, type metadata accessor for OwnedBeaconGroup);
  result = sub_100523A38(&qword_1016A4138, type metadata accessor for OwnedBeaconGroup);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100523A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100523A80(uint64_t a1)
{
  result = sub_100523A38(&unk_1016A4140, type metadata accessor for OwnedBeaconGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100523AF8()
{
  result = qword_1016A4150;
  if (!qword_1016A4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4150);
  }

  return result;
}

unint64_t sub_100523B4C()
{
  result = qword_1016B1560;
  if (!qword_1016B1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1560);
  }

  return result;
}

unint64_t sub_100523BA0()
{
  result = qword_1016A4170;
  if (!qword_1016A4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4170);
  }

  return result;
}

uint64_t sub_100523BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100523C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100523CBC(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_100523E94(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100523D34(uint64_t a1)
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
    result = sub_100523E94(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100523CBC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100523E94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a1;
  v51 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v4 = *(*(v51 - 8) + 64);
  v5 = __chkstk_darwin(v51);
  v50 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v49 = (&v38 - v7);
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v8);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v45 = &v38 - v13;
  v14 = 0;
  v52 = a3;
  v15 = *(a3 + 64);
  v43 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v41 = 0;
  v42 = (v16 + 63) >> 6;
  v19 = v45;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v53 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = v52[7];
    v25 = (v52[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v47 + 72);
    v44 = v23;
    sub_100524368(v24 + v28 * v23, v19, type metadata accessor for OwnedBeaconGroup.PairingState);
    v29 = v49;
    *v49 = v27;
    *(v29 + 8) = v26;
    v30 = v51;
    sub_100524368(v19, v29 + *(v51 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v31 = v50;
    sub_1000D2AD8(v29, v50, &qword_1016A4190, &unk_1013A3550);
    v33 = *v31;
    v32 = v31[1];
    sub_100017D5C(v27, v26);
    sub_100017D5C(v27, v26);
    sub_100016590(v33, v32);
    v34 = *(v30 + 48);
    v35 = v46;
    sub_100524368(v31 + v34, v46, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100523C5C(v35, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523C5C(v31 + v34, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523C5C(v19, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_100016590(v27, v26);
    v18 = v53;
    if (!EnumCaseMultiPayload)
    {
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        return sub_10061C5F4(v40, v39, v41, v52);
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v42)
    {
      return sub_10061C5F4(v40, v39, v41, v52);
    }

    v22 = *(v43 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100524204()
{
  result = qword_1016A41B0;
  if (!qword_1016A41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41B0);
  }

  return result;
}

unint64_t sub_100524258()
{
  result = qword_1016A41C0;
  if (!qword_1016A41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41C0);
  }

  return result;
}

unint64_t sub_1005242AC()
{
  result = qword_1016A41E0;
  if (!qword_1016A41E0)
  {
    sub_1000BC580(&qword_1016A41D8, &qword_1013AFF88);
    sub_100523B4C();
    sub_100523A38(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41E0);
  }

  return result;
}

uint64_t sub_100524368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005243D0()
{
  result = qword_1016A41F8;
  if (!qword_1016A41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41F8);
  }

  return result;
}

unint64_t sub_100524424()
{
  result = qword_1016A4200;
  if (!qword_1016A4200)
  {
    sub_1000BC580(&qword_1016A41D8, &qword_1013AFF88);
    sub_100523BA0();
    sub_100523A38(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4200);
  }

  return result;
}

BOOL sub_1005244E0(int a1, int a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return 0;
    }
  }

  else if ((a2 & 0x100) != 0 || a1 != a2)
  {
    return 0;
  }

  v3 = a2 & 0xFF0000;
  if ((a1 & 0xFF0000) != 0x30000)
  {
    return v3 != 196608 && ((a2 ^ a1) & 0xFF0000) == 0;
  }

  return v3 == 196608;
}

uint64_t sub_100524548(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = v5[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[7];
  if ((static MACAddress.== infix(_:_:)() & 1) == 0 || *(a1 + v5[8]) != *(a2 + v5[8]))
  {
    return 0;
  }

  v9 = v5[9];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = v5[10];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_100DE8118(v15, v16);
}

uint64_t sub_100524658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = *(v126 + 64);
  __chkstk_darwin(v4);
  v123 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for MACAddress();
  v125 = *(v121 - 8);
  v7 = *(v125 + 64);
  __chkstk_darwin(v121);
  v118 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v117 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v124 = &v102 - v14;
  v15 = __chkstk_darwin(v13);
  v122 = &v102 - v16;
  __chkstk_darwin(v15);
  v18 = &v102 - v17;
  v120 = sub_1000BC4D4(&qword_1016A4218, &qword_1013AFF98);
  v19 = *(*(v120 - 8) + 64);
  v20 = __chkstk_darwin(v120);
  v119 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v102 - v22;
  v24 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v102 - v29;
  v31 = sub_1000BC4D4(&unk_1016A4220, &unk_1013AFFA0);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v102 - v34;
  v36 = &v102 + *(v33 + 56) - v34;
  sub_100524368(a1, &v102 - v34, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100524368(a2, v36, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v70 = v18;
    v71 = v35;
    sub_100524368(v35, v30, type metadata accessor for OwnedBeaconGroup.PairingState);
    v72 = *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48);
    v73 = v30[v72];
    v74 = v30[v72 + 1];
    v75 = v30[v72 + 2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10000B3A8(v30, &qword_1016A40D0, &unk_10138BE70);
      v35 = v71;
      goto LABEL_15;
    }

    LODWORD(v127) = v75;
    LODWORD(v123) = v36[v72];
    LODWORD(v126) = v36[v72 + 1];
    LODWORD(v124) = v36[v72 + 2];
    v78 = *(v120 + 48);
    sub_1000D2AD8(v30, v23, &qword_1016A40D0, &unk_10138BE70);
    sub_1000D2AD8(v36, &v23[v78], &qword_1016A40D0, &unk_10138BE70);
    v79 = *(v125 + 48);
    v80 = v121;
    if (v79(v23, 1, v121) == 1)
    {
      if (v79(&v23[v78], 1, v80) == 1)
      {
        sub_10000B3A8(v23, &qword_1016A40D0, &unk_10138BE70);
LABEL_27:
        if (v74)
        {
          v90 = v127;
          if (!v126)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v91 = v126;
          if (v73 != v123)
          {
            v91 = 1;
          }

          v90 = v127;
          if (v91)
          {
            goto LABEL_38;
          }
        }

        if (v90 != 3)
        {
          if (v124 == 3 || v90 != v124)
          {
            goto LABEL_38;
          }

          goto LABEL_50;
        }

        if (v124 == 3)
        {
LABEL_50:
          v76 = v71;
          goto LABEL_13;
        }

LABEL_38:
        v76 = v71;
        goto LABEL_39;
      }
    }

    else
    {
      sub_1000D2A70(v23, v70, &qword_1016A40D0, &unk_10138BE70);
      if (v79(&v23[v78], 1, v80) != 1)
      {
        v84 = v70;
        v85 = v125;
        v86 = &v23[v78];
        v87 = v118;
        (*(v125 + 32))(v118, v86, v80);
        sub_100523A38(&unk_1016C7F60, &type metadata accessor for MACAddress);
        v88 = dispatch thunk of static Equatable.== infix(_:_:)();
        v89 = *(v85 + 8);
        v89(v87, v80);
        v89(v84, v80);
        sub_10000B3A8(v23, &qword_1016A40D0, &unk_10138BE70);
        if ((v88 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_27;
      }

      (*(v125 + 8))(v70, v80);
    }

    sub_10000B3A8(v23, &qword_1016A4218, &qword_1013AFF98);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v116 = v35;
    sub_100524368(v35, v28, type metadata accessor for OwnedBeaconGroup.PairingState);
    v38 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v39 = v38[12];
    v40 = v38[16];
    v42 = *&v28[v40];
    v41 = *&v28[v40 + 8];
    v43 = v38[20];
    v112 = *&v28[v43];
    v115 = v28[v43 + 8];
    v44 = v38[24];
    v45 = v28[v44];
    v113 = v28[v44 + 1];
    v46 = v28[v44 + 2];
    v110 = v45;
    v111 = v46;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v108 = v42;
      v109 = v41;
      v47 = *&v36[v40];
      v114 = *&v36[v40 + 8];
      v105 = *&v36[v43];
      v107 = v36[v43 + 8];
      v103 = v36[v44];
      v106 = v36[v44 + 1];
      v104 = v36[v44 + 2];
      v48 = v126;
      v49 = v127;
      v50 = v123;
      (*(v126 + 32))(v123, v36, v127);
      v51 = v122;
      sub_1000D2AD8(&v28[v39], v122, &qword_1016A40D0, &unk_10138BE70);
      v52 = &v36[v39];
      v53 = v124;
      sub_1000D2AD8(v52, v124, &qword_1016A40D0, &unk_10138BE70);
      v54 = static UUID.== infix(_:_:)();
      v55 = *(v48 + 8);
      v55(v28, v49);
      if ((v54 & 1) == 0)
      {
        sub_100006654(v47, v114);
        sub_100006654(v108, v109);
        sub_10000B3A8(v53, &qword_1016A40D0, &unk_10138BE70);
        sub_10000B3A8(v51, &qword_1016A40D0, &unk_10138BE70);
        v55(v50, v49);
        goto LABEL_20;
      }

      v126 = v47;
      v102 = v55;
      v56 = v119;
      v57 = *(v120 + 48);
      sub_1000D2A70(v51, v119, &qword_1016A40D0, &unk_10138BE70);
      sub_1000D2A70(v53, v56 + v57, &qword_1016A40D0, &unk_10138BE70);
      v58 = *(v125 + 48);
      v59 = v121;
      if (v58(v56, 1, v121) == 1)
      {
        v60 = v51;
        v61 = v58(v56 + v57, 1, v59) == 1;
        v62 = v56;
        v63 = v123;
        v64 = v49;
        if (!v61)
        {
          sub_100006654(v108, v109);
          sub_100006654(v126, v114);
LABEL_36:
          v71 = v116;
          v65 = v124;
          v68 = v102;
          sub_10000B3A8(v119, &qword_1016A4218, &qword_1013AFF98);
LABEL_37:
          sub_10000B3A8(v65, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v122, &qword_1016A40D0, &unk_10138BE70);
          v68(v63, v64);
          goto LABEL_38;
        }

        sub_10000B3A8(v62, &qword_1016A40D0, &unk_10138BE70);
        v65 = v124;
        v67 = v108;
        v66 = v109;
        v68 = v102;
        v69 = v126;
      }

      else
      {
        v81 = v117;
        sub_1000D2A70(v56, v117, &qword_1016A40D0, &unk_10138BE70);
        v82 = v58(v56 + v57, 1, v59);
        v83 = v56;
        v63 = v123;
        v64 = v49;
        if (v82 == 1)
        {
          sub_100006654(v108, v109);
          sub_100006654(v126, v114);
          (*(v125 + 8))(v81, v59);
          goto LABEL_36;
        }

        v92 = v81;
        v93 = v125;
        v94 = v83 + v57;
        v95 = v118;
        (*(v125 + 32))(v118, v94, v59);
        sub_100523A38(&unk_1016C7F60, &type metadata accessor for MACAddress);
        v96 = dispatch thunk of static Equatable.== infix(_:_:)();
        v97 = *(v93 + 8);
        v97(v95, v59);
        v97(v92, v59);
        sub_10000B3A8(v83, &qword_1016A40D0, &unk_10138BE70);
        v60 = v122;
        v65 = v124;
        v67 = v108;
        v66 = v109;
        v68 = v102;
        v69 = v126;
        if ((v96 & 1) == 0)
        {
          sub_100006654(v108, v109);
          sub_100006654(v69, v114);
          v71 = v116;
          goto LABEL_37;
        }
      }

      if (v66 >> 60 == 15)
      {
        sub_10000B3A8(v65, &qword_1016A40D0, &unk_10138BE70);
        sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
        v68(v63, v64);
        v98 = v114;
        if (v114 >> 60 == 15)
        {
          sub_100006654(v67, v66);
LABEL_53:
          if (v115)
          {
            if (v107)
            {
LABEL_59:
              v76 = v116;
              if (v113)
              {
                if (!v106)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v101 = v106;
                if (v110 != v103)
                {
                  v101 = 1;
                }

                if (v101)
                {
                  goto LABEL_39;
                }
              }

              if (v111 == 3)
              {
                if (v104 != 3)
                {
                  goto LABEL_39;
                }
              }

              else if (v104 == 3 || v111 != v104)
              {
                goto LABEL_39;
              }

LABEL_13:
              sub_100523C5C(v76, type metadata accessor for OwnedBeaconGroup.PairingState);
              return 1;
            }
          }

          else
          {
            v100 = v107;
            if (v112 != v105)
            {
              v100 = 1;
            }

            if ((v100 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

LABEL_20:
          v76 = v116;
LABEL_39:
          sub_100523C5C(v76, type metadata accessor for OwnedBeaconGroup.PairingState);
          return 0;
        }
      }

      else
      {
        v99 = v114;
        if (v114 >> 60 != 15)
        {
          sub_10002E98C(v67, v66);
          sub_10002E98C(v69, v99);
          LODWORD(v126) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v67, v66, v69, v99);
          sub_100006654(v69, v99);
          sub_100006654(v69, v99);
          sub_100006654(v67, v66);
          sub_10000B3A8(v65, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
          v68(v63, v64);
          sub_100006654(v67, v66);
          if ((v126 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_53;
        }

        sub_10000B3A8(v65, &qword_1016A40D0, &unk_10138BE70);
        v98 = v114;
        sub_10000B3A8(v60, &qword_1016A40D0, &unk_10138BE70);
        v68(v63, v64);
      }

      sub_100006654(v67, v66);
      sub_100006654(v126, v98);
      goto LABEL_20;
    }

    sub_100006654(v42, v41);
    sub_10000B3A8(&v28[v39], &qword_1016A40D0, &unk_10138BE70);
    (*(v126 + 8))(v28, v127);
    v35 = v116;
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v76 = v35;
    goto LABEL_13;
  }

LABEL_15:
  sub_10000B3A8(v35, &unk_1016A4220, &unk_1013AFFA0);
  return 0;
}

unint64_t sub_1005254A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609370, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_1005254F0(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42C0, &qword_1013AFFF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_100525EFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100007BAC(a1);
  }

  return v9;
}

uint64_t sub_100525664(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42A0, &qword_1013AFFE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100525EA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v12[15] = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[13] = 1;
  sub_100525E00();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v10 = v12[14];
  sub_100007BAC(a1);
  return v9 | (v10 << 16) | v9 & 0x100u;
}

uint64_t sub_10052582C(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A4238, &qword_1013AFFB0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - v4;
  v6 = sub_1000BC4D4(&qword_1016A4240, &qword_1013AFFB8);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_1000BC4D4(&qword_1016A4248, &unk_1013AFFC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v36 = a1;
  v17 = sub_1000035D0(a1, v16);
  sub_100525D04();
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v31 = v6;
    v19 = v34;
    v35 = v11;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1002E27AC();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v10;
      v27 = v26;
      v28 = *(sub_1000BC4D4(&qword_10169C868, &qword_101398420) + 48);
      *v27 = &type metadata for OwnedBeaconGroup.Version;
      v17 = v14;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v41 = 1;
      sub_100525D58();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v35;
      v17 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v33 + 8))(v5, v19);
      (*(v23 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      sub_100525DAC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v35;
      (*(v32 + 8))(v9, v31);
      (*(v30 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  sub_100007BAC(v36);
  return v17;
}

unint64_t sub_100525D04()
{
  result = qword_1016A4250;
  if (!qword_1016A4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4250);
  }

  return result;
}

unint64_t sub_100525D58()
{
  result = qword_1016A4260;
  if (!qword_1016A4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4260);
  }

  return result;
}

unint64_t sub_100525DAC()
{
  result = qword_1016A4268;
  if (!qword_1016A4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4268);
  }

  return result;
}

unint64_t sub_100525E00()
{
  result = qword_1016A4290;
  if (!qword_1016A4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4290);
  }

  return result;
}

unint64_t sub_100525E54()
{
  result = qword_1016A4298;
  if (!qword_1016A4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4298);
  }

  return result;
}

unint64_t sub_100525EA8()
{
  result = qword_1016A42A8;
  if (!qword_1016A42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A42A8);
  }

  return result;
}

unint64_t sub_100525EFC()
{
  result = qword_1016A42C8;
  if (!qword_1016A42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A42C8);
  }

  return result;
}

unint64_t sub_100525F50()
{
  result = qword_1016A42E8;
  if (!qword_1016A42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A42E8);
  }

  return result;
}

uint64_t sub_10052603C()
{
  result = type metadata accessor for MACAddress();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1005260BC()
{
  result = qword_1016A4380;
  if (!qword_1016A4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4380);
  }

  return result;
}

unint64_t sub_100526114()
{
  result = qword_1016A4388;
  if (!qword_1016A4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4388);
  }

  return result;
}

unint64_t sub_10052616C()
{
  result = qword_1016A4390;
  if (!qword_1016A4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4390);
  }

  return result;
}

unint64_t sub_1005261C4()
{
  result = qword_1016A4398;
  if (!qword_1016A4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4398);
  }

  return result;
}

unint64_t sub_10052621C()
{
  result = qword_1016A43A0;
  if (!qword_1016A43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43A0);
  }

  return result;
}

unint64_t sub_100526274()
{
  result = qword_1016A43A8;
  if (!qword_1016A43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43A8);
  }

  return result;
}

unint64_t sub_1005262CC()
{
  result = qword_1016A43B0;
  if (!qword_1016A43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43B0);
  }

  return result;
}

unint64_t sub_100526324()
{
  result = qword_1016A43B8;
  if (!qword_1016A43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43B8);
  }

  return result;
}

unint64_t sub_10052637C()
{
  result = qword_1016A43C0;
  if (!qword_1016A43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43C0);
  }

  return result;
}

unint64_t sub_1005263D4()
{
  result = qword_1016A43C8;
  if (!qword_1016A43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43C8);
  }

  return result;
}

unint64_t sub_10052642C()
{
  result = qword_1016A43D0;
  if (!qword_1016A43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43D0);
  }

  return result;
}

unint64_t sub_100526484()
{
  result = qword_1016A43D8;
  if (!qword_1016A43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43D8);
  }

  return result;
}

unint64_t sub_1005264DC()
{
  result = qword_1016A43E0;
  if (!qword_1016A43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43E0);
  }

  return result;
}

unint64_t sub_100526534()
{
  result = qword_1016A43E8;
  if (!qword_1016A43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43E8);
  }

  return result;
}

unint64_t sub_10052658C()
{
  result = qword_1016A43F0;
  if (!qword_1016A43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43F0);
  }

  return result;
}

unint64_t sub_1005265E4()
{
  result = qword_1016A43F8;
  if (!qword_1016A43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43F8);
  }

  return result;
}

unint64_t sub_10052663C()
{
  result = qword_1016A4400;
  if (!qword_1016A4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4400);
  }

  return result;
}

unint64_t sub_100526694()
{
  result = qword_1016A4408;
  if (!qword_1016A4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4408);
  }

  return result;
}

unint64_t sub_1005266E8()
{
  result = qword_1016A4418;
  if (!qword_1016A4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4418);
  }

  return result;
}

unint64_t sub_100526750()
{
  result = qword_1016A4428;
  if (!qword_1016A4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4428);
  }

  return result;
}

unint64_t sub_1005267A8()
{
  result = qword_1016A4430;
  if (!qword_1016A4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4430);
  }

  return result;
}

unint64_t sub_100526800()
{
  result = qword_1016A4438;
  if (!qword_1016A4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4438);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryLostModeEndPoint()
{
  result = qword_1016A4498;
  if (!qword_1016A4498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005268D4()
{
  result = type metadata accessor for FMNAccountType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100526940()
{
  URLComponents.init()();
  URLComponents.scheme.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x8000000101358A80;
  String.append(_:)(v1);
  v0(v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4 && (v5 = String._bridgeToObjectiveC()(), v6 = [v2 stringForKey:v5], v5, v6))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v7 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074618(v9[0]);
  }

  return URLComponents.host.setter();
}

uint64_t sub_100526B58(uint64_t a1)
{
  sub_100525F50();
  v6 = Set.init(minimumCapacity:)();
  sub_100DEEF64(&v5, 20);
  sub_100DEEF64(&v5, 24);
  sub_100DEEF64(&v5, 23);
  sub_100DEEF64(&v5, 25);
  sub_100DEEF64(&v5, 26);
  sub_100DEEF64(&v5, 27);
  sub_100DEEF64(&v5, 29);
  v2 = v6;
  v3 = type metadata accessor for BeaconObservation();
  LOBYTE(a1) = sub_101120594(*(a1 + *(v3 + 24)), v2);

  return a1 & 1;
}

__n128 sub_100526C90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100526CA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_100526CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100526D50()
{
  result = qword_1016A44D0;
  if (!qword_1016A44D0)
  {
    sub_1000BC580(&qword_1016A44D8, qword_1013B0B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A44D0);
  }

  return result;
}

unint64_t sub_100526DC8()
{
  result = qword_1016A44E0;
  if (!qword_1016A44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A44E0);
  }

  return result;
}

unint64_t sub_100526E1C(char a1)
{
  result = 0x746375646F72702ELL;
  switch(a1)
  {
    case 1:
    case 12:
      v3 = 10;
      goto LABEL_12;
    case 2:
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 13:
      result = 0xD000000000000016;
      break;
    case 6:
    case 7:
      v3 = 9;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      return result;
    case 9:
      result = 0x676E69726961702ELL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6F4C72656E776F2ELL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_100526FA4(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 88) = a1;
  return _swift_task_switch(sub_100526FC8, 0, 0);
}

uint64_t sub_100526FC8()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x800000010134ACD0;
    v3 = 0xD00000000000001DLL;
  }

  v0[12] = v3;
  v0[13] = v5;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B348;
  v0[14] = qword_10177B348;
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100527148;

  return unsafeBlocking<A>(_:)(v0 + 6, sub_1000D2BE0, v6, &type metadata for Configuration);
}

uint64_t sub_100527148()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100527260, 0, 0);
}

uint64_t sub_100527260()
{
  v1 = *(v0 + 160);
  v2 = sub_1010745FC(*(v0 + 48));

  v3 = sub_100527C64(v2);

  *(v0 + 161) = sub_10062CFC0(v1, v3);

  v4 = *(v0 + 112);
  if (((1 << v1) & 0x37EF) != 0)
  {
    v5 = async function pointer to unsafeBlocking<A>(_:)[1];

    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_100527408;
    v7 = *(v0 + 112);
    v8 = v0 + 72;
  }

  else
  {
    v9 = async function pointer to unsafeBlocking<A>(_:)[1];

    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_1005277D0;
    v7 = *(v0 + 112);
    v8 = v0 + 56;
  }

  return unsafeBlocking<A>(_:)(v8, sub_1000DFF78, v7, &type metadata for Configuration);
}

uint64_t sub_100527408()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100527520, 0, 0);
}

uint64_t sub_100527520()
{
  v1 = v0[14];
  v0[2] = sub_1010745D4(v0[9]);
  v0[3] = v2;

  v3 = async function pointer to unsafeBlocking<A>(_:)[1];

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100527600;
  v5 = v0[14];

  return unsafeBlocking<A>(_:)(v0 + 10, sub_1000DFF78, v5, &type metadata for Configuration);
}

uint64_t sub_100527600()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100527718, 0, 0);
}

uint64_t sub_100527718()
{
  v1 = sub_1010745E0(*(v0 + 80));
  v8 = *(v0 + 16);
  v2 = *(v0 + 161);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);

  *v5 = v8;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 257;
  *(v5 + 42) = v2;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005277D0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1005278E8, 0, 0);
}

uint64_t sub_1005278E8()
{
  v1 = v0[14];
  v0[4] = sub_1010745AC(v0[7]);
  v0[5] = v2;

  v3 = async function pointer to unsafeBlocking<A>(_:)[1];

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1005279C8;
  v5 = v0[14];

  return unsafeBlocking<A>(_:)(v0 + 8, sub_1000DFF78, v5, &type metadata for Configuration);
}

uint64_t sub_1005279C8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100527AE0, 0, 0);
}

uint64_t sub_100527AE0()
{
  v1 = sub_1010745B8(*(v0 + 64));
  v8 = *(v0 + 32);
  v2 = *(v0 + 161);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);

  *v5 = v8;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0;
  *(v5 + 42) = v2;
  v6 = *(v0 + 8);

  return v6();
}

void *sub_100527B94()
{
  sub_101123C28(0, 9, 0);
  v0 = 0;
  result = &_swiftEmptyArrayStorage;
  do
  {
    v2 = qword_1013B0C20[*(&off_101607408 + v0 + 32)];
    v5 = result;
    v4 = result[2];
    v3 = result[3];
    if (v4 >= v3 >> 1)
    {
      sub_101123C28((v3 > 1), v4 + 1, 1);
      result = v5;
    }

    ++v0;
    result[2] = v4 + 1;
    result[v4 + 4] = v2;
  }

  while (v0 != 9);
  return result;
}

char *sub_100527C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v5 = 0;
      v6 = *(v3 + 8 * v2++);
      while (2)
      {
        v7 = *(&off_101607648 + v5++ + 32);
        switch(v7)
        {
          case 1:
            if (v6 != 2)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 2:
            if (v6 == 3)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 3:
            if (v6 == 4)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 4:
            if (v6 == 5)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 5:
            if (v6 == 6)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 6:
            if (v6 == 11)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 7:
            if (v6 == 12)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 8:
            if (v6 == 7)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 9:
            if (v6 == 8)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 10:
            if (v6 == 9)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 11:
            if (v6 != 10)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 12:
            if (v6 == 13)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 13:
            if (v6 == 14)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          default:
            if (v6 != 1)
            {
LABEL_7:
              if (v5 == 14)
              {
                goto LABEL_4;
              }

              continue;
            }

LABEL_34:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_100A5B720(0, *(v4 + 2) + 1, 1, v4);
            }

            v9 = *(v4 + 2);
            v8 = *(v4 + 3);
            if (v9 >= v8 >> 1)
            {
              v4 = sub_100A5B720((v8 > 1), v9 + 1, 1, v4);
            }

            *(v4 + 2) = v9 + 1;
            v4[v9 + 32] = v7;
LABEL_4:
            if (v2 == v1)
            {
              return v4;
            }

            break;
        }

        break;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100527E34()
{
  result = qword_1016A44E8;
  if (!qword_1016A44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A44E8);
  }

  return result;
}

void sub_100527E88(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    sub_100009D18(&qword_1016A4758, &qword_1016996A0, FAFamilyMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v26;
    v2 = v27;
    v4 = v28;
    v3 = v29;
    v5 = v30;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr), swift_dynamicCast(), v12 = v25, v9 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_, !v25))
    {
LABEL_30:
      sub_1000128F8();
      return;
    }

LABEL_18:
    v13 = [v12 v9[162]];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v15;
      sub_1000DF96C();
      LOBYTE(v15) = StringProtocol.contains<A>(_:)();
      v16 = String._bridgeToObjectiveC()();
      if (v15)
      {
        v17 = IDSCopyIDForEmailAddress();

        if (!v17)
        {
          goto LABEL_33;
        }

        v24 = 0;
      }

      else
      {
        v17 = IDSCopyIDForPhoneNumber();

        if (!v17)
        {
          goto LABEL_32;
        }

        v24 = 1;
      }

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100A5C1F8(0, *(v31 + 2) + 1, 1, v31);
      }

      v22 = *(v31 + 2);
      v21 = *(v31 + 3);
      if (v22 >= v21 >> 1)
      {
        v31 = sub_100A5C1F8((v21 > 1), v22 + 1, 1, v31);
      }

      *(v31 + 2) = v22 + 1;
      v23 = &v31[24 * v22];
      v23[32] = v24;
      *(v23 + 5) = v18;
      *(v23 + 6) = v20;
      goto LABEL_8;
    }
  }

  v10 = v3;
  v11 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= ((v4 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v11 = *(v2 + 8 * v3);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void *sub_100528208(uint64_t a1, uint64_t *a2)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v36 - v12;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = (v11 + 56);
  v40 = v11 + 16;
  v41 = v11;
  v42 = (v11 + 48);
  v36 = (v11 + 32);
  v44 = a1;

  v20 = 0;
  v39 = _swiftEmptyArrayStorage;
  v43 = v7;
  if (v16)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return v39;
    }

    v21 = *(v13 + 8 * v22);
    ++v20;
    if (v21)
    {
      v20 = v22;
LABEL_12:
      v16 = (v21 - 1) & v21;
      v23 = *v45;
      if (*(*v45 + 16))
      {
        v24 = *(v44 + 48) + 24 * (__clz(__rbit64(v21)) | (v20 << 6));
        v25 = *(v24 + 8);
        v26 = *(v24 + 16);
        v27 = *v24;

        v28 = sub_100772110(v27, v25, v26);
        if (v29)
        {
          v7 = v43;
          (*(v41 + 16))(v6, *(v23 + 56) + *(v41 + 72) * v28, v43);
          v30 = 0;
        }

        else
        {
          v30 = 1;
          v7 = v43;
        }

        (*v18)(v6, v30, 1, v7);

        if ((*v42)(v6, 1, v7) != 1)
        {
          v31 = *v36;
          (*v36)(v37, v6, v7);
          v31(v38, v37, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_100A5BFE0(0, v39[2] + 1, 1, v39);
          }

          v33 = v39[2];
          v32 = v39[3];
          if (v33 >= v32 >> 1)
          {
            v39 = sub_100A5BFE0(v32 > 1, v33 + 1, 1, v39);
          }

          v34 = v39;
          v39[2] = v33 + 1;
          v35 = v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33;
          v7 = v43;
          result = (v31)(v35, v38, v43);
          if (!v16)
          {
            continue;
          }

          goto LABEL_7;
        }
      }

      else
      {
        (*v18)(v6, 1, 1, v7);
      }

      result = sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
      if (!v16)
      {
        continue;
      }

LABEL_7:
      v21 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1005285EC(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_101124DA4(0, v3, 0);
    v42 = _swiftEmptyArrayStorage;
    v5 = v2 + 56;
    v6 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v35 = v2 + 64;
    v36 = v3;
    v37 = v2 + 56;
    v38 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v40 = *(v2 + 36);
      v11 = *(v2 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *a2;
      v16 = *(*a2 + 16);

      v41 = v13;
      if (v16)
      {

        v17 = sub_100772110(v12, v13, v14);
        if (v18)
        {
          v19 = (*(v15 + 56) + 16 * v17);
          v20 = *v19;
          v21 = v19[1];
          sub_100017D5C(*v19, v21);
        }

        else
        {
          v20 = 0;
          v21 = 0xF000000000000000;
        }

        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xF000000000000000;
      }

      v23 = v42;
      v25 = v42[2];
      v24 = v42[3];
      if (v25 >= v24 >> 1)
      {
        v34 = v22;
        result = sub_101124DA4((v24 > 1), v25 + 1, 1);
        v22 = v34;
        v23 = v42;
      }

      v23[2] = v25 + 1;
      v26 = &v23[5 * v25];
      *(v26 + 32) = v12;
      v26[5] = v41;
      v26[6] = v14;
      v26[7] = v20;
      v26[8] = v22;
      v2 = v38;
      v9 = 1 << *(v38 + 32);
      if (v7 >= v9)
      {
        goto LABEL_29;
      }

      v5 = v37;
      v27 = *(v37 + 8 * v10);
      if ((v27 & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      v42 = v23;
      if (v40 != *(v38 + 36))
      {
        goto LABEL_31;
      }

      v28 = v27 & (-2 << (v7 & 0x3F));
      if (v28)
      {
        v9 = __clz(__rbit64(v28)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v10 << 6;
        v30 = v10 + 1;
        v31 = (v35 + 8 * v10);
        while (v30 < (v9 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1000BB408(v7, v40, 0);
            v9 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v7, v40, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v36)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1005288AC(uint64_t a1)
{
  v20 = *v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v19 = *(__chkstk_darwin(v7 - 8) + 28);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10058B200(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100589B28(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OwnedBeaconRecord);
  (*(v4 + 16))(v6, a1 + v19, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v13, v6, v3);
  v16 = (v15 + v14);
  *v16 = sub_10057F454;
  v16[1] = v12;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100528B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v268 = a3;
  *&v269 = a2;
  v228 = type metadata accessor for DispatchTime();
  v227 = *(v228 - 8);
  v4 = *(v227 + 64);
  v5 = __chkstk_darwin(v228);
  v225 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v226 = &v211 - v7;
  v232 = type metadata accessor for SecureLocationsRelayAction(0);
  v233 = *(v232 - 8);
  v8 = *(v233 + 64);
  v9 = __chkstk_darwin(v232);
  v235 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v10;
  __chkstk_darwin(v9);
  v236 = &v211 - v11;
  v237 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v12 = *(*(v237 - 8) + 64);
  v13 = __chkstk_darwin(v237);
  v229 = &v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v238 = &v211 - v15;
  v231 = type metadata accessor for MessagingOptions(0);
  v16 = *(*(v231 - 8) + 64);
  __chkstk_darwin(v231);
  v239 = &v211 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v230 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v241 = &v211 - v22;
  v243 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v23 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v250 = (&v211 - v24);
  v249 = type metadata accessor for SystemInfo.DeviceLockState();
  v248 = *(v249 - 8);
  v25 = *(v248 + 64);
  v26 = __chkstk_darwin(v249);
  v247 = &v211 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v246 = &v211 - v28;
  v29 = type metadata accessor for ShareRecord();
  v244 = *(v29 - 8);
  v30 = *(v244 + 64);
  v31 = __chkstk_darwin(v29);
  v254 = &v211 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = v32;
  __chkstk_darwin(v31);
  v245 = (&v211 - v33);
  v262 = type metadata accessor for DispatchWorkItemFlags();
  v266 = *(v262 - 8);
  v34 = *(v266 + 64);
  __chkstk_darwin(v262);
  v261 = &v211 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for DispatchQoS();
  v267 = *(v265 - 8);
  v36 = *(v267 + 64);
  __chkstk_darwin(v265);
  v264 = &v211 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for DispatchQoS.QoSClass();
  v259 = *(v260 - 1);
  v38 = *(v259 + 64);
  __chkstk_darwin(v260);
  v258 = &v211 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for Date();
  v251 = *(v257 - 8);
  v40 = *(v251 + 8);
  __chkstk_darwin(v257);
  v256 = &v211 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v46 = __chkstk_darwin(v45);
  v48 = &v211 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v211 - v50;
  __chkstk_darwin(v49);
  v53 = &v211 - v52;
  v253 = v29;
  v54 = *(v29 + 24);
  v240 = v43;
  v55 = *(v43 + 16);
  v252 = a1;
  v55(&v211 - v52, a1 + v54, v42);
  sub_10053A3CC(1, 1, v53, &aBlock);
  v219 = v48;
  v212 = v44;
  v217 = v55;
  v218 = v43 + 16;
  v214 = v51;
  v220 = v42;
  v216 = aBlock;
  v215 = v273;
  v223 = v274;
  v224 = v275;
  v56 = v263[18];
  v57 = v252;
  sub_100025020(v252 + v54, &v270);
  v213 = &v211 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v271)
  {
    sub_100031694(&v270, &aBlock);
    v58 = v275;
    v59 = v276;
    sub_1000035D0(&aBlock, v275);
    if ((*(v59 + 14))(v58, v59))
    {
      v60 = &off_101608CB0;
    }

    else
    {
      v60 = &off_101608CD8;
    }

    v222 = sub_100B0F690(v60);
    v61 = sub_100007BAC(&aBlock);
  }

  else
  {
    sub_10000B3A8(&v270, &qword_101696920, &unk_10138B200);
    v61 = sub_100B0F690(&off_101608D00);
    v222 = v61;
  }

  v62 = v255;
  v63 = v263[40];
  v64 = v253;
  v65 = *(v253 + 20);
  v66 = *(v63 + 24);
  __chkstk_darwin(v61);
  *(&v211 - 4) = v63;
  *(&v211 - 24) = 0;
  v242 = v67;
  *(&v211 - 2) = v67;
  v68 = v256;
  v69 = v257;
  OS_dispatch_queue.sync<A>(execute:)();
  v221 = 0;
  LOBYTE(v66) = sub_1010B2678(v68, 0);
  v70 = v69;
  v71 = *(v251 + 1);
  v71(v68, v70);
  if (v66)
  {
    v72 = sub_1010B2678(v57 + *(v64 + 28), 1u);
    v73 = v254;
    v74 = v62;
    if ((v72 & 1) == 0)
    {

      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_101385D80;
      v76 = UUID.uuidString.getter();
      v78 = v77;
      *(v75 + 56) = &type metadata for String;
      *(v75 + 64) = sub_100008C00();
      *(v75 + 32) = v76;
      *(v75 + 40) = v78;
      os_log(_:dso:log:_:_:)();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v79 = v259;
      v80 = v258;
      v81 = v260;
      (*(v259 + 104))(v258, enum case for DispatchQoS.QoSClass.default(_:), v260);
      v82 = static OS_dispatch_queue.global(qos:)();
      (*(v79 + 8))(v80, v81);
      v83 = swift_allocObject();
      v84 = v268;
      *(v83 + 16) = v269;
      *(v83 + 24) = v84;
      v276 = sub_100470308;
      v277 = v83;
      aBlock = _NSConcreteStackBlock;
      v273 = 1107296256;
      v85 = &unk_101626F40;
LABEL_23:
      v274 = sub_100006684;
      v275 = v85;
      v121 = _Block_copy(&aBlock);

      v122 = v264;
      static DispatchQoS.unspecified.getter();
      *&v270 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v123 = v261;
      v124 = v262;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v121);

      sub_100016590(v223, v224);
      (*(v266 + 8))(v123, v124);
      (*(v267 + 8))(v122, v265);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_101385D80;
    v87 = UUID.uuidString.getter();
    v89 = v88;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_100008C00();
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    os_log(_:dso:log:_:_:)();

    v73 = v254;
    v74 = v255;
  }

  v90 = *(v63 + 24);
  __chkstk_darwin(v72);
  *(&v211 - 4) = v63;
  *(&v211 - 24) = 1;
  v91 = v242;
  *(&v211 - 2) = v242;
  v92 = v256;
  v93 = v221;
  OS_dispatch_queue.sync<A>(execute:)();
  v255 = v93;
  v94 = v257;
  LOBYTE(v90) = sub_1010B2678(v92, 1u);
  v71(v92, v94);
  if ((v90 & 1) == 0)
  {

    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_101385D80;
    v113 = UUID.uuidString.getter();
    v115 = v114;
    *(v112 + 56) = &type metadata for String;
    *(v112 + 64) = sub_100008C00();
    *(v112 + 32) = v113;
    *(v112 + 40) = v115;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v116 = v259;
    v117 = v258;
    v118 = v260;
    (*(v259 + 104))(v258, enum case for DispatchQoS.QoSClass.default(_:), v260);
    v82 = static OS_dispatch_queue.global(qos:)();
    (*(v116 + 8))(v117, v118);
    v119 = swift_allocObject();
    v120 = v268;
    *(v119 + 16) = v269;
    *(v119 + 24) = v120;
    v276 = sub_100470308;
    v277 = v119;
    aBlock = _NSConcreteStackBlock;
    v273 = 1107296256;
    v85 = &unk_101626D60;
    goto LABEL_23;
  }

  static Date.trustedNow.getter(v92);
  sub_1010B1D04(v91, v92, 1);
  v71(v92, v94);
  v95 = v252 + *(v253 + 36);
  LODWORD(v256) = *v95;
  v97 = *(v95 + 1);
  v96 = *(v95 + 2);
  v253 = *(v63 + 16);
  v98 = v245;
  sub_10058B200(v252, v245, type metadata accessor for ShareRecord);
  sub_10058B200(v98, v73, type metadata accessor for ShareRecord);
  v99 = (*(v244 + 80) + 24) & ~*(v244 + 80);
  v100 = swift_allocObject();
  v101 = v263;
  *(v100 + 16) = v263;
  sub_100589B28(v98, v100 + v99, type metadata accessor for ShareRecord);
  v257 = v100;
  v102 = (v100 + ((v74 + v99 + 7) & 0xFFFFFFFFFFFFFFF8));
  v103 = v268;
  *v102 = v269;
  v102[1] = v103;

  sub_100908F24(_swiftEmptyArrayStorage);

  v104 = v246;
  static SystemInfo.lockState.getter();
  v105 = v248;
  v106 = v247;
  v107 = v249;
  (*(v248 + 104))(v247, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v249);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v99) = dispatch thunk of static Equatable.== infix(_:_:)();
  v108 = *(v105 + 8);
  v108(v106, v107);
  v108(v104, v107);
  if ((v99 & 1) == 0)
  {
    v126 = v256;
    v127 = sub_100540CB8(v256, v97, v96);
    v128 = v250;
    if ((v127 & 1) == 0)
    {

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_101385D80;
      *(v152 + 56) = &type metadata for String;
      *(v152 + 64) = sub_100008C00();
      *(v152 + 32) = v97;
      *(v152 + 40) = v96;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      *&v270 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v128 = aBlock;
      swift_storeEnumTagMultiPayload();
      v110 = v254;
      sub_10056343C(v128, v101, v254, v269, v103);

      sub_100016590(v223, v224);
      v111 = v128;
      goto LABEL_30;
    }

    v268 = *(v101 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v129 = swift_allocObject();
    v269 = xmmword_101385D80;
    *(v129 + 16) = xmmword_101385D80;
    *(v129 + 32) = v126;
    *(v129 + 40) = v97;
    *(v129 + 48) = v96;
    v130 = *(v240 + 56);
    v131 = v241;
    v132 = v220;
    v130(v241, 1, 1, v220);

    v133 = v219;
    UUID.init()();
    v134 = v239;
    v217(v239, v133, v132);
    v135 = v230;
    sub_1000D2A70(v131, v230, &qword_1016980D0, &unk_10138F3B0);
    v136 = v231;
    v137 = *(v231 + 28);
    v130(v134 + v137, 1, 1, v132);
    *(v134 + v136[5]) = v129;
    *(v134 + v136[6]) = 1;
    sub_10002311C(v135, v134 + v137, &qword_1016980D0, &unk_10138F3B0);
    v138 = v134 + v136[8];
    *v138 = v253;
    *(v138 + 8) = 0;
    *(v134 + v136[9]) = 0;
    *(v134 + v136[10]) = v222;
    *(v134 + v136[11]) = &_swiftEmptySetSingleton;
    v139 = (v134 + v136[12]);
    *v139 = 0;
    v139[1] = 0;
    *(v134 + v136[13]) = xmmword_1013B0D90;
    v140 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v141 = v236;
    sub_10058B200(v134, &v236[*(v140 + 24)], type metadata accessor for MessagingOptions);
    *v141 = v216;
    v142 = v223;
    *(v141 + 8) = v215;
    *(v141 + 16) = v142;
    v143 = v224;
    *(v141 + 24) = v224;
    *(v141 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v144 = v235;
    sub_10058B200(v141, v235, type metadata accessor for SecureLocationsRelayAction);
    v145 = (*(v233 + 80) + 24) & ~*(v233 + 80);
    v146 = swift_allocObject();
    *(v146 + 16) = v268;
    sub_100589B28(v144, v146 + v145, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v142, v143);

    v147 = v238;
    v148 = v255;
    unsafeFromAsyncTask<A>(_:)();
    if (v148)
    {
      v149 = v148;

      v150 = type metadata accessor for SecureLocationsRelayAction;
      v151 = v141;
    }

    else
    {
      sub_10058B268(v141, type metadata accessor for SecureLocationsRelayAction);

      v153 = v229;
      sub_10058B200(v147, v229, type metadata accessor for SecureLocationsRelayAction.Response);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_10058B268(v147, type metadata accessor for SecureLocationsRelayAction.Response);
        v154 = v240;
        v155 = *(v240 + 8);
        v156 = v220;
        v256 = (v240 + 8);
        v255 = v155;
        v155(v219, v220);
        sub_10000B3A8(v241, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v134, type metadata accessor for MessagingOptions);
        v157 = *(v154 + 32);
        v158 = v214;
        v268 = v154 + 32;
        v260 = v157;
        (v157)(v214, v153, v156);
        v159 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v160 = *(v159 + 48);
        v161 = *(v159 + 52);
        swift_allocObject();
        v162 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v163 = swift_allocObject();
        *(v163 + 16) = v269;
        v164 = UUID.uuidString.getter();
        v166 = v165;
        *(v163 + 56) = &type metadata for String;
        *(v163 + 64) = sub_100008C00();
        *(v163 + 32) = v164;
        *(v163 + 40) = v166;
        os_log(_:dso:log:_:_:)();

        v167 = v158;
        v168 = v263;
        v246 = v263[21];
        v169 = v213;
        v217(v213, v167, v156);
        v170 = (*(v154 + 80) + 24) & ~*(v154 + 80);
        v259 = *(v154 + 80);
        v171 = v169;
        v253 = v170 + v212;
        v172 = v170;
        *&v269 = v170;
        v173 = (v170 + v212 + 7) & 0xFFFFFFFFFFFFFFF8;
        v174 = swift_allocObject();
        *(v174 + 16) = v168;
        (v260)(v174 + v172, v171, v156);
        *(v174 + v173) = v162;
        v258 = v162;
        v276 = sub_10057C898;
        v277 = v174;
        aBlock = _NSConcreteStackBlock;
        v273 = 1107296256;
        v252 = &v274;
        v274 = sub_100006684;
        v275 = &unk_101626E50;
        v175 = _Block_copy(&aBlock);

        v176 = v264;
        static DispatchQoS.unspecified.getter();
        *&v270 = _swiftEmptyArrayStorage;
        v248 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v247 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v249 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v177 = v261;
        v178 = v262;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v175);
        v179 = *(v266 + 8);
        v266 += 8;
        v251 = v179;
        v179(v177, v178);
        v180 = *(v267 + 8);
        v267 += 8;
        v250 = v180;
        (v180)(v176, v265);

        v181 = v213;
        v182 = v214;
        v183 = v220;
        v217(v213, v214, v220);
        v184 = swift_allocObject();
        *(v184 + 16) = v168;
        (v260)(v184 + v269, v181, v183);
        v185 = (v184 + v173);
        v186 = v257;
        *v185 = sub_10057C734;
        v185[1] = v186;

        Future.addSuccess(block:)();

        v187 = swift_allocObject();
        *(v187 + 16) = sub_10057C734;
        *(v187 + 24) = v186;

        Future.addFailure(block:)();

        v188 = v225;
        static DispatchTime.now()();
        v189 = v226;
        + infix(_:_:)();
        v245 = *(v227 + 8);
        v190 = v228;
        (v245)(v188, v228);
        v191 = v213;
        v192 = v220;
        v217(v213, v182, v220);
        v193 = swift_allocObject();
        *(v193 + 16) = v168;
        (v260)(v193 + v269, v191, v192);
        v276 = sub_10057C8F4;
        v277 = v193;
        aBlock = _NSConcreteStackBlock;
        v273 = 1107296256;
        v274 = sub_100006684;
        v275 = &unk_101626EF0;
        v194 = _Block_copy(&aBlock);

        v195 = v264;
        static DispatchQoS.unspecified.getter();
        *&v270 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v194);

        sub_100016590(v223, v224);
        v251(v177, v178);
        (v250)(v195, v265);
        (v245)(v189, v190);
        v255(v214, v192);
        goto LABEL_39;
      }

      sub_10058B268(v153, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v149 = swift_allocError();
      swift_willThrow();
      v151 = v147;
      v150 = type metadata accessor for SecureLocationsRelayAction.Response;
    }

    sub_10058B268(v151, v150);
    v196 = v241;
    (*(v240 + 8))(v219, v220);
    sub_10000B3A8(v196, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v134, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v197 = swift_allocObject();
    *(v197 + 16) = v269;
    aBlock = v149;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v198 = String.init<A>(describing:)();
    v200 = v199;
    *(v197 + 56) = &type metadata for String;
    *(v197 + 64) = sub_100008C00();
    *(v197 + 32) = v198;
    *(v197 + 40) = v200;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v201 = v259;
    v202 = v258;
    v203 = v260;
    (*(v259 + 104))(v258, enum case for DispatchQoS.QoSClass.default(_:), v260);
    v204 = static OS_dispatch_queue.global(qos:)();
    (*(v201 + 8))(v202, v203);
    v205 = swift_allocObject();
    v206 = v257;
    v205[2] = sub_10057C734;
    v205[3] = v206;
    v205[4] = v149;
    v276 = sub_10058D73C;
    v277 = v205;
    aBlock = _NSConcreteStackBlock;
    v273 = 1107296256;
    v274 = sub_100006684;
    v275 = &unk_101626E00;
    v207 = _Block_copy(&aBlock);

    swift_errorRetain();
    v208 = v264;
    static DispatchQoS.unspecified.getter();
    *&v270 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v209 = v261;
    v210 = v262;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v207);

    sub_100016590(v223, v224);
    (*(v266 + 8))(v209, v210);
    (*(v267 + 8))(v208, v265);
LABEL_39:

    v110 = v254;
    return sub_10058B268(v110, type metadata accessor for ShareRecord);
  }

  static os_log_type_t.error.getter();
  v109 = v250;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for SPOwnerSessionError(0);
  *&v270 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v109 = aBlock;
  swift_storeEnumTagMultiPayload();
  v110 = v254;
  sub_10056343C(v109, v101, v254, v269, v103);

  sub_100016590(v223, v224);
  v111 = v109;
LABEL_30:
  sub_10000B3A8(v111, &qword_10169F358, &qword_1013A0810);
  return sub_10058B268(v110, type metadata accessor for ShareRecord);
}

uint64_t sub_10052B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v206 = a2;
  *&v207 = a3;
  v208 = a1;
  v198 = type metadata accessor for DispatchQoS.QoSClass();
  v197 = *(v198 - 1);
  v3 = *(v197 + 64);
  __chkstk_darwin(v198);
  v196 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchTime();
  v172 = *(v173 - 8);
  v5 = *(v172 + 64);
  v6 = __chkstk_darwin(v173);
  v170 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v171 = &v155 - v8;
  v200 = type metadata accessor for DispatchWorkItemFlags();
  v205 = *(v200 - 8);
  v9 = *(v205 + 64);
  __chkstk_darwin(v200);
  v199 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for DispatchQoS();
  v204 = *(v202 - 8);
  v11 = *(v204 + 64);
  __chkstk_darwin(v202);
  v201 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for SecureLocationsRelayAction(0);
  v178 = *(v177 - 8);
  v13 = *(v178 + 64);
  v14 = __chkstk_darwin(v177);
  v180 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v15;
  __chkstk_darwin(v14);
  v181 = &v155 - v16;
  v182 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v17 = *(*(v182 - 8) + 64);
  v18 = __chkstk_darwin(v182);
  v174 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v183 = &v155 - v20;
  v176 = type metadata accessor for MessagingOptions(0);
  v21 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v184 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v175 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v185 = &v155 - v27;
  v186 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v28 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v187 = (&v155 - v29);
  v194 = type metadata accessor for SystemInfo.DeviceLockState();
  v193 = *(v194 - 8);
  v30 = *(v193 + 64);
  v31 = __chkstk_darwin(v194);
  v192 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v191 = &v155 - v33;
  v34 = type metadata accessor for SharedBeaconRecord(0);
  v189 = *(v34 - 8);
  v35 = *(v189 + 8);
  v36 = __chkstk_darwin(v34);
  v203 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v190 = (&v155 - v37);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v42 = __chkstk_darwin(v41);
  v44 = &v155 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v155 - v46;
  __chkstk_darwin(v45);
  v49 = &v155 - v48;
  v188 = v34;
  v50 = *(v39 + 16);
  v50(&v155 - v48, v208 + *(v34 + 20), v38);
  sub_10053A3CC(3, 1, v49, &aBlock);
  v158 = 0;
  v165 = v44;
  v155 = v40;
  v166 = v39;
  v161 = v50;
  v162 = v39 + 16;
  v156 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v47;
  v167 = v38;
  v159 = aBlock;
  v160 = v211;
  v168 = v212;
  v169 = v213;
  v51 = (v208 + *(v188 + 7));
  LODWORD(v188) = *v51;
  v53 = *(v51 + 1);
  v52 = *(v51 + 2);
  v164 = v53;
  v163 = v52;
  v54 = v190;
  sub_10058B200(v208, v190, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v54, v203, type metadata accessor for SharedBeaconRecord);
  v55 = (*(v189 + 80) + 24) & ~*(v189 + 80);
  v56 = swift_allocObject();
  v57 = v195;
  *(v56 + 16) = v195;
  sub_100589B28(v54, v56 + v55, type metadata accessor for SharedBeaconRecord);
  v208 = v56;
  v58 = (v56 + ((v35 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
  v60 = v206;
  v59 = v207;
  *v58 = v206;
  v58[1] = v59;

  sub_100908F24(_swiftEmptyArrayStorage);

  v190 = sub_101129A8C(&off_101608D28);
  v61 = sub_101129A8C(_swiftEmptyArrayStorage);
  v62 = v191;
  static SystemInfo.lockState.getter();
  v63 = v193;
  v64 = v192;
  v65 = v194;
  (*(v193 + 104))(v192, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v194);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v63 + 8);
  v66(v64, v65);
  v66(v62, v65);
  v67 = v57;
  v68 = v59;
  if ((v35 & 1) == 0)
  {
    v194 = v61;
    v72 = v188;
    v73 = v164;
    v74 = v163;
    if ((sub_100540CB8(v188, v164, v163) & 1) == 0)
    {

      static os_log_type_t.error.getter();
      v98 = v169;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_101385D80;
      *(v99 + 56) = &type metadata for String;
      *(v99 + 64) = sub_100008C00();
      *(v99 + 32) = v73;
      *(v99 + 40) = v74;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v209 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v100 = v187;
      *v187 = aBlock;
      swift_storeEnumTagMultiPayload();
      v70 = v203;
      sub_100562794(v100, v67, v203, v60, v68);

      sub_100016590(v168, v98);
      v71 = v100;
      goto LABEL_11;
    }

    v206 = *(v67 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v75 = swift_allocObject();
    v207 = xmmword_101385D80;
    *(v75 + 16) = xmmword_101385D80;
    *(v75 + 32) = v72;
    *(v75 + 40) = v73;
    *(v75 + 48) = v74;
    v76 = *(v166 + 56);
    v77 = v185;
    v78 = v167;
    v76(v185, 1, 1, v167);

    v79 = v165;
    UUID.init()();
    v80 = v184;
    v161(v184, v79, v78);
    v81 = v175;
    sub_1000D2A70(v77, v175, &qword_1016980D0, &unk_10138F3B0);
    v82 = v176;
    v83 = *(v176 + 28);
    v76(v80 + v83, 1, 1, v78);
    *(v80 + v82[5]) = v75;
    *(v80 + v82[6]) = 1;
    sub_10002311C(v81, v80 + v83, &qword_1016980D0, &unk_10138F3B0);
    v84 = v80 + v82[8];
    *v84 = 0;
    *(v84 + 8) = 1;
    *(v80 + v82[9]) = 0;
    *(v80 + v82[10]) = v190;
    *(v80 + v82[11]) = v194;
    v85 = (v80 + v82[12]);
    *v85 = 0;
    v85[1] = 0;
    *(v80 + v82[13]) = xmmword_1013B0D90;
    v86 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v87 = v181;
    sub_10058B200(v80, &v181[*(v86 + 24)], type metadata accessor for MessagingOptions);
    *v87 = v159;
    v88 = v168;
    *(v87 + 8) = v160;
    *(v87 + 16) = v88;
    v89 = v169;
    *(v87 + 24) = v169;
    *(v87 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v90 = v180;
    sub_10058B200(v87, v180, type metadata accessor for SecureLocationsRelayAction);
    v91 = (*(v178 + 80) + 24) & ~*(v178 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v206;
    sub_100589B28(v90, v92 + v91, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v88, v89);

    v93 = v183;
    v94 = v158;
    unsafeFromAsyncTask<A>(_:)();
    if (v94)
    {
      v95 = v94;

      v96 = type metadata accessor for SecureLocationsRelayAction;
      v97 = v87;
    }

    else
    {
      v101 = v195;
      sub_10058B268(v87, type metadata accessor for SecureLocationsRelayAction);

      v102 = v174;
      sub_10058B200(v93, v174, type metadata accessor for SecureLocationsRelayAction.Response);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_10058B268(v93, type metadata accessor for SecureLocationsRelayAction.Response);
        v103 = v166;
        v104 = *(v166 + 8);
        v105 = v167;
        v193 = v166 + 8;
        v192 = v104;
        (v104)(v165, v167);
        sub_10000B3A8(v185, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v80, type metadata accessor for MessagingOptions);
        v106 = *(v103 + 32);
        v107 = v157;
        v206 = v103 + 32;
        v198 = v106;
        v106(v157, v102, v105);
        v108 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v109 = *(v108 + 48);
        v110 = *(v108 + 52);
        swift_allocObject();
        v111 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v112 = swift_allocObject();
        *(v112 + 16) = v207;
        v113 = UUID.uuidString.getter();
        v115 = v114;
        *(v112 + 56) = &type metadata for String;
        *(v112 + 64) = sub_100008C00();
        *(v112 + 32) = v113;
        *(v112 + 40) = v115;
        os_log(_:dso:log:_:_:)();

        v116 = v101;
        *&v207 = *(v101 + 168);
        v117 = v156;
        v161(v156, v107, v105);
        v118 = *(v103 + 80);
        v196 = v118;
        v191 = (((v118 + 24) & ~v118) + v155);
        v119 = (v118 + 24) & ~v118;
        v197 = v119;
        v120 = (v191 + 7) & 0xFFFFFFFFFFFFFFF8;
        v121 = swift_allocObject();
        *(v121 + 16) = v116;
        v198(v121 + v119, v117, v105);
        *(v121 + v120) = v111;
        v214 = sub_10058D4DC;
        v215 = v121;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v190 = &v212;
        v212 = sub_100006684;
        v213 = &unk_1016273C8;
        v122 = _Block_copy(&aBlock);

        v194 = v111;
        v123 = v201;
        static DispatchQoS.unspecified.getter();
        v209 = _swiftEmptyArrayStorage;
        v186 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v185 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v187 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v124 = v199;
        v125 = v200;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v122);
        v126 = *(v205 + 8);
        v205 += 8;
        v189 = v126;
        v126(v124, v125);
        v127 = *(v204 + 8);
        v204 += 8;
        v188 = v127;
        (v127)(v123, v202);

        v128 = v167;
        v161(v117, v157, v167);
        v129 = swift_allocObject();
        *(v129 + 16) = v116;
        v198(v129 + v197, v117, v128);
        v130 = (v129 + v120);
        v131 = v208;
        *v130 = sub_10057CCB4;
        v130[1] = v131;

        Future.addSuccess(block:)();

        v132 = swift_allocObject();
        *(v132 + 16) = sub_10057CCB4;
        *(v132 + 24) = v131;

        Future.addFailure(block:)();

        v133 = v170;
        static DispatchTime.now()();
        v134 = v171;
        + infix(_:_:)();
        v184 = *(v172 + 8);
        v135 = v173;
        (v184)(v133, v173);
        v161(v117, v157, v128);
        v136 = swift_allocObject();
        *(v136 + 16) = v116;
        v198(v136 + v197, v117, v128);
        v214 = sub_10058D4E0;
        v215 = v136;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_100006684;
        v213 = &unk_101627468;
        v137 = _Block_copy(&aBlock);

        v138 = v201;
        static DispatchQoS.unspecified.getter();
        v209 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v137);

        sub_100016590(v168, v169);
        v189(v124, v125);
        v188(v138, v202);
        (v184)(v134, v135);
        (v192)(v157, v128);
        goto LABEL_20;
      }

      sub_10058B268(v102, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v95 = swift_allocError();
      swift_willThrow();
      v97 = v93;
      v96 = type metadata accessor for SecureLocationsRelayAction.Response;
    }

    sub_10058B268(v97, v96);
    v139 = v185;
    (*(v166 + 8))(v165, v167);
    sub_10000B3A8(v139, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v80, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v140 = swift_allocObject();
    *(v140 + 16) = v207;
    aBlock = v95;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v141 = String.init<A>(describing:)();
    v143 = v142;
    *(v140 + 56) = &type metadata for String;
    *(v140 + 64) = sub_100008C00();
    *(v140 + 32) = v141;
    *(v140 + 40) = v143;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v144 = v197;
    v145 = v196;
    v146 = v198;
    (*(v197 + 104))(v196, enum case for DispatchQoS.QoSClass.default(_:), v198);
    v147 = static OS_dispatch_queue.global(qos:)();
    (*(v144 + 8))(v145, v146);
    v148 = swift_allocObject();
    v149 = v208;
    v148[2] = sub_10057CCB4;
    v148[3] = v149;
    v148[4] = v95;
    v214 = sub_10058D73C;
    v215 = v148;
    aBlock = _NSConcreteStackBlock;
    v211 = 1107296256;
    v212 = sub_100006684;
    v213 = &unk_101627378;
    v150 = _Block_copy(&aBlock);

    swift_errorRetain();
    v151 = v201;
    static DispatchQoS.unspecified.getter();
    v209 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v153 = v199;
    v152 = v200;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v150);

    sub_100016590(v168, v169);
    (*(v205 + 8))(v153, v152);
    (*(v204 + 8))(v151, v202);
LABEL_20:

    v70 = v203;
    return sub_10058B268(v70, type metadata accessor for SharedBeaconRecord);
  }

  static os_log_type_t.error.getter();
  v69 = v187;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for SPOwnerSessionError(0);
  v209 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v69 = aBlock;
  swift_storeEnumTagMultiPayload();
  v70 = v203;
  sub_100562794(v69, v67, v203, v60, v59);

  sub_100016590(v168, v169);
  v71 = v69;
LABEL_11:
  sub_10000B3A8(v71, &qword_10169F358, &qword_1013A0810);
  return sub_10058B268(v70, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10052D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v217 = a2;
  *&v218 = a3;
  v209 = type metadata accessor for DispatchQoS.QoSClass();
  v208 = *(v209 - 1);
  v4 = *(v208 + 64);
  __chkstk_darwin(v209);
  v207 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DispatchTime();
  v180 = *(v181 - 8);
  v6 = *(v180 + 64);
  v7 = __chkstk_darwin(v181);
  v178 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = &v164 - v9;
  v211 = type metadata accessor for DispatchWorkItemFlags();
  v216 = *(v211 - 8);
  v10 = *(v216 + 64);
  __chkstk_darwin(v211);
  v210 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for DispatchQoS();
  v215 = *(v213 - 8);
  v12 = *(v215 + 64);
  __chkstk_darwin(v213);
  v212 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for SecureLocationsRelayAction(0);
  v187 = *(v186 - 8);
  v14 = *(v187 + 64);
  v15 = __chkstk_darwin(v186);
  v189 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v16;
  __chkstk_darwin(v15);
  v190 = &v164 - v17;
  v191 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v18 = *(*(v191 - 8) + 64);
  v19 = __chkstk_darwin(v191);
  v182 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v192 = &v164 - v21;
  v185 = type metadata accessor for MessagingOptions(0);
  v22 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v193 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v184 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v195 = &v164 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v177 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v194 = &v164 - v34;
  __chkstk_darwin(v33);
  v183 = &v164 - v35;
  v197 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v36 = *(*(v197 - 8) + 64);
  __chkstk_darwin(v197);
  v198 = (&v164 - v37);
  v204 = type metadata accessor for SystemInfo.DeviceLockState();
  v203 = *(v204 - 8);
  v38 = *(v203 + 64);
  v39 = __chkstk_darwin(v204);
  v202 = &v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v201 = &v164 - v41;
  v42 = type metadata accessor for SharedBeaconRecord(0);
  v199 = *(v42 - 1);
  v43 = *(v199 + 8);
  v44 = __chkstk_darwin(v42);
  v214 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v200 = (&v164 - v45);
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v47 = MyAccessoryFamilyShareResponseEnvelope - 8;
  v48 = *(*(MyAccessoryFamilyShareResponseEnvelope - 8) + 64);
  v49 = __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope);
  v51 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v53 = &v164 - v52;
  v54 = v42[5];
  v196 = v30;
  v55 = *(v30 + 16);
  v55(&v164 - v52, a1 + v54, v29);
  v56 = v42[6];
  v57 = &v53[*(v47 + 28)];
  v205 = a1;
  v55(v57, a1 + v56, v29);
  sub_10058B200(v53, v51, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  sub_10053A6CC(3, 2, v51, &aBlock);
  v165 = 0;
  v164 = v31;
  v168 = v55;
  v169 = v30 + 16;
  v173 = v29;
  v174 = v53;
  v167 = aBlock;
  v166 = v221;
  v175 = v222;
  v176 = v223;
  v58 = (v205 + v42[7]);
  v172 = *v58;
  v60 = *(v58 + 1);
  v59 = *(v58 + 2);
  v171 = v60;
  v170 = v59;
  v61 = v200;
  sub_10058B200(v205, v200, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v61, v214, type metadata accessor for SharedBeaconRecord);
  v62 = (*(v199 + 80) + 24) & ~*(v199 + 80);
  v63 = swift_allocObject();
  v64 = v206;
  *(v63 + 16) = v206;
  sub_100589B28(v61, v63 + v62, type metadata accessor for SharedBeaconRecord);
  v205 = v63;
  v65 = (v63 + ((v43 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
  v67 = v217;
  v66 = v218;
  *v65 = v217;
  v65[1] = v66;

  sub_100908F24(_swiftEmptyArrayStorage);

  v200 = sub_101129A8C(&off_101608D50);
  v68 = sub_101129A8C(_swiftEmptyArrayStorage);
  v69 = v201;
  static SystemInfo.lockState.getter();
  v70 = v203;
  v71 = v202;
  v72 = v204;
  (*(v203 + 104))(v202, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v204);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v62) = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v70 + 8);
  v73(v71, v72);
  v73(v69, v72);
  v74 = v64;
  if ((v62 & 1) == 0)
  {
    v80 = v200;
    v204 = v68;
    v81 = v172;
    v82 = v171;
    v83 = v170;
    if ((sub_100540CB8(v172, v171, v170) & 1) == 0)
    {

      static os_log_type_t.error.getter();
      v106 = v174;
      v107 = v175;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_101385D80;
      *(v108 + 56) = &type metadata for String;
      *(v108 + 64) = sub_100008C00();
      *(v108 + 32) = v82;
      *(v108 + 40) = v83;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v219 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v109 = v198;
      *v198 = aBlock;
      swift_storeEnumTagMultiPayload();
      v78 = v214;
      sub_10055E93C(v109, v74, v214, v67, v66);

      sub_100016590(v107, v176);
      sub_10000B3A8(v109, &qword_10169F358, &qword_1013A0810);
      v79 = v106;
      goto LABEL_11;
    }

    v217 = *(v74 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v84 = swift_allocObject();
    v218 = xmmword_101385D80;
    *(v84 + 16) = xmmword_101385D80;
    *(v84 + 32) = v81;
    *(v84 + 40) = v82;
    *(v84 + 48) = v83;
    v85 = *(v196 + 56);
    v86 = v195;
    v87 = v173;
    v85(v195, 1, 1, v173);

    v88 = v194;
    UUID.init()();
    v89 = v193;
    v168(v193, v88, v87);
    v90 = v184;
    sub_1000D2A70(v86, v184, &qword_1016980D0, &unk_10138F3B0);
    v91 = v185;
    v92 = *(v185 + 28);
    v85(v89 + v92, 1, 1, v87);
    *(v89 + v91[5]) = v84;
    *(v89 + v91[6]) = 1;
    sub_10002311C(v90, v89 + v92, &qword_1016980D0, &unk_10138F3B0);
    v93 = v89 + v91[8];
    *v93 = 0;
    *(v93 + 8) = 1;
    *(v89 + v91[9]) = 0;
    *(v89 + v91[10]) = v80;
    *(v89 + v91[11]) = v204;
    v94 = (v89 + v91[12]);
    *v94 = 0;
    v94[1] = 0;
    *(v89 + v91[13]) = xmmword_1013B0D90;
    v95 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v96 = v190;
    sub_10058B200(v89, &v190[*(v95 + 24)], type metadata accessor for MessagingOptions);
    *v96 = v167;
    v97 = v175;
    *(v96 + 8) = v166;
    *(v96 + 16) = v97;
    v98 = v176;
    *(v96 + 24) = v176;
    *(v96 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v99 = v189;
    sub_10058B200(v96, v189, type metadata accessor for SecureLocationsRelayAction);
    v100 = (*(v187 + 80) + 24) & ~*(v187 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v217;
    sub_100589B28(v99, v101 + v100, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v97, v98);

    v102 = v192;
    v103 = v165;
    unsafeFromAsyncTask<A>(_:)();
    if (v103)
    {
      v104 = v103;

      sub_10058B268(v96, type metadata accessor for SecureLocationsRelayAction);
      v105 = v205;
    }

    else
    {
      v110 = v206;
      sub_10058B268(v96, type metadata accessor for SecureLocationsRelayAction);

      v111 = v182;
      sub_10058B200(v102, v182, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v105 = v205;
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v102, type metadata accessor for SecureLocationsRelayAction.Response);
        v113 = v196;
        v114 = *(v196 + 8);
        v115 = v173;
        v203 = v196 + 8;
        v202 = v114;
        (v114)(v194, v173);
        sub_10000B3A8(v195, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v89, type metadata accessor for MessagingOptions);
        v116 = *(v113 + 32);
        v117 = v183;
        v217 = v113 + 32;
        v209 = v116;
        v116(v183, v111, v115);
        v118 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v119 = *(v118 + 48);
        v120 = *(v118 + 52);
        swift_allocObject();
        v121 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v122 = swift_allocObject();
        *(v122 + 16) = v218;
        v123 = UUID.uuidString.getter();
        v125 = v124;
        *(v122 + 56) = &type metadata for String;
        *(v122 + 64) = sub_100008C00();
        *(v122 + 32) = v123;
        *(v122 + 40) = v125;
        os_log(_:dso:log:_:_:)();

        v126 = v110;
        *&v218 = *(v110 + 168);
        v127 = v177;
        v168(v177, v117, v115);
        v128 = (*(v113 + 80) + 24) & ~*(v113 + 80);
        v207 = *(v113 + 80);
        v201 = (v128 + v164);
        v129 = v128;
        v208 = v128;
        v130 = (v128 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
        v131 = swift_allocObject();
        *(v131 + 16) = v126;
        v209(v131 + v129, v127, v115);
        *(v131 + v130) = v121;
        v224 = sub_10058D4DC;
        v225 = v131;
        aBlock = _NSConcreteStackBlock;
        v221 = 1107296256;
        v200 = &v222;
        v222 = sub_100006684;
        v223 = &unk_1016276C0;
        v132 = _Block_copy(&aBlock);

        v204 = v121;
        v133 = v212;
        static DispatchQoS.unspecified.getter();
        v219 = _swiftEmptyArrayStorage;
        v196 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v195 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v197 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v134 = v210;
        v135 = v211;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v132);
        v136 = *(v216 + 8);
        v216 += 8;
        v199 = v136;
        v136(v134, v135);
        v137 = *(v215 + 8);
        v215 += 8;
        v198 = v137;
        v137(v133, v213);

        v138 = v173;
        v168(v127, v183, v173);
        v139 = swift_allocObject();
        *(v139 + 16) = v126;
        v209(v139 + v208, v127, v138);
        v140 = (v139 + v130);
        v141 = v205;
        *v140 = sub_10057CDA8;
        v140[1] = v141;

        Future.addSuccess(block:)();

        v142 = swift_allocObject();
        *(v142 + 16) = sub_10057CDA8;
        *(v142 + 24) = v141;

        Future.addFailure(block:)();

        v143 = v178;
        static DispatchTime.now()();
        v144 = v179;
        + infix(_:_:)();
        v194 = *(v180 + 8);
        v145 = v181;
        (v194)(v143, v181);
        v168(v127, v183, v138);
        v146 = swift_allocObject();
        *(v146 + 16) = v126;
        v209(v146 + v208, v127, v138);
        v224 = sub_10058D4E0;
        v225 = v146;
        aBlock = _NSConcreteStackBlock;
        v221 = 1107296256;
        v222 = sub_100006684;
        v223 = &unk_101627760;
        v147 = _Block_copy(&aBlock);

        v148 = v212;
        static DispatchQoS.unspecified.getter();
        v219 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v147);

        sub_100016590(v175, v176);
        v199(v134, v135);
        v198(v148, v213);
        (v194)(v144, v145);
        (v202)(v183, v138);
        goto LABEL_20;
      }

      sub_10058B268(v111, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v104 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v102, type metadata accessor for SecureLocationsRelayAction.Response);
    }

    v149 = v195;
    (*(v196 + 8))(v194, v173);
    sub_10000B3A8(v149, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v89, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v150 = swift_allocObject();
    *(v150 + 16) = v218;
    aBlock = v104;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v151 = String.init<A>(describing:)();
    v153 = v152;
    *(v150 + 56) = &type metadata for String;
    *(v150 + 64) = sub_100008C00();
    *(v150 + 32) = v151;
    *(v150 + 40) = v153;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v154 = v208;
    v155 = v207;
    v156 = v209;
    (*(v208 + 104))(v207, enum case for DispatchQoS.QoSClass.default(_:), v209);
    v157 = static OS_dispatch_queue.global(qos:)();
    (*(v154 + 8))(v155, v156);
    v158 = swift_allocObject();
    v158[2] = sub_10057CDA8;
    v158[3] = v105;
    v158[4] = v104;
    v224 = sub_10058D73C;
    v225 = v158;
    aBlock = _NSConcreteStackBlock;
    v221 = 1107296256;
    v222 = sub_100006684;
    v223 = &unk_101627670;
    v159 = _Block_copy(&aBlock);

    swift_errorRetain();
    v160 = v212;
    static DispatchQoS.unspecified.getter();
    v219 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v162 = v210;
    v161 = v211;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v159);

    sub_100016590(v175, v176);
    (*(v216 + 8))(v162, v161);
    (*(v215 + 8))(v160, v213);
LABEL_20:
    sub_10058B268(v174, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);

    v78 = v214;
    return sub_10058B268(v78, type metadata accessor for SharedBeaconRecord);
  }

  v75 = v176;

  static os_log_type_t.error.getter();
  v76 = v174;
  v77 = v198;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for SPOwnerSessionError(0);
  v219 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v77 = aBlock;
  swift_storeEnumTagMultiPayload();
  v78 = v214;
  sub_10055E93C(v77, v74, v214, v67, v66);

  sub_100016590(v175, v75);
  sub_10000B3A8(v77, &qword_10169F358, &qword_1013A0810);
  v79 = v76;
LABEL_11:
  sub_10058B268(v79, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  return sub_10058B268(v78, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10052F588()
{
  result = sub_10053A9C8(10, 1, 0, 0xE000000000000000, v45);
  if (v1)
  {
    return result;
  }

  v44 = LOBYTE(v45[0]);
  v3 = v45[2];
  v43 = v45[1];
  v4 = v45[3];
  v5 = *(v0 + 24);
  result = sub_1010A5510();
  v6 = result;
  v7 = *(result + 16);
  v8 = _swiftEmptyArrayStorage;
  v57 = v3;
  v42 = v4;
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = result + 32;
  v41 = result + 32;
  do
  {
    v11 = v8;
    v12 = (v10 + 160 * v9);
    v13 = v9;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = v12[1];
      v47 = *v12;
      v48 = v14;
      v15 = v12[2];
      v16 = v12[3];
      v17 = v12[5];
      v51 = v12[4];
      v52 = v17;
      v49 = v15;
      v50 = v16;
      v18 = v12[6];
      v19 = v12[7];
      v20 = v12[9];
      v55 = v12[8];
      v56 = v20;
      v53 = v18;
      v54 = v19;
      sub_10013CD18(&v47, v45);
      sub_10013CD18(&v47, v45);
      if (sub_10022A85C() == 2)
      {
        break;
      }

      sub_10013CDDC(&v47);
LABEL_6:
      ++v13;
      result = sub_10013CDDC(&v47);
      v12 += 10;
      if (v7 == v13)
      {
        v8 = v11;
        v3 = v57;
        goto LABEL_17;
      }
    }

    v21 = sub_10022AC4C();
    sub_10013CDDC(&v47);
    if (!v21)
    {
      goto LABEL_6;
    }

    v8 = v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    v46 = v11;
    if ((result & 1) == 0)
    {
      result = sub_101124390(0, v11[2] + 1, 1);
      v8 = v46;
    }

    v3 = v57;
    v23 = v8[2];
    v22 = v8[3];
    if (v23 >= v22 >> 1)
    {
      result = sub_101124390((v22 > 1), v23 + 1, 1);
      v8 = v46;
    }

    v9 = v13 + 1;
    v8[2] = v23 + 1;
    v24 = &v8[20 * v23];
    v25 = v48;
    v24[2] = v47;
    v24[3] = v25;
    v26 = v49;
    v27 = v50;
    v28 = v52;
    v24[6] = v51;
    v24[7] = v28;
    v24[4] = v26;
    v24[5] = v27;
    v29 = v53;
    v30 = v54;
    v31 = v56;
    v24[10] = v55;
    v24[11] = v31;
    v24[8] = v29;
    v24[9] = v30;
    v10 = v41;
    v4 = v42;
  }

  while (v7 - 1 != v13);
LABEL_17:

  v32 = v8[2];
  if (v32)
  {
    v45[0] = _swiftEmptyArrayStorage;
    sub_101124900(0, v32, 0);
    v33 = v45[0];
    v34 = v8 + 23;
    do
    {
      v35 = *(v34 - 16);
      v37 = *(v34 - 1);
      v36 = *v34;
      v45[0] = v33;
      v39 = v33[2];
      v38 = v33[3];

      if (v39 >= v38 >> 1)
      {
        sub_101124900((v38 > 1), v39 + 1, 1);
        v33 = v45[0];
      }

      v33[2] = v39 + 1;
      v40 = &v33[3 * v39];
      *(v40 + 32) = v35;
      v40[5] = v37;
      v40[6] = v36;
      v34 += 20;
      --v32;
    }

    while (v32);

    v3 = v57;
    v4 = v42;
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  sub_10057D1E0(v44, v43, v3, v4, v33, 0x404E000000000000, 0, 1, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton, 0, 0, 0);

  return sub_100016590(v3, v4);
}

void sub_10052F8CC(char *a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v44 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v44 BOOLForKey:v17];

  if (v18)
  {
    v19 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v19 - 8) + 56))(a1, 2, 2, v19);
    v20 = v44;

    return;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v44 valueForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (!*(&v46 + 1))
  {

    sub_10000B3A8(v47, &unk_1016A0B10, &qword_10139BF40);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  v23 = swift_dynamicCast();
  (*(v7 + 56))(v5, v23 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_12:
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
LABEL_13:
    v24 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v24 - 8) + 56))(a1, 1, 2, v24);
    return;
  }

  v43 = *(v7 + 32);
  v43(v16, v5, v6);
  static Date.trustedNow.getter(v14);
  sub_100003DFC(&qword_1016C9070, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {

    v36 = *(v7 + 8);
    v36(v14, v6);
    v36(v16, v6);
    goto LABEL_13;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177A560);
  (*(v7 + 16))(v11, v16, v6);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v41 = v28;
    v42 = swift_slowAlloc();
    *&v47[0] = v42;
    *v28 = 136446210;
    sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
    v40 = v27;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v39 = v26;
    v32 = *(v7 + 8);
    v32(v11, v6);
    v33 = sub_1000136BC(v29, v31, v47);

    v34 = v41;
    *(v41 + 1) = v33;
    v35 = v39;
    _os_log_impl(&_mh_execute_header, v39, v40, "Item sharing throttled. Try again after %{public}s", v34, 0xCu);
    sub_100007BAC(v42);

    v32(v14, v6);
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v11, v6);
    v37(v14, v6);
  }

  v43(a1, v16, v6);
  v38 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  (*(*(v38 - 8) + 56))(a1, 0, 2, v38);
}

void sub_10052FFA4(char *a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v44 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v44 BOOLForKey:v17];

  if (v18)
  {
    v19 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v19 - 8) + 56))(a1, 2, 2, v19);
    v20 = v44;

    return;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v44 valueForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (!*(&v46 + 1))
  {

    sub_10000B3A8(v47, &unk_1016A0B10, &qword_10139BF40);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  v23 = swift_dynamicCast();
  (*(v7 + 56))(v5, v23 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_12:
    sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
LABEL_13:
    v24 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v24 - 8) + 56))(a1, 1, 2, v24);
    return;
  }

  v43 = *(v7 + 32);
  v43(v16, v5, v6);
  static Date.trustedNow.getter(v14);
  sub_100003DFC(&qword_1016C9070, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {

    v36 = *(v7 + 8);
    v36(v14, v6);
    v36(v16, v6);
    goto LABEL_13;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177A560);
  (*(v7 + 16))(v11, v16, v6);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v41 = v28;
    v42 = swift_slowAlloc();
    *&v47[0] = v42;
    *v28 = 136446210;
    sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
    v40 = v27;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v39 = v26;
    v32 = *(v7 + 8);
    v32(v11, v6);
    v33 = sub_1000136BC(v29, v31, v47);

    v34 = v41;
    *(v41 + 1) = v33;
    v35 = v39;
    _os_log_impl(&_mh_execute_header, v39, v40, "Item sharing throttled. Try again after %{public}s", v34, 0xCu);
    sub_100007BAC(v42);

    v32(v14, v6);
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v11, v6);
    v37(v14, v6);
  }

  v43(a1, v16, v6);
  v38 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  (*(*(v38 - 8) + 56))(a1, 0, 2, v38);
}

uint64_t sub_10053067C(uint64_t a1, uint64_t a2)
{
  v169 = a2;
  v168 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v174 = *(v2 - 8);
  v3 = *(v174 + 64);
  __chkstk_darwin(v2);
  v172 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchQoS();
  v171 = *(v173 - 8);
  v5 = *(v171 + 64);
  __chkstk_darwin(v173);
  v170 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for DispatchQoS.QoSClass();
  v166 = *(v167 - 8);
  v7 = *(v166 + 64);
  __chkstk_darwin(v167);
  v165 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v198 = &v164 - v11;
  v213 = type metadata accessor for ShareRecord();
  v178 = *(v213 - 8);
  v12 = *(v178 + 64);
  v13 = __chkstk_darwin(v213);
  v191 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v164 - v15;
  v17 = sub_1000BC4D4(&qword_1016A4A30, &qword_1013B13D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v179 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v164 - v21;
  v23 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v164 - v25;
  v210 = type metadata accessor for DirectorySequence();
  v219 = *(v210 - 8);
  v27 = *(v219 + 64);
  __chkstk_darwin(v210);
  *&v207 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for URL();
  v220 = *(v216 - 8);
  v29 = v220[8];
  v30 = __chkstk_darwin(v216);
  v32 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v218 = (&v164 - v33);
  v197 = type metadata accessor for OwnedBeaconRecord();
  v181 = *(v197 - 8);
  v34 = *(v181 + 64);
  v35 = __chkstk_darwin(v197);
  v205 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v180 = &v164 - v38;
  v39 = __chkstk_darwin(v37);
  v215 = &v164 - v40;
  __chkstk_darwin(v39);
  v214 = &v164 - v41;
  v211 = type metadata accessor for DateInterval();
  v42 = *(v211 - 8);
  v43 = *(v42 + 8);
  v44 = __chkstk_darwin(v211);
  v209 = &v164 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v175 = &v164 - v47;
  v48 = __chkstk_darwin(v46);
  v201 = &v164 - v49;
  __chkstk_darwin(v48);
  v202 = &v164 - v50;
  v212 = type metadata accessor for Date();
  v183 = *(v212 - 8);
  v51 = *(v183 + 8);
  v52 = __chkstk_darwin(v212);
  v54 = (&v164 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __chkstk_darwin(v52);
  v217 = &v164 - v56;
  __chkstk_darwin(v55);
  v58 = &v164 - v57;
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v194 = v54;
    v176 = v58;
    v208 = qword_10177C378;
    os_log(_:dso:log:_:_:)();
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v59 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v60 = aBlock[0];
    v61 = v176;
    static Date.trustedNow.getter(v176);
    result = sub_101073EF8(v60);
    if ((result * 60) >> 64 != (60 * result) >> 63)
    {
      break;
    }

    v182 = v42;
    v200 = 0;
    v63 = v183 + 16;
    v64 = v217;
    v65 = v61;
    v66 = v212;
    v67 = *(v183 + 2);
    v67(v217, v65, v212);
    DateInterval.init(start:duration:)();
    result = sub_101073F30(v60);
    if ((result * 60) >> 64 != (60 * result) >> 63)
    {
      goto LABEL_56;
    }

    v164 = v2;
    v67(v64, v176, v66);
    DateInterval.init(start:duration:)();
    v68 = sub_101073F14(v60);

    if ((v68 * 60) >> 64 != (60 * v68) >> 63)
    {
      goto LABEL_57;
    }

    v67(v64, v176, v66);
    DateInterval.init(start:duration:)();
    v203 = *(v204 + 144);
    v69 = sub_100025044();
    v187 = sub_1009098A8(_swiftEmptyArrayStorage);
    v70 = v69;
    v71 = v69[2];
    v42 = &unk_10138B000;
    v190 = v63;
    v189 = v67;
    v199 = v71;
    v206 = v16;
    v184 = v22;
    if (v71)
    {
      v197 = *(v197 + 20);
      v72 = v181;
      v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v177 = v70;
      v196 = (v70 + v73);
      v195 = objc_opt_self();
      v74 = 0;
      v193 = *(v72 + 72);
      v192 = (v220 + 6);
      v185 = v220 + 4;
      *&v188 = v219 + 8;
      v186 = xmmword_10138BBE0;
      v58 = v200;
      v76 = v214;
      v75 = v215;
      v77 = v216;
      ++v220;
      do
      {
        v216 = v74;
        sub_10058B200(v196 + v193 * v74, v76, type metadata accessor for OwnedBeaconRecord);
        sub_10058B200(v76, v75, type metadata accessor for OwnedBeaconRecord);
        v92 = *(v203 + 168);
        v93 = objc_autoreleasePoolPush();
        if (qword_101694468 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v77, qword_10177A518);
        UUID.uuidString.getter();
        URL.appendingPathComponent(_:isDirectory:)();

        objc_autoreleasePoolPop(v93);
        aBlock[0] = _swiftEmptyArrayStorage;
        v222 = _swiftEmptyArrayStorage;
        v94 = [v195 defaultManager];
        v95 = v207;
        NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

        v96 = v95;
        DirectorySequence.next()();
        v97 = *v192;
        v98 = v77;
        if ((*v192)() != 1)
        {
          v219 = *v185;
          do
          {
            (v219)(v32, v26, v77);
            v99 = objc_autoreleasePoolPush();
            sub_1005FF9CC(v32, v92, aBlock, &v222);
            objc_autoreleasePoolPop(v99);
            (*v220)(v32, v77);
            DirectorySequence.next()();
          }

          while ((v97)(v26, 1, v77) != 1);
        }

        v78 = (v216 + 1);
        (*v188)(v96, v210);
        LODWORD(v219) = static os_log_type_t.debug.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v216 = static OS_os_log.default.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v79 = swift_allocObject();
        *(v79 + 16) = v186;
        v80 = aBlock[0];
        v81 = *(aBlock[0] + 16);
        *(v79 + 56) = &type metadata for Int;
        *(v79 + 64) = &protocol witness table for Int;
        *(v79 + 32) = v81;
        sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL);

        v82 = v218;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        *(v79 + 96) = &type metadata for String;
        *(v79 + 104) = sub_100008C00();
        *(v79 + 72) = v83;
        *(v79 + 80) = v85;
        v86 = v216;
        os_log(_:dso:log:_:_:)();

        v87 = v82;
        v74 = v78;
        (*v220)(v87, v98);

        v88 = v187;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v88;
        v90 = v80;
        v75 = v215;
        sub_100FFDCF0(v90, v215, isUniquelyReferenced_nonNull_native);
        sub_10058B268(v75, type metadata accessor for OwnedBeaconRecord);
        v76 = v214;
        sub_10058B268(v214, type metadata accessor for OwnedBeaconRecord);
        v187 = aBlock[0];
        v91 = v78 == v199;
        v77 = v98;
      }

      while (!v91);

      v16 = v206;
      v22 = v184;
      v2 = v217;
      v42 = &unk_10138B000;
    }

    else
    {
      v2 = v64;

      v58 = v200;
    }

    v100 = swift_allocObject();
    v101 = 0;
    v195 = v100;
    v100[2] = 0;
    v102 = *(v187 + 64);
    v177 = v187 + 64;
    v103 = 1 << *(v187 + 32);
    v104 = -1;
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    v105 = v104 & v102;
    v106 = (v103 + 63) >> 6;
    v197 = (v182 + 16);
    v196 = (v183 + 48);
    v193 = (v183 + 32);
    v199 = (v182 + 8);
    v207 = xmmword_101385D80;
    v188 = *(v42 + 190);
    v54 = v213;
    v107 = v179;
    v182 = v106;
    v218 = (v183 + 8);
    while (v105)
    {
      v26 = v101;
LABEL_31:
      *&v186 = (v105 - 1) & v105;
      v109 = __clz(__rbit64(v105)) | (v26 << 6);
      v110 = v187;
      v111 = v180;
      sub_10058B200(*(v187 + 48) + *(v181 + 72) * v109, v180, type metadata accessor for OwnedBeaconRecord);
      v112 = *(*(v110 + 56) + 8 * v109);
      v42 = &unk_1013B13D8;
      v113 = sub_1000BC4D4(&qword_1016A4A38, &unk_1013B13D8);
      v114 = *(v113 + 48);
      sub_100589B28(v111, v107, type metadata accessor for OwnedBeaconRecord);
      *(v107 + v114) = v112;
      (*(*(v113 - 8) + 56))(v107, 0, 1, v113);

      v185 = v26;
      v54 = v213;
      v2 = v217;
      v22 = v184;
LABEL_32:
      sub_1000D2AD8(v107, v22, &qword_1016A4A30, &qword_1013B13D0);
      v115 = sub_1000BC4D4(&qword_1016A4A38, &unk_1013B13D8);
      v116 = (*(*(v115 - 8) + 48))(v22, 1, v115);
      v117 = v205;
      if (v116 == 1)
      {

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v152 = v166;
        v153 = v165;
        v154 = v167;
        (*(v166 + 104))(v165, enum case for DispatchQoS.QoSClass.default(_:), v167);
        v155 = static OS_dispatch_queue.global(qos:)();
        (*(v152 + 8))(v153, v154);
        v156 = swift_allocObject();
        v157 = v169;
        v156[2] = v168;
        v156[3] = v157;
        v156[4] = v195;
        aBlock[4] = sub_10058CFC4;
        aBlock[5] = v156;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_10162A168;
        v158 = _Block_copy(aBlock);

        v159 = v170;
        static DispatchQoS.unspecified.getter();
        v222 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v160 = v172;
        v161 = v164;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v158);

        (*(v174 + 8))(v160, v161);
        (*(v171 + 8))(v159, v173);
        v162 = *v199;
        v163 = v211;
        (*v199)(v175, v211);
        v162(v201, v163);
        v162(v202, v163);
        (*v218)(v176, v212);
      }

      v32 = *&v22[*(v115 + 48)];
      sub_100589B28(v22, v205, type metadata accessor for OwnedBeaconRecord);
      v118 = *(v32 + 2);
      if (v118)
      {
        v119 = *(v204 + 320);
        v120 = (*(v178 + 80) + 32) & ~*(v178 + 80);
        v183 = v32;
        v121 = &v32[v120];
        v210 = *(v178 + 72);
        v203 = v119;
        while (1)
        {
          v219 = v118;
          sub_10058B200(v121, v16, type metadata accessor for ShareRecord);
          v220 = objc_autoreleasePoolPush();
          v126 = &v16[v54[9]];
          LODWORD(v216) = *v126;
          v127 = *(v126 + 1);
          v214 = *(v126 + 2);
          v215 = v127;
          v128 = &v16[v54[5]];
          v129 = *(v119 + 24);
          __chkstk_darwin(v220);
          *(&v164 - 4) = v119;
          *(&v164 - 24) = 5;
          *(&v164 - 2) = v128;
          v42 = v212;
          OS_dispatch_queue.sync<A>(execute:)();
          LOBYTE(v129) = sub_1010B2678(v2, 5u);
          v32 = v16;
          v130 = *v218;
          (*v218)(v2, v42);
          if (v129)
          {
            (*v197)(v209, v202, v211);
            v131 = &v32[v54[8]];
            v132 = v198;
            sub_1000D2A70(v131, v198, &unk_101696900, &unk_10138B1E0);
            if ((*v196)(v132, 1, v42) == 1)
            {
              sub_10000B3A8(v132, &unk_101696900, &unk_10138B1E0);
              v32 = v42;
              v42 = v218;
              v119 = v203;
              v133 = v128;
            }

            else
            {
              v200 = v58;
              v134 = v194;
              (*v193)(v194, v132, v42);
              v135 = v217;
              DateInterval.end.getter();
              v136 = static Date.< infix(_:_:)();
              v130(v135, v42);
              v32 = v42;
              v133 = v128;
              if (v136)
              {
                v189(v135, v134, v42);
                DateInterval.end.setter();
                LODWORD(v192) = static os_log_type_t.default.getter();
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v137 = swift_allocObject();
                *(v137 + 16) = v188;
                sub_10058B200(v206, v191, type metadata accessor for ShareRecord);
                v138 = String.init<A>(describing:)();
                v140 = v139;
                *(v137 + 56) = &type metadata for String;
                v141 = sub_100008C00();
                *(v137 + 64) = v141;
                *(v137 + 32) = v138;
                *(v137 + 40) = v140;
                v32 = v212;
                sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval);
                v142 = dispatch thunk of CustomStringConvertible.description.getter();
                *(v137 + 96) = &type metadata for String;
                *(v137 + 104) = v141;
                *(v137 + 72) = v142;
                *(v137 + 80) = v143;
                os_log(_:dso:log:_:_:)();
              }

              v42 = v218;
              v130(v134, v32);
              v58 = v200;
              v119 = v203;
            }

            v2 = v217;
            static Date.trustedNow.getter(v217);
            sub_1010B1D04(v133, v2, 5);
            v130(v2, v32);
            v144 = v209;
            sub_100564334(v205, v209, v201, v145, v216, v215, v214);
            if (!v58)
            {
              (*v199)(v144, v211);
              v16 = v206;
              v54 = v213;
              goto LABEL_37;
            }

            v32 = static os_log_type_t.error.getter();
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v146 = swift_allocObject();
            *(v146 + 16) = v207;
            aBlock[0] = v58;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v147 = String.init<A>(describing:)();
            v42 = v58;
            v148 = v144;
            v150 = v149;
            *(v146 + 56) = &type metadata for String;
            *(v146 + 64) = sub_100008C00();
            *(v146 + 32) = v147;
            *(v146 + 40) = v150;
            os_log(_:dso:log:_:_:)();

            sub_1010B22E4(v133, 5);
            (*v199)(v148, v211);
            if (*(v195 + 2))
            {
            }

            else
            {
              *(v195 + 2) = v42;
            }

            v58 = 0;
            v54 = v213;
            v16 = v206;
          }

          else
          {
            static os_log_type_t.default.getter();
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v122 = swift_allocObject();
            *(v122 + 16) = v207;
            v123 = UUID.uuidString.getter();
            v125 = v124;
            *(v122 + 56) = &type metadata for String;
            *(v122 + 64) = sub_100008C00();
            *(v122 + 32) = v123;
            *(v122 + 40) = v125;
            v54 = v213;
            os_log(_:dso:log:_:_:)();

            v16 = v32;
          }

          v2 = v217;
LABEL_37:
          objc_autoreleasePoolPop(v220);
          sub_10058B268(v16, type metadata accessor for ShareRecord);
          v121 += v210;
          v118 = v219 - 1;
          if (v219 == 1)
          {

            sub_10058B268(v205, type metadata accessor for OwnedBeaconRecord);
            v101 = v185;
            v107 = v179;
            goto LABEL_22;
          }
        }
      }

      sub_10058B268(v117, type metadata accessor for OwnedBeaconRecord);

      v101 = v185;
LABEL_22:
      v22 = v184;
      v106 = v182;
      v105 = v186;
    }

    if (v106 <= v101 + 1)
    {
      v108 = v101 + 1;
    }

    else
    {
      v108 = v106;
    }

    while (1)
    {
      v26 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v26 >= v106)
      {
        v185 = (v108 - 1);
        v151 = sub_1000BC4D4(&qword_1016A4A38, &unk_1013B13D8);
        (*(*(v151 - 8) + 56))(v107, 1, 1, v151);
        *&v186 = 0;
        goto LABEL_32;
      }

      v105 = *(v177 + 8 * v26);
      v101 = (v101 + 1);
      if (v105)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1005322C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF10);
  sub_1000076D4(v0, qword_10177AF10);
  return Logger.init(subsystem:category:)();
}

void *sub_100532344()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for CryptoKeyStreamInspector(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v1 = sub_1008011A0(v6);

    v7 = *(v2 + 272);
    *(v2 + 272) = v1;
  }

  return v1;
}

double sub_1005323CC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_10057A1A4();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = 32;
    while (1)
    {
      v7 = *&v4[v6 + 16];
      v21[0] = *&v4[v6];
      v21[1] = v7;
      v8 = *&v4[v6 + 32];
      v9 = *&v4[v6 + 48];
      v10 = *&v4[v6 + 80];
      v21[4] = *&v4[v6 + 64];
      v21[5] = v10;
      v21[2] = v8;
      v21[3] = v9;
      v11 = *&v4[v6 + 96];
      v12 = *&v4[v6 + 112];
      v13 = *&v4[v6 + 144];
      v22 = *&v4[v6 + 128];
      v23 = v13;
      v21[6] = v11;
      v21[7] = v12;
      memmove(__dst, &v4[v6], 0xA0uLL);
      SharingCircleWildAdvertisementKey.init(key:)(__dst);
      if (BYTE3(v22))
      {
        break;
      }

      v6 += 160;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    sub_10013CD18(v21, &v20);

    v31 = __dst[6];
    v32 = __dst[7];
    v33 = __dst[8];
    v34 = __dst[9];
    v27 = __dst[2];
    v28 = __dst[3];
    v29 = __dst[4];
    v30 = __dst[5];
    v25 = __dst[0];
    v26 = __dst[1];
  }

  else
  {
LABEL_5:

    sub_10024ECB0(&v25);
  }

  v14 = v32;
  a1[6] = v31;
  a1[7] = v14;
  v15 = v34;
  a1[8] = v33;
  a1[9] = v15;
  v16 = v28;
  a1[2] = v27;
  a1[3] = v16;
  v17 = v30;
  a1[4] = v29;
  a1[5] = v17;
  result = *&v25;
  v19 = v26;
  *a1 = v25;
  a1[1] = v19;
  return result;
}

uint64_t sub_1005324E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005288AC(a1);
  }

  return result;
}

uint64_t sub_100532548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005325E8, a4, 0);
}

uint64_t sub_1005325E8()
{
  v1 = *(*(v0 + 16) + 136);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1005326A0, 0, 0);
}

uint64_t sub_1005326A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_1008CE048(0, 0, v2, &unk_1013B1400, v5);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005327C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = sub_1000BC4D4(&qword_101698DE0, &unk_1013EED90);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101698DE8, &qword_1013909C0);
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_101698DF0, &qword_1013909C8);
  v5[12] = v13;
  v14 = *(v13 - 8);
  v5[13] = v14;
  v15 = *(v14 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100532970, a4, 0);
}

uint64_t sub_100532970()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  type metadata accessor for Transaction();
  (*(v5 + 104))(v2, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  (*(v5 + 16))(v3, v2, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v5 + 8))(v2, v4);

  return _swift_task_switch(sub_100532A90, 0, 0);
}

uint64_t sub_100532A90()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100532B6C;
  v7 = v0[14];
  v8 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v8);
}

uint64_t sub_100532B6C()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_100532C68, 0, 0);
}

uint64_t sub_100532C68()
{
  if (v0[2])
  {
    v1 = v0[4];

    v2 = async function pointer to unsafeBlocking<A>(_:)[1];

    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_100532DB4;
    v4 = v0[4];

    return unsafeBlocking<A>(_:)(v3, sub_10058D090, v4, &type metadata for () + 8);
  }

  else
  {
    v5 = v0[11];
    v7 = v0[7];
    v6 = v0[8];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100532DB4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100532ECC, 0, 0);
}

uint64_t sub_100532ECC()
{
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_100532B6C;
  v3 = v0[14];
  v4 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v4);
}

uint64_t sub_100532FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t *a8, void (**a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = swift_beginAccess();
  if ((*(a12 + 80) & 1) == 0)
  {
    sub_10058BB74(a12 + 64, v16);
    sub_10108AD20(a6, a7, a8, a9, a10, a11);
    return sub_10058BBD0(v16);
  }

  return result;
}

uint64_t sub_100533090(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  sub_10058BB20();
  v4 = Set.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  v7 = *(a2 + 256);
  return PassthroughSubject.send(_:)();
}

uint64_t sub_1005331A4(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = Array.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  v7 = *(a2 + 296);
  return CurrentValueSubject.send(_:)();
}

uint64_t sub_100533364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  type metadata accessor for UUID();
  sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1005334D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = swift_beginAccess();
  if (*(a12 + 96))
  {
    sub_10058B938(a12 + 88, v16);
    sub_10107E618(a6, a7, a8, a9, a11);
    return sub_10058B994(v16);
  }

  return result;
}

uint64_t sub_100533570(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = Array.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  v7 = *(a2 + 328);
  return PassthroughSubject.send(_:)();
}

uint64_t sub_100533694@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v3 + 16);
      v8 = (v3 + 32 + 160 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          return result;
        }

        v10 = v8[1];
        v28 = *v8;
        v29 = v10;
        v11 = v8[2];
        v12 = v8[3];
        v13 = v8[5];
        v32 = v8[4];
        v33 = v13;
        v30 = v11;
        v31 = v12;
        v14 = v8[6];
        v15 = v8[7];
        v16 = v8[9];
        v36 = v8[8];
        v37 = v16;
        v34 = v14;
        v35 = v15;
        v5 = v9 + 1;
        if (BYTE3(v36))
        {
          break;
        }

        v8 += 10;
        ++v9;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      sub_10013CD18(&v28, &v27);
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v6;
      if ((result & 1) == 0)
      {
        result = sub_101124390(0, v6[2] + 1, 1);
        v6 = v38;
      }

      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_101124390((v17 > 1), v18 + 1, 1);
        v6 = v38;
      }

      v6[2] = v18 + 1;
      v19 = &v6[20 * v18];
      v20 = v29;
      v19[2] = v28;
      v19[3] = v20;
      v21 = v30;
      v22 = v31;
      v23 = v33;
      v19[6] = v32;
      v19[7] = v23;
      v19[4] = v21;
      v19[5] = v22;
      v24 = v34;
      v25 = v35;
      v26 = v37;
      v19[10] = v36;
      v19[11] = v26;
      v19[8] = v24;
      v19[9] = v25;
    }

    while (v4 - 1 != v9);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *a2 = v6;
  return result;
}

uint64_t sub_100533818@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v11 = a2;
    sub_101124900(0, v3, 0);
    v4 = (v2 + 184);
    do
    {
      v5 = *(v4 - 16);
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v9 >= v8 >> 1)
      {
        result = sub_101124900((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[3 * v9];
      *(v10 + 32) = v5;
      v10[5] = v7;
      v10[6] = v6;
      v4 += 20;
      --v3;
    }

    while (v3);
    a2 = v11;
  }

  *a2 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100533900(uint64_t a1)
{
  if (!*(*a1 + 16))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    static os_log_type_t.info.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  sub_1005323CC(v2);

  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v3 = v2[0];
  v4 = v2[1];
  if (sub_10058B134(&v3) == 1)
  {
LABEL_4:
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  v13[6] = v9;
  v13[7] = v10;
  v13[8] = v11;
  v13[9] = v12;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[0] = v3;
  v13[1] = v4;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return sub_10000B3A8(v2, &qword_1016B1750, &qword_1013B1358);
  }

  sub_100533B34(v13);
  sub_10000B3A8(v2, &qword_1016B1750, &qword_1013B1358);
}

uint64_t sub_100533B34(Swift::String *a1)
{
  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v26 = 60;
  v27 = 0xE100000000000000;
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v5 = a1[9];
  v24 = a1[8];
  v25 = v5;
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  v7 = a1[5];
  v20 = a1[4];
  v21 = v7;
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  sub_10058ADE8();
  v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  String.append(_:)(a1[6]);
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = 60;
  *(v3 + 40) = 0xE100000000000000;
  os_log(_:dso:log:_:_:)();

  v12 = *(v1 + 200);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10058B92C;
  *(v13 + 24) = v1;
  v18._countAndFlagsBits = sub_10040B9F8;
  v18._object = v13;
  v16._countAndFlagsBits = _NSConcreteStackBlock;
  v16._object = 1107296256;
  v17._countAndFlagsBits = sub_10013FE14;
  v17._object = &unk_1016296F0;
  v14 = _Block_copy(&v16);

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100533DBC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = type metadata accessor for SharedBeaconRecord(0);
    sub_100533E34(a1 + *(v3 + 20));
    sub_1005340B4(0, 0);
  }

  return result;
}

uint64_t sub_100533E34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[25];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  v15 = [objc_opt_self() standardUserDefaults];
  v16 = v2[4];
  v17 = sub_10057A1A4();
  v18 = v2[2];
  *&v20[-32] = __chkstk_darwin(v17);
  *&v20[-24] = v15;
  *&v20[-16] = a1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

void sub_1005340B4(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v508 = a2;
  v518 = a1;
  v528 = type metadata accessor for FamilyCryptoKeysV2();
  v527 = *(v528 - 8);
  v4 = *(v527 + 64);
  v5 = __chkstk_darwin(v528);
  v452 = &v423 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v451 = &v423 - v7;
  MyAccessoryKeyEnvelope = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0);
  v8 = *(*(MyAccessoryKeyEnvelope - 8) + 64);
  v9 = __chkstk_darwin(MyAccessoryKeyEnvelope);
  v477 = &v423 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v501 = &v423 - v11;
  v445 = type metadata accessor for DispatchQoS.QoSClass();
  v514 = *(v445 - 8);
  v12 = *(v514 + 8);
  __chkstk_darwin(v445);
  v444 = &v423 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = type metadata accessor for DispatchWorkItemFlags();
  v513 = *(v470 - 8);
  v14 = *(v513 + 64);
  __chkstk_darwin(v470);
  v469 = &v423 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = type metadata accessor for DispatchQoS();
  v510 = *(v468 - 8);
  v16 = v510[8];
  __chkstk_darwin(v468);
  v467 = &v423 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = type metadata accessor for DispatchTime();
  v509 = *(v447 - 8);
  v18 = *(v509 + 64);
  v19 = __chkstk_darwin(v447);
  v438 = &v423 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v446 = &v423 - v21;
  v471 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v22 = *(*(v471 - 8) + 64);
  v23 = __chkstk_darwin(v471);
  v453 = (&v423 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v474 = (&v423 - v26);
  v27 = __chkstk_darwin(v25);
  v441 = (&v423 - v28);
  __chkstk_darwin(v27);
  v449 = (&v423 - v29);
  v489 = type metadata accessor for SystemInfo.DeviceLockState();
  v507 = *(v489 - 8);
  v30 = *(v507 + 64);
  v31 = __chkstk_darwin(v489);
  v488 = &v423 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v487 = &v423 - v33;
  v34 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v505 = &v423 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v486 = &v423 - v38;
  v529 = type metadata accessor for TimeBasedKey();
  v496 = *(v529 - 8);
  v39 = *(v496 + 64);
  v40 = __chkstk_darwin(v529);
  v526 = &v423 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = (&v423 - v43);
  __chkstk_darwin(v42);
  v521 = &v423 - v45;
  v525 = type metadata accessor for FamilyCryptoKeysV1();
  v520 = *(v525 - 8);
  v46 = *(v520 + 64);
  v47 = __chkstk_darwin(v525);
  v524 = &v423 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v522 = &v423 - v49;
  v455 = type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0);
  v50 = *(*(v455 - 8) + 64);
  v51 = __chkstk_darwin(v455);
  v454 = &v423 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v483 = &v423 - v53;
  v54 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v57 = &v423 - v56;
  v512 = type metadata accessor for SharedBeaconRecord(0);
  v506 = *(v512 - 8);
  v58 = v506[8];
  __chkstk_darwin(v512);
  v511 = &v423 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for UUID();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  v63 = __chkstk_darwin(v60);
  v443 = &v423 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v63);
  v464 = &v423 - v66;
  v67 = __chkstk_darwin(v65);
  v503 = &v423 - v68;
  v69 = __chkstk_darwin(v67);
  v475 = &v423 - v70;
  v71 = __chkstk_darwin(v69);
  v502 = &v423 - v72;
  v73 = __chkstk_darwin(v71);
  v448 = &v423 - v74;
  v75 = __chkstk_darwin(v73);
  v440 = &v423 - v76;
  v77 = __chkstk_darwin(v75);
  v442 = &v423 - v78;
  v79 = __chkstk_darwin(v77);
  v485 = &v423 - v80;
  v81 = __chkstk_darwin(v79);
  v450 = (&v423 - v82);
  v83 = __chkstk_darwin(v81);
  v484 = &v423 - v84;
  v500 = v85;
  __chkstk_darwin(v83);
  v519 = (&v423 - v86);
  v87 = type metadata accessor for DispatchPredicate();
  v88 = *(v87 - 8);
  v89 = v88[8];
  __chkstk_darwin(v87);
  v91 = (&v423 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = *(v2 + 200);
  *v91 = v92;
  v93 = v88[13];
  v492 = v88 + 13;
  v491 = v93;
  v93(v91, enum case for DispatchPredicate.onQueue(_:), v87);
  v94 = v92;
  LOBYTE(v92) = _dispatchPreconditionTest(_:)();
  v95 = v88[1];
  v493 = v91;
  v495 = v87;
  v494 = v88 + 1;
  v490 = v95;
  v95(v91, v87);
  if (v92)
  {
    sub_1005323CC(v542);
    v549 = v542[6];
    v550 = v542[7];
    v551 = v542[8];
    v552 = v542[9];
    v545 = v542[2];
    v546 = v542[3];
    v547 = v542[4];
    v548 = v542[5];
    v543 = v542[0];
    v544 = v542[1];
    if (sub_10058B134(&v543) == 1)
    {
      if (v518)
      {
        v518();
      }

      return;
    }

    v559 = v549;
    v560 = v550;
    v561 = v551;
    v562 = v552;
    v555 = v545;
    v556 = v546;
    v557 = v547;
    v558 = v548;
    v553 = v543;
    v554 = v544;
    sub_1005396C4(&v553);
    v97 = v96;
    v473 = *(v96 + 16);
    if (!v473)
    {
LABEL_75:
      sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);

      return;
    }

    v98 = 0;
    v523 = 0;
    v517 = v61 + 16;
    v481 = (v506 + 6);
    v497 = (v61 + 32);
    v463 = (v61 + 56);
    v462 = enum case for DispatchPredicate.notOnQueue(_:);
    v461 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v459 = (v507 + 8);
    v460 = (v507 + 104);
    v426 = (v514 + 104);
    v425 = enum case for DispatchQoS.QoSClass.default(_:);
    v436 = &v531;
    v429 = (v510 + 1);
    v430 = (v513 + 8);
    v480 = (v61 + 8);
    v423 = v500 + 7;
    v424 = (v514 + 8);
    v427 = (v509 + 8);
    v476 = xmmword_10138BBE0;
    v439 = xmmword_101385D80;
    v457 = v44;
    v458 = v57;
    v479 = v96;
    v515 = v60;
    v516 = v3;
    v456 = v61;
    while (1)
    {
      if (v98 >= *(v97 + 16))
      {
        __break(1u);
        break;
      }

      v101 = *(v61 + 80);
      v102 = v97 + ((v101 + 32) & ~v101) + *(v61 + 72) * v98;
      v103 = *(v61 + 16);
      v104 = v519;
      v514 = v103;
      (v103)(v519, v102, v60);
      v105 = *(v3 + 144);
      sub_100AA5198(v104, v57);
      if ((*v481)(v57, 1, v512) == 1)
      {

        sub_10000B3A8(v57, &unk_101698C30, &unk_101392630);
        sub_100538D54(v519, &v553);
        v396 = sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
        if (v518)
        {
          (v518)(v396);
        }

        goto LABEL_106;
      }

      v510 = v105;
      v504 = v98;
      v106 = v511;
      sub_100589B28(v57, v511, type metadata accessor for SharedBeaconRecord);
      LODWORD(v506) = static os_log_type_t.info.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v509 = v101;
      v507 = ~v101;
      v513 = qword_10177C378;
      v498 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v107 = swift_allocObject();
      *(v107 + 16) = v476;
      v108 = v512;
      v472 = *(v512 + 20);
      v109 = UUID.uuidString.getter();
      v111 = v110;
      *(v107 + 56) = &type metadata for String;
      v112 = sub_100008C00();
      *(v107 + 64) = v112;
      *(v107 + 32) = v109;
      *(v107 + 40) = v111;
      v540 = 60;
      v541 = 0xE100000000000000;
      v536 = v559;
      v537 = v560;
      v538 = v561;
      v539 = v562;
      v532 = v555;
      v533 = v556;
      v534 = v557;
      v535 = v558;
      v530 = v553;
      v531 = v554;
      sub_10058ADE8();
      v113._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v113);

      v114._countAndFlagsBits = 8250;
      v114._object = 0xE200000000000000;
      String.append(_:)(v114);
      String.append(_:)(v559);
      v115._countAndFlagsBits = 62;
      v115._object = 0xE100000000000000;
      String.append(_:)(v115);
      v116 = v540;
      v117 = v541;
      *(v107 + 96) = &type metadata for String;
      *(v107 + 104) = v112;
      v499 = v112;
      *(v107 + 72) = v116;
      *(v107 + 80) = v117;
      os_log(_:dso:log:_:_:)();

      v118 = *(v106 + *(v108 + 48));
      v119 = v106;
      if (*(v106 + *(v108 + 44)) == -1)
      {
        v150 = v523;
        if (v118 != -1)
        {
LABEL_83:

          sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
          static os_log_type_t.error.getter();
          v397 = swift_allocObject();
          *(v397 + 16) = v439;
          v398 = UUID.uuidString.getter();
          v399 = v499;
          *(v397 + 56) = &type metadata for String;
          *(v397 + 64) = v399;
          *(v397 + 32) = v398;
          *(v397 + 40) = v400;
          os_log(_:dso:log:_:_:)();

          if (v518)
          {
            (v518)(v401);
          }

          sub_10058B268(v119, type metadata accessor for SharedBeaconRecord);
          (*v480)(v519, v515);
          return;
        }

        v151 = *(v510 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v152 = v106;
        v153 = sub_100731528(v106, 0);
        v155 = v154;
        v157 = v156;

        if (v157 != 1)
        {
          v402 = v152;
          v60 = v515;
          if (v157 == 255)
          {

            sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
          }

          else
          {
            sub_10058B14C(v153, v155, v157);
            sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
          }

          static os_log_type_t.error.getter();
          v412 = swift_allocObject();
          *(v412 + 16) = v439;
          v391 = v402;
          v413 = UUID.uuidString.getter();
          v414 = v499;
          *(v412 + 56) = &type metadata for String;
          *(v412 + 64) = v414;
          *(v412 + 32) = v413;
          *(v412 + 40) = v415;
LABEL_98:
          os_log(_:dso:log:_:_:)();

          if (v518)
          {
            (v518)(v416);
          }

          v417 = v391;
          goto LABEL_105;
        }

        v60 = v515;
        v158 = v514;
        (v514)(v484, v519, v515);
        v159 = v153[2];
        if (v159)
        {
          v510 = v155;
          v523 = v150;
          *&v530 = _swiftEmptyArrayStorage;
          v160 = v153;
          sub_101124C98(0, v159, 0);
          v161 = v530;
          v162 = *(v496 + 80);
          v506 = v160;
          v163 = v160 + ((v162 + 32) & ~v162);
          v164 = *(v496 + 72);
          do
          {
            v165 = v521;
            sub_10058B200(v163, v521, type metadata accessor for TimeBasedKey);
            sub_100589B28(v165, v44, type metadata accessor for TimeBasedKey);
            v166 = v524;
            *v524 = *v44;
            v167 = v529;
            v168 = *(v529 + 20);
            v169 = *(v525 + 20);
            v170 = type metadata accessor for DateInterval();
            (*(*(v170 - 8) + 16))(&v166[v169], v44 + v168, v170);
            v171 = (v44 + *(v167 + 24));
            v172 = v171[5];
            if (v172 >> 60 == 15)
            {
              v173 = v171[2];
              v174 = v171[3];
              sub_100017D5C(v173, v174);
              sub_10058B268(v44, type metadata accessor for TimeBasedKey);
            }

            else
            {
              v173 = v171[4];
              sub_100017D5C(v173, v171[5]);
              sub_10058B268(v44, type metadata accessor for TimeBasedKey);
              v174 = v172 | 0x2000000000000000;
            }

            v175 = v524;
            v176 = &v524[*(v525 + 24)];
            *v176 = v173;
            v176[1] = v174;
            v177 = v522;
            sub_100589B28(v175, v522, type metadata accessor for FamilyCryptoKeysV1);
            *&v530 = v161;
            v179 = v161[2];
            v178 = v161[3];
            if (v179 >= v178 >> 1)
            {
              sub_101124C98(v178 > 1, v179 + 1, 1);
              v177 = v522;
              v161 = v530;
            }

            v161[2] = v179 + 1;
            sub_100589B28(v177, v161 + ((*(v520 + 80) + 32) & ~*(v520 + 80)) + *(v520 + 72) * v179, type metadata accessor for FamilyCryptoKeysV1);
            v163 += v164;
            --v159;
          }

          while (v159);
          sub_10058B14C(v506, v510, 1u);
          v60 = v515;
          v158 = v514;
          v150 = v523;
        }

        else
        {
          sub_10058B14C(v153, v155, 1u);
          v161 = _swiftEmptyArrayStorage;
        }

        v264 = *v497;
        v265 = v483;
        (*v497)(v483, v484, v60);
        *(v265 + *(v455 + 20)) = v161;
        v266 = v265;
        v267 = v454;
        sub_10058B200(v266, v454, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
        sub_10053AE6C(0, 1, v267, &v530);
        v268 = v509;
        if (v150)
        {

          sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
          static os_log_type_t.error.getter();
          v418 = swift_allocObject();
          *(v418 + 16) = v439;
          swift_getErrorValue();
          v419 = Error.localizedDescription.getter();
          v420 = v499;
          *(v418 + 56) = &type metadata for String;
          *(v418 + 64) = v420;
          *(v418 + 32) = v419;
          *(v418 + 40) = v421;
          os_log(_:dso:log:_:_:)();

          if (v518)
          {
            (v518)(v422);
          }

          v410 = type metadata accessor for CompanionSelfBeaconingKeyEnvelope;
          v411 = v483;
LABEL_104:
          sub_10058B268(v411, v410);
          v417 = v511;
LABEL_105:
          sub_10058B268(v417, type metadata accessor for SharedBeaconRecord);
LABEL_106:
          (*v480)(v519, v60);
          return;
        }

        v523 = 0;
        LODWORD(v465) = v530;
        v437 = *(&v530 + 1);
        v506 = *(&v531 + 1);
        v482 = v531;
        LODWORD(v435) = BYTE8(v561);
        v433 = *(&v562 + 1);
        v434 = v562;
        (*v463)(v486, 1, 1, v60);
        v269 = swift_allocObject();
        swift_weakInit();
        v270 = v450;
        v158(v450, v519, v60);
        v158(v485, v270, v60);
        v271 = (v268 + 24) & v507;
        v431 = v271 + v500;
        v272 = v60;
        v273 = (v271 + v500 + 7) & 0xFFFFFFFFFFFFFFF8;
        v274 = swift_allocObject();
        *(v274 + 16) = v269;
        v432 = v271;
        v466 = v264;
        (v264)(v274 + v271, v270, v272);
        v275 = v274 + v273;
        v276 = v558;
        *(v275 + 64) = v557;
        *(v275 + 80) = v276;
        v277 = v556;
        *(v275 + 32) = v555;
        *(v275 + 48) = v277;
        v278 = v562;
        *(v275 + 128) = v561;
        *(v275 + 144) = v278;
        v279 = v560;
        *(v275 + 96) = v559;
        *(v275 + 112) = v279;
        v280 = v554;
        *v275 = v553;
        *(v275 + 16) = v280;
        v472 = v274;
        v281 = (v274 + ((v273 + 167) & 0xFFFFFFFFFFFFFFF8));
        v282 = v508;
        *v281 = v518;
        v281[1] = v282;
        v283 = *(v516 + 168);
        v284 = v493;
        *v493 = v283;
        v285 = v495;
        v491(v284, v462, v495);
        sub_1000D2A70(v542, &v530, &qword_1016B1750, &qword_1013B1358);
        sub_100012908(v518);
        v510 = v269;

        v286 = v283;
        LOBYTE(v283) = _dispatchPreconditionTest(_:)();
        v490(v284, v285);
        if ((v283 & 1) == 0)
        {
          goto LABEL_111;
        }

        v287 = v487;
        static SystemInfo.lockState.getter();
        v288 = v488;
        v289 = v489;
        (*v460)(v488, v461, v489);
        sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
        v290 = dispatch thunk of static Equatable.== infix(_:_:)();
        v291 = *v459;
        (*v459)(v288, v289);
        v291(v287, v289);
        if (v290)
        {
          static os_log_type_t.error.getter();
          os_log(_:dso:log:_:_:)();
          type metadata accessor for SPOwnerSessionError(0);
          v540 = 5;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v292 = v449;
          *v449 = v530;
          swift_storeEnumTagMultiPayload();
          v293 = v441;
          sub_1000D2A70(v292, v441, &qword_10169F358, &qword_1013A0810);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v294 = *v293;
            static os_log_type_t.info.getter();
            v295 = swift_allocObject();
            *(v295 + 16) = v439;
            swift_getErrorValue();
            v296 = Error.localizedDescription.getter();
            v297 = v499;
            *(v295 + 56) = &type metadata for String;
            *(v295 + 64) = v297;
            *(v295 + 32) = v296;
            *(v295 + 40) = v298;
            os_log(_:dso:log:_:_:)();

            v60 = v515;
            v61 = v456;
            v44 = v457;
            v238 = v504;
            v300 = v482;
          }

          else
          {
            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            v61 = v456;
            v351 = v523;
            if (Strong)
            {
              v352 = *(Strong + 200);

              __chkstk_darwin(v353);
              sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
              OS_dispatch_queue.sync<A>(execute:)();
              v523 = v351;
              v293 = v441;
            }

            v60 = v515;
            v44 = v457;
            v238 = v504;
            v299 = sub_10000B3A8(v293, &qword_10169F358, &qword_1013A0810);
            v300 = v482;
          }

          v354 = v486;
          v355 = v506;
          if (v518)
          {
            (v518)(v299);
          }

          sub_100016590(v300, v355);

          sub_10000B3A8(v449, &qword_10169F358, &qword_1013A0810);
          sub_10000B3A8(v354, &qword_1016980D0, &unk_10138F3B0);
          sub_10058B268(v483, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
          sub_10058B268(v511, type metadata accessor for SharedBeaconRecord);
          v99 = *v480;
          (*v480)(v519, v60);
          v97 = v479;
        }

        else
        {
          v428 = v286;
          v301 = v516;
          v302 = *(v516 + 32);
          v303 = v440;
          v304 = v523;
          sub_100543BF0(v465, v437, v482, v506, v434, v433, 0, v440, v486, 0, 1, 0);
          v523 = v304;
          if (v304)
          {
            v305 = v304;
            static os_log_type_t.error.getter();
            v306 = swift_allocObject();
            *(v306 + 16) = v439;
            *&v530 = v305;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v307 = String.init<A>(describing:)();
            v308 = v499;
            *(v306 + 56) = &type metadata for String;
            *(v306 + 64) = v308;
            *(v306 + 32) = v307;
            *(v306 + 40) = v309;
            os_log(_:dso:log:_:_:)();

            sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
            v311 = v444;
            v310 = v445;
            (*v426)(v444, v425, v445);
            v312 = static OS_dispatch_queue.global(qos:)();
            (*v424)(v311, v310);
            v313 = swift_allocObject();
            v314 = v472;
            v313[2] = sub_10058B160;
            v313[3] = v314;
            v313[4] = v305;
            *&v532 = sub_10058D73C;
            *(&v532 + 1) = v313;
            *&v530 = _NSConcreteStackBlock;
            *(&v530 + 1) = 1107296256;
            *&v531 = sub_100006684;
            *(&v531 + 1) = &unk_1016293A8;
            v315 = _Block_copy(&v530);

            swift_errorRetain();
            v316 = v467;
            static DispatchQoS.unspecified.getter();
            v540 = _swiftEmptyArrayStorage;
            sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v318 = v469;
            v317 = v470;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            sub_100016590(v482, v506);
            _Block_release(v315);

            (*v430)(v318, v317);
            (*v429)(v316, v468);
            sub_10000B3A8(v486, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v483, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
            sub_10058B268(v511, type metadata accessor for SharedBeaconRecord);
            v99 = *v480;
            v60 = v515;
            (*v480)(v519, v515);

            v523 = 0;
          }

          else
          {
            v356 = v442;
            v357 = v515;
            v358 = v466;
            v466(v442, v303, v515);
            v359 = v358;
            v360 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
            v361 = *(v360 + 48);
            v362 = *(v360 + 52);
            swift_allocObject();
            v513 = Future.init()();
            v363 = v448;
            v364 = v356;
            v365 = v301;
            v366 = v514;
            (v514)(v448, v364, v357);
            v367 = swift_allocObject();
            *(v367 + 16) = v365;
            v359(v367 + v432, v363, v357);
            v368 = (v367 + v273);
            v369 = v363;
            v370 = v472;
            *v368 = sub_10058B160;
            v368[1] = v370;

            Future.addSuccess(block:)();

            v371 = swift_allocObject();
            *(v371 + 16) = sub_10058B160;
            *(v371 + 24) = v370;

            Future.addFailure(block:)();

            v366(v363, v442, v357);
            v372 = v365;
            v373 = (v509 + 16) & v507;
            v374 = (v423 + v373) & 0xFFFFFFFFFFFFFFF8;
            v375 = swift_allocObject();
            v466(v375 + v373, v369, v357);
            *(v375 + v374) = v372;
            *(v375 + ((v374 + 15) & 0xFFFFFFFFFFFFFFF8)) = v513;
            v376 = swift_allocObject();
            *(v376 + 16) = sub_10058D4E8;
            *(v376 + 24) = v375;
            v507 = v375;
            *&v532 = sub_10040B9F8;
            *(&v532 + 1) = v376;
            *&v530 = _NSConcreteStackBlock;
            *(&v530 + 1) = 1107296256;
            *&v531 = sub_10013FE14;
            *(&v531 + 1) = &unk_101629470;
            v377 = _Block_copy(&v530);

            dispatch_sync(v428, v377);
            _Block_release(v377);
            LOBYTE(v377) = swift_isEscapingClosureAtFileLocation();

            if (v377)
            {
              goto LABEL_113;
            }

            v378 = v438;
            static DispatchTime.now()();
            + infix(_:_:)();
            v499 = *v427;
            (v499)(v378, v447);
            v379 = v448;
            (v514)(v448, v442, v357);
            v380 = swift_allocObject();
            *(v380 + 16) = v372;
            v466(v380 + v432, v379, v357);
            *&v532 = sub_10058D4EC;
            *(&v532 + 1) = v380;
            *&v530 = _NSConcreteStackBlock;
            *(&v530 + 1) = 1107296256;
            *&v531 = sub_100006684;
            *(&v531 + 1) = &unk_1016294C0;
            v381 = _Block_copy(&v530);

            v382 = v467;
            static DispatchQoS.unspecified.getter();
            v540 = _swiftEmptyArrayStorage;
            sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v384 = v469;
            v383 = v470;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v385 = v446;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            sub_100016590(v482, v506);
            _Block_release(v381);

            (*v430)(v384, v383);
            (*v429)(v382, v468);
            (v499)(v385, v447);
            v99 = *v480;
            v60 = v515;
            (*v480)(v442, v515);
            sub_10000B3A8(v486, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v483, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
            sub_10058B268(v511, type metadata accessor for SharedBeaconRecord);
            v99(v519, v60);
          }

          v61 = v456;
          v44 = v457;
          v97 = v479;
          v238 = v504;
        }

        v100 = v485;
        goto LABEL_9;
      }

      v120 = v523;
      v121 = v510;
      if (v118 == -1)
      {
        goto LABEL_83;
      }

      v122 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
      v123 = *(v510 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v506 = sub_100731528(v119, 0);
      v482 = v124;
      v126 = v125;

      if (v126 != 1)
      {
        if (v126 == 255)
        {

          sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
        }

        else
        {
          sub_10058B14C(v506, v482, v126);
          sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
        }

        static os_log_type_t.error.getter();
        v386 = swift_allocObject();
        *(v386 + 16) = v439;
        v387 = v511;
        v388 = UUID.uuidString.getter();
        v389 = v499;
        *(v386 + 56) = &type metadata for String;
        *(v386 + 64) = v389;
        *(v386 + 32) = v388;
        *(v386 + 40) = v390;
        os_log(_:dso:log:_:_:)();

        v404 = v515;
        if (v518)
        {
          (v518)(v403);
        }

        sub_10058B268(v387, type metadata accessor for SharedBeaconRecord);
        (*v480)(v519, v404);
        return;
      }

      v127 = *(v121 + v122);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v128 = sub_100731528(v119, 1);
      v130 = v129;
      v132 = v131;

      if (v132 != 1)
      {
        v391 = v119;
        v60 = v515;
        if (v132 == 255)
        {

          sub_10058B14C(v506, v482, 1u);
          sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
        }

        else
        {
          sub_10058B14C(v128, v130, v132);
          sub_10058B14C(v506, v482, 1u);
          sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
        }

        static os_log_type_t.error.getter();
        v392 = swift_allocObject();
        *(v392 + 16) = v439;
        v393 = UUID.uuidString.getter();
        v394 = v499;
        *(v392 + 56) = &type metadata for String;
        *(v392 + 64) = v394;
        *(v392 + 32) = v393;
        *(v392 + 40) = v395;
        goto LABEL_98;
      }

      v466 = v130;
      v472 = v120;
      v60 = v515;
      (v514)(v502, v519, v515);
      v133 = v506;
      v134 = v506[2];
      v510 = v128;
      if (v134)
      {
        *&v530 = _swiftEmptyArrayStorage;
        sub_101124C54(0, v134, 0);
        v135 = v530;
        v136 = v133 + ((*(v496 + 80) + 32) & ~*(v496 + 80));
        v523 = *(v496 + 72);
        v137 = v451;
        do
        {
          v138 = v526;
          sub_10058B200(v136, v526, type metadata accessor for TimeBasedKey);
          *v137 = *v138;
          v139 = v529;
          v140 = *(v529 + 20);
          v141 = v528;
          v142 = *(v528 + 20);
          v143 = type metadata accessor for DateInterval();
          (*(*(v143 - 8) + 16))(&v137[v142], &v138[v140], v143);
          v144 = &v138[*(v139 + 24)];
          v145 = *(v144 + 2);
          v146 = *(v144 + 3);
          sub_100017D5C(v145, v146);
          sub_10058B268(v138, type metadata accessor for TimeBasedKey);
          v147 = &v137[*(v141 + 24)];
          *v147 = v145;
          v147[1] = v146;
          *&v530 = v135;
          v149 = v135[2];
          v148 = v135[3];
          if (v149 >= v148 >> 1)
          {
            sub_101124C54(v148 > 1, v149 + 1, 1);
            v135 = v530;
          }

          v135[2] = v149 + 1;
          sub_100589B28(v137, v135 + ((*(v527 + 80) + 32) & ~*(v527 + 80)) + *(v527 + 72) * v149, type metadata accessor for FamilyCryptoKeysV2);
          v136 += v523;
          --v134;
        }

        while (v134);
        v465 = v135;
        sub_10058B14C(v506, v482, 1u);
        v60 = v515;
        v128 = v510;
        v180 = v510[2];
        if (v180)
        {
LABEL_36:
          *&v530 = _swiftEmptyArrayStorage;
          sub_101124C54(0, v180, 0);
          v181 = v530;
          v182 = v128 + ((*(v496 + 80) + 32) & ~*(v496 + 80));
          v523 = *(v496 + 72);
          v183 = v452;
          do
          {
            v184 = v526;
            sub_10058B200(v182, v526, type metadata accessor for TimeBasedKey);
            *v183 = *v184;
            v185 = v529;
            v186 = *(v529 + 20);
            v187 = v528;
            v188 = *(v528 + 20);
            v189 = type metadata accessor for DateInterval();
            (*(*(v189 - 8) + 16))(&v183[v188], &v184[v186], v189);
            v190 = &v184[*(v185 + 24)];
            v191 = *(v190 + 2);
            v192 = *(v190 + 3);
            sub_100017D5C(v191, v192);
            sub_10058B268(v184, type metadata accessor for TimeBasedKey);
            v193 = &v183[*(v187 + 24)];
            *v193 = v191;
            v193[1] = v192;
            *&v530 = v181;
            v195 = v181[2];
            v194 = v181[3];
            if (v195 >= v194 >> 1)
            {
              sub_101124C54(v194 > 1, v195 + 1, 1);
              v183 = v452;
              v181 = v530;
            }

            v181[2] = v195 + 1;
            sub_100589B28(v183, v181 + ((*(v527 + 80) + 32) & ~*(v527 + 80)) + *(v527 + 72) * v195, type metadata accessor for FamilyCryptoKeysV2);
            v182 += v523;
            --v180;
          }

          while (v180);
          sub_10058B14C(v510, v466, 1u);
          v60 = v515;
          goto LABEL_43;
        }
      }

      else
      {
        sub_10058B14C(v506, v482, 1u);
        v465 = _swiftEmptyArrayStorage;
        v180 = v128[2];
        if (v180)
        {
          goto LABEL_36;
        }
      }

      sub_10058B14C(v128, v466, 1u);
      v181 = _swiftEmptyArrayStorage;
LABEL_43:
      v196 = *v497;
      v197 = v501;
      (*v497)(v501, v502, v60);
      v198 = MyAccessoryKeyEnvelope;
      *(v197 + *(MyAccessoryKeyEnvelope + 20)) = v465;
      *(v197 + *(v198 + 24)) = v181;
      v199 = v197;
      v200 = v477;
      sub_10058B200(v199, v477, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
      v201 = v472;
      sub_10053B168(0, 2, v200, &v530);
      v202 = v518;
      v523 = v201;
      if (v201)
      {

        sub_10000B3A8(v542, &qword_1016B1750, &qword_1013B1358);
        static os_log_type_t.error.getter();
        v405 = swift_allocObject();
        *(v405 + 16) = v439;
        swift_getErrorValue();
        v406 = Error.localizedDescription.getter();
        v407 = v499;
        *(v405 + 56) = &type metadata for String;
        *(v405 + 64) = v407;
        *(v405 + 32) = v406;
        *(v405 + 40) = v408;
        os_log(_:dso:log:_:_:)();

        if (v202)
        {
          (v202)(v409);
        }

        v410 = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope;
        v411 = v501;
        goto LABEL_104;
      }

      LODWORD(v465) = v530;
      v435 = *(&v530 + 1);
      v482 = *(&v531 + 1);
      v506 = v531;
      LODWORD(v434) = BYTE8(v561);
      v432 = *(&v562 + 1);
      v433 = v562;
      (*v463)(v505, 1, 1, v60);
      v203 = swift_allocObject();
      v510 = v203;
      swift_weakInit();
      v204 = v475;
      v205 = v514;
      (v514)(v475, v519, v60);
      v205(v503, v204, v60);
      v206 = v60;
      v207 = (v509 + 24) & v507;
      v428 = (v207 + v500);
      v208 = (v207 + v500 + 7) & 0xFFFFFFFFFFFFFFF8;
      v466 = ((v208 + 167) & 0xFFFFFFFFFFFFFFF8);
      v209 = swift_allocObject();
      *(v209 + 16) = v203;
      v431 = v207;
      v437 = v196;
      (v196)(v209 + v207, v204, v206);
      v210 = v208;
      v211 = v209 + v208;
      v212 = v558;
      *(v211 + 64) = v557;
      *(v211 + 80) = v212;
      v213 = v556;
      *(v211 + 32) = v555;
      *(v211 + 48) = v213;
      v214 = v562;
      *(v211 + 128) = v561;
      *(v211 + 144) = v214;
      v215 = v560;
      *(v211 + 96) = v559;
      *(v211 + 112) = v215;
      v216 = v554;
      *v211 = v553;
      *(v211 + 16) = v216;
      v472 = v209;
      v217 = (v466 + v209);
      v218 = v508;
      *v217 = v518;
      v217[1] = v218;
      v219 = *(v516 + 168);
      v220 = v493;
      *v493 = v219;
      v221 = v495;
      v491(v220, v462, v495);
      sub_1000D2A70(v542, &v530, &qword_1016B1750, &qword_1013B1358);
      sub_100012908(v518);

      v222 = v219;
      LOBYTE(v219) = _dispatchPreconditionTest(_:)();
      v490(v220, v221);
      if ((v219 & 1) == 0)
      {
        goto LABEL_110;
      }

      v223 = v487;
      static SystemInfo.lockState.getter();
      v224 = v488;
      v225 = v489;
      (*v460)(v488, v461, v489);
      sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      v226 = dispatch thunk of static Equatable.== infix(_:_:)();
      v227 = *v459;
      (*v459)(v224, v225);
      v227(v223, v225);
      if (v226)
      {
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        type metadata accessor for SPOwnerSessionError(0);
        v540 = 5;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v228 = v474;
        *v474 = v530;
        swift_storeEnumTagMultiPayload();
        v229 = v228;
        v230 = v453;
        sub_1000D2A70(v229, v453, &qword_10169F358, &qword_1013A0810);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v231 = *v230;
          static os_log_type_t.info.getter();
          v232 = swift_allocObject();
          *(v232 + 16) = v439;
          swift_getErrorValue();
          v233 = Error.localizedDescription.getter();
          v234 = v499;
          *(v232 + 56) = &type metadata for String;
          *(v232 + 64) = v234;
          *(v232 + 32) = v233;
          *(v232 + 40) = v235;
          os_log(_:dso:log:_:_:)();

          v60 = v515;
          v61 = v456;
          v44 = v457;
          v237 = v479;
          v238 = v504;
          v239 = v518;
          v240 = v506;
          v241 = v505;
          if (!v518)
          {
            goto LABEL_55;
          }
        }

        else
        {
          swift_beginAccess();
          v260 = swift_weakLoadStrong();
          v61 = v456;
          v237 = v479;
          if (v260)
          {
            v261 = *(v260 + 200);

            __chkstk_darwin(v262);
            sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
            v263 = v523;
            OS_dispatch_queue.sync<A>(execute:)();
            v523 = v263;
            v230 = v453;
          }

          v60 = v515;
          v44 = v457;
          v238 = v504;
          v239 = v518;
          v240 = v506;
          v236 = sub_10000B3A8(v230, &qword_10169F358, &qword_1013A0810);
          v241 = v505;
          if (!v239)
          {
            goto LABEL_55;
          }
        }

        (v239)(v236);
        v240 = v506;
LABEL_55:
        sub_100016590(v240, v482);

        sub_10000B3A8(v474, &qword_10169F358, &qword_1013A0810);
        sub_10000B3A8(v241, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v501, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
        sub_10058B268(v511, type metadata accessor for SharedBeaconRecord);
        v99 = *v480;
        (*v480)(v519, v60);
        v97 = v237;
        v100 = v503;
        goto LABEL_9;
      }

      v242 = v516;
      v243 = *(v516 + 32);
      v244 = v443;
      v245 = v523;
      sub_100543BF0(v465, v435, v506, v482, v433, v432, 0, v443, v505, 0, 1, 0);
      v523 = v245;
      if (v245)
      {
        v246 = v245;
        static os_log_type_t.error.getter();
        v247 = swift_allocObject();
        *(v247 + 16) = v439;
        *&v530 = v246;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v248 = String.init<A>(describing:)();
        v249 = v499;
        *(v247 + 56) = &type metadata for String;
        *(v247 + 64) = v249;
        *(v247 + 32) = v248;
        *(v247 + 40) = v250;
        os_log(_:dso:log:_:_:)();

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v252 = v444;
        v251 = v445;
        (*v426)(v444, v425, v445);
        v253 = static OS_dispatch_queue.global(qos:)();
        (*v424)(v252, v251);
        v254 = swift_allocObject();
        v255 = v472;
        v254[2] = sub_10058B160;
        v254[3] = v255;
        v254[4] = v246;
        *&v532 = sub_10058D73C;
        *(&v532 + 1) = v254;
        *&v530 = _NSConcreteStackBlock;
        *(&v530 + 1) = 1107296256;
        *&v531 = sub_100006684;
        *(&v531 + 1) = &unk_101629218;
        v256 = _Block_copy(&v530);

        swift_errorRetain();
        v257 = v467;
        static DispatchQoS.unspecified.getter();
        v540 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v259 = v469;
        v258 = v470;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        sub_100016590(v506, v482);
        _Block_release(v256);

        (*v430)(v259, v258);
        (*v429)(v257, v468);
        sub_10000B3A8(v505, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v501, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
        sub_10058B268(v511, type metadata accessor for SharedBeaconRecord);
        v99 = *v480;
        v60 = v515;
        (*v480)(v519, v515);

        v523 = 0;
      }

      else
      {
        v319 = v464;
        v320 = v515;
        v321 = v437;
        (v437)(v464, v244, v515);
        v322 = v321;
        v323 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v324 = *(v323 + 48);
        v325 = *(v323 + 52);
        swift_allocObject();
        v513 = Future.init()();
        v326 = v448;
        v327 = v319;
        v328 = v242;
        v329 = v514;
        (v514)(v448, v327, v320);
        v330 = swift_allocObject();
        *(v330 + 16) = v328;
        (v322)(v330 + v431, v326, v320);
        v331 = (v330 + v210);
        v332 = v326;
        v499 = v222;
        v333 = v472;
        *v331 = sub_10058B160;
        v331[1] = v333;

        Future.addSuccess(block:)();

        v334 = swift_allocObject();
        *(v334 + 16) = sub_10058B160;
        *(v334 + 24) = v333;

        Future.addFailure(block:)();

        v329(v326, v464, v320);
        v335 = v328;
        v336 = (v509 + 16) & v507;
        v337 = (v423 + v336) & 0xFFFFFFFFFFFFFFF8;
        v338 = swift_allocObject();
        (v437)(v338 + v336, v332, v320);
        *(v338 + v337) = v335;
        *(v338 + ((v337 + 15) & 0xFFFFFFFFFFFFFFF8)) = v513;
        v339 = swift_allocObject();
        *(v339 + 16) = sub_10058B1D0;
        *(v339 + 24) = v338;
        v507 = v338;
        *&v532 = sub_10040B9F8;
        *(&v532 + 1) = v339;
        *&v530 = _NSConcreteStackBlock;
        *(&v530 + 1) = 1107296256;
        *&v531 = sub_10013FE14;
        *(&v531 + 1) = &unk_1016292E0;
        v340 = _Block_copy(&v530);

        dispatch_sync(v499, v340);
        _Block_release(v340);
        LOBYTE(v340) = swift_isEscapingClosureAtFileLocation();

        if (v340)
        {
          goto LABEL_112;
        }

        v341 = v438;
        static DispatchTime.now()();
        + infix(_:_:)();
        v498 = *v427;
        (v498)(v341, v447);
        v342 = v448;
        v343 = v320;
        (v514)(v448, v464, v320);
        v344 = swift_allocObject();
        *(v344 + 16) = v335;
        (v437)(v344 + v431, v342, v320);
        *&v532 = sub_10058B1D4;
        *(&v532 + 1) = v344;
        *&v530 = _NSConcreteStackBlock;
        *(&v530 + 1) = 1107296256;
        *&v531 = sub_100006684;
        *(&v531 + 1) = &unk_101629330;
        v345 = _Block_copy(&v530);

        v346 = v467;
        static DispatchQoS.unspecified.getter();
        v540 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v348 = v469;
        v347 = v470;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v349 = v446;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        sub_100016590(v506, v482);
        _Block_release(v345);

        (*v430)(v348, v347);
        (*v429)(v346, v468);
        (v498)(v349, v447);
        v99 = *v480;
        (*v480)(v464, v343);
        sub_10000B3A8(v505, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v501, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
        sub_10058B268(v511, type metadata accessor for SharedBeaconRecord);
        v99(v519, v343);

        v60 = v343;
      }

      v61 = v456;
      v44 = v457;
      v97 = v479;
      v238 = v504;
      v100 = v503;
LABEL_9:
      v99(v100, v60);
      v98 = v238 + 1;

      v3 = v516;
      v57 = v458;
      if (v98 == v473)
      {
        goto LABEL_75;
      }
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}