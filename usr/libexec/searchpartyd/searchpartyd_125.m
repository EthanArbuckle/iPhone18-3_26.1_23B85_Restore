uint64_t sub_100D17C5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x656475746974616CLL;
    }

    if (!a1)
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
    v1 = 0x6D617473656D6974;
    v2 = 0x6E6F697461636F6CLL;
    if (a1 != 7)
    {
      v2 = 0x657461446E616373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x64757469676E6F6CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
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

Swift::Int sub_100D17DA4()
{
  Hasher.init(_seed:)();
  sub_100D17938(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D17DE8()
{
  Hasher.init(_seed:)();
  sub_100D17938(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D17EB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076EB90();
  return Hasher._finalize()();
}

Swift::Int sub_100D17F04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076EB90();
  return Hasher._finalize()();
}

unint64_t sub_100D17F48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D1A100(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D17F78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100D17C5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100D17FC0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D1A100(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D17FE8(uint64_t a1)
{
  v2 = sub_100D199BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D18024(uint64_t a1)
{
  v2 = sub_100D199BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D18060(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v71 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v7 = *(*(v82 - 8) + 64);
  v8 = __chkstk_darwin(v82);
  v78 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v77 = &v68[-v10];
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v74 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v70 = &v68[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v68[-v18];
  v20 = __chkstk_darwin(v17);
  v75 = &v68[-v21];
  v22 = __chkstk_darwin(v20);
  v81 = &v68[-v23];
  __chkstk_darwin(v22);
  v79 = &v68[-v24];
  v25 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v26 = v86;
  v27 = type metadata accessor for BeaconEstimatedLocation();
  v84 = v2;
  v85 = v27;
  v28 = *(v27 + 24);
  v29 = UUID.uuidString.getter();
  v80 = v19;
  if (!*(&v26 + 1))
  {

    v31 = v84;
LABEL_6:
    v33 = UUID.uuidString.getter();
    *(&v87 + 1) = &type metadata for String;
    v88 = &protocol witness table for String;
    *&v86 = v33;
    *(&v86 + 1) = v34;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v26 == __PAIR128__(v30, v29))
  {

    v31 = v84;
    goto LABEL_7;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v84;
  if ((v32 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v35 = *(v31 + v85[7]);
  if (BYTE8(v86))
  {
    v36 = v81;
LABEL_10:
    *(&v87 + 1) = &type metadata for Double;
    v88 = &protocol witness table for Double;
    *&v86 = v35;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_11;
  }

  v36 = v81;
  if (*&v86 != v35)
  {
    goto LABEL_10;
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v37 = *(v31 + v85[8]);
  if ((BYTE8(v86) & 1) != 0 || *&v86 != v37)
  {
    *(&v87 + 1) = &type metadata for Double;
    v88 = &protocol witness table for Double;
    *&v86 = v37;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v38 = *(v31 + v85[9]);
  if ((BYTE8(v86) & 1) != 0 || *&v86 != v38)
  {
    *(&v87 + 1) = &type metadata for Double;
    v88 = &protocol witness table for Double;
    *&v86 = v38;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v39 = v79;
  v81 = v25;
  CKRecordKeyValueSetting.subscript.getter();
  v40 = v83;
  v41 = *(v83 + 16);
  v72 = v85[10];
  v73 = v41;
  v41(v36, v84 + v72, v4);
  (*(v40 + 56))(v36, 0, 1, v4);
  v42 = *(v82 + 48);
  v43 = v77;
  sub_1000D3410(v39, v77);
  sub_1000D3410(v36, &v43[v42]);
  v44 = *(v40 + 48);
  v45 = v44(v43, 1, v4);
  v76 = v44;
  if (v45 == 1)
  {
    sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
    if (v44(&v43[v42], 1, v4) == 1)
    {
      sub_10000B3A8(v43, &unk_101696900, &unk_10138B1E0);
      v46 = v84;
      v47 = v78;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v48 = v75;
  sub_1000D3410(v43, v75);
  if (v44(&v43[v42], 1, v4) == 1)
  {
    sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v79, &unk_101696900, &unk_10138B1E0);
    (*(v83 + 8))(v48, v4);
LABEL_22:
    sub_10000B3A8(v43, &unk_1016B1660, &unk_10138CE10);
    v46 = v84;
    v47 = v78;
LABEL_23:
    *(&v87 + 1) = v4;
    v88 = &protocol witness table for Date;
    v49 = sub_1000280DC(&v86);
    v73(v49, v46 + v72, v4);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_24;
  }

  v60 = v83;
  v61 = v36;
  v62 = v71;
  (*(v83 + 32))(v71, &v43[v42], v4);
  sub_100D198C8(&qword_101698290, &type metadata accessor for Date);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v62, v4);
  sub_10000B3A8(v61, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v79, &unk_101696900, &unk_10138B1E0);
  v63(v75, v4);
  sub_10000B3A8(v43, &unk_101696900, &unk_10138B1E0);
  v46 = v84;
  v47 = v78;
  if ((v69 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v50 = v80;
  CKRecordKeyValueSetting.subscript.getter();
  v51 = v85[12];
  v52 = *(v82 + 48);
  sub_1000D3410(v50, v47);
  sub_1000D3410(v46 + v51, v47 + v52);
  v53 = v76;
  v54 = v46;
  if (v76(v47, 1, v4) == 1)
  {
    sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
    v55 = v53;
    if (v53((v47 + v52), 1, v4) == 1)
    {
      swift_unknownObjectRelease();
      return sub_10000B3A8(v47, &unk_101696900, &unk_10138B1E0);
    }

    goto LABEL_29;
  }

  v57 = v70;
  sub_1000D3410(v47, v70);
  v55 = v53;
  if (v53((v47 + v52), 1, v4) == 1)
  {
    sub_10000B3A8(v80, &unk_101696900, &unk_10138B1E0);
    (*(v83 + 8))(v57, v4);
LABEL_29:
    sub_10000B3A8(v47, &unk_1016B1660, &unk_10138CE10);
LABEL_30:
    v58 = v74;
    sub_1000D3410(v54 + v51, v74);
    if (v55(v58, 1, v4) == 1)
    {
      sub_10000B3A8(v58, &unk_101696900, &unk_10138B1E0);
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
    }

    else
    {
      *(&v87 + 1) = v4;
      v88 = &protocol witness table for Date;
      v59 = sub_1000280DC(&v86);
      (*(v83 + 32))(v59, v58, v4);
    }

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  v64 = v83;
  v65 = v57;
  v66 = v71;
  (*(v83 + 32))(v71, v47 + v52, v4);
  sub_100D198C8(&qword_101698290, &type metadata accessor for Date);
  LODWORD(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v64 + 8);
  v67(v66, v4);
  sub_10000B3A8(v80, &unk_101696900, &unk_10138B1E0);
  v67(v65, v4);
  v54 = v84;
  sub_10000B3A8(v47, &unk_101696900, &unk_10138B1E0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_30;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100D18BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = v42 - v5;
  v6 = type metadata accessor for Date();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v42 - v14;
  v52 = sub_1000BC4D4(&qword_1016BA0C8, &qword_1013E41B0);
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  __chkstk_darwin(v52);
  v18 = v42 - v17;
  v19 = type metadata accessor for BeaconEstimatedLocation();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23[*(v21 + 52)] = 0;
  v25 = a1[3];
  v24 = a1[4];
  v54 = a1;
  sub_1000035D0(a1, v25);
  sub_100D199BC();
  v51 = v18;
  v26 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return sub_100007BAC(v54);
  }

  v27 = v13;
  v28 = v50;
  v53 = v19;
  v43 = v9;
  v56 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v23 = v55;
  LOBYTE(v55) = 1;
  sub_100D198C8(&qword_101698300, &type metadata accessor for UUID);
  v29 = v15;
  v30 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v53;
  v32 = &v23[v53[5]];
  v42[0] = *(v49 + 32);
  (v42[0])(v32, v29, v30);
  LOBYTE(v55) = 2;
  v42[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v42[0])(&v23[v31[6]], v27, v30);
  LOBYTE(v55) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v31;
  *&v23[v31[7]] = v34;
  LOBYTE(v55) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v48;
  *&v23[v31[8]] = v36;
  LOBYTE(v55) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v23[v31[9]] = v37;
  LOBYTE(v55) = 6;
  sub_100D198C8(&qword_101697F40, &type metadata accessor for Date);
  v38 = v35;
  v39 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v47 + 32))(&v23[v33[10]], v39, v38);
  v56 = 7;
  sub_100479640();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23[v33[11]] = v55;
  LOBYTE(v55) = 8;
  v40 = v45;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v28 + 8))(v51, v52);
  sub_1001578A0(v40, &v23[v33[12]]);
  sub_100D19A10(v23, v44);
  sub_100007BAC(v54);
  return sub_100D19A74(v23);
}

uint64_t sub_100D193A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA0E8, &qword_1013E41B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D199BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v23 = 0;
  sub_100017D5C(v21, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v21, v22);
  }

  else
  {
    sub_100016590(v21, v22);
    v12 = type metadata accessor for BeaconEstimatedLocation();
    v13 = v12[5];
    LOBYTE(v21) = 1;
    type metadata accessor for UUID();
    sub_100D198C8(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v12[7]);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + v12[8]);
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + v12[9]);
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v12[10];
    LOBYTE(v21) = 6;
    type metadata accessor for Date();
    sub_100D198C8(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21) = *(v3 + v12[11]);
    v23 = 7;
    sub_1004797F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v12[12];
    LOBYTE(v21) = 8;
    sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    sub_100D19AD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100D1975C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_1000076D4(v3, qword_10177BF38);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100D19844(uint64_t a1)
{
  *(a1 + 8) = sub_100D198C8(&qword_1016BA0A8, type metadata accessor for BeaconEstimatedLocation);
  result = sub_100D198C8(&qword_1016BA0B0, type metadata accessor for BeaconEstimatedLocation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100D198C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D19910(uint64_t a1)
{
  result = sub_100D198C8(&unk_1016B1710, type metadata accessor for BeaconEstimatedLocation);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D19968()
{
  result = qword_1016BA0B8;
  if (!qword_1016BA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0B8);
  }

  return result;
}

unint64_t sub_100D199BC()
{
  result = qword_1016BA0D0;
  if (!qword_1016BA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0D0);
  }

  return result;
}

uint64_t sub_100D19A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconEstimatedLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D19A74(uint64_t a1)
{
  v2 = type metadata accessor for BeaconEstimatedLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100D19AD0()
{
  result = qword_1016BA0F0;
  if (!qword_1016BA0F0)
  {
    sub_1000BC580(&unk_101696900, &unk_10138B1E0);
    sub_100D198C8(&unk_101697F60, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0F0);
  }

  return result;
}

uint64_t sub_100D19B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for BeaconEstimatedLocation();
  v18 = v17[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v17[7]) != *(a2 + v17[7]))
  {
    return 0;
  }

  if (*(a1 + v17[8]) != *(a2 + v17[8]))
  {
    return 0;
  }

  if (*(a1 + v17[9]) != *(a2 + v17[9]))
  {
    return 0;
  }

  v20 = v17[10];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v17[11]) != *(a2 + v17[11]))
  {
    return 0;
  }

  v21 = v17[12];
  v22 = *(v13 + 48);
  sub_1000D3410(a1 + v21, v16);
  v32 = v22;
  sub_1000D3410(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_1000D3410(v16, v12);
    if (v23(&v16[v32], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v32], v4);
      sub_100D198C8(&qword_101698290, &type metadata accessor for Date);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_10000B3A8(v16, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  if (v23(&v16[v32], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
LABEL_18:
  v27 = v17[13];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28)
  {
    if (v29)
    {

      v30 = sub_10038F9D4(v28, v29);

      if (v30)
      {
        return 1;
      }
    }
  }

  else if (!v29)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100D19FA4()
{
  result = qword_1016BA0F8;
  if (!qword_1016BA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA0F8);
  }

  return result;
}

unint64_t sub_100D19FFC()
{
  result = qword_1016BA100;
  if (!qword_1016BA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA100);
  }

  return result;
}

unint64_t sub_100D1A054()
{
  result = qword_1016BA108;
  if (!qword_1016BA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA108);
  }

  return result;
}

unint64_t sub_100D1A0AC()
{
  result = qword_1016BA110;
  if (!qword_1016BA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA110);
  }

  return result;
}

unint64_t sub_100D1A100(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C3D0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for KeySyncMetadataDisplay()
{
  result = qword_1016BA178;
  if (!qword_1016BA178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D1A1C4()
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

uint64_t sub_100D1A25C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA1C0, &qword_1013E4448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D1ABA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21[15] = 0;
  type metadata accessor for UUID();
  sub_100D1ABFC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeySyncMetadataDisplay();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v21[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v11[6]);
    v21[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v21[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v11[8];
    v21[11] = 4;
    type metadata accessor for Date();
    sub_100D1ABFC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D1A4EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for Date();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v36 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BC4D4(&qword_1016BA1D0, &qword_1013E4450);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for KeySyncMetadataDisplay();
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D1ABA8();
  v37 = v12;
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v38 = v5;
  v19 = v33;
  v43 = 0;
  sub_100D1ABFC(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v16, v36, v6);
  v42 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = &v16[v13[5]];
  *v21 = v20;
  v21[1] = v22;
  v41 = 2;
  *&v16[v13[6]] = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = a1;
  v24 = &v16[v13[7]];
  *v24 = v23;
  v24[1] = v25;
  v39 = 4;
  sub_100D1ABFC(&qword_101697F40, &type metadata accessor for Date);
  v26 = v38;
  v27 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 8))(v37, v35);
  (*(v30 + 32))(&v16[v13[8]], v26, v27);
  sub_100D1AC44(v16, v31);
  sub_100007BAC(v36);
  return sub_100D1ACA8(v16);
}

unint64_t sub_100D1AA40()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7865646E69;
  v4 = 0x65636E6575716573;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
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

uint64_t sub_100D1AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D1AE1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D1AB00(uint64_t a1)
{
  v2 = sub_100D1ABA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D1AB3C(uint64_t a1)
{
  v2 = sub_100D1ABA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100D1ABA8()
{
  result = qword_1016BA1C8;
  if (!qword_1016BA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1C8);
  }

  return result;
}

uint64_t sub_100D1ABFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D1AC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadataDisplay();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D1ACA8(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadataDisplay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100D1AD18()
{
  result = qword_1016BA1D8;
  if (!qword_1016BA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1D8);
  }

  return result;
}

unint64_t sub_100D1AD70()
{
  result = qword_1016BA1E0;
  if (!qword_1016BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1E0);
  }

  return result;
}

unint64_t sub_100D1ADC8()
{
  result = qword_1016BA1E8;
  if (!qword_1016BA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA1E8);
  }

  return result;
}

uint64_t sub_100D1AE1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

void *sub_100D1AFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_101123BB8(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    *(*(a1 + 48) + v5);
    v10 = *(a1 + 36);
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_101123BB8((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      v8 = v24;
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1000BB408(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100D1B288(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016BA350, &qword_1013E47B0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = *v13;
    v22 = v13[1];

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v16];
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v25;
    *v11 = v23;
    *(v11 + 16) = v24;
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100D1B4BC(uint64_t a1)
{
  v49 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v40 = *(v49 - 8);
  v2 = *(v40 + 64);
  v3 = __chkstk_darwin(v49);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v7 = type metadata accessor for UUID();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  v9 = __chkstk_darwin(v7);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v39 - v11;
  v51 = a1;
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
    v12 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v13 = v51 + 56;
  v14 = 1 << *(v51 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v51 + 56);
  v17 = (v14 + 63) >> 6;
  v43 = v50 + 16;
  v18 = v50 + 32;
  v41 = v50 + 48;
  v39 = (v50 + 8);
  v19 = v12 + 56;

  v21 = 0;
  v44 = v13;
  v47 = v6;
  v52 = v12;
  v42 = v17;
  while (v16)
  {
    v23 = v18;
    v24 = v6;
LABEL_16:
    v26 = v50;
    v27 = v45;
    (*(v50 + 16))(v45, *(v51 + 48) + *(v50 + 72) * (__clz(__rbit64(v16)) | (v21 << 6)), v7);
    v28 = *(v26 + 32);
    v29 = v46;
    v28(v46, v27, v7);
    swift_dynamicCast();
    v30 = *(v52 + 5);
    Hasher.init(_seed:)();
    v31 = v48;
    sub_1000D2A70(v24, v48, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v26 + 48))(v31, 1, v7) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v28(v29, v31, v7);
      Hasher._combine(_:)(1u);
      sub_100D26ADC(&qword_1016967B0, 255, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*v39)(v29, v7);
    }

    v13 = v44;
    v18 = v23;
    result = Hasher._finalize()();
    v12 = v52;
    v32 = -1 << v52[32];
    v33 = result & ~v32;
    v34 = v33 >> 6;
    v6 = v47;
    v17 = v42;
    if (((-1 << v33) & ~*&v19[8 * (v33 >> 6)]) == 0)
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      while (++v34 != v36 || (v35 & 1) == 0)
      {
        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *&v19[8 * v34];
        if (v38 != -1)
        {
          v22 = __clz(__rbit64(~v38)) + (v34 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v33) & ~*&v19[8 * (v33 >> 6)])) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v16 &= v16 - 1;
    *&v19[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    result = sub_10012C154(v6, *(v12 + 6) + *(v40 + 72) * v22);
    ++*(v12 + 2);
  }

  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v17)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v25);
    ++v21;
    if (v16)
    {
      v23 = v18;
      v24 = v6;
      v21 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100D1B9C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF50);
  v1 = sub_1000076D4(v0, qword_10177BF50);
  if (qword_101694E18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100D1BA90()
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
  swift_defaultActor_initialize();
  v0[14] = 0xD00000000000002BLL;
  v0[15] = 0x80000001013E45C0;
  v0[17] = _swiftEmptyDictionarySingleton;
  v0[18] = _swiftEmptyDictionarySingleton;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v12[1] = _swiftEmptyArrayStorage;
  sub_100D26ADC(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&qword_1016BA368, &unk_1013E48C0);
  swift_allocObject();
  sub_100D25FBC(0xD000000000000037, 0x800000010134CCC0, 6, 60.0, 30.0);
  v0[16] = v10;
  return v0;
}

uint64_t sub_100D1BDB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  v3 = v2[18];
  v4 = v2[19];
  v2[18] = sub_100D25264;
  v2[19] = v1;

  sub_1000BB27C(v3);
  v5 = v2[20];
  v6 = v2[21];
  v2[20] = sub_100D25274;
  v2[21] = v1;

  sub_1000BB27C(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100D2527C;
  *(v7 + 24) = v1;
  v8 = v2[22];
  v9 = v2[23];
  v2[22] = sub_10058AFF0;
  v2[23] = v7;

  sub_1000BB27C(v8);
  v10 = v2[24];
  v11 = v2[25];
  v2[24] = sub_100D252AC;
  v2[25] = v1;

  sub_1000BB27C(v10);
  v12 = v2[26];
  v13 = v2[27];
  v2[26] = sub_100D252E4;
  v2[27] = v1;

  sub_1000BB27C(v12);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100D1BF24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v20 = a4;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v19[1] = type metadata accessor for Transaction();
  (*(v13 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a7;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;
  (*(v13 + 32))(&v16[v15], v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v17 = &v16[(v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = v20;
  *(v17 + 1) = v21;
  *(v17 + 2) = a6;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D1C0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a7;
  v25 = a6;
  v24 = a4;
  v23 = a3;
  v22 = a1;
  v15 = type metadata accessor for MessagingMessageContext();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v27 = type metadata accessor for Transaction();
  sub_100D2577C(a11, &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 104) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = v22;
  *(v19 + 16) = a12;
  *(v19 + 24) = v20;
  *(v19 + 32) = a2;
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  *(v19 + 56) = a5;
  *(v19 + 64) = v25;
  *(v19 + 72) = v26;
  *(v19 + 80) = a8;
  *(v19 + 88) = a9;
  *(v19 + 96) = a10;
  sub_100476E9C(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);

  sub_100017D5C(a8, a9);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D1C298(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D1C33C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27[-v4];
  v6 = [objc_allocWithZone(IDSServiceDelegateProperties) init];
  [v6 setWantsCrossAccountMessaging:1];
  v7 = type metadata accessor for MessagingServiceDelegateTrampoline();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_101661488;
  swift_unknownObjectWeakAssign();
  v28.receiver = v8;
  v28.super_class = v7;
  v9 = objc_msgSendSuper2(&v28, "init");
  v10 = v1[5];
  v1[5] = v9;

  v11 = v1[8];
  [v11 addDelegate:v9 withDelegateProperties:v6 queue:v1[6]];
  v12 = [v11 devices];
  if (v12)
  {
    v13 = v12;
    sub_100008BB8(0, &qword_10169EF70, IDSDevice_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v15);
    *&v27[-16] = v1;
    *&v27[-8] = v14;
    sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  v16 = type metadata accessor for StateCapture();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  v19 = StateCapture.init(_:)();
  v20 = v1[17];
  v1[17] = v19;

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  v24 = sub_1008CE048(0, 0, v5, &unk_1013E4748, v23);

  sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);
  v25 = v1[16];
  v1[16] = v24;
}

uint64_t sub_100D1C654(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for UUID();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100D1C724, v2, 0);
}

uint64_t sub_100D1C724()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  UUID.init()();
  v7 = *(v3 + 16);
  v7(v1, v6, v2);
  sub_10001F280(v4, (v0 + 2));
  swift_beginAccess();
  sub_1001E11C4((v0 + 2), v1);
  swift_endAccess();
  if (qword_101694E10 != -1)
  {
    swift_once();
  }

  v8 = v0[15];
  v9 = v0[13];
  v10 = v0[10];
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BF50);
  v7(v8, v10, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_1000136BC(v20, v22, &v28);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Added client: %{public}s", v18, 0xCu);
    sub_100007BAC(v19);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v25 = v0[15];
  v24 = v0[16];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100D1C9D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 144) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = type metadata accessor for UUID();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100D1CAE8, v6, 0);
}

uint64_t sub_100D1CAE8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v16 = *(v0 + 48);
  v4 = *(v0 + 40);
  v15 = *(v0 + 24);
  v5 = *(v0 + 144);
  (*(*(v0 + 72) + 56))(v1, 1, 1, *(v0 + 64));
  v6 = sub_101129A8C(_swiftEmptyArrayStorage);
  *(v0 + 104) = v6;
  v7 = sub_101129A8C(_swiftEmptyArrayStorage);
  *(v0 + 112) = v7;
  UUID.init()();
  v17 = sub_100D26ADC(&qword_1016BA320, v8, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v5;
  *(v9 + 40) = v15;
  *(v9 + 56) = v4;
  *(v9 + 64) = v16;
  *(v9 + 72) = v1;
  *(v9 + 80) = 0;
  *(v9 + 88) = 1;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_100D1CCBC;
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v3, v17, 0xD000000000000083, 0x8000000101370090, sub_100D24CE8, v9, v13);
}

uint64_t sub_100D1CCBC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v11 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_100D1CEE0;
  }

  else
  {
    v6 = v2[14];
    v7 = v2[15];
    v8 = v2[13];
    v9 = v2[7];

    v5 = sub_100D1CE00;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D1CE00()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  (*(v3 + 32))(v0[2], v0[10], v4);
  (*(v3 + 8))(v1, v4);
  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D1CEE0()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  (*(v8 + 8))(v5, v7);
  sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);

  v9 = v0[1];
  v10 = v0[17];

  return v9();
}

uint64_t sub_100D1CFC0(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v72 = a8;
  v87 = a6;
  v88 = a7;
  v68 = a5;
  v67 = a4;
  v57 = a3;
  v89 = a2;
  v83 = a1;
  v76 = a16;
  v75 = a15;
  v74 = a14;
  v73 = a13;
  v71 = a12;
  v70 = a11;
  v69 = a10;
  v65 = a9;
  v80 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v80 - 8);
  v17 = *(v82 + 64);
  __chkstk_darwin(v80);
  v78 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  v19 = *(v79 + 64);
  __chkstk_darwin(v81);
  v77 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v22 = *(v21 - 8);
  v64 = v22[8];
  __chkstk_darwin(v21);
  v86 = &v57 - v23;
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v63 = *(v24 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v24 - 8);
  v85 = &v57 - v25;
  v26 = sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v57 - v28;
  v30 = type metadata accessor for UUID();
  v60 = *(v30 - 8);
  v31 = v60;
  v32 = *(v60 + 64);
  __chkstk_darwin(v30);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v31 + 16);
  v59 = v30;
  v34(v33, a3, v30);
  v84 = v22;
  v58 = v22[2];
  v58(v29, v83, v21);
  v35 = v22[7];
  v36 = v21;
  v61 = v21;
  v35(v29, 0, 1, v21);
  v37 = v89;
  swift_beginAccess();
  sub_1001E1300(v29, v33);
  swift_endAccess();
  v66 = *(v37 + 152);
  v34(v33, v57, v30);
  sub_1000D2A70(v65, v85, &qword_1016980D0, &unk_10138F3B0);
  v58(v86, v83, v36);
  v38 = v60;
  v39 = (*(v60 + 80) + 56) & ~*(v60 + 80);
  v40 = (v32 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v63 + 80) + v40 + 8) & ~*(v63 + 80);
  v42 = (v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v42 + 17) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v84 + 80) + v44 + 16) & ~*(v84 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v89;
  *(v46 + 24) = v67;
  v48 = v87;
  v47 = v88;
  *(v46 + 32) = v68;
  *(v46 + 40) = v48;
  *(v46 + 48) = v47;
  (*(v38 + 32))(v46 + v39, v33, v59);
  *(v46 + v40) = v72;
  sub_10012C154(v85, v46 + v41);
  v49 = v46 + v42;
  *v49 = v69;
  *(v49 + 8) = v70 & 1;
  *(v49 + 9) = v71;
  *(v46 + v83) = v73;
  *(v46 + v43) = v74;
  v50 = (v46 + v44);
  v51 = v76;
  *v50 = v75;
  v50[1] = v51;
  (v84[4])(v46 + v45, v86, v61);
  aBlock[4] = sub_100D24D40;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164F0F0;
  v52 = _Block_copy(aBlock);

  sub_100017D5C(v87, v88);

  v53 = v77;
  static DispatchQoS.unspecified.getter();
  v90 = _swiftEmptyArrayStorage;
  sub_100D26ADC(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v54 = v78;
  v55 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v52);
  (*(v82 + 8))(v54, v55);
  (*(v79 + 8))(v53, v81);
}

uint64_t sub_100D1D7BC(uint64_t a1, int a2, NSObject *a3, uint64_t a4, unint64_t a5, void (*a6)(_BYTE *, uint64_t), uint64_t a7, void (*a8)(void, void, void), uint64_t a9, char a10, unsigned __int8 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v43 = a7;
  v44 = a8;
  v39 = a3;
  v40 = a4;
  v41 = a9;
  v37 = a11;
  v38 = a2;
  v36 = a12;
  v35 = a13;
  v33 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v31 = *(v33 - 8);
  v17 = *(v31 + 64);
  __chkstk_darwin(v33);
  v32 = &v30 - v18;
  v19 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v45 = &v30 - v21;
  v42 = type metadata accessor for UUID();
  v22 = *(v42 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v42);
  __chkstk_darwin(v24);
  v26 = &v30 - v25;
  v34 = a1;
  v27 = *(a1 + 128);
  *(&v29 + 1) = a14;
  *&v29 = v35;
  sub_100D1DB84(v38, v39, v40, a5, a6, v43, v44, v41, &v30 - v25, a10 & 1, v37, v36, *(&v36 + 1), v29);
  return (*(v22 + 8))(v26, v42);
}

void sub_100D1DB84(unsigned __int8 a1@<W0>, NSObject *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(_BYTE *, uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v16 = v15;
  v17 = v14;
  v262 = a8;
  v266 = a7;
  v267 = a5;
  v249 = a9;
  v265 = v17;
  v261 = *v17;
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v250 = &v244[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v257 = &v244[-v28];
  __chkstk_darwin(v27);
  v30 = &v244[-v29];
  v31 = type metadata accessor for UUID();
  v268 = *(v31 - 8);
  v32 = *(v268 + 64);
  v33 = __chkstk_darwin(v31);
  v254 = &v244[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v251 = &v244[-v36];
  v37 = __chkstk_darwin(v35);
  v259 = &v244[-v38];
  v39 = __chkstk_darwin(v37);
  v260 = &v244[-v40];
  v41 = __chkstk_darwin(v39);
  v258 = &v244[-v42];
  v43 = __chkstk_darwin(v41);
  v263 = &v244[-v44];
  v45 = __chkstk_darwin(v43);
  v253 = &v244[-v46];
  v274 = a1;
  v275 = a2;
  v276 = a3;
  v277 = a4;
  v47 = *(a6 + 16);
  v48 = _swiftEmptyArrayStorage;
  v269 = v45;
  if (v47)
  {
    *&v272 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v47, 0);
    v48 = v272;
    v49 = (a6 + 48);
    do
    {
      v51 = *(v49 - 1);
      v50 = *v49;
      *&v272 = v48;
      v53 = v48[2];
      v52 = v48[3];

      if (v53 >= v52 >> 1)
      {
        sub_101123BB8((v52 > 1), v53 + 1, 1);
        v48 = v272;
      }

      v48[2] = v53 + 1;
      v54 = &v48[2 * v53];
      v54[4] = v51;
      v54[5] = v50;
      v49 += 3;
      --v47;
    }

    while (v47);
    v31 = v269;
  }

  v55 = sub_101129930(v48);

  v56 = type metadata accessor for PropertyListEncoder();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016BA330, &qword_1013E4788);
  sub_1000041A4(&qword_1016BA338, &qword_1016BA330, &qword_1013E4788);
  v59 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v16)
  {

    return;
  }

  v255 = v55;
  v248 = v59;
  v256 = v60;
  v264 = 0;
  LODWORD(v252) = a11;

  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v62;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v63 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  v67 = UUID.data.getter();
  v273 = &type metadata for Data;
  *&v272 = v67;
  *(&v272 + 1) = v68;
  sub_1001E6224(&v272, v271);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v270 = v63;
  sub_100FFB368(v271, v64, v66, isUniquelyReferenced_nonNull_native);

  v70 = v270;
  sub_1000D2A70(v266, v30, &qword_1016980D0, &unk_10138F3B0);
  v71 = v268;
  v72 = v268 + 48;
  v247 = *(v268 + 48);
  if (v247(v30, 1, v31) == 1)
  {
    sub_10000B3A8(v30, &qword_1016980D0, &unk_10138F3B0);
    v73 = v70;
    if (a10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v74 = *(v71 + 32);
  v245 = a10;
  v75 = v253;
  v74(v253, v30, v31);
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;
  v79 = UUID.uuidString.getter();
  v273 = &type metadata for String;
  *&v272 = v79;
  *(&v272 + 1) = v80;
  sub_1001E6224(&v272, v271);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v270 = v70;
  sub_100FFB368(v271, v76, v78, v81);

  v82 = v75;
  LOBYTE(v75) = v245;
  (*(v71 + 8))(v82, v31);
  v73 = v270;
  if ((v75 & 1) == 0)
  {
LABEL_13:
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;
    v273 = &type metadata for Double;
    *&v272 = v262;
    sub_1001E6224(&v272, v271);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v270 = v73;
    sub_100FFB368(v271, v83, v85, v86);

    v73 = v270;
  }

LABEL_14:
  if (v252)
  {
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v73;
    v90 = v89;
    v273 = &type metadata for Bool;
    LOBYTE(v272) = 1;
    sub_1001E6224(&v272, v271);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v270 = v88;
    sub_100FFB368(v271, v87, v90, v91);

    v73 = v270;
  }

  if (*(&a14 + 1))
  {
    v92 = v73;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
    v273 = &type metadata for String;
    v272 = a14;
    sub_1001E6224(&v272, v271);

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v270 = v92;
    sub_100FFB368(v271, v93, v95, v96);

    v73 = v270;
  }

  v97 = v264;
  v98 = v263;
  if (*(a12 + 16))
  {
    v99 = sub_100D1AFDC(a12);
    v100 = sub_101129930(v99);

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v73;
    v104 = v103;
    v273 = sub_1000BC4D4(&qword_1016BA340, &qword_1013E4790);
    *&v272 = v100;
    sub_1001E6224(&v272, v271);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v270 = v102;
    sub_100FFB368(v271, v101, v104, v105);

    v73 = v270;
  }

  if (*(a13 + 16))
  {
    v106 = sub_100D1AFDC(a13);
    v107 = sub_101129930(v106);

    v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v109;
    v273 = sub_1000BC4D4(&qword_1016BA340, &qword_1013E4790);
    *&v272 = v107;
    sub_1001E6224(&v272, v271);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v270 = v73;
    sub_100FFB368(v271, v108, v110, v111);

    v73 = v270;
  }

  if (v252)
  {
    v112 = 0xD000000000000017;
  }

  else
  {
    v112 = 0x6567617373656DLL;
  }

  if (v252)
  {
    v113 = 0x800000010135AAC0;
  }

  else
  {
    v113 = 0xE700000000000000;
  }

  v114 = v257;
  sub_1000D2A70(v266, v257, &qword_1016980D0, &unk_10138F3B0);
  v115 = v247(v114, 1, v31);
  v266 = v113;
  v264 = v97;
  v246 = v72;
  v262 = v73;
  v253 = v112;
  if (v115 == 1)
  {
    sub_10000B3A8(v114, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_1000076D4(v116, qword_10177C4F0);
    LODWORD(v260) = v274;
    v117 = v276;
    v258 = v275;
    v118 = v277;
    v119 = *(v268 + 16);
    (v119)(v259, v267, v269);
    sub_100017D5C(v117, v118);

    sub_100017D5C(v117, v118);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();

    LODWORD(v263) = v121;
    v122 = os_log_type_enabled(v120, v121);
    v257 = v119;
    if (v122)
    {
      v123 = swift_slowAlloc();
      v271[0] = swift_slowAlloc();
      *v123 = 136316162;
      *&v272 = v261;
      sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
      v124 = String.init<A>(describing:)();
      v252 = v120;
      v126 = v113;
      v127 = sub_1000136BC(v124, v125, v271);

      *(v123 + 4) = v127;
      *(v123 + 12) = 2080;
      *(v123 + 14) = sub_1000136BC(v253, v126, v271);
      *(v123 + 22) = 2080;
      sub_100D47A68(v260, v258, v117, v118);
      v129 = v128;
      v131 = v130;
      sub_100016590(v117, v118);
      sub_100016590(v117, v118);
      v132 = sub_1000136BC(v129, v131, v271);

      *(v123 + 24) = v132;
      *(v123 + 32) = 2080;
      v133 = Set.description.getter();
      v135 = sub_1000136BC(v133, v134, v271);

      *(v123 + 34) = v135;
      *(v123 + 42) = 2080;
      sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID);
      v136 = v259;
      v137 = v269;
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v139;
      v267 = *(v268 + 8);
      v267(v136, v137);
      v141 = sub_1000136BC(v138, v140, v271);

      *(v123 + 44) = v141;
      v142 = v252;
      _os_log_impl(&_mh_execute_header, v252, v263, "%s: Sending %s: %s to %s with identifier: %s", v123, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100016590(v117, v118);
      sub_100016590(v117, v118);

      v267 = *(v268 + 8);
      v267(v259, v269);
    }
  }

  else
  {
    v143 = v268;
    (*(v268 + 32))(v98, v114, v31);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v144 = type metadata accessor for Logger();
    sub_1000076D4(v144, qword_10177C4F0);
    LODWORD(v259) = v274;
    v145 = v276;
    v252 = v275;
    v146 = v277;
    v147 = *(v143 + 16);
    (v147)(v258, v98, v31);
    v257 = v147;
    (v147)(v260, v267, v31);
    sub_100017D5C(v145, v146);
    sub_100017D5C(v145, v146);
    v148 = v266;

    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v271[0] = v267;
      *v151 = 136316418;
      *&v272 = v261;
      sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
      v152 = String.init<A>(describing:)();
      v245 = v150;
      v154 = v148;
      v155 = sub_1000136BC(v152, v153, v271);

      *(v151 + 4) = v155;
      *(v151 + 12) = 2080;
      *(v151 + 14) = sub_1000136BC(v253, v154, v271);
      *(v151 + 22) = 2080;
      sub_100D47A68(v259, v252, v145, v146);
      v157 = v156;
      v159 = v158;
      sub_100016590(v145, v146);
      sub_100016590(v145, v146);
      v160 = sub_1000136BC(v157, v159, v271);

      *(v151 + 24) = v160;
      *(v151 + 32) = 2080;
      v161 = Set.description.getter();
      v163 = sub_1000136BC(v161, v162, v271);

      *(v151 + 34) = v163;
      *(v151 + 42) = 2080;
      sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID);
      v164 = v258;
      v165 = dispatch thunk of CustomStringConvertible.description.getter();
      v167 = v166;
      v168 = *(v268 + 8);
      v168(v164, v269);
      v169 = sub_1000136BC(v165, v167, v271);

      *(v151 + 44) = v169;
      *(v151 + 52) = 2080;
      v170 = v260;
      v171 = dispatch thunk of CustomStringConvertible.description.getter();
      v173 = v172;
      v168(v170, v269);
      v174 = sub_1000136BC(v171, v173, v271);

      *(v151 + 54) = v174;
      _os_log_impl(&_mh_execute_header, v149, v245, "%s: Sending %s: %s to %s\nin response to %s with identifier: %s", v151, 0x3Eu);
      swift_arrayDestroy();

      v267 = v168;
      v168(v263, v269);
    }

    else
    {
      sub_100016590(v145, v146);

      sub_100016590(v145, v146);
      v175 = *(v268 + 8);
      v175(v260, v31);
      v175(v258, v31);
      v267 = v175;
      v175(v98, v31);
    }
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v176 = type metadata accessor for Logger();
  v177 = sub_1000076D4(v176, qword_10177C4F0);

  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.default.getter();

  v180 = os_log_type_enabled(v178, v179);
  v263 = v177;
  if (v180)
  {
    v181 = swift_slowAlloc();
    v271[0] = swift_slowAlloc();
    *v181 = 136315394;
    *&v272 = v261;
    sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
    v182 = String.init<A>(describing:)();
    v184 = sub_1000136BC(v182, v183, v271);

    *(v181 + 4) = v184;
    *(v181 + 12) = 2080;
    v185 = Dictionary.description.getter();
    v187 = sub_1000136BC(v185, v186, v271);

    *(v181 + 14) = v187;
    _os_log_impl(&_mh_execute_header, v178, v179, "%s: IDSSendMessageOptions: %s", v181, 0x16u);
    swift_arrayDestroy();
  }

  v188 = type metadata accessor for AnalyticsEvent(0);
  v189 = *(v188 + 48);
  v190 = *(v188 + 52);
  v191 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v191 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v192 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v193 = type metadata accessor for DispatchTime();
  v194 = *(*(v193 - 8) + 56);
  v194(&v191[v192], 1, 1, v193);
  v194(&v191[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v193);
  *(v191 + 15) = 0xD000000000000026;
  *(v191 + 16) = 0x8000000101370120;
  type metadata accessor for Transaction();
  LOBYTE(v192) = v274;
  v196 = v275;
  v195 = v276;
  v197 = v277;
  v198 = swift_allocObject();
  *(v198 + 16) = v191;
  *(v198 + 24) = v192;
  *(v198 + 32) = v196;
  *(v198 + 40) = v195;
  *(v198 + 48) = v197;

  sub_100017D5C(v195, v197);
  static Transaction.asyncTask(name:block:)();

  v199 = v265[8];
  v200 = v248;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100D1B288(v255);
  v202 = Set._bridgeToObjectiveC()().super.isa;

  sub_1006950E0(v262);
  v203 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v272 = 0;
  v271[0] = 0;
  v204 = [v199 sendData:isa toDestinations:v202 priority:300 options:v203 identifier:&v272 error:v271];

  v206 = v271[0];
  v207 = v272;
  if (v204)
  {
    v208 = v265[15];
    __chkstk_darwin(v205);
    *&v244[-32] = &v274;
    *&v244[-24] = v200;
    *&v244[-16] = v256;
    v209 = v206;
    v210 = v207;
    os_unfair_lock_lock(v208 + 16);
    v211 = v264;
    sub_100D25150(&v208[4]);
    v264 = v211;
    v212 = v208 + 16;
    if (v211)
    {
      os_unfair_lock_unlock(v212);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v212);

      v213 = v254;
      if (v210)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v214 = v250;
        UUID.init(uuidString:)();

        v215 = v269;
        if (v247(v214, 1, v269) == 1)
        {
          sub_10000B3A8(v214, &qword_1016980D0, &unk_10138F3B0);
          sub_1001DCF6C();
          swift_allocError();
          *v216 = 0;
          swift_willThrow();

          sub_100016590(v248, v256);
        }

        else
        {
          v220 = v251;
          v266 = *(v268 + 32);
          v266(v251, v214, v215);
          LODWORD(v265) = v274;
          v221 = v276;
          v262 = v275;
          v222 = v277;
          (v257)(v213, v220, v215);
          sub_100017D5C(v221, v222);
          sub_100017D5C(v221, v222);
          v223 = Logger.logObject.getter();
          v224 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v223, v224))
          {
            v225 = swift_slowAlloc();
            v263 = swift_slowAlloc();
            v271[0] = v263;
            *v225 = 136315650;
            *&v272 = v261;
            sub_1000BC4D4(&qword_1016BA348, &qword_1013E47A8);
            v226 = String.init<A>(describing:)();
            v261 = v223;
            v228 = sub_1000136BC(v226, v227, v271);
            LODWORD(v260) = v224;
            v229 = v228;

            *(v225 + 4) = v229;
            *(v225 + 12) = 2080;
            sub_100D47A68(v265, v262, v221, v222);
            v231 = v230;
            v233 = v232;
            sub_100016590(v221, v222);
            sub_100016590(v221, v222);
            v234 = sub_1000136BC(v231, v233, v271);

            *(v225 + 14) = v234;
            *(v225 + 22) = 2080;
            sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID);
            v235 = v254;
            v236 = v269;
            v237 = dispatch thunk of CustomStringConvertible.description.getter();
            v239 = v238;
            v267(v235, v236);
            v240 = sub_1000136BC(v237, v239, v271);

            *(v225 + 24) = v240;
            v241 = v261;
            _os_log_impl(&_mh_execute_header, v261, v260, "%s: Sent message %s with identifier: %s", v225, 0x20u);
            swift_arrayDestroy();

            sub_100016590(v248, v256);

            v242 = v236;
          }

          else
          {
            sub_100016590(v221, v222);

            sub_100016590(v248, v256);
            sub_100016590(v221, v222);

            v243 = v269;
            v267(v213, v269);
            v242 = v243;
          }

          v266(v249, v251, v242);
        }
      }

      else
      {
        sub_1001DCF6C();
        swift_allocError();
        *v219 = 0;
        swift_willThrow();

        sub_100016590(v248, v256);
      }
    }
  }

  else
  {
    v217 = v271[0];
    v218 = v207;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v200, v256);
  }
}

uint64_t sub_100D1F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v9 = *(*(sub_1000BC4D4(&qword_1016998B0, &qword_101392020) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D1F8A0, a4, 0);
}

uint64_t sub_100D1F8A0()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_100D1F9C4(v0[4], v1);
  sub_10000B3A8(v1, &qword_1016998B0, &qword_101392020);

  return _swift_task_switch(sub_100D1F928, 0, 0);
}

uint64_t sub_100D1F928()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v0[6];
  swift_errorRetain();
  sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  CheckedContinuation.resume(throwing:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D1F9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 144);
  v7 = sub_1000210EC(a1);
  if (v8)
  {
    v9 = v7;
    v10 = *(v3 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 144);
    *(v3 + 144) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100D1CC();
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    v15 = *(v12 + 56);
    v16 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
    v17 = *(v16 - 8);
    (*(v17 + 32))(a2, v15 + *(v17 + 72) * v9, v16);
    sub_100AF9EC8(v9, v12);
    v18 = *(v3 + 144);
    *(v3 + 144) = v12;

    (*(v17 + 56))(a2, 0, 1, v16);
  }

  else
  {
    v19 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  return swift_endAccess();
}

uint64_t sub_100D1FBB0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D1FC2C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100D1FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100D1FD98(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100D1FE40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100D1BD94();
}

uint64_t sub_100D1FEEC()
{
  v1 = *(v0 + 16);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100D1FFAC;
  v4 = *(v0 + 16);

  return unsafeBlocking<A>(_:)(v3, sub_100D201BC, v4, &type metadata for () + 8);
}

uint64_t sub_100D1FFAC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(Database.await(state:), v2, 0);
}

uint64_t sub_100D200C4()
{
  v1 = *v0;
  type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  sub_100D26ADC(&qword_1016B1180, v2, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D201E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 80) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_100D2020C, 0, 0);
}

uint64_t sub_100D2020C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_100D20318;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v9, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1013E4890, v6, &type metadata for () + 8);
}

uint64_t sub_100D20318()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1007FFC84, 0, 0);
}

uint64_t sub_100D20430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 216) = a8;
  *(v8 + 224) = v15;
  *(v8 + 288) = a7;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 176) = a2;
  v10 = type metadata accessor for UUID();
  *(v8 + 232) = v10;
  v11 = *(v10 - 8);
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 + 64);
  *(v8 + 256) = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_100D20558, a3, 0);
}

uint64_t sub_100D20558()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 280) = *(v1 + 136);

  return _swift_task_switch(sub_100D205E0, 0, 0);
}

void sub_100D205E0()
{
  v1 = 0;
  v2 = *(v0 + 280);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v38 = v4;
  v39 = *(v0 + 280);
  v7 = -1 << *(v39 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v35 = *(v0 + 248) + 7;
  v36 = v9;
  v37 = *(v0 + 240);
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 272);
    v41 = v13;
    v48 = *(v0 + 264);
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v40 = v15;
    v47 = *(v0 + 224);
    v44 = *(v0 + 288);
    v16 = *(v0 + 208);
    v45 = *(v0 + 216);
    v42 = *(v0 + 192);
    v43 = *(v0 + 200);
    sub_10001F280(*(v39 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v17 = type metadata accessor for TaskPriority();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v13, 1, 1, v17);
    sub_100031694((v0 + 16), v0 + 56);
    (*(v37 + 16))(v14, v16, v15);
    v19 = (*(v37 + 80) + 88) & ~*(v37 + 80);
    v20 = swift_allocObject();
    v20[2] = 0;
    v46 = v20 + 2;
    v20[3] = 0;
    sub_100031694((v0 + 56), (v20 + 4));
    v20[9] = v42;
    v20[10] = v43;
    (*(v37 + 32))(v20 + v19, v14, v40);
    v21 = v20 + ((v35 + v19) & 0xFFFFFFFFFFFFFFF8);
    *v21 = v44;
    *(v21 + 1) = v45;
    *(v21 + 2) = v47;
    sub_1000D2A70(v41, v48, &qword_101698C00, &qword_10138B570);
    LODWORD(v14) = (*(v18 + 48))(v48, 1, v17);

    v22 = *(v0 + 264);
    if (v14 == 1)
    {
      sub_10000B3A8(*(v0 + 264), &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v18 + 8))(v22, v17);
    }

    if (*v46)
    {
      v23 = v20[3];
      v24 = *v46;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = dispatch thunk of Actor.unownedExecutor.getter();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v28 = **(v0 + 176);
    v29 = swift_allocObject();
    *(v29 + 16) = &unk_1013E48A0;
    *(v29 + 24) = v20;

    if (v27 | v25)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v25;
      *(v0 + 120) = v27;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 272);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v28;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v4 = v38;
    v9 = v36;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v31 = *(v0 + 272);
  v30 = *(v0 + 280);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  v34 = *(v0 + 8);

  v34();
}

uint64_t sub_100D20A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 48) = v10;
  *(v8 + 56) = v11;
  *(v8 + 72) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return _swift_task_switch(sub_100D20A74, 0, 0);
}

uint64_t sub_100D20A74()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 24);
  v14 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_10001E3DC;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 72);
  v12 = *(v0 + 24);

  return v14(v12, v9, v10, v11, v7, v8, v2, v3);
}

uint64_t sub_100D20BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 88) = v12;
  *(v8 + 64) = v10;
  *(v8 + 113) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 112) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_100D20BF0, 0, 0);
}

uint64_t sub_100D20BF0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 113);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 112);
  v6 = *(v0 + 32);
  v12 = *(v0 + 16);
  v13 = *(v0 + 56);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = *(v0 + 80);
  *(v7 + 16) = v12;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v2;
  *(v7 + 72) = v13;
  *(v7 + 88) = v1;
  *(v7 + 96) = v8;
  v9 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_100D20D2C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v10, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1013E4858, v7, &type metadata for () + 8);
}

uint64_t sub_100D20D2C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1007FFC84, 0, 0);
}

uint64_t sub_100D20E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v17;
  *(v8 + 224) = v15;
  *(v8 + 240) = v16;
  *(v8 + 313) = v14;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 312) = a6;
  *(v8 + 192) = a4;
  *(v8 + 200) = a5;
  *(v8 + 176) = a2;
  *(v8 + 184) = a3;
  v10 = *(type metadata accessor for MessagingMessageContext() - 8);
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 + 64);
  *(v8 + 280) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_100D20F7C, a3, 0);
}

uint64_t sub_100D20F7C()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 304) = *(v1 + 136);

  return _swift_task_switch(sub_100D21004, 0, 0);
}

void sub_100D21004()
{
  v1 = 0;
  v2 = *(v0 + 304);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v35 = *(v0 + 264);
  v36 = v4;
  v6 = -1;
  v37 = *(v0 + 304);
  v7 = -1 << *(v37 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v34 = v9;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 296);
    v38 = v13;
    v47 = *(v0 + 288);
    v14 = *(v0 + 280);
    v15 = *(v0 + 256);
    v46 = *(v0 + 248);
    v44 = *(v0 + 232);
    v45 = *(v0 + 240);
    v16 = *(v0 + 216);
    v43 = *(v0 + 224);
    v42 = *(v0 + 313);
    v17 = *(v0 + 200);
    v41 = *(v0 + 208);
    v40 = *(v0 + 312);
    v39 = *(v0 + 192);
    sub_10001F280(*(v37 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v18 = type metadata accessor for TaskPriority();
    v49 = *(v18 - 8);
    (*(v49 + 56))(v13, 1, 1, v18);
    sub_100031694((v0 + 16), v0 + 56);
    sub_100D2577C(v15, v14);
    v19 = (*(v35 + 80) + 152) & ~*(v35 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v48 = (v20 + 16);
    *(v20 + 24) = 0;
    sub_100031694((v0 + 56), v20 + 32);
    *(v20 + 72) = v39;
    *(v20 + 80) = v17;
    *(v20 + 88) = v40;
    *(v20 + 96) = v41;
    *(v20 + 104) = v16;
    *(v20 + 112) = v42;
    *(v20 + 120) = v43;
    *(v20 + 128) = v44;
    *(v20 + 136) = v45;
    *(v20 + 144) = v46;
    sub_100476E9C(v14, v20 + v19);
    sub_1000D2A70(v38, v47, &qword_101698C00, &qword_10138B570);
    LODWORD(v19) = (*(v49 + 48))(v47, 1, v18);

    sub_100017D5C(v44, v45);

    v21 = *(v0 + 288);
    if (v19 == 1)
    {
      sub_10000B3A8(*(v0 + 288), &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v49 + 8))(v21, v18);
    }

    if (*v48)
    {
      v22 = *(v20 + 24);
      v23 = *v48;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = **(v0 + 176);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1013E4868;
    *(v28 + 24) = v20;

    if (v26 | v24)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v24;
      *(v0 + 120) = v26;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 296);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v27;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v4 = v36;
    v9 = v34;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v30 = *(v0 + 296);
  v29 = *(v0 + 304);
  v32 = *(v0 + 280);
  v31 = *(v0 + 288);

  v33 = *(v0 + 8);

  v33();
}

uint64_t sub_100D2146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v15;
  *(v8 + 120) = v16;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 137) = v11;
  *(v8 + 80) = v10;
  *(v8 + 88) = v12;
  *(v8 + 136) = a7;
  *(v8 + 64) = a6;
  *(v8 + 72) = a8;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  return _swift_task_switch(sub_100D214BC, 0, 0);
}

void sub_100D214BC()
{
  v1 = *(v0 + 104);
  v15 = *(v0 + 88);
  v2 = *(v0 + 137);
  v3 = *(v0 + 48);
  v4 = v3[4];
  sub_1000035D0(v3, v3[3]);
  *(v0 + 16) = v2;
  *(v0 + 24) = v15;
  *(v0 + 40) = v1;
  v5 = *(v4 + 32);
  v16 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_100865E18;
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 136);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_100D21630(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100D21650, 0, 0);
}

uint64_t sub_100D21650()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100D21734;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v3, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1013E4820, v1, &type metadata for () + 8);
}

uint64_t sub_100D21734()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100D2184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  v6 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100D218FC, a3, 0);
}

uint64_t sub_100D218FC()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 136);

  return _swift_task_switch(sub_100D21984, 0, 0);
}

void sub_100D21984()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v32 = v4;
  v33 = *(v0 + 216);
  v7 = -1 << *(v33 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v31 = v9;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);
    sub_10001F280(*(v33 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v16 = type metadata accessor for TaskPriority();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14, 1, 1, v16);
    sub_100031694((v0 + 16), v0 + 56);
    v18 = swift_allocObject();
    v18[2] = 0;
    v19 = v18 + 2;
    v18[3] = 0;
    sub_100031694((v0 + 56), (v18 + 4));
    v18[9] = v15;
    sub_1000D2A70(v14, v13, &qword_101698C00, &qword_10138B570);
    LODWORD(v13) = (*(v17 + 48))(v13, 1, v16);

    v20 = *(v0 + 200);
    if (v13 == 1)
    {
      sub_10000B3A8(*(v0 + 200), &qword_101698C00, &qword_10138B570);
      if (*v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v17 + 8))(v20, v16);
      if (*v19)
      {
LABEL_13:
        v21 = v18[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v22 = 0;
    v24 = 0;
LABEL_16:
    v25 = **(v0 + 176);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_1013E4830;
    *(v26 + 24) = v18;

    if (v24 | v22)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v22;
      *(v0 + 120) = v24;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 208);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v25;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v9 = v31;
    v4 = v32;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 200);

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_100D21D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100D21D2C, 0, 0);
}

uint64_t sub_100D21D2C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1001B7B20;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t sub_100D21E58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100D21E78, 0, 0);
}

uint64_t sub_100D21E78()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100D21F5C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v3, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1013E47E8, v1, &type metadata for () + 8);
}

uint64_t sub_100D21F5C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1007FFC84, 0, 0);
}

uint64_t sub_100D22074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  v6 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100D22124, a3, 0);
}

uint64_t sub_100D22124()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 136);

  return _swift_task_switch(sub_100D221AC, 0, 0);
}

void sub_100D221AC()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v32 = v4;
  v33 = *(v0 + 216);
  v7 = -1 << *(v33 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v31 = v9;
  while (v8)
  {
LABEL_11:
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);
    sub_10001F280(*(v33 + 56) + 40 * (__clz(__rbit64(v8)) | (v1 << 6)), v0 + 16);
    v16 = type metadata accessor for TaskPriority();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v14, 1, 1, v16);
    sub_100031694((v0 + 16), v0 + 56);
    v18 = swift_allocObject();
    v18[2] = 0;
    v19 = v18 + 2;
    v18[3] = 0;
    sub_100031694((v0 + 56), (v18 + 4));
    v18[9] = v15;
    sub_1000D2A70(v14, v13, &qword_101698C00, &qword_10138B570);
    LODWORD(v13) = (*(v17 + 48))(v13, 1, v16);

    v20 = *(v0 + 200);
    if (v13 == 1)
    {
      sub_10000B3A8(*(v0 + 200), &qword_101698C00, &qword_10138B570);
      if (*v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v17 + 8))(v20, v16);
      if (*v19)
      {
LABEL_13:
        v21 = v18[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v22 = 0;
    v24 = 0;
LABEL_16:
    v25 = **(v0 + 176);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_1013E47F8;
    *(v26 + 24) = v18;

    if (v24 | v22)
    {
      v10 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v22;
      *(v0 + 120) = v24;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 208);
    v8 &= v8 - 1;
    *(v0 + 152) = 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v25;
    swift_task_create();

    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
    v9 = v31;
    v4 = v32;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      v1 = v12;
      goto LABEL_11;
    }
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 200);

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_100D22534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100D22554, 0, 0);
}

uint64_t sub_100D22554()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  sub_1000035D0(v1, v3);

  v6 = sub_10112B800(v5);
  v0[4] = v6;

  v7 = *(v4 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_100D226A4;

  return v11(v6, v3, v4);
}

uint64_t sub_100D226A4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100D227B4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF68);
  sub_1000076D4(v0, qword_10177BF68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D22834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1016951A8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v5 = *(a1 + 64);
  swift_beginAccess();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = qword_10177C528;
  qword_10177C528 = 0x8000000000000000;
  sub_100FFE0D8(a2, a3, v6, isUniquelyReferenced_nonNull_native);

  qword_10177C528 = v10;
  return swift_endAccess();
}

BOOL sub_100D22928(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 64);
    v5 = v2;
    v6 = sub_10039D39C(a2);
    sub_100475D70(v4, v6);
  }

  return v2 == 0;
}

uint64_t sub_100D229A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for StateCaptureDateType();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateCaptureHintAPI();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  StateCaptureHint.api.getter();
  (*(v8 + 104))(v12, enum case for StateCaptureHintAPI.request(_:), v7);
  sub_100D26ADC(&qword_101698DD0, 255, &type metadata accessor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v8 + 8);
  v15(v12, v7);
  v15(v14, v7);
  if (LODWORD(v30[0]) == v31)
  {
    v16 = *(a1 + 120);
    os_unfair_lock_lock((v16 + 64));
    v17 = *(v16 + 16);
    v18 = *(v16 + 48);
    v33 = *(v16 + 32);
    v34 = v18;
    v36 = v33;
    v37 = v18;
    v32 = v17;
    v35 = v17;
    sub_1008CCDD0(&v35, v30);
    sub_1000D2A70(&v36, v30, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(&v36 + 8, v30, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(&v37, v30, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(&v37 + 8, v30, &qword_1016BA328, &qword_1013E4758);
    os_unfair_lock_unlock((v16 + 64));
    v19 = objc_opt_self();
    v20 = sub_1010459A4();
    sub_1002FFC04(&v35);
    sub_10000B3A8(&v36, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(&v36 + 8, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(&v37, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(&v37 + 8, &qword_1016BA328, &qword_1013E4758);
    v30[0] = 0;
    v21 = [v19 dataWithPropertyList:v20 format:200 options:0 error:v30];

    v22 = v30[0];
    if (!v21)
    {
      v27 = v22;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v28 + 104))(v6, enum case for StateCaptureDateType.serialized(_:), v3);
    v23 = v29;
    StateCaptureStateData.init(type:title:data:)();
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v29;
  }

  v25 = type metadata accessor for StateCaptureStateData();
  return (*(*(v25 - 8) + 56))(v23, v24, 1, v25);
}

uint64_t sub_100D22E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[35] = v5;
  v6 = *(v5 - 8);
  v4[36] = v6;
  v7 = *(v6 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[39] = v8;
  v9 = *(v8 - 8);
  v4[40] = v9;
  v10 = *(v9 + 64) + 15;
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_100D22F74, 0, 0);
}

uint64_t sub_100D22F74()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 328);
    v2 = *(v0 + 296);
    v3 = *(v0 + 304);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 272);
    swift_beginAccess();
    v7 = *(v0 + 328);
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    static Clock<>.continuous.getter();
    *(v0 + 128) = xmmword_1013E4580;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v13 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v14 = *(v11 + 8);
    *(v0 + 336) = v14;
    *(v0 + 344) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v10, v12);
    v15 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    *v16 = v0;
    v16[1] = sub_100D231B0;
    v17 = *(v0 + 328);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v19, v0 + 88, v18, v13);
  }
}

uint64_t sub_100D231B0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[42];
    v4 = v2[43];
    v6 = v2[38];
    v7 = v2[35];

    v5(v6, v7);
    v8 = sub_100D2389C;
  }

  else
  {
    v9 = v2[43];
    v11 = v2[40];
    v10 = v2[41];
    v12 = v2[39];
    (v2[42])(v2[38], v2[35]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_100D2331C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100D2331C()
{
  v35 = v0;
  v1 = *(v0 + 272);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 120);

    os_unfair_lock_lock((v3 + 64));
    v4 = *(v3 + 16);
    v5 = *(v3 + 48);
    *(v0 + 32) = *(v3 + 32);
    *(v0 + 48) = v5;
    *(v0 + 16) = v4;
    *(v0 + 112) = *(v3 + 16);
    v6 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 176) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 192) = v6;
    sub_1008CCDD0(v0 + 112, v0 + 144);
    sub_1000D2A70(v0 + 200, v0 + 208, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 216, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 224, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 232, &qword_1016BA328, &qword_1013E4758);
    os_unfair_lock_unlock((v3 + 64));

    if (qword_101695198 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C508);
    sub_1008CCDD0(v0 + 112, v0 + 160);
    sub_1000D2A70(v0 + 200, v0 + 240, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 248, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 256, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 264, &qword_1016BA328, &qword_1013E4758);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_1002FFC04(v0 + 112);
    sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    if (!os_log_type_enabled(v8, v9))
    {

      sub_1002FFC04(v0 + 112);
      sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    v12 = sub_101049994();
    v14 = v13;
    sub_1002FFC04(v0 + 112);
    sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    v15 = sub_1000136BC(v12, v14, &v34);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  if (static Task<>.isCancelled.getter())
  {
LABEL_7:
    v16 = *(v0 + 328);
    v17 = *(v0 + 296);
    v18 = *(v0 + 304);

    v19 = *(v0 + 8);

    return v19();
  }

LABEL_11:
  v21 = *(v0 + 328);
  v23 = *(v0 + 304);
  v22 = *(v0 + 312);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 280);
  static Clock<>.continuous.getter();
  *(v0 + 128) = xmmword_1013E4580;
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  *(v0 + 104) = 1;
  v27 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v28 = *(v25 + 8);
  *(v0 + 336) = v28;
  *(v0 + 344) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v26);
  v29 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v30 = swift_task_alloc();
  *(v0 + 352) = v30;
  *v30 = v0;
  v30[1] = sub_100D231B0;
  v31 = *(v0 + 328);
  v33 = *(v0 + 304);
  v32 = *(v0 + 312);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v33, v0 + 88, v32, v27);
}

uint64_t sub_100D2389C()
{
  v37 = v0;
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v1 = *(v0 + 272);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 120);

    os_unfair_lock_lock((v3 + 64));
    v4 = *(v3 + 16);
    v5 = *(v3 + 48);
    *(v0 + 32) = *(v3 + 32);
    *(v0 + 48) = v5;
    *(v0 + 16) = v4;
    *(v0 + 112) = *(v3 + 16);
    v6 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 176) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 192) = v6;
    sub_1008CCDD0(v0 + 112, v0 + 144);
    sub_1000D2A70(v0 + 200, v0 + 208, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 216, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 224, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 232, &qword_1016BA328, &qword_1013E4758);
    os_unfair_lock_unlock((v3 + 64));

    if (qword_101695198 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C508);
    sub_1008CCDD0(v0 + 112, v0 + 160);
    sub_1000D2A70(v0 + 200, v0 + 240, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 192, v0 + 248, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 184, v0 + 256, &qword_1016BA328, &qword_1013E4758);
    sub_1000D2A70(v0 + 176, v0 + 264, &qword_1016BA328, &qword_1013E4758);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_1002FFC04(v0 + 112);
    sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
    sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315138;
      v12 = sub_101049994();
      v14 = v13;
      sub_1002FFC04(v0 + 112);
      sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
      v15 = sub_1000136BC(v12, v14, &v36);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_1002FFC04(v0 + 112);
      sub_10000B3A8(v0 + 200, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 192, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 184, &qword_1016BA328, &qword_1013E4758);
      sub_10000B3A8(v0 + 176, &qword_1016BA328, &qword_1013E4758);
    }
  }

  v16 = static Task<>.isCancelled.getter();
  v17 = *(v0 + 328);
  if (v16)
  {
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = *(v0 + 328);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v24 = *(v0 + 304);
    v23 = *(v0 + 312);
    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v27 = *(v0 + 280);
    v28 = *(v0 + 328);
    static Clock<>.continuous.getter();
    *(v0 + 128) = xmmword_1013E4580;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 1;
    v29 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v30 = *(v26 + 8);
    *(v0 + 336) = v30;
    *(v0 + 344) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v25, v27);
    v31 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v32 = swift_task_alloc();
    *(v0 + 352) = v32;
    *v32 = v0;
    v32[1] = sub_100D231B0;
    v33 = *(v0 + 328);
    v35 = *(v0 + 304);
    v34 = *(v0 + 312);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v35, v0 + 88, v34, v29);
  }
}

uint64_t sub_100D23E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D22E4C(a1, v4, v5, v6);
}

uint64_t sub_100D23ED8()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  sub_1000041A4(&qword_1016BA378, &qword_1016BA368, &unk_1013E48C0);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  String.append(_:)(v0[1]);
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 60;
}

uint64_t sub_100D24004(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = a4;
  *(v4 + 240) = a2;
  *(v4 + 264) = a1;
  return _swift_task_switch(sub_100D2402C, 0, 0);
}

unint64_t sub_100D2402C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 264);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x546567617373656DLL;
  *(inited + 16) = xmmword_10138B360;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 72) = &type metadata for Int32;
  *(inited + 80) = sub_100D25210();
  *(inited + 48) = v3 + 1;
  *(inited + 88) = 2;
  strcpy((inited + 96), "messageVersion");
  *(inited + 111) = -18;
  *(inited + 136) = &type metadata for Int;
  result = sub_1000DFAD8();
  *(inited + 144) = result;
  *(inited + 112) = v2;
  *(inited + 152) = 2;
  v6 = v1 >> 62;
  *(inited + 160) = 0x536567617373656DLL;
  *(inited + 168) = 0xEB00000000657A69;
  if ((v1 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v8 = *(*(v0 + 248) + 16);
    v9 = *(*(v0 + 248) + 24);
    v10 = __OFSUB__(v9, v8);
    v7 = v9 - v8;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = *(v0 + 262);
    goto LABEL_11;
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 252);
  v10 = __OFSUB__(v12, v11);
  LODWORD(v7) = v12 - v11;
  if (v10)
  {
    __break(1u);
    return result;
  }

  v7 = v7;
LABEL_11:
  *(inited + 200) = &type metadata for Int;
  *(inited + 208) = result;
  *(inited + 176) = v7;
  *(inited + 216) = 2;
  v13 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100D24214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100D24314, 0, 0);
}

uint64_t sub_100D24314()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100D26ADC(&qword_101698C58, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100D26ADC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100D244AC;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100D244AC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100D24668, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100D24668()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_100D246D4(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_100008BB8(0, &qword_1016A0AD8, IDSAccount_ptr);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

BOOL sub_100D24814@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100D22928(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100D24848(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(v2 + 16) = *a2;
  *(v2 + 24) = *(a2 + 8);
  *(v2 + 40) = v3;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_100D2487C, 0, 0);
}

uint64_t sub_100D2487C()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100D2493C;
  v3 = v0[6];

  return sub_101162604(&unk_1013E47C0, v1);
}

uint64_t sub_100D2493C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = v2[7];

  type metadata accessor for AnalyticsPublisher();
  v2[9] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v4;
  v6[1] = sub_100D24AA0;
  v7 = v2[6];

  return sub_101163F78(v7);
}

uint64_t sub_100D24AA0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_100D24BB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      a3 = 0;
      return sub_101046408(v4 + 1, v5, a3);
    }

    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    a3 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      return sub_101046408(v4 + 1, v5, a3);
    }

    __break(1u);
  }

  else if (!v6)
  {
    a3 = BYTE6(a4);
    return sub_101046408(v4 + 1, v5, a3);
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    a3 = HIDWORD(a3) - a3;
    return sub_101046408(v4 + 1, v5, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100D24C34(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001BBA4C;

  return sub_100D24004(v5, v3, v2, v4);
}

uint64_t sub_100D24D40()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770) - 8);
  v13 = v0 + ((*(v10 + 80) + v9 + 16) & ~*(v10 + 80));
  *(&v12 + 1) = *(v0 + v8);
  *&v12 = *(v0 + v7);
  return sub_100D1D7BC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + v2), *(v0 + v3), (v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 9), v12, *(v0 + v9), *(v0 + v9 + 8));
}

uint64_t sub_100D24F08(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100D1F7FC(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_100D250A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100D24848(v2, v0 + 24);
}

uint64_t sub_100D25170()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BBA4C;

  return sub_100D24C34(v2);
}

unint64_t sub_100D25210()
{
  result = qword_1016BA358;
  if (!qword_1016BA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA358);
  }

  return result;
}

uint64_t sub_100D2531C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100D21E58(v2, v3);
}

uint64_t sub_100D253B4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100D22074(a1, a2, v7, v6);
}

uint64_t sub_100D25468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D22534(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100D25528()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100D21630(v2, v3);
}

uint64_t sub_100D255C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100D2184C(a1, a2, v7, v6);
}

uint64_t sub_100D25674()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100D256BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D21D0C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100D2577C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingMessageContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D257E0()
{
  v2 = *(type metadata accessor for MessagingMessageContext() - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = v0 + ((*(v2 + 80) + 104) & ~*(v2 + 80));
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100D20BAC(v3, v4, v5, v11, v6, v7, v10, v15);
}

uint64_t sub_100D25920(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v15 = *(v2 + 88);
  v16 = *(v2 + 72);
  v11 = *(v2 + 104);
  v12 = *(v2 + 40);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100D20E44(a1, a2, v5, v6, v7, v12, v8, v9);
}

uint64_t sub_100D25A38(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for MessagingMessageContext() - 8);
  v17 = *(v1 + 24);
  v18 = *(v1 + 16);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 104);
  v16 = *(v1 + 96);
  v8 = *(v1 + 112);
  v15 = *(v1 + 120);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = v1 + ((*(v4 + 80) + 152) & ~*(v4 + 80));
  v12 = *(v1 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100D2146C(a1, v18, v17, v1 + 32, v5, v6, v12, v16);
}

uint64_t sub_100D25B8C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100D201E0(v4, v5, v6, v0 + v3, v10, v8, v9);
}

uint64_t sub_100D25CC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 48);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100D20430(a1, a2, v6, v7, v8, v9, v12, v10);
}

uint64_t sub_100D25DB0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v10 + 1);
  v11 = *(v10 + 2);
  v13 = *v10;
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100D20A40(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5, v13);
}

uint64_t sub_100D25F04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100010F48(a1, v5);
}

void sub_100D25FBC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v39 = a3;
  v49 = a2;
  v50 = a1;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v47 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v47);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v5 + 32) = v18;
  *(v5 + 40) = 0;
  v40 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v45 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v19 = *(v14 + 104);
  v46 = v14 + 104;
  v48 = v19;
  v19(v17);
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  v42 = sub_100D26ADC(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  v41 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v43 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 80) = sub_10090A9BC(_swiftEmptyArrayStorage);
  *(v5 + 88) = sub_100909A8C(_swiftEmptyArrayStorage);
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  v20 = v49;
  v21 = v50;
  *(v5 + 16) = v50;
  *(v5 + 24) = v20;
  v51 = 0;
  v52 = 0xE000000000000000;

  _StringGuts.grow(_:)(45);

  v51 = 0xD00000000000002BLL;
  v52 = 0x80000001013701B0;
  v22._countAndFlagsBits = v21;
  v22._object = v20;
  String.append(_:)(v22);
  v48(v17, v45, v47);
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = objc_allocWithZone(IDSService);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithService:v24];

  if (v25)
  {
    *(v6 + 64) = v25;
    type metadata accessor for MessagingQueryController();
    swift_allocObject();

    *(v6 + 72) = sub_10126766C(v21, v20);
    *(v6 + 96) = a4;
    *(v6 + 104) = a5;
    *(v6 + 112) = v39;
    sub_1000BC4D4(&qword_1016BA370, &unk_1013E48D0);
    v26 = swift_allocObject();
    *(v26 + 64) = 0;
    *(v26 + 16) = v21;
    *(v26 + 24) = v20;
    *(v26 + 32) = _swiftEmptyDictionarySingleton;
    *(v26 + 40) = _swiftEmptyDictionarySingleton;
    *(v26 + 48) = _swiftEmptyDictionarySingleton;
    *(v26 + 56) = _swiftEmptyDictionarySingleton;
    *(v6 + 120) = v26;
    v27 = qword_101695190;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C4F0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v32;
      *v31 = 136446210;
      v33 = sub_100D23ED8();
      v35 = v34;

      v36 = sub_1000136BC(v33, v35, &v51);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Created %{public}s", v31, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {
    }

    if (qword_1016951A0 != -1)
    {
      v37 = swift_once();
    }

    __chkstk_darwin(v37);
    *(&v38 - 4) = v6;
    *(&v38 - 3) = v21;
    *(&v38 - 2) = v20;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D2663C(uint64_t a1, int a2, uint64_t *a3)
{
  v34 = a3;
  v35 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  sub_100D1F9C4(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016998B0, &qword_101392020);
    if (qword_101694E10 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177BF50);
    (*(v5 + 16))(v9, a1, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136446210;
      sub_100D26ADC(&qword_101696930, 255, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v5 + 8))(v9, v4);
      v29 = sub_1000136BC(v26, v28, &v36);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Untracked identifier: %{public}s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    if (v35)
    {
      (*(v5 + 16))(v11, a1, v4);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      if (v34)
      {
        v30 = v34;
      }

      else
      {
        v31 = objc_allocWithZone(NSError);
        v32 = String._bridgeToObjectiveC()();
        v30 = [v31 initWithDomain:v32 code:0 userInfo:0];
      }

      v36 = v30;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_100D26ADC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100D26B44()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF80);
  v1 = sub_1000076D4(v0, qword_10177BF80);
  if (qword_101694E28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D26C0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 128))
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v4 = sub_100D42DB8(&qword_1016A4E68, a2, type metadata accessor for CircleTrustService);
    type metadata accessor for CircleTrustMessageRouter();
    v3 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v3 + 112) = v2;
    *(v3 + 120) = v4;
    v5 = *(v2 + 128);
    *(v2 + 128) = v3;
  }

  return v3;
}

uint64_t sub_100D26CC8()
{
  v1[7] = v0;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v1;
  v6[1] = sub_100D26DB8;

  return daemon.getter();
}

uint64_t sub_100D26DB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100D42DB8(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v6 = v12;
  v6[1] = sub_100D26F9C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D26F9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v10 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_100D27368;
  }

  else
  {
    v7 = v3[12];
    v8 = v3[7];

    v6 = sub_100D270C4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D270C4()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for CircleTrustService();
  v0[6] = sub_100D42DB8(&qword_1016BA538, v2, type metadata accessor for CircleTrustService);
  v0[2] = v1;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100D271C0;
  v4 = v0[14];
  v5 = v0[10];

  return sub_100D1C654(v5, (v0 + 2));
}

uint64_t sub_100D271C0()
{
  v2 = *v1;
  v3 = (*v1)[16];
  v8 = *v1;
  (*v1)[17] = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_100D2751C;
  }

  else
  {
    v6 = v2[7];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_100007BAC(v2 + 2);
    v5 = sub_100D272FC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D272FC()
{
  v1 = v0[14];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D27368()
{
  v1 = v0[12];

  v2 = v0[15];
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF80);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100D2751C()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 2);
  v2 = v0[17];
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BF80);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100D276D8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100D2780C, v1, 0);
}

uint64_t sub_100D2780C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (!v2)
  {
LABEL_5:
    v17 = *(v0 + 208);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = *(v0 + 168);

    v21 = *(v0 + 8);

    return v21();
  }

  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v3 + 80);
  *(v0 + 288) = v5;
  *(v0 + 224) = *(v3 + 72);
  *(v0 + 232) = 0;
  v6 = *(v0 + 208);
  sub_100D4A580(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for OwnerSharingCircle);
  v7 = *(v6 + *(v4 + 32));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 160);
    v10 = sub_1003A85FC(*(v7 + 16), 0);
    v11 = sub_1003CC2CC(v0 + 16, v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8, v7);
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);

    sub_1000128F8();
    if (v11 != v8)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v23 = v10[2];
  if (v23)
  {
    v24 = *(v0 + 160);
    v73 = *(v24 + 72);
    v25 = v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v26 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v30 = *(v0 + 184);
      v31 = *(v0 + 176);
      v74 = v23;
      v75 = *(v0 + 168);
      v33 = *(v0 + 152);
      v32 = *(v0 + 160);
      v34 = *(v0 + 208) + *(*(v0 + 192) + 20);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v35;
      v36._countAndFlagsBits = 124;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38 = *(v0 + 80);
      v39 = *(v0 + 88);
      v40 = String.utf8Data.getter();
      v42 = v41;

      *(v0 + 96) = v40;
      *(v0 + 104) = v42;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v40, v42);
      v43 = *(v32 + 16);
      v44 = v31;
      v43(v31, v30, v33);
      v43(v75, v25, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v26;
      v46 = sub_1000210EC(v44);
      v51 = v26[2];
      v52 = (v47 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return Sequence.asyncCompactMap<A>(_:)(v46, v47, v48, v49, v50);
      }

      v55 = v47;
      if (v26[3] < v54)
      {
        break;
      }

      v59 = v73;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v67 = v46;
      sub_101005D44();
      v46 = v67;
      v26 = *(v0 + 112);
      if (v55)
      {
LABEL_11:
        (*(*(v0 + 160) + 40))(v26[7] + v46 * v59, *(v0 + 168), *(v0 + 152));
        goto LABEL_12;
      }

LABEL_19:
      v61 = *(v0 + 168);
      v60 = *(v0 + 176);
      v62 = *(v0 + 152);
      v63 = *(v0 + 160);
      v26[(v46 >> 6) + 8] |= 1 << v46;
      v64 = v46 * v59;
      v43(v26[6] + v46 * v59, v60, v62);
      v46 = (*(v63 + 32))(v26[7] + v64, v61, v62);
      v65 = v26[2];
      v53 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v53)
      {
        goto LABEL_31;
      }

      v26[2] = v66;
LABEL_12:
      v27 = *(v0 + 184);
      v28 = *(v0 + 152);
      v29 = *(*(v0 + 160) + 8);
      v29(*(v0 + 176), v28);
      v29(v27, v28);
      v25 += v59;
      v23 = v74 - 1;
      if (v74 == 1)
      {
        goto LABEL_24;
      }
    }

    v56 = *(v0 + 176);
    sub_100FE80C8(v54, isUniquelyReferenced_nonNull_native);
    v57 = *(v0 + 112);
    v46 = sub_1000210EC(v56);
    v59 = v73;
    if ((v55 & 1) != (v58 & 1))
    {
      v72 = *(v0 + 152);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_18:
    v26 = *(v0 + 112);
    if (v55)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v26 = &_swiftEmptyDictionarySingleton;
LABEL_24:
  *(v0 + 240) = v26;

  *(v0 + 120) = v26;
  v68 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v69 = swift_task_alloc();
  *(v0 + 248) = v69;
  v70 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v71 = type metadata accessor for OwnerPeerTrust();
  v50 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10);
  *v69 = v0;
  v69[1] = sub_100D27DA8;
  v47 = *(v0 + 144);
  v46 = &unk_1013E4C08;
  v48 = v70;
  v49 = v71;

  return Sequence.asyncCompactMap<A>(_:)(v46, v47, v48, v49, v50);
}

uint64_t sub_100D27DA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *(*v2 + 240);
  v7 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v8 = v4[18];

    return _swift_task_switch(sub_100D28664, v8, 0);
  }

  else
  {
    v4[33] = a1;
    v9 = swift_task_alloc();
    v4[34] = v9;
    *v9 = v7;
    v9[1] = sub_100D27F60;
    v10 = v4[18];
    v11 = v4[26];

    return sub_100D29C1C(v11, a1);
  }
}

uint64_t sub_100D27F60()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 280) = v0;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_100D28D70;
  }

  else
  {
    v7 = sub_100D280A8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D280A8()
{
  sub_100D4A3EC(*(v0 + 208), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 232) + 1;
  if (v1 == *(v0 + 216))
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);

    v6 = *(v0 + 8);

    return v6();
  }

  *(v0 + 232) = v1;
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  sub_100D4A580(*(v0 + 136) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 224) * v1, v8, type metadata accessor for OwnerSharingCircle);
  v10 = *(v8 + *(v9 + 32));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v0 + 160);
    v13 = sub_1003A85FC(*(v10 + 16), 0);
    v14 = sub_1003CC2CC(v0 + 16, v13 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11, v10);
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);

    sub_1000128F8();
    if (v14 == v11)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_9:
  v20 = v13[2];
  if (v20)
  {
    v21 = *(v0 + 160);
    v70 = *(v21 + 72);
    v22 = v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v23 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v27 = *(v0 + 184);
      v28 = *(v0 + 176);
      v71 = v20;
      v72 = *(v0 + 168);
      v30 = *(v0 + 152);
      v29 = *(v0 + 160);
      v31 = *(v0 + 208) + *(*(v0 + 192) + 20);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v32;
      v33._countAndFlagsBits = 124;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35 = *(v0 + 80);
      v36 = *(v0 + 88);
      v37 = String.utf8Data.getter();
      v39 = v38;

      *(v0 + 96) = v37;
      *(v0 + 104) = v39;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v37, v39);
      v40 = *(v29 + 16);
      v41 = v28;
      v40(v28, v27, v30);
      v40(v72, v22, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v23;
      v43 = sub_1000210EC(v41);
      v48 = v23[2];
      v49 = (v44 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return Sequence.asyncCompactMap<A>(_:)(v43, v44, v45, v46, v47);
      }

      v52 = v44;
      if (v23[3] < v51)
      {
        break;
      }

      v56 = v70;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v64 = v43;
      sub_101005D44();
      v43 = v64;
      v23 = *(v0 + 112);
      if (v52)
      {
LABEL_11:
        (*(*(v0 + 160) + 40))(v23[7] + v43 * v56, *(v0 + 168), *(v0 + 152));
        goto LABEL_12;
      }

LABEL_19:
      v58 = *(v0 + 168);
      v57 = *(v0 + 176);
      v59 = *(v0 + 152);
      v60 = *(v0 + 160);
      v23[(v43 >> 6) + 8] |= 1 << v43;
      v61 = v43 * v56;
      v40(v23[6] + v43 * v56, v57, v59);
      v43 = (*(v60 + 32))(v23[7] + v61, v58, v59);
      v62 = v23[2];
      v50 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v50)
      {
        goto LABEL_31;
      }

      v23[2] = v63;
LABEL_12:
      v24 = *(v0 + 184);
      v25 = *(v0 + 152);
      v26 = *(*(v0 + 160) + 8);
      v26(*(v0 + 176), v25);
      v26(v24, v25);
      v22 += v56;
      v20 = v71 - 1;
      if (v71 == 1)
      {
        goto LABEL_24;
      }
    }

    v53 = *(v0 + 176);
    sub_100FE80C8(v51, isUniquelyReferenced_nonNull_native);
    v54 = *(v0 + 112);
    v43 = sub_1000210EC(v53);
    v56 = v70;
    if ((v52 & 1) != (v55 & 1))
    {
      v69 = *(v0 + 152);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_18:
    v23 = *(v0 + 112);
    if (v52)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v23 = &_swiftEmptyDictionarySingleton;
LABEL_24:
  *(v0 + 240) = v23;

  *(v0 + 120) = v23;
  v65 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v66 = swift_task_alloc();
  *(v0 + 248) = v66;
  v67 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v68 = type metadata accessor for OwnerPeerTrust();
  v47 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10);
  *v66 = v0;
  v66[1] = sub_100D27DA8;
  v44 = *(v0 + 144);
  v43 = &unk_1013E4C08;
  v45 = v67;
  v46 = v68;

  return Sequence.asyncCompactMap<A>(_:)(v43, v44, v45, v46, v47);
}

uint64_t sub_100D28664()
{
  v87 = v0;
  v1 = *(v0 + 256);
  if (qword_101694E20 != -1)
  {
LABEL_36:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF80);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v86 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v86);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Can't update the circle, error: %{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  sub_100D4A3EC(v6, type metadata accessor for OwnerSharingCircle);
  v15 = *(v0 + 232) + 1;
  if (v15 == *(v0 + 216))
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);

    v20 = *(v0 + 8);

    return v20();
  }

  *(v0 + 232) = v15;
  v22 = *(v0 + 208);
  v23 = *(v0 + 192);
  sub_100D4A580(*(v0 + 136) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 224) * v15, v22, type metadata accessor for OwnerSharingCircle);
  v24 = *(v22 + *(v23 + 32));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v0 + 160);
    v27 = sub_1003A85FC(*(v24 + 16), 0);
    v28 = sub_1003CC2CC(v0 + 16, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25, v24);
    v29 = *(v0 + 16);
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    v33 = *(v0 + 48);

    sub_1000128F8();
    if (v28 == v25)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_13:
  v34 = v27[2];
  if (v34)
  {
    v35 = *(v0 + 160);
    v83 = *(v35 + 72);
    v36 = v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v37 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v41 = *(v0 + 184);
      v42 = *(v0 + 176);
      v84 = v34;
      v85 = *(v0 + 168);
      v44 = *(v0 + 152);
      v43 = *(v0 + 160);
      v45 = *(v0 + 208) + *(*(v0 + 192) + 20);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v46;
      v47._countAndFlagsBits = 124;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49 = *(v0 + 80);
      v50 = *(v0 + 88);
      v51 = String.utf8Data.getter();
      v53 = v52;

      *(v0 + 96) = v51;
      *(v0 + 104) = v53;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v51, v53);
      v54 = *(v43 + 16);
      v55 = v42;
      v54(v42, v41, v44);
      v54(v85, v36, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v37;
      v57 = sub_1000210EC(v55);
      v59 = v37[2];
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v63 = v58;
      if (v37[3] < v62)
      {
        break;
      }

      v67 = v83;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v75 = v57;
      sub_101005D44();
      v57 = v75;
      v37 = *(v0 + 112);
      if (v63)
      {
LABEL_15:
        (*(*(v0 + 160) + 40))(v37[7] + v57 * v67, *(v0 + 168), *(v0 + 152));
        goto LABEL_16;
      }

LABEL_23:
      v69 = *(v0 + 168);
      v68 = *(v0 + 176);
      v70 = *(v0 + 152);
      v71 = *(v0 + 160);
      v37[(v57 >> 6) + 8] |= 1 << v57;
      v72 = v57 * v67;
      v54(v37[6] + v57 * v67, v68, v70);
      (*(v71 + 32))(v37[7] + v72, v69, v70);
      v73 = v37[2];
      v61 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v61)
      {
        goto LABEL_35;
      }

      v37[2] = v74;
LABEL_16:
      v38 = *(v0 + 184);
      v39 = *(v0 + 152);
      v40 = *(*(v0 + 160) + 8);
      v40(*(v0 + 176), v39);
      v40(v38, v39);
      v36 += v67;
      v34 = v84 - 1;
      if (v84 == 1)
      {
        goto LABEL_28;
      }
    }

    v64 = *(v0 + 176);
    sub_100FE80C8(v62, isUniquelyReferenced_nonNull_native);
    v65 = *(v0 + 112);
    v57 = sub_1000210EC(v64);
    v67 = v83;
    if ((v63 & 1) != (v66 & 1))
    {
      v82 = *(v0 + 152);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_22:
    v37 = *(v0 + 112);
    if (v63)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v37 = &_swiftEmptyDictionarySingleton;
LABEL_28:
  *(v0 + 240) = v37;

  *(v0 + 120) = v37;
  v76 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v77 = swift_task_alloc();
  *(v0 + 248) = v77;
  v78 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v79 = type metadata accessor for OwnerPeerTrust();
  v80 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10);
  *v77 = v0;
  v77[1] = sub_100D27DA8;
  v81 = *(v0 + 144);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4C08, v81, v78, v79, v80);
}

uint64_t sub_100D28D70()
{
  v87 = v0;
  v1 = *(v0 + 280);
  if (qword_101694E20 != -1)
  {
LABEL_36:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF80);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v86 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v86);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Can't update the circle, error: %{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  sub_100D4A3EC(v6, type metadata accessor for OwnerSharingCircle);
  v15 = *(v0 + 232) + 1;
  if (v15 == *(v0 + 216))
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);

    v20 = *(v0 + 8);

    return v20();
  }

  *(v0 + 232) = v15;
  v22 = *(v0 + 208);
  v23 = *(v0 + 192);
  sub_100D4A580(*(v0 + 136) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 224) * v15, v22, type metadata accessor for OwnerSharingCircle);
  v24 = *(v22 + *(v23 + 32));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v0 + 160);
    v27 = sub_1003A85FC(*(v24 + 16), 0);
    v28 = sub_1003CC2CC(v0 + 16, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25, v24);
    v29 = *(v0 + 16);
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    v33 = *(v0 + 48);

    sub_1000128F8();
    if (v28 == v25)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_13:
  v34 = v27[2];
  if (v34)
  {
    v35 = *(v0 + 160);
    v83 = *(v35 + 72);
    v36 = v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v37 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v41 = *(v0 + 184);
      v42 = *(v0 + 176);
      v84 = v34;
      v85 = *(v0 + 168);
      v44 = *(v0 + 152);
      v43 = *(v0 + 160);
      v45 = *(v0 + 208) + *(*(v0 + 192) + 20);
      *(v0 + 80) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 88) = v46;
      v47._countAndFlagsBits = 124;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49 = *(v0 + 80);
      v50 = *(v0 + 88);
      v51 = String.utf8Data.getter();
      v53 = v52;

      *(v0 + 96) = v51;
      *(v0 + 104) = v53;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100016590(v51, v53);
      v54 = *(v43 + 16);
      v55 = v42;
      v54(v42, v41, v44);
      v54(v85, v36, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v37;
      v57 = sub_1000210EC(v55);
      v59 = v37[2];
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v63 = v58;
      if (v37[3] < v62)
      {
        break;
      }

      v67 = v83;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v75 = v57;
      sub_101005D44();
      v57 = v75;
      v37 = *(v0 + 112);
      if (v63)
      {
LABEL_15:
        (*(*(v0 + 160) + 40))(v37[7] + v57 * v67, *(v0 + 168), *(v0 + 152));
        goto LABEL_16;
      }

LABEL_23:
      v69 = *(v0 + 168);
      v68 = *(v0 + 176);
      v70 = *(v0 + 152);
      v71 = *(v0 + 160);
      v37[(v57 >> 6) + 8] |= 1 << v57;
      v72 = v57 * v67;
      v54(v37[6] + v57 * v67, v68, v70);
      (*(v71 + 32))(v37[7] + v72, v69, v70);
      v73 = v37[2];
      v61 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v61)
      {
        goto LABEL_35;
      }

      v37[2] = v74;
LABEL_16:
      v38 = *(v0 + 184);
      v39 = *(v0 + 152);
      v40 = *(*(v0 + 160) + 8);
      v40(*(v0 + 176), v39);
      v40(v38, v39);
      v36 += v67;
      v34 = v84 - 1;
      if (v84 == 1)
      {
        goto LABEL_28;
      }
    }

    v64 = *(v0 + 176);
    sub_100FE80C8(v62, isUniquelyReferenced_nonNull_native);
    v65 = *(v0 + 112);
    v57 = sub_1000210EC(v64);
    v67 = v83;
    if ((v63 & 1) != (v66 & 1))
    {
      v82 = *(v0 + 152);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_22:
    v37 = *(v0 + 112);
    if (v63)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v37 = &_swiftEmptyDictionarySingleton;
LABEL_28:
  *(v0 + 240) = v37;

  *(v0 + 120) = v37;
  v76 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v77 = swift_task_alloc();
  *(v0 + 248) = v77;
  v78 = sub_1000BC4D4(&qword_1016BA528, &unk_1013E4C10);
  v79 = type metadata accessor for OwnerPeerTrust();
  v80 = sub_1000041A4(&qword_1016BA530, &qword_1016BA528, &unk_1013E4C10);
  *v77 = v0;
  v77[1] = sub_100D27DA8;
  v81 = *(v0 + 144);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4C08, v81, v78, v79, v80);
}

uint64_t sub_100D2947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v3[9] = v7;
  *v7 = v3;
  v7[1] = sub_100D29578;

  return daemon.getter();
}

uint64_t sub_100D29578(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100D2975C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D2975C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100D29BAC;
  }

  else
  {
    v9 = v4[10];

    v4[13] = a1;
    v8 = sub_100D29898;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D29898()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_100D29A10;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D4A654, v6, v9);
}

uint64_t sub_100D29A10()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100D29B3C, v3, 0);
}

uint64_t sub_100D29B3C()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D29BAC()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_100D29C1C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(type metadata accessor for PeerCommunicationIdentifier() - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100D29DBC, v2, 0);
}

uint64_t sub_100D29DBC()
{
  v1 = *(v0[4] + 16);
  v0[15] = v1;
  if (v1)
  {
    v2 = async function pointer to daemon.getter[1];
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_100D29EB0;

    return daemon.getter();
  }

  else
  {
    v4 = v0[14];
    v5 = v0[12];
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100D29EB0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100D42DB8(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v6 = v12;
  v6[1] = sub_100D2A094;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D2A094(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v10 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_100D2A94C;
  }

  else
  {
    v7 = v3[17];
    v8 = v3[5];

    v6 = sub_100D2A1BC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D2A1BC()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[4];
  sub_101124474(0, v0[15], 0);
  v5 = 0;
  v6 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7 = *(v2 + 72);
  do
  {
    v8 = v0[14];
    v9 = v0[12];
    sub_100D4A580(v6, v9, type metadata accessor for OwnerPeerTrust);
    sub_100D4A580(v9 + *(v3 + 28), v8, type metadata accessor for PeerCommunicationIdentifier);
    sub_100D4A3EC(v9, type metadata accessor for OwnerPeerTrust);
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_101124474(v10 > 1, v11 + 1, 1);
    }

    v0[25] = _swiftEmptyArrayStorage;
    v12 = v0[14];
    v13 = v0[15];
    ++v5;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_100D4A2D4(v12, _swiftEmptyArrayStorage + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, type metadata accessor for PeerCommunicationIdentifier);
    v6 += v7;
  }

  while (v5 != v13);
  v14 = v0[6];
  v0[2] = _swiftEmptyArrayStorage;
  v15 = swift_task_alloc();
  v0[21] = v15;
  *(v15 + 16) = v14;
  v16 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v17 = swift_task_alloc();
  v0[22] = v17;
  v18 = sub_1000BC4D4(&qword_1016BA518, &qword_1013E4BF8);
  v19 = sub_1000041A4(&qword_1016BA520, &qword_1016BA518, &qword_1013E4BF8);
  *v17 = v0;
  v17[1] = sub_100D2A434;

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4BF0, v15, v18, &type metadata for MessagingDestination, v19);
}

uint64_t sub_100D2A434(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[25];
    v8 = v3[21];
    v9 = v3[5];

    return _swift_task_switch(sub_100D2A584, v9, 0);
  }
}

uint64_t sub_100D2A584()
{
  v28 = v0;
  v1 = v0[24];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = type metadata accessor for OwnerSharingCircle();
  (*(v3 + 16))(v7 + v6, v4 + *(v8 + 20), v2);
  sub_100539B70(5, 1, v7, v24);
  if (v1)
  {
    v9 = v0[23];
    v10 = v0[19];

    v11 = v0[14];
    v12 = v0[12];
    v13 = v0[9];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v25;
    v16 = v26;
    v18 = v27;
    v0[26] = v26;
    v0[27] = v18;
    v19 = v24[0];
    v20 = swift_task_alloc();
    v0[28] = v20;
    *v20 = v0;
    v20[1] = sub_100D2A758;
    v21 = v0[23];
    v22 = v0[19];
    v23 = v0[9];

    return sub_100D1C9D8(v23, v19, v17, v16, v18, v21);
  }
}

uint64_t sub_100D2A758()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[29] = v0;

  v5 = v2[23];
  if (v0)
  {
    v6 = v2[5];

    v7 = sub_100D2A9D8;
  }

  else
  {
    v6 = v2[5];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v7 = sub_100D2A8B8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D2A8B8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[19];

  sub_100016590(v1, v2);
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D2A94C()
{
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100D2A9D8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[19];

  sub_100016590(v1, v2);
  v4 = v0[29];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100D2AA74(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v4 = *(*(type metadata accessor for PeerCommunicationIdentifier() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_100D2AB4C;

  return sub_100E8BEF8(a2);
}

uint64_t sub_100D2AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 72);
  v10 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {
    v11 = sub_100D2AD04;
  }

  else
  {
    v8[11] = a3;
    v8[12] = a2;
    v8[13] = a1;
    v11 = sub_100D2AC88;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100D2AC88()
{
  v1 = v0[5].i64[1];
  v2 = v0[3].i64[0];
  *v2 = vextq_s8(v0[6], v0[6], 8uLL);
  v2[1].i64[0] = v1;
  v3 = v0[4].i64[0];

  v4 = v0->i64[1];

  return v4();
}

uint64_t sub_100D2AD04()
{
  v28 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BF80);
  sub_100D4A580(v2, v3, type metadata accessor for PeerCommunicationIdentifier);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  v9 = v0[8];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = sub_100988F40(v11);
    v14 = v13;
    sub_100D4A3EC(v9, type metadata accessor for PeerCommunicationIdentifier);
    v15 = sub_1000136BC(v12, v14, &v27);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v27);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Can't get messagingDestination for communicationsIdentifier: %{private,mask.hash}s, error: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[10];

    sub_100D4A3EC(v9, type metadata accessor for PeerCommunicationIdentifier);
  }

  v23 = v0[6];
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0;
  v24 = v0[8];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100D2AFC8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CircleTrustService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100D2B070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CircleTrustService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100D2B134(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CircleTrustService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100D2B1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D26CC8();
}

uint64_t sub_100D2B268(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CircleTrustService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100D2B310()
{
  v1 = *v0;
  type metadata accessor for CircleTrustService();
  sub_100D42DB8(&unk_101698CE0, v2, type metadata accessor for CircleTrustService);
  return ActorServiceProtocol.description.getter();
}

void sub_100D2B378(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, unint64_t a24)
{
  v90 = a8;
  v101 = a7;
  v102 = a5;
  v86 = a4;
  v89 = a3;
  v88 = a2;
  v87 = a1;
  v108 = a24;
  LODWORD(v109) = a22;
  v103 = a20;
  v92 = a18;
  v104 = a17;
  v105 = a21;
  v93 = a16;
  v94 = a19;
  v106 = a15;
  v99 = a13;
  v100 = a14;
  v91 = a12;
  v95 = a11;
  v98 = a10;
  v96 = a9;
  v97 = *v24;
  v85 = type metadata accessor for UUID();
  v26 = *(v85 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v85);
  v107 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v75 - v29;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v34);
  v36 = &v75 - v35;
  if ((sub_100E8F8C0() & 1) != 0 && v109 == 2)
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177BF80);
    v109 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v109, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v109, v38, "handleCircleTrust received by underage account. Ignoring it.", v39, 2u);
    }

    v40 = v109;
  }

  else
  {
    v84 = type metadata accessor for Transaction();
    sub_1000D2A70(v86, v36, &qword_1016980D0, &unk_10138F3B0);
    v86 = a6;
    v83 = a23;
    v41 = *(v26 + 16);
    v81 = v30;
    v42 = v30;
    v43 = v85;
    v41(v42, v87, v85);
    v41(v107, v88, v43);
    v82 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000D2A70(v89, v82, &qword_1016980D0, &unk_10138F3B0);
    v44 = *(v32 + 80);
    v45 = (v44 + 17) & ~v44;
    v46 = *(v26 + 80);
    v47 = (v33 + v46 + v45) & ~v46;
    v48 = (v27 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 31) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v46 + v50 + 16) & ~v46;
    v51 = (v27 + v44 + v75) & ~v44;
    v77 = (v33 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v80 + 19) & 0xFFFFFFFFFFFFFFF8;
    v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v109;
    sub_1000D2AD8(v36, v52 + v45, &qword_1016980D0, &unk_10138F3B0);
    v53 = *(v26 + 32);
    v53(v52 + v47, v81, v43);
    v54 = v52 + v48;
    *v54 = v92;
    v55 = v93;
    v56 = v103;
    *(v54 + 8) = v94;
    *(v54 + 16) = v56;
    v57 = (v52 + v49);
    v59 = v104;
    v58 = v105;
    *v57 = v55;
    v57[1] = v59;
    *(v52 + v76) = v58;
    v60 = (v52 + v50);
    v61 = v83;
    v62 = v107;
    v63 = v108;
    *v60 = v83;
    v60[1] = v63;
    v53(v52 + v75, v62, v43);
    sub_1000D2AD8(v82, v52 + v51, &qword_1016980D0, &unk_10138F3B0);
    v64 = (v52 + v77);
    v65 = v90;
    v66 = v91;
    *v64 = v95;
    v64[1] = v66;
    v67 = (v52 + v78);
    v68 = v102;
    *v67 = v101;
    v67[1] = v65;
    v69 = (v52 + v80);
    v70 = v86;
    *v69 = v68;
    v69[1] = v70;
    v71 = (v52 + v88);
    v72 = v98;
    *v71 = v96;
    v71[1] = v72;
    *(v52 + v89) = v99;
    v73 = (v52 + v87);
    v74 = v106;
    *v73 = v100;
    v73[1] = v74;
    *(v52 + v79) = v97;

    sub_100017D5C(v61, v108);

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_100D2BA20(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v37;
  *(v8 + 240) = v38;
  *(v8 + 868) = v35;
  *(v8 + 864) = v34;
  *(v8 + 216) = v33;
  *(v8 + 224) = v36;
  *(v8 + 200) = v32;
  *(v8 + 184) = v31;
  *(v8 + 168) = v30;
  *(v8 + 152) = v29;
  *(v8 + 136) = v28;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 881) = a4;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 880) = a1;
  v9 = type metadata accessor for PeerTrustEnvelopeV1(0);
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016BA4F0, &qword_1013E4B68);
  *(v8 + 272) = v12;
  v13 = *(v12 - 8);
  *(v8 + 280) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  *(v8 + 296) = v15;
  v16 = *(v15 - 8);
  *(v8 + 304) = v16;
  *(v8 + 312) = *(v16 + 64);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  *(v8 + 368) = v17;
  v18 = *(v17 - 8);
  *(v8 + 376) = v18;
  *(v8 + 384) = *(v18 + 64);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v19 = *(*(type metadata accessor for CircleTrustDeclineEnvelopeV1(0) - 8) + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  *(v8 + 472) = v21;
  v22 = *(v21 - 8);
  *(v8 + 480) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  *(v8 + 528) = v25;
  *v25 = v8;
  v25[1] = sub_100D2BE2C;

  return daemon.getter();
}

uint64_t sub_100D2BE2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 528);
  v12 = *v1;
  v3[67] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[68] = v6;
  v7 = type metadata accessor for Daemon();
  v3[69] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[70] = v9;
  v10 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_100D2C020;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D2C020(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *v2;
  *(*v2 + 568) = a1;

  v7 = *(v3 + 536);
  if (v1)
  {

    return _swift_task_switch(sub_100D2C1CC, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 576) = v9;
    *v9 = v6;
    v9[1] = sub_100D2C3FC;

    return daemon.getter();
  }
}

uint64_t sub_100D2C1CC()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconSharingService available!", v4, 2u);
  }

  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[61];
  v8 = v0[62];
  v11 = v0[57];
  v10 = v0[58];
  v12 = v0[55];
  v13 = v0[56];
  v14 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[36];
  v29 = v0[33];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D2C3FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 576);
  v5 = *v1;
  v3[73] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[74] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v9 = sub_100D42DB8(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_100D2C5B4;
  v10 = v3[70];
  v11 = v3[69];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D2C5B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(v4 + 600) = a1;
  *(v4 + 608) = v1;

  v7 = *(v3 + 584);
  if (v1)
  {

    v8 = sub_100D2C708;
  }

  else
  {

    v8 = sub_100D2C944;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100D2C708()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[71];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No IDSTransportService_ItemSharingCrossAccount available!", v6, 2u);
  }

  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v11 = v0[61];
  v10 = v0[62];
  v13 = v0[57];
  v12 = v0[58];
  v14 = v0[55];
  v15 = v0[56];
  v16 = v0[54];
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[51];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[43];
  v27 = v0[42];
  v28 = v0[41];
  v29 = v0[40];
  v30 = v0[36];
  v31 = v0[33];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100D2C944()
{
  v1 = *(v0 + 880);
  if (v1 == 2)
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 480);
    v4 = *(v0 + 464);
    sub_1000D2A70(*(v0 + 88), v4, &qword_1016980D0, &unk_10138F3B0);
    v5 = *(v3 + 48);
    *(v0 + 616) = v5;
    *(v0 + 624) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v5(v4, 1, v2) != 1)
    {
      v71 = *(v0 + 568);
      v72 = *(v0 + 520);
      v73 = *(v0 + 472);
      v74 = *(v0 + 480);
      v75 = *(v0 + 464);
      v76 = *(v74 + 32);
      *(v0 + 632) = v76;
      *(v0 + 640) = (v74 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v76(v72, v75, v73);
      v69 = sub_100D2D018;
      v70 = v71;
      goto LABEL_13;
    }

    sub_10000B3A8(*(v0 + 464), &qword_1016980D0, &unk_10138F3B0);
    LOBYTE(v1) = *(v0 + 880);
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 432);
  v9 = *(v0 + 368);
  v121 = *(v0 + 128);
  v124 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 881);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = v9[12];
  v16 = v8 + v9[16];
  v115 = v9;
  v17 = (v8 + v9[20]);
  v18 = *(v7 + 16);
  *(v0 + 712) = v18;
  *(v0 + 720) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v116 = v18;
  (v18)(v8, v13, v6);
  *(v8 + v15) = v1;
  *v16 = v12;
  *(v16 + 8) = v14;
  *(v16 + 16) = v11;
  *v17 = v10;
  v17[1] = v121;
  v19 = *(v124 + 16);
  if (v19)
  {
    v20 = *(v0 + 480);
    v122 = *(v0 + 272);
    v125 = *(v0 + 280);
    v21 = *(v0 + 256);
    v119 = *(v0 + 248);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 112);

    sub_101125748(0, v19, 0);
    v25 = v23 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v117 = *(v21 + 72);
    v26 = (v20 + 32);
    do
    {
      v27 = *(v0 + 472);
      v28 = *(v0 + 288);
      v29 = *(v0 + 264);
      sub_100D4A580(v25, v29, type metadata accessor for PeerTrustEnvelopeV1);
      v30 = (v28 + *(v122 + 48));
      v31 = *(v122 + 64);
      (*v26)(v28, v29, v27);
      v32 = (v29 + *(v119 + 20));
      v34 = *v32;
      v33 = v32[1];
      *v30 = v34;
      v30[1] = v33;
      *(v28 + v31) = *(v29 + *(v119 + 24));
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        sub_101125748(v35 > 1, v36 + 1, 1);
      }

      v37 = *(v0 + 288);
      _swiftEmptyArrayStorage[2] = v36 + 1;
      sub_1000D2AD8(v37, _swiftEmptyArrayStorage + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v36, &qword_1016BA4F0, &qword_1013E4B68);
      v25 += v117;
      --v19;
    }

    while (v19);
  }

  else
  {
    v38 = *(v0 + 128);
    v39 = *(v0 + 112);
  }

  v114 = *(v0 + 568);
  v40 = *(v0 + 472);
  v41 = *(v0 + 424);
  v111 = *(v0 + 416);
  v43 = *(v0 + 360);
  v42 = *(v0 + 368);
  v44 = *(v0 + 352);
  v109 = v40;
  v110 = *(v0 + 344);
  v45 = *(v0 + 296);
  v120 = *(v0 + 240);
  v107 = *(v0 + 224);
  v108 = *(v0 + 232);
  v105 = *(v0 + 868);
  v103 = *(v0 + 864);
  v126 = *(v0 + 216);
  v101 = *(v0 + 208);
  v123 = *(v0 + 200);
  v97 = *(v0 + 192);
  v118 = *(v0 + 184);
  v46 = *(v0 + 160);
  v93 = *(v0 + 168);
  v95 = *(v0 + 176);
  v112 = *(v0 + 144);
  v113 = *(v0 + 152);
  v99 = *(v0 + 432);
  v47 = (v99 + *(v42 + 112));
  *(v99 + *(v42 + 96)) = _swiftEmptyArrayStorage;
  *v47 = v112;
  v47[1] = v113;
  v48 = (v43 + v45[16]);
  v49 = (v43 + v45[20]);
  v50 = (v43 + v45[24]);
  v51 = (v43 + v45[40]);
  v89 = v45[32];
  v91 = v45[28];
  v85 = v45[12];
  v87 = v45[36];
  v116(v43, v46);
  sub_1000D2A70(v93, v43 + v85, &qword_1016980D0, &unk_10138F3B0);
  *v48 = v95;
  v48[1] = v118;
  *v49 = v97;
  v49[1] = v123;
  *v50 = v101;
  v50[1] = v126;
  *(v43 + v91) = v103;
  *(v43 + v89) = v105;
  *(v43 + v87) = v107;
  *v51 = v108;
  v51[1] = v120;
  sub_1000D2A70(v99, v41, &qword_10169EF90, &unk_10139FCF0);
  LOBYTE(v108) = *(v41 + v115[12]);
  v52 = v41 + v115[16];
  LOBYTE(v107) = *v52;
  v104 = *(v52 + 16);
  v106 = *(v52 + 8);
  v53 = (v41 + v115[20]);
  v100 = v53[1];
  v102 = *v53;
  v98 = *(v41 + *(v42 + 96));
  v54 = (v41 + *(v42 + 112));
  v78 = v42;
  v79 = *v54;
  *(v0 + 728) = *v54;
  v55 = v54[1];
  *(v0 + 736) = v55;
  v56 = v55;
  sub_1000D2A70(v43, v44, &qword_10169EF88, &unk_1013E4B70);
  v57 = v45[12];
  *(v0 + 872) = v57;
  v58 = (v44 + v45[16]);
  v94 = v58[1];
  v96 = *v58;
  v59 = (v44 + v45[20]);
  v90 = v59[1];
  v92 = *v59;
  v60 = (v44 + v45[24]);
  v86 = v60[1];
  v88 = *v60;
  v83 = *(v44 + v45[32]);
  v84 = *(v44 + v45[28]);
  v61 = (v44 + v45[40]);
  v81 = *v61;
  v82 = *(v44 + v45[36]);
  v80 = v61[1];
  (v116)(v111, v41, v109);
  *(v111 + v115[12]) = v108;
  v62 = v111 + v115[16];
  *v62 = v107;
  *(v62 + 8) = v106;
  *(v62 + 16) = v104;
  v63 = (v111 + v115[20]);
  *v63 = v102;
  v63[1] = v100;
  *(v111 + *(v78 + 96)) = v98;
  v64 = (v111 + *(v78 + 112));
  *v64 = v79;
  v64[1] = v56;
  (v116)(v110, v44, v109);
  sub_1000D2A70(v44 + v57, v110 + v45[12], &qword_1016980D0, &unk_10138F3B0);
  v65 = (v110 + v45[16]);
  *v65 = v96;
  v65[1] = v94;
  v66 = (v110 + v45[20]);
  *v66 = v92;
  v66[1] = v90;
  v67 = (v110 + v45[24]);
  *v67 = v88;
  v67[1] = v86;
  *(v110 + v45[28]) = v84;
  *(v110 + v45[32]) = v83;
  *(v110 + v45[36]) = v82;
  v68 = (v110 + v45[40]);
  *v68 = v81;
  v68[1] = v80;
  sub_100017D5C(v112, v113);

  sub_100017D5C(v79, v56);
  v69 = sub_100D2E2A0;
  v70 = v114;
LABEL_13:

  return _swift_task_switch(v69, v70, 0);
}

uint64_t sub_100D2D018()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 520);
  swift_beginAccess();
  v3 = *(v1 + 240);

  *(v0 + 882) = sub_1005C8A30(v2, v3);

  return _swift_task_switch(sub_100D2D0BC, 0, 0);
}

uint64_t sub_100D2D0BC()
{
  v193 = v0;
  if (*(v0 + 882) == 1)
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 520);
    v3 = *(v0 + 504);
    v2 = *(v0 + 512);
    v4 = *(v0 + 472);
    v5 = *(v0 + 480);
    v6 = *(v0 + 96);
    v7 = type metadata accessor for Logger();
    *(v0 + 648) = sub_1000076D4(v7, qword_10177BF80);
    v8 = *(v5 + 16);
    *(v0 + 656) = v8;
    *(v0 + 664) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v2, v1, v4);
    v8(v3, v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    if (v11)
    {
      v181 = v10;
      v16 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v16 = 141558787;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v177 = v9;
      v17 = v8;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v172 = v13;
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v12, v15);
      v22 = v18;
      v8 = v17;
      v23 = sub_1000136BC(v22, v20, v190);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2160;
      *(v16 + 24) = 1752392040;
      *(v16 + 32) = 2081;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v21(v172, v15);
      v27 = sub_1000136BC(v24, v26, v190);

      *(v16 + 34) = v27;
      _os_log_impl(&_mh_execute_header, v177, v181, "handleCircleTrust received for newly declined share with %{private,mask.hash}s. Declining it.\nDeclined share identifier %{private,mask.hash}s.", v16, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v21 = *(v14 + 8);
      v21(v13, v15);
      v21(v12, v15);
    }

    *(v0 + 672) = v21;
    v63 = *(v0 + 608);
    v64 = *(v0 + 440);
    v8(v64, *(v0 + 96), *(v0 + 472));
    sub_10053D23C(4, 1, v64, v190);
    if (v63)
    {
      v65 = *(v0 + 600);
      v66 = *(v0 + 568);
      v67 = *(v0 + 520);
      v68 = *(v0 + 472);
      v69 = *(v0 + 480);

      v21(v67, v68);
      v70 = *(v0 + 520);
      v72 = *(v0 + 504);
      v71 = *(v0 + 512);
      v74 = *(v0 + 488);
      v73 = *(v0 + 496);
      v76 = *(v0 + 456);
      v75 = *(v0 + 464);
      v77 = *(v0 + 440);
      v78 = *(v0 + 448);
      v79 = *(v0 + 432);
      v156 = *(v0 + 424);
      v158 = *(v0 + 416);
      v160 = *(v0 + 408);
      v162 = *(v0 + 400);
      v164 = *(v0 + 392);
      v166 = *(v0 + 360);
      v169 = *(v0 + 352);
      v171 = *(v0 + 344);
      v173 = *(v0 + 336);
      v175 = *(v0 + 328);
      v179 = *(v0 + 320);
      v184 = *(v0 + 288);
      v188 = *(v0 + 264);

      v80 = *(v0 + 8);

      return v80();
    }

    else
    {
      v114 = *(v0 + 104);
      v115 = *(v0 + 112);
      v116 = *(v0 + 881);
      v118 = v190[1];
      v117 = v191;
      *(v0 + 680) = v191;
      v119 = v192;
      *(v0 + 688) = v192;
      v120 = v190[0];
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v121 = swift_allocObject();
      *(v0 + 696) = v121;
      *(v121 + 16) = xmmword_101385D80;
      *(v121 + 32) = v116;
      *(v121 + 40) = v114;
      *(v121 + 48) = v115;

      v122 = swift_task_alloc();
      *(v0 + 704) = v122;
      *v122 = v0;
      v122[1] = sub_100D2DC64;
      v123 = *(v0 + 600);
      v124 = *(v0 + 456);

      return sub_100D1C9D8(v124, v120, v118, v117, v119, v121);
    }
  }

  else
  {
    (*(*(v0 + 480) + 8))(*(v0 + 520), *(v0 + 472));
    v28 = *(v0 + 472);
    v29 = *(v0 + 480);
    v30 = *(v0 + 432);
    v31 = *(v0 + 368);
    v182 = *(v0 + 128);
    v186 = *(v0 + 136);
    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 881);
    v35 = *(v0 + 96);
    v36 = *(v0 + 104);
    v37 = *(v0 + 880);
    v38 = v31[12];
    v39 = v30 + v31[16];
    v168 = v31;
    v40 = (v30 + v31[20]);
    v41 = *(v29 + 16);
    *(v0 + 712) = v41;
    *(v0 + 720) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v170 = v41;
    (v41)(v30, v35, v28);
    *(v30 + v38) = v37;
    *v39 = v34;
    *(v39 + 8) = v36;
    *(v39 + 16) = v33;
    *v40 = v32;
    v40[1] = v182;
    v42 = *(v186 + 16);
    if (v42)
    {
      v43 = *(v0 + 480);
      v183 = *(v0 + 272);
      v187 = *(v0 + 280);
      v44 = *(v0 + 256);
      v178 = *(v0 + 248);
      v45 = *(v0 + 128);
      v46 = *(v0 + 136);
      v47 = *(v0 + 112);
      v190[0] = _swiftEmptyArrayStorage;

      sub_101125748(0, v42, 0);
      v48 = _swiftEmptyArrayStorage;
      v49 = v46 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v174 = *(v44 + 72);
      v50 = (v43 + 32);
      v51 = v0;
      do
      {
        v52 = *(v51 + 472);
        v53 = *(v51 + 288);
        v54 = *(v51 + 264);
        sub_100D4A580(v49, v54, type metadata accessor for PeerTrustEnvelopeV1);
        v55 = (v53 + *(v183 + 48));
        v56 = *(v183 + 64);
        (*v50)(v53, v54, v52);
        v57 = (v54 + *(v178 + 20));
        v59 = *v57;
        v58 = v57[1];
        *v55 = v59;
        v55[1] = v58;
        *(v53 + v56) = *(v54 + *(v178 + 24));
        v190[0] = v48;
        v61 = v48[2];
        v60 = v48[3];
        if (v61 >= v60 >> 1)
        {
          sub_101125748(v60 > 1, v61 + 1, 1);
          v48 = v190[0];
        }

        v62 = *(v51 + 288);
        v48[2] = v61 + 1;
        sub_1000D2AD8(v62, v48 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v61, &qword_1016BA4F0, &qword_1013E4B68);
        v49 += v174;
        --v42;
      }

      while (v42);
    }

    else
    {
      v82 = *(v0 + 128);
      v83 = *(v0 + 112);

      v48 = _swiftEmptyArrayStorage;
      v51 = v0;
    }

    v167 = *(v51 + 568);
    v84 = *(v51 + 472);
    v85 = *(v51 + 424);
    v161 = *(v51 + 416);
    v87 = *(v51 + 360);
    v86 = *(v51 + 368);
    v88 = *(v51 + 352);
    v157 = v84;
    v159 = *(v51 + 344);
    v89 = v51;
    v90 = *(v51 + 296);
    v180 = *(v51 + 240);
    v154 = *(v51 + 224);
    v155 = *(v51 + 232);
    v152 = *(v51 + 868);
    v150 = *(v51 + 864);
    v189 = *(v51 + 216);
    v148 = *(v51 + 208);
    v185 = *(v51 + 200);
    v144 = *(v51 + 192);
    v176 = *(v51 + 184);
    v91 = *(v51 + 160);
    v140 = *(v51 + 168);
    v142 = *(v51 + 176);
    v163 = *(v51 + 144);
    v165 = *(v51 + 152);
    v146 = *(v51 + 432);
    v92 = (v146 + *(v86 + 112));
    *(v146 + *(v86 + 96)) = v48;
    *v92 = v163;
    v92[1] = v165;
    v93 = (v87 + v90[16]);
    v94 = (v87 + v90[20]);
    v95 = (v87 + v90[24]);
    v96 = (v87 + v90[40]);
    v136 = v90[32];
    v138 = v90[28];
    v132 = v90[12];
    v134 = v90[36];
    v170(v87, v91);
    sub_1000D2A70(v140, v87 + v132, &qword_1016980D0, &unk_10138F3B0);
    *v93 = v142;
    v93[1] = v176;
    *v94 = v144;
    v94[1] = v185;
    *v95 = v148;
    v95[1] = v189;
    *(v87 + v138) = v150;
    *(v87 + v136) = v152;
    *(v87 + v134) = v154;
    *v96 = v155;
    v96[1] = v180;
    sub_1000D2A70(v146, v85, &qword_10169EF90, &unk_10139FCF0);
    LOBYTE(v155) = *(v85 + v168[12]);
    v97 = v85 + v168[16];
    LOBYTE(v154) = *v97;
    v151 = *(v97 + 16);
    v153 = *(v97 + 8);
    v98 = (v85 + v168[20]);
    v147 = v98[1];
    v149 = *v98;
    v145 = *(v85 + *(v86 + 96));
    v99 = (v85 + *(v86 + 112));
    v125 = v86;
    v126 = *v99;
    *(v89 + 728) = *v99;
    v100 = v99[1];
    *(v89 + 736) = v100;
    v101 = v100;
    sub_1000D2A70(v87, v88, &qword_10169EF88, &unk_1013E4B70);
    v102 = v90[12];
    *(v89 + 872) = v102;
    v103 = (v88 + v90[16]);
    v141 = v103[1];
    v143 = *v103;
    v104 = (v88 + v90[20]);
    v137 = v104[1];
    v139 = *v104;
    v105 = (v88 + v90[24]);
    v133 = v105[1];
    v135 = *v105;
    v130 = *(v88 + v90[32]);
    v131 = *(v88 + v90[28]);
    v106 = (v88 + v90[40]);
    v128 = *v106;
    v129 = *(v88 + v90[36]);
    v127 = v106[1];
    (v170)(v161, v85, v157);
    *(v161 + v168[12]) = v155;
    v107 = v161 + v168[16];
    *v107 = v154;
    *(v107 + 8) = v153;
    *(v107 + 16) = v151;
    v108 = (v161 + v168[20]);
    *v108 = v149;
    v108[1] = v147;
    *(v161 + *(v125 + 96)) = v145;
    v109 = (v161 + *(v125 + 112));
    *v109 = v126;
    v109[1] = v101;
    (v170)(v159, v88, v157);
    sub_1000D2A70(v88 + v102, v159 + v90[12], &qword_1016980D0, &unk_10138F3B0);
    v110 = (v159 + v90[16]);
    *v110 = v143;
    v110[1] = v141;
    v111 = (v159 + v90[20]);
    *v111 = v139;
    v111[1] = v137;
    v112 = (v159 + v90[24]);
    *v112 = v135;
    v112[1] = v133;
    *(v159 + v90[28]) = v131;
    *(v159 + v90[32]) = v130;
    *(v159 + v90[36]) = v129;
    v113 = (v159 + v90[40]);
    *v113 = v128;
    v113[1] = v127;
    sub_100017D5C(v163, v165);

    sub_100017D5C(v126, v101);

    return _swift_task_switch(sub_100D2E2A0, v167, 0);
  }
}

uint64_t sub_100D2DC64()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;

  v5 = *(v2 + 696);
  if (v0)
  {

    v6 = sub_100D2F59C;
  }

  else
  {

    v6 = sub_100D2DDAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D2DDAC()
{
  v75 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  (*(*(v0 + 480) + 56))(v4, 0, 1, v3);
  sub_1000D2A70(v4, v5, &qword_1016980D0, &unk_10138F3B0);
  v6 = v2(v5, 1, v3);
  v7 = *(v0 + 448);
  if (v6 == 1)
  {
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    v10 = *(v0 + 672);
    v11 = *(v0 + 600);
    v12 = *(v0 + 568);
    v13 = *(v0 + 520);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);

    sub_100016590(v9, v8);

    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    v10(v13, v14);
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v19 = *(v0 + 648);
    v20 = *(v0 + 640);
    v22 = *(v0 + 488);
    v21 = *(v0 + 496);
    v23 = *(v0 + 472);
    (*(v0 + 632))(v21, *(v0 + 448), v23);
    v18(v22, v21, v23);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v68 = *(v0 + 680);
    v70 = *(v0 + 688);
    v27 = *(v0 + 672);
    v72 = *(v0 + 568);
    v28 = *(v0 + 520);
    v29 = *(v0 + 488);
    v30 = *(v0 + 496);
    v32 = *(v0 + 472);
    v31 = *(v0 + 480);
    v33 = *(v0 + 456);
    if (v26)
    {
      v64 = *(v0 + 600);
      v60 = v25;
      v34 = *(v0 + 672);
      v35 = swift_slowAlloc();
      v66 = v28;
      v36 = swift_slowAlloc();
      v74 = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v62 = v33;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v30;
      v39 = v38;
      v34(v29, v32);
      v40 = sub_1000136BC(v37, v39, &v74);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v24, v60, "Decline message identifier is %{private,mask.hash}s.", v35, 0x16u);
      sub_100007BAC(v36);

      sub_100016590(v68, v70);

      v34(v58, v32);
      sub_10000B3A8(v62, &qword_1016980D0, &unk_10138F3B0);
      v34(v66, v32);
    }

    else
    {

      sub_100016590(v68, v70);

      v27(v29, v32);
      v27(v30, v32);
      sub_10000B3A8(v33, &qword_1016980D0, &unk_10138F3B0);
      v27(v28, v32);
    }
  }

  v41 = *(v0 + 520);
  v43 = *(v0 + 504);
  v42 = *(v0 + 512);
  v45 = *(v0 + 488);
  v44 = *(v0 + 496);
  v47 = *(v0 + 456);
  v46 = *(v0 + 464);
  v48 = *(v0 + 440);
  v49 = *(v0 + 448);
  v50 = *(v0 + 432);
  v53 = *(v0 + 424);
  v54 = *(v0 + 416);
  v55 = *(v0 + 408);
  v56 = *(v0 + 400);
  v57 = *(v0 + 392);
  v59 = *(v0 + 360);
  v61 = *(v0 + 352);
  v63 = *(v0 + 344);
  v65 = *(v0 + 336);
  v67 = *(v0 + 328);
  v69 = *(v0 + 320);
  v71 = *(v0 + 288);
  v73 = *(v0 + 264);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100D2E2A0()
{
  v67 = v0;
  v1 = qword_101698690;
  *(v0 + 744) = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  if (qword_101694480 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v65 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66 = v7;
    *v6 = 136315138;
    *(v0 + 80) = v1;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v66);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Handle incoming share suggestion", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v63 = *(v0 + 720);
  v64 = *(v0 + 712);
  v11 = *(v0 + 568);
  v46 = *(v0 + 472);
  v12 = *(v0 + 408);
  v40 = *(v0 + 400);
  v13 = *(v0 + 368);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = *(v0 + 296);
  sub_1000D2A70(*(v0 + 416), v12, &qword_10169EF90, &unk_10139FCF0);
  v18 = v12 + v13[16];
  v54 = *v18;
  v55 = *(v12 + v13[12]);
  v52 = *(v18 + 16);
  v53 = *(v18 + 8);
  v19 = (v12 + v13[20]);
  v50 = v19[1];
  v51 = *v19;
  v49 = *(v12 + v13[24]);
  v20 = (v12 + v13[28]);
  v21 = *v20;
  *(v0 + 752) = *v20;
  v44 = v20[1];
  v45 = v21;
  *(v0 + 760) = v44;
  sub_1000D2A70(v14, v15, &qword_10169EF88, &unk_1013E4B70);
  v43 = v17[12];
  *(v0 + 876) = v43;
  v22 = (v15 + v17[16]);
  v61 = v22[1];
  v62 = *v22;
  v23 = (v15 + v17[20]);
  v60 = *v23;
  v59 = v23[1];
  v24 = (v15 + v17[24]);
  v57 = *(v15 + v17[32]);
  v58 = *(v15 + v17[28]);
  v56 = *(v15 + v17[36]);
  v41 = v24[1];
  v42 = *v24;
  v25 = (v15 + v17[40]);
  v47 = v25[1];
  v48 = *v25;
  v26 = *(v11 + 200);
  *(v0 + 40) = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 48) = &off_1016634E8;
  *(v0 + 16) = v26;
  v27 = swift_allocObject();
  *(v0 + 768) = v27;
  swift_weakInit();
  v28 = swift_allocObject();
  *(v0 + 776) = v28;
  *(v28 + 16) = v27;
  *(v28 + 24) = v65;
  *(v28 + 32) = 0;
  v29 = swift_allocObject();
  *(v0 + 784) = v29;
  swift_weakInit();
  v30 = swift_allocObject();
  *(v0 + 792) = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v65;
  *(v30 + 32) = 0;
  v64(v40, v12, v46);
  *(v40 + v13[12]) = v55;
  v31 = v40 + v13[16];
  *v31 = v54;
  *(v31 + 8) = v53;
  *(v31 + 16) = v52;
  v32 = (v40 + v13[20]);
  *v32 = v51;
  v32[1] = v50;
  *(v40 + v13[24]) = v49;
  v33 = (v40 + v13[28]);
  *v33 = v45;
  v33[1] = v44;
  v64(v16, v15, v46);
  sub_1000D2A70(v15 + v43, v16 + v17[12], &qword_1016980D0, &unk_10138F3B0);
  v34 = (v16 + v17[16]);
  *v34 = v62;
  v34[1] = v61;
  v35 = (v16 + v17[20]);
  *v35 = v60;
  v35[1] = v59;
  v36 = (v16 + v17[24]);
  *v36 = v42;
  v36[1] = v41;
  *(v16 + v17[28]) = v58;
  *(v16 + v17[32]) = v57;
  *(v16 + v17[36]) = v56;
  v37 = (v16 + v17[40]);
  *v37 = v48;
  v37[1] = v47;

  sub_100017D5C(v45, v44);
  v38 = swift_task_alloc();
  *(v0 + 800) = v38;
  *v38 = v0;
  v38[1] = sub_100D2E7AC;

  return sub_1003AE100(v0 + 16);
}

uint64_t sub_100D2E7AC(uint64_t a1)
{
  v3 = *(*v2 + 800);
  v6 = *v2;
  *(*v2 + 808) = a1;

  if (v1)
  {

    v4 = sub_100D2EC78;
  }

  else
  {
    v4 = sub_100D2E8C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D2E8C8()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[101];
  v21 = v0[97];
  v22 = v0[99];
  v19 = v0[93];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[38];
  v8 = v0[39];
  sub_1000D2A70(v0[50], v2, &qword_10169EF90, &unk_10139FCF0);
  sub_1000D2A70(v5, v6, &qword_10169EF88, &unk_1013E4B70);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v4 + *(v7 + 80) + v9) & ~*(v7 + 80);
  v11 = (v10 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[102] = v12;
  *(v12 + 16) = v1;
  sub_1000D2AD8(v2, v12 + v9, &qword_10169EF90, &unk_10139FCF0);
  sub_1000D2AD8(v6, v12 + v10, &qword_10169EF88, &unk_1013E4B70);
  v13 = v12 + ((v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v19;
  *(v13 + 8) = 0;
  v14 = (v12 + v11);
  *v14 = &unk_1013E4B80;
  v14[1] = v21;
  v15 = (v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v15 = &unk_1013E4B88;
  v15[1] = v22;
  v16 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v20 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v17 = swift_task_alloc();
  v0[103] = v17;
  *v17 = v0;
  v17[1] = sub_100D2EB30;

  return v20(&unk_1013E4B90, v12);
}

uint64_t sub_100D2EB30()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;

  v5 = *(v2 + 816);
  if (v0)
  {

    v6 = sub_100D2F180;
  }

  else
  {

    v6 = sub_100D2ED40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D2EC78()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[95];
  v4 = v0[94];

  sub_100016590(v4, v3);
  v5 = v0[71];
  v6 = v0[50];
  sub_10000B3A8(v0[41], &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v6, &qword_10169EF90, &unk_10139FCF0);

  return _swift_task_switch(sub_100D2F254, v5, 0);
}

uint64_t sub_100D2ED40()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 776);
  v13 = *(v0 + 784);
  v14 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v17 = *(v0 + 568);
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 400);
  v15 = *(v0 + 876);
  v16 = *(v0 + 408);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);

  sub_100016590(v5, v4);

  sub_10000B3A8(v10, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v8, &qword_10169EF90, &unk_10139FCF0);

  sub_100007BAC((v0 + 16));
  sub_10000B3A8(v9 + v15, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v7 + 8);
  *(v0 + 832) = v11;
  *(v0 + 840) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v9, v6);
  v11(v16, v6);

  return _swift_task_switch(sub_100D2EEBC, v17, 0);
}

uint64_t sub_100D2EEBC()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 872);
  v4 = *(v0 + 472);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  sub_100016590(*(v0 + 728), *(v0 + 736));
  sub_10000B3A8(v8, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v6, &qword_10169EF90, &unk_10139FCF0);
  sub_10000B3A8(v7 + v3, &qword_1016980D0, &unk_10138F3B0);
  v2(v7, v4);
  v2(v5, v4);

  return _swift_task_switch(sub_100D2EFB8, 0, 0);
}

uint64_t sub_100D2EFB8()
{
  v1 = v0[75];
  v2 = v0[71];
  v3 = v0[54];
  v4 = v0[45];

  sub_10000B3A8(v4, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v3, &qword_10169EF90, &unk_10139FCF0);
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[61];
  v8 = v0[62];
  v11 = v0[57];
  v10 = v0[58];
  v12 = v0[55];
  v13 = v0[56];
  v14 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[36];
  v29 = v0[33];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D2F180()
{
  v1 = v0[101];
  v2 = v0[99];
  v3 = v0[97];
  v4 = v0[95];
  v5 = v0[94];

  sub_100016590(v5, v4);

  v6 = v0[71];
  v7 = v0[50];
  sub_10000B3A8(v0[41], &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v7, &qword_10169EF90, &unk_10139FCF0);

  return _swift_task_switch(sub_100D2F254, v6, 0);
}

uint64_t sub_100D2F254()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  v3 = *(v0 + 876);
  v4 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  sub_100016590(*(v0 + 728), *(v0 + 736));
  sub_10000B3A8(v8, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v6, &qword_10169EF90, &unk_10139FCF0);

  sub_100007BAC((v0 + 16));
  sub_10000B3A8(v9 + v3, &qword_1016980D0, &unk_10138F3B0);
  v10 = *(v5 + 8);
  *(v0 + 848) = v10;
  *(v0 + 856) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v9, v4);
  v10(v7, v4);

  return _swift_task_switch(sub_100D2F394, 0, 0);
}

uint64_t sub_100D2F394()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 872);
  v4 = *(v0 + 600);
  v5 = *(v0 + 568);
  v6 = *(v0 + 472);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v10 = *(v0 + 352);
  v9 = *(v0 + 360);

  sub_10000B3A8(v9, &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v7, &qword_10169EF90, &unk_10139FCF0);
  sub_10000B3A8(v10 + v3, &qword_1016980D0, &unk_10138F3B0);
  v2(v10, v6);
  v2(v8, v6);
  v11 = *(v0 + 520);
  v13 = *(v0 + 504);
  v12 = *(v0 + 512);
  v15 = *(v0 + 488);
  v14 = *(v0 + 496);
  v17 = *(v0 + 456);
  v16 = *(v0 + 464);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v20 = *(v0 + 432);
  v23 = *(v0 + 424);
  v24 = *(v0 + 416);
  v25 = *(v0 + 408);
  v26 = *(v0 + 400);
  v27 = *(v0 + 392);
  v28 = *(v0 + 360);
  v29 = *(v0 + 352);
  v30 = *(v0 + 344);
  v31 = *(v0 + 336);
  v32 = *(v0 + 328);
  v33 = *(v0 + 320);
  v34 = *(v0 + 288);
  v35 = *(v0 + 264);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100D2F59C()
{
  v75 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  (*(*(v0 + 480) + 56))(v4, 1, 1, v3);
  sub_1000D2A70(v4, v5, &qword_1016980D0, &unk_10138F3B0);
  v6 = v2(v5, 1, v3);
  v7 = *(v0 + 448);
  if (v6 == 1)
  {
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    v10 = *(v0 + 672);
    v11 = *(v0 + 600);
    v12 = *(v0 + 568);
    v13 = *(v0 + 520);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);

    sub_100016590(v9, v8);

    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    v10(v13, v14);
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v19 = *(v0 + 648);
    v20 = *(v0 + 640);
    v22 = *(v0 + 488);
    v21 = *(v0 + 496);
    v23 = *(v0 + 472);
    (*(v0 + 632))(v21, *(v0 + 448), v23);
    v18(v22, v21, v23);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v68 = *(v0 + 680);
    v70 = *(v0 + 688);
    v27 = *(v0 + 672);
    v72 = *(v0 + 568);
    v28 = *(v0 + 520);
    v29 = *(v0 + 488);
    v30 = *(v0 + 496);
    v32 = *(v0 + 472);
    v31 = *(v0 + 480);
    v33 = *(v0 + 456);
    if (v26)
    {
      v64 = *(v0 + 600);
      v60 = v25;
      v34 = *(v0 + 672);
      v35 = swift_slowAlloc();
      v66 = v28;
      v36 = swift_slowAlloc();
      v74 = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v62 = v33;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v30;
      v39 = v38;
      v34(v29, v32);
      v40 = sub_1000136BC(v37, v39, &v74);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v24, v60, "Decline message identifier is %{private,mask.hash}s.", v35, 0x16u);
      sub_100007BAC(v36);

      sub_100016590(v68, v70);

      v34(v58, v32);
      sub_10000B3A8(v62, &qword_1016980D0, &unk_10138F3B0);
      v34(v66, v32);
    }

    else
    {

      sub_100016590(v68, v70);

      v27(v29, v32);
      v27(v30, v32);
      sub_10000B3A8(v33, &qword_1016980D0, &unk_10138F3B0);
      v27(v28, v32);
    }
  }

  v41 = *(v0 + 520);
  v43 = *(v0 + 504);
  v42 = *(v0 + 512);
  v45 = *(v0 + 488);
  v44 = *(v0 + 496);
  v47 = *(v0 + 456);
  v46 = *(v0 + 464);
  v48 = *(v0 + 440);
  v49 = *(v0 + 448);
  v50 = *(v0 + 432);
  v53 = *(v0 + 424);
  v54 = *(v0 + 416);
  v55 = *(v0 + 408);
  v56 = *(v0 + 400);
  v57 = *(v0 + 392);
  v59 = *(v0 + 360);
  v61 = *(v0 + 352);
  v63 = *(v0 + 344);
  v65 = *(v0 + 336);
  v67 = *(v0 + 328);
  v69 = *(v0 + 320);
  v71 = *(v0 + 288);
  v73 = *(v0 + 264);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100D2FA90(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 208) = a2;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  *(v6 + 96) = v10;
  *v10 = v6;
  v10[1] = sub_100D2FBA0;

  return daemon.getter();
}

uint64_t sub_100D2FBA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100D2FD94;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D2FD94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 136) = a1;

  v7 = *(v3 + 104);
  if (v1)
  {

    return _swift_task_switch(sub_100D2FF40, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 144) = v9;
    *v9 = v6;
    v9[1] = sub_100D30064;

    return daemon.getter();
  }
}

uint64_t sub_100D2FF40()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D30064(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;
  v3[19] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[20] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100D42DB8(&qword_1016B1190, 255, type metadata accessor for PeerTrustService);
  *v7 = v5;
  v7[1] = sub_100D3021C;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D3021C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = a1;

  v7 = *(v3 + 152);
  if (v1)
  {

    return _swift_task_switch(sub_100D303C8, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 176) = v9;
    *v9 = v6;
    v9[1] = sub_100D304F8;

    return daemon.getter();
  }
}

uint64_t sub_100D303C8()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No PeerTrustService available!", v6, 2u);
  }

  v8 = v0[10];
  v7 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100D304F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  v3[23] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[24] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100D42DB8(&unk_1016AF840, 255, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_100D306B0;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D306B0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 192);
  v7 = *v2;

  v8 = *(v4 + 184);
  if (v1)
  {

    v9 = sub_100D30804;
  }

  else
  {

    *(v5 + 200) = a1;
    v9 = sub_100D30948;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D30804()
{
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BF80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  v6 = v0[17];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No FamilyCircleService available!", v7, 2u);
  }

  v9 = v0[10];
  v8 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100D30948()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v18 = *(v0 + 168);
  v19 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 208);
  v16 = v3;
  v17 = *(v0 + 24);
  v20 = *(v0 + 80);
  v21 = *(*(v0 + 16) + 136);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v4 + 16))(v3, v8, v6);
  v10 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v9;
  *(v11 + 32) = v17;
  *(v11 + 40) = v7;
  *(v11 + 48) = v18;
  *(v11 + 56) = v2;
  (*(v4 + 32))(v11 + v10, v16, v6);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100D30B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 64) = a3;
  *(v7 + 352) = a2;
  v11 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v13 = type metadata accessor for OwnerSharingCircle();
  *(v7 + 120) = v13;
  v14 = *(v13 - 8);
  *(v7 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v16 = type metadata accessor for OwnerPeerTrust();
  *(v7 + 152) = v16;
  v17 = *(v16 - 8);
  *(v7 + 160) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  *(v7 + 176) = v19;
  v20 = *(v19 - 8);
  *(v7 + 184) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v22 = swift_task_alloc();
  *(v7 + 232) = v22;
  *v22 = v7;
  v22[1] = sub_100D30DC4;

  return sub_100D4E560(a2, a3, a4);
}

uint64_t sub_100D30DC4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a2;
  *(v5 + 248) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100D31058, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v5 + 256) = v6;
    *v6 = v5;
    v6[1] = sub_100D30F3C;
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);
    v9 = *(v5 + 64);
    v10 = *(v5 + 352);

    return sub_100E86158(v10, v9, v7);
  }
}

uint64_t sub_100D30F3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v8 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[30];

    v6 = sub_100D32B54;
  }

  else
  {
    v6 = sub_100D31380;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D31058()
{
  v37 = v0;
  v1 = v0[31];
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[12];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BF80);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v36);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    swift_getErrorValue();
    v19 = v0[2];
    v18 = v0[3];
    v20 = v0[4];
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000136BC(v21, v22, &v36);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v25 = v0[27];
  v24 = v0[28];
  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  v29 = v0[21];
  v31 = v0[17];
  v30 = v0[18];
  v33 = v0[13];
  v32 = v0[14];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100D31380()
{
  v1 = v0[33];
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = v0[28];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[21];
    v7 = v0[19];
    v8 = v0[11];
    v9 = *(v0[20] + 80);
    sub_100D4A580(v1 + ((v9 + 32) & ~v9), v6, type metadata accessor for OwnerPeerTrust);

    v10 = *(v7 + 20);
    v11 = *(v5 + 16);
    v0[35] = v11;
    v0[36] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v2, v6 + v10, v4);
    sub_100D4A3EC(v6, type metadata accessor for OwnerPeerTrust);
    (*(v5 + 32))(v3, v2, v4);

    return _swift_task_switch(sub_100D31578, v8, 0);
  }

  else
  {
    v12 = v0[30];
    v13 = v0[33];

    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[24];
    v19 = v0[21];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[13];
    v22 = v0[14];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100D31578()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100D31664;
  v5 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_100D31664()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100D3177C, v2, 0);
}

uint64_t sub_100D317A0()
{
  v109 = v0;
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  *(swift_task_alloc() + 16) = v6;
  sub_1012BC194(sub_100D48D3C, v1, v5);

  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = v0[30];
  if (v7 == 1)
  {
    v9 = v0[14];
    (*(v0[23] + 8))(v0[28], v0[22]);

    sub_10000B3A8(v9, &unk_1016AFA00, &qword_10138C4D0);
LABEL_25:
    v67 = v0[27];
    v66 = v0[28];
    v69 = v0[25];
    v68 = v0[26];
    v70 = v0[24];
    v71 = v0[21];
    v73 = v0[17];
    v72 = v0[18];
    v75 = v0[13];
    v74 = v0[14];

    v76 = v0[1];

    return v76();
  }

  sub_100D4A2D4(v0[14], v0[18], type metadata accessor for OwnerSharingCircle);
  if (v8)
  {
    v10 = v0[30];
  }

  else
  {
    v11 = v0[18];
    v12 = v0[15];
    v13 = sub_101129F64(&off_10160D0A8);
    LOBYTE(v11) = sub_10112C0E0(*(v11 + *(v12 + 28)), v13);

    if (v11)
    {
      if (qword_101694E20 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177BF80);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Ignoring incoming UTFS message from non-family member", v17, 2u);
      }

      v18 = v0[28];
      v19 = v0[22];
      v20 = v0[23];
      v21 = v0[18];

      (*(v20 + 8))(v18, v19);
      v22 = v21;
      goto LABEL_24;
    }
  }

  v23 = *(v0[18] + *(v0[15] + 32));
  v0[7] = v23;
  v24 = *(v23 + 16);

  if (!v24 || (v25 = sub_1000210EC(v0[28]), (v26 & 1) == 0) || *(*(v23 + 56) + v25) != 3)
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v47 = v0[35];
    v46 = v0[36];
    v48 = v0[28];
    v49 = v0[25];
    v50 = v0[22];
    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177BF80);
    v47(v49, v48, v50);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[28];
    v56 = v0[25];
    v57 = v0[22];
    v58 = v0[23];
    if (v54)
    {
      v59 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108[0] = v107;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v55;
      v62 = v61;
      v63 = *(v58 + 8);
      v63(v56, v57);
      v64 = sub_1000136BC(v60, v62, v108);

      *(v59 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v52, v53, "Member already acked: %{private,mask.hash}s!", v59, 0x16u);
      sub_100007BAC(v107);

      v63(v106, v57);
    }

    else
    {

      v65 = *(v58 + 8);
      v65(v56, v57);
      v65(v55, v57);
    }

    v22 = v0[18];
LABEL_24:
    sub_100D4A3EC(v22, type metadata accessor for OwnerSharingCircle);
    goto LABEL_25;
  }

  v27 = v0 + 7;
  v28 = v0[28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108[0] = v23;
  sub_100FFB6DC(0, v28, isUniquelyReferenced_nonNull_native);
  v0[7] = v23;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v32 = v0[17];
  v31 = v0[18];
  v33 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v33, qword_10177BF80);
  sub_100D4A580(v31, v32, type metadata accessor for OwnerSharingCircle);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[22];
    v37 = v0[17];
    v38 = v0[15];
    v39 = swift_slowAlloc();
    v108[0] = swift_slowAlloc();
    v40 = v108[0];
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    v41 = *(v38 + 20);
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_100D4A3EC(v37, type metadata accessor for OwnerSharingCircle);
    v45 = sub_1000136BC(v42, v44, v108);

    *(v39 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v34, v35, "Data update on handle circle trust ack. Update %{private,mask.hash}s", v39, 0x16u);
    sub_100007BAC(v40);
    v27 = v0 + 7;

    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  }

  else
  {
    v78 = v0[17];

    sub_100D4A3EC(v78, type metadata accessor for OwnerSharingCircle);
  }

  v79 = v0[18];
  v80 = v0[13];
  v81 = swift_task_alloc();
  *(v81 + 16) = v79;
  *(v81 + 24) = v27;
  sub_100EC0C48(sub_100D48DA8, v80);
  if (v2)
  {
    v82 = v0[18];
    (*(v0[23] + 8))(v0[28], v0[22]);

    v83 = v0[7];

    sub_100D4A3EC(v82, type metadata accessor for OwnerSharingCircle);
    if (p_weak_ivar_lyt[452] != -1)
    {
      swift_once();
    }

    v85 = v0[23];
    v84 = v0[24];
    v86 = v0[22];
    v87 = v0[12];
    sub_1000076D4(v33, qword_10177BF80);
    (*(v85 + 16))(v84, v87, v86);
    swift_errorRetain();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    v90 = os_log_type_enabled(v88, v89);
    v92 = v0[23];
    v91 = v0[24];
    v93 = v0[22];
    if (v90)
    {
      v94 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v94 = 141558531;
      *(v94 + 4) = 1752392040;
      *(v94 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      (*(v92 + 8))(v91, v93);
      v98 = sub_1000136BC(v95, v97, v108);

      *(v94 + 14) = v98;
      *(v94 + 22) = 2082;
      swift_getErrorValue();
      v100 = v0[2];
      v99 = v0[3];
      v101 = v0[4];
      v102 = Error.localizedDescription.getter();
      v104 = sub_1000136BC(v102, v103, v108);

      *(v94 + 24) = v104;
      _os_log_impl(&_mh_execute_header, v88, v89, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v94, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v92 + 8))(v91, v93);
    }

    goto LABEL_25;
  }

  v105 = v0[11];

  return _swift_task_switch(sub_100D32248, v105, 0);
}

uint64_t sub_100D32270()
{
  v1 = v0[40];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[41] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_100D32368;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100D32368()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_100D32768;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_100D32484;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D32484()
{
  v36 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  (*(v0 + 280))(*(v0 + 208), *(v0 + 96), *(v0 + 176));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 104);
  if (v5)
  {
    v34 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v15 = *(v8 + 8);
    v15(v7, v9);
    v16 = sub_1000136BC(v12, v14, &v35);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updated circle member %{private,mask.hash}s to unaccepted.", v11, 0x16u);
    sub_100007BAC(v33);

    v15(v6, v9);
    v17 = v34;
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
    v18(v6, v9);
    v17 = v10;
  }

  sub_10000B3A8(v17, &qword_1016975C8, &qword_10138C1F0);
  v19 = *(v0 + 144);
  v20 = *(v0 + 56);

  sub_100D4A3EC(v19, type metadata accessor for OwnerSharingCircle);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v24 = *(v0 + 200);
  v23 = *(v0 + 208);
  v25 = *(v0 + 192);
  v26 = *(v0 + 168);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v30 = *(v0 + 104);
  v29 = *(v0 + 112);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100D32768()
{
  v1 = *(v0 + 328);

  return _swift_task_switch(sub_100D327D0, 0, 0);
}

uint64_t sub_100D327D0()
{
  v40 = v0;
  v1 = v0[18];
  v2 = v0[13];
  (*(v0[23] + 8))(v0[28], v0[22]);
  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);
  v3 = v0[7];

  sub_100D4A3EC(v1, type metadata accessor for OwnerSharingCircle);
  v4 = v0[43];
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[12];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177BF80);
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[22];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000136BC(v17, v19, &v39);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    swift_getErrorValue();
    v22 = v0[2];
    v21 = v0[3];
    v23 = v0[4];
    v24 = Error.localizedDescription.getter();
    v26 = sub_1000136BC(v24, v25, &v39);

    *(v16 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v28 = v0[27];
  v27 = v0[28];
  v30 = v0[25];
  v29 = v0[26];
  v31 = v0[24];
  v32 = v0[21];
  v34 = v0[17];
  v33 = v0[18];
  v36 = v0[13];
  v35 = v0[14];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100D32B54()
{
  v37 = v0;
  v1 = v0[34];
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[12];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BF80);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v36);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    swift_getErrorValue();
    v19 = v0[2];
    v18 = v0[3];
    v20 = v0[4];
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000136BC(v21, v22, &v36);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure on handleCircleTrustAck: %{private,mask.hash}s, error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v25 = v0[27];
  v24 = v0[28];
  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  v29 = v0[21];
  v31 = v0[17];
  v30 = v0[18];
  v33 = v0[13];
  v32 = v0[14];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100D32E7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100D32F5C, 0, 0);
}

uint64_t sub_100D32F5C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v15 = *(v0 + 32);
  v14 = *(v0 + 96);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v18 = *(v0 + 80);
  v19 = *(v6 + 136);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v2 + 16))(v1, v5, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + v7, v1, v4);
  v11 = v10 + v8;
  *v11 = v14;
  *(v11 + 8) = v15;
  *(v11 + 16) = v16;
  *(v10 + v9) = v6;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = *(v0 + 8);

  return v12();
}