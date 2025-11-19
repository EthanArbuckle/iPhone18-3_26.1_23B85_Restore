uint64_t sub_10028AD34()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F80, &qword_10040C510);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v38 = &v38 - v4;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004099F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 0x444955554B4C54;
  *(v5 + 40) = 0xE700000000000000;
  v6 = [v0 tlkUUID];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *&v39 = sub_100288788(v7, v9);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;
  sub_10006A178(v7, v9);

  *(v5 + 64) = v10;
  *(v5 + 72) = v12;
  *(v5 + 120) = &type metadata for String;
  *(v5 + 88) = &type metadata for String;
  *(v5 + 96) = 0xD000000000000014;
  *(v5 + 104) = 0x800000010046A130;
  v13 = [v1 sourcePeerIdentifier];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *&v39 = sub_100288788(v14, v16);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;
  sub_10006A178(v14, v16);

  *(v5 + 128) = v17;
  *(v5 + 136) = v19;
  *(v5 + 184) = &type metadata for String;
  *(v5 + 152) = &type metadata for String;
  *(v5 + 160) = 0xD000000000000014;
  *(v5 + 168) = 0x800000010046A150;
  v20 = [v1 targetPeerIdentifier];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *&v39 = sub_100288788(v21, v23);
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;
  sub_10006A178(v21, v23);

  *(v5 + 192) = v24;
  *(v5 + 200) = v26;
  *(v5 + 248) = &type metadata for String;
  *(v5 + 216) = &type metadata for String;
  *(v5 + 224) = 0x7461446572616873;
  *(v5 + 232) = 0xE900000000000061;
  v27 = type metadata accessor for PropertyListDecoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v30 = type metadata accessor for SESTLKShareData(0);
  v31 = [v1 shareData];
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = v38;
  sub_10028C2F0(&qword_100504F40, type metadata accessor for SESTLKShareData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v32, v34);

  (*(*(v30 - 8) + 56))(v35, 0, 1, v30);
  v36 = sub_10028B238();
  v40 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  *&v39 = v36;
  sub_10028C290(v35, type metadata accessor for SESTLKShareData);
  sub_100075D50(&v39, (v5 + 256));
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10028B238()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100409A40;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = 0xD000000000000013;
  *(v6 + 40) = 0x80000001004660F0;
  v7 = sub_100288AE8();
  v8 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  *(v6 + 64) = v7;
  *(v6 + 120) = &type metadata for String;
  *(v6 + 88) = v8;
  *(v6 + 96) = 0xD000000000000013;
  *(v6 + 104) = 0x8000000100466110;
  v9 = type metadata accessor for SESTLKShareData(0);
  v10 = v1 + *(v9 + 20);
  *(v6 + 128) = sub_100288AE8();
  *(v6 + 184) = &type metadata for String;
  *(v6 + 152) = v8;
  *(v6 + 160) = 0xD000000000000010;
  *(v6 + 168) = 0x800000010046A170;
  sub_1000938D4(v1 + *(v9 + 28), v5, &qword_100504F08, &unk_10040DE20);
  v11 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    sub_100075768(v5, &qword_100504F08, &unk_10040DE20);
    *(v6 + 216) = &type metadata for String;
    *(v6 + 192) = 0x3E6C696E3CLL;
    *(v6 + 200) = 0xE500000000000000;
  }

  else
  {
    v12 = sub_10028A3A4();
    v15 = v8;
    *&v14 = v12;
    sub_10028C290(v5, type metadata accessor for CreationMetadata);
    sub_100075D50(&v14, (v6 + 192));
  }

  return NSDictionary.init(dictionaryLiteral:)();
}

id sub_10028B49C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10028BC68()
{
  v1 = sub_100068FC4(&qword_1005062F0, &qword_10040E020);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v21 - v3);
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004099F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 2003134838;
  *(v5 + 40) = 0xE400000000000000;
  v6 = [v0 view];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 64) = v7;
  *(v5 + 72) = v9;
  *(v5 + 120) = &type metadata for String;
  *(v5 + 88) = &type metadata for String;
  *(v5 + 96) = 0x444955556B6C74;
  *(v5 + 104) = 0xE700000000000000;
  v10 = [v0 tlkUUID];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v5 + 128) = v11;
  *(v5 + 136) = v13;
  *(v5 + 184) = &type metadata for String;
  *(v5 + 152) = &type metadata for Data;
  strcpy((v5 + 160), "parentTLKUUID");
  *(v5 + 174) = -4864;
  v14 = [v0 parentTLKUUID];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v5 + 192) = v15;
  *(v5 + 200) = v17;
  *(v5 + 248) = &type metadata for String;
  *(v5 + 216) = &type metadata for Data;
  *(v5 + 224) = 0x614464726F636572;
  *(v5 + 232) = 0xEA00000000006174;
  sub_1001C5D54(v4);
  v18 = type metadata accessor for SESTLKRecordData(0);
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = sub_10028BF98();
  v23 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  *&v22 = v19;
  sub_10028C290(v4, type metadata accessor for SESTLKRecordData);
  sub_100075D50(&v22, (v5 + 256));
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10028BF98()
{
  v1 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004098F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = 0x80000001004660D0;
  v6 = type metadata accessor for SESTLKRecordData(0);
  sub_1000938D4(v0 + *(v6 + 20), v4, &qword_100504F08, &unk_10040DE20);
  v7 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_100075768(v4, &qword_100504F08, &unk_10040DE20);
    *(v5 + 88) = &type metadata for String;
    *(v5 + 64) = 0x3E6C696E3CLL;
    *(v5 + 72) = 0xE500000000000000;
  }

  else
  {
    v8 = sub_10028A3A4();
    v11 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    *&v10 = v8;
    sub_10028C290(v4, type metadata accessor for CreationMetadata);
    sub_100075D50(&v10, (v5 + 64));
  }

  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10028C190(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10028C22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SESPeerIdentityData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028C290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028C2F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028C338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 16);
  v23 = v9;
  *(a2 + 16) = 0x8000000000000000;
  v10 = sub_100093A50(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_10030EC1C(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_100093A50(a3);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(a2 + 16) = v9;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  a2 = v10;
  sub_100317CF4(v10, a3, 0, v9);
  v10 = a2;
LABEL_8:
  while (1)
  {
    v17 = v9[7];
    v18 = *(v17 + 8 * v10);
    v19 = __CFADD__(v18, a1);
    v20 = v18 + a1;
    if (!v19)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v22 = v10;
    sub_1003138A0();
    v10 = v22;
    v9 = v23;
    *(a2 + 16) = v23;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v17 + 8 * v10) = v20;
  return swift_endAccess();
}

uint64_t sub_10028C478(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 24);
  v23 = v9;
  *(v4 + 24) = 0x8000000000000000;
  v10 = sub_100093A50(a1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_10030C7D4(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_100093A50(a1);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + 24) = v9;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v10;
  sub_100317CF4(v10, a1, 0, v9);
  v10 = v4;
LABEL_8:
  while (1)
  {
    v17 = v9[7];
    v18 = *(v17 + 8 * v10);
    v19 = __CFADD__(v18, a2);
    v20 = v18 + a2;
    if (!v19)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v22 = v10;
    sub_10031262C();
    v10 = v22;
    v9 = v23;
    *(v4 + 24) = v23;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v17 + 8 * v10) = v20;
  return swift_endAccess();
}

uint64_t sub_10028C5B8()
{
  v1 = sub_1000914A0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v84 = v0;
  v2 = *(v0 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v87 = *(v0 + 24);

  v10 = 0;
  v85 = v4;
  while (v8)
  {
    v14 = v10;
LABEL_11:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(v87 + 48) + v16);
    v18 = *(*(v87 + 56) + 8 * v16);
    v19 = 0xD00000000000001DLL;
    if (v17 != 5)
    {
      v19 = 0xD000000000000012;
    }

    v20 = "cardEmulationCount";
    if (v17 != 5)
    {
      v20 = "invalidationReason";
    }

    v21 = 0xD000000000000022;
    if (v17 != 3)
    {
      v21 = 0xD000000000000015;
    }

    v22 = "wiredTransactionCount";
    if (v17 != 3)
    {
      v22 = "wiredTransactionWithAuthCount";
    }

    if (v17 <= 4)
    {
      v19 = v21;
      v20 = v22;
    }

    v23 = "provisioningFailure";
    if (v17 != 1)
    {
      v23 = "dStateChangedCount";
    }

    if (!v17)
    {
      v23 = "provisioningSuccess";
    }

    if (v17 <= 2)
    {
      v24 = 0xD000000000000013;
    }

    else
    {
      v24 = v19;
    }

    if (v17 <= 2)
    {
      v25 = v23;
    }

    else
    {
      v25 = v20;
    }

    sub_100156F48();
    if (v18 < 0)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v26 = v25 | 0x8000000000000000;
    v27.super.super.isa = NSNumber.init(integerLiteral:)(v18).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v1;
    v29 = v24;
    v30 = sub_10008C908(v24, v26);
    v32 = *(v1 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_85;
    }

    v36 = v31;
    if (*(v1 + 24) < v35)
    {
      sub_10030CCD8(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_10008C908(v29, v26);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_90;
      }

LABEL_37:
      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v41 = v30;
    sub_100312910();
    v30 = v41;
    if (v36)
    {
LABEL_4:
      v11 = v30;

      v1 = v90;
      v12 = v90[7];
      v13 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v27;

      goto LABEL_5;
    }

LABEL_38:
    v1 = v90;
    v90[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v90[6] + 16 * v30);
    *v38 = v29;
    v38[1] = v26;
    *(v90[7] + 8 * v30) = v27;
    v39 = v90[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_88;
    }

    v90[2] = v40;
LABEL_5:
    v10 = v14;
    v4 = v85;
  }

  while (2)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v14 < v9)
    {
      v8 = *(v4 + 8 * v14);
      ++v10;
      if (v8)
      {
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();
  v42 = *(v84 + 16);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v86 = *(v84 + 16);

  v48 = 0;
  if (v46)
  {
    goto LABEL_47;
  }

  while (2)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v52 < v47)
    {
      v46 = *(v43 + 8 * v52);
      ++v48;
      if (!v46)
      {
        continue;
      }

LABEL_51:
      v53 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v54 = v53 | (v52 << 6);
      v55 = *(*(v86 + 48) + v54);
      v56 = *(*(v86 + 56) + 8 * v54);
      v57 = 0xD000000000000020;
      v58 = 0xD00000000000001ALL;
      if (v55 != 3)
      {
        v58 = 0xD00000000000001BLL;
      }

      v59 = 0x800000010046A360;
      if (v55 == 3)
      {
        v59 = 0x800000010046A380;
      }

      if (v55 != 2)
      {
        v57 = v58;
      }

      v60 = 0x800000010046A3A0;
      if (v55 != 2)
      {
        v60 = v59;
      }

      v61 = 0xD00000000000001DLL;
      if (!v55)
      {
        v61 = 0x6E6F697461727564;
      }

      v62 = 0x800000010046A3D0;
      if (!v55)
      {
        v62 = 0xE800000000000000;
      }

      if (v55 <= 1)
      {
        v63 = v61;
      }

      else
      {
        v63 = v57;
      }

      if (v55 <= 1)
      {
        v64 = v62;
      }

      else
      {
        v64 = v60;
      }

      v88 = v64;
      sub_100156F48();
      if (v56 < 0)
      {
        goto LABEL_86;
      }

      v65.super.super.isa = NSNumber.init(integerLiteral:)(v56).super.super.isa;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v1;
      v67 = v63;
      v68 = sub_10008C908(v63, v88);
      v70 = *(v1 + 16);
      v71 = (v69 & 1) == 0;
      v34 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v34)
      {
        goto LABEL_87;
      }

      v73 = v69;
      if (*(v1 + 24) >= v72)
      {
        if (v66)
        {
          goto LABEL_75;
        }

        v78 = v68;
        sub_100312910();
        v68 = v78;
        if (v73)
        {
          goto LABEL_46;
        }

LABEL_76:
        v1 = v89;
        v89[(v68 >> 6) + 8] |= 1 << v68;
        v75 = (v89[6] + 16 * v68);
        *v75 = v67;
        v75[1] = v88;
        *(v89[7] + 8 * v68) = v65;
        v76 = v89[2];
        v34 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v34)
        {
          goto LABEL_89;
        }

        v89[2] = v77;
        v48 = v52;
        if (!v46)
        {
          continue;
        }
      }

      else
      {
        sub_10030CCD8(v72, v66);
        v68 = sub_10008C908(v67, v88);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_90;
        }

LABEL_75:
        if ((v73 & 1) == 0)
        {
          goto LABEL_76;
        }

LABEL_46:
        v49 = v68;

        v1 = v89;
        v50 = v89[7];
        v51 = *(v50 + 8 * v49);
        *(v50 + 8 * v49) = v65;

        v48 = v52;
        if (!v46)
        {
          continue;
        }
      }

LABEL_47:
      v52 = v48;
      goto LABEL_51;
    }

    break;
  }

  sub_100156F48();
  isa = NSNumber.init(integerLiteral:)(*(v84 + 32)).super.super.isa;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  sub_10031637C(isa, 0xD000000000000028, 0x800000010046A3F0, v80);
  sub_10019539C(v1);
  v82 = v81;

  type metadata accessor for SESAnalyticsLogger();
  sub_1002FB088(0xD00000000000002DLL, 0x800000010046A420, v82);
}

uint64_t sub_10028CC2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10028CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10028CDAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTime();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t _s19SECSessionAnalyticsC16ElapsedTimeEventVMa()
{
  result = qword_100509430;
  if (!qword_100509430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10028CEB0()
{
  result = type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    result = sub_10028CF3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10028CF3C()
{
  result = qword_100509440;
  if (!qword_100509440)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100509440);
  }

  return result;
}

unint64_t sub_10028CF90()
{
  result = qword_100509478;
  if (!qword_100509478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509478);
  }

  return result;
}

unint64_t sub_10028CFE8()
{
  result = qword_100509480;
  if (!qword_100509480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509480);
  }

  return result;
}

unint64_t sub_10028D040()
{
  result = qword_100509488;
  if (!qword_100509488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509488);
  }

  return result;
}

void sub_10028D09C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10028D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  v8 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v7[58] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  v7[59] = v9;
  v10 = *(v9 - 8);
  v7[60] = v10;
  v11 = *(v10 + 64) + 15;
  v7[61] = swift_task_alloc();
  v12 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v7[62] = v12;
  v13 = *(v12 - 8);
  v7[63] = v13;
  v14 = *(v13 + 64) + 15;
  v7[64] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v7[65] = v15;
  v16 = *(v15 - 8);
  v7[66] = v16;
  v17 = *(v16 + 64) + 15;
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v18 = type metadata accessor for StateInternal();
  v7[72] = v18;
  v19 = *(v18 - 8);
  v7[73] = v19;
  v20 = *(v19 + 64) + 15;
  v7[74] = swift_task_alloc();

  return _swift_task_switch(sub_10028D3A0, 0, 0);
}

uint64_t sub_10028D3A0()
{
  v98 = v0;
  v1 = v0[54] + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState;
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_100218E94(*v1, v2, v4, v5);
  v6 = sub_1002192C4(v3, v2, v4, v5, 8, 0, 0, 0x8000000000000000);
  sub_100218FD8(v3, v2, v4, v5);
  if (v6)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Attempted to enter wired mode in invalid state", v10, 2u);
    }

    sub_10009591C();
    v12 = swift_allocError();
    v13 = 10;
    goto LABEL_13;
  }

  v14 = v0[54];
  if (*(v14 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Maintenance API is not available on non-application clients", v18, 2u);
    }

    sub_10009591C();
    v12 = swift_allocError();
    v13 = 15;
    goto LABEL_13;
  }

  v22 = v0[55];
  v23 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v24 = *(v14 + v23);
  v25 = swift_task_alloc();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v22;

  v26 = sub_10033322C(sub_10021C27C, v25, v24);

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_38:

    if (qword_1005019D8 == -1)
    {
LABEL_39:
      v80 = v0[67];
      v81 = v0[66];
      v82 = v0[65];
      v83 = v0[55];
      v84 = type metadata accessor for Logger();
      sub_1000958E4(v84, qword_10051B2C8);
      (*(v81 + 16))(v80, v83, v82);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v0[67];
      v89 = v0[66];
      v90 = v0[65];
      if (v87)
      {
        v91 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v91 = 136315394;
        *(v91 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v97);
        *(v91 + 12) = 2080;
        v92 = UUID.uuidString.getter();
        v94 = v93;
        (*(v89 + 8))(v88, v90);
        v95 = sub_1002FFA0C(v92, v94, &v97);

        *(v91 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s: Credential %s not found", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v89 + 8))(v88, v90);
      }

      sub_10009591C();
      v12 = swift_allocError();
      v13 = 1;
LABEL_13:
      *v11 = v13;
      swift_willThrow();
LABEL_14:
      v0[93] = v12;
      v19 = swift_task_alloc();
      v0[94] = v19;
      *v19 = v0;
      v19[1] = sub_1002907C0;
      v20 = v0[54];

      return sub_1001FF5CC();
    }

LABEL_45:
    swift_once();
    goto LABEL_39;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v26 & 0xC000000000000001) == 0)
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v26 + 32);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_45;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v28 = v27;
  v0[75] = v27;
  v29 = v0[74];
  v30 = v0[73];
  v31 = v0[72];

  CredentialInternal.state.getter();
  v32 = (*(v30 + 88))(v29, v31);
  v33 = v0[74];
  v34 = v0[73];
  v35 = v0[72];
  if (v32 != enum case for StateInternal.installed(_:))
  {
    (*(v34 + 8))(v0[74], v35);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v60 = v0[68];
    v61 = v0[66];
    v62 = v0[65];
    v63 = v0[55];
    v64 = type metadata accessor for Logger();
    sub_1000958E4(v64, qword_10051B2C8);
    (*(v61 + 16))(v60, v63, v62);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[68];
    v69 = v0[66];
    v70 = v0[65];
    if (v67)
    {
      v71 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v97);
      *(v71 + 12) = 2080;
      v72 = UUID.uuidString.getter();
      v73 = v28;
      v75 = v74;
      (*(v69 + 8))(v68, v70);
      v76 = sub_1002FFA0C(v72, v75, &v97);
      v28 = v73;

      *(v71 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s: Credential %s not installed", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v69 + 8))(v68, v70);
    }

    sub_10009591C();
    v12 = swift_allocError();
    *v79 = 7;
    swift_willThrow();

    goto LABEL_14;
  }

  (*(v34 + 96))(v0[74], v35);
  v0[76] = *v33;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v36 = v0[71];
  v37 = v0[66];
  v38 = v0[65];
  v40 = v0[54];
  v39 = v0[55];
  v41 = type metadata accessor for Logger();
  v0[77] = sub_1000958E4(v41, qword_10051B2C8);
  v42 = *(v37 + 16);
  v0[78] = v42;
  v0[79] = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v36, v39, v38);
  v43 = v40;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v0[71];
  v48 = v0[66];
  v49 = v0[65];
  if (v46)
  {
    v50 = v0[54];
    v51 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v51 = 136315394;
    v52 = UUID.uuidString.getter();
    v96 = v28;
    v54 = sub_1002FFA0C(v52, v53, &v97);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    v55 = UUID.uuidString.getter();
    v57 = v56;
    v58 = *(v48 + 8);
    v58(v47, v49);
    v59 = sub_1002FFA0C(v55, v57, &v97);
    v28 = v96;

    *(v51 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v44, v45, "Session %s: Setting credential %s in Wired Mode", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v58 = *(v48 + 8);
    v58(v47, v49);
  }

  v0[80] = v58;
  v77 = swift_task_alloc();
  v0[81] = v77;
  *v77 = v0;
  v77[1] = sub_10028DEBC;
  v78 = v0[54];

  return sub_1001FDAE0(v28);
}

uint64_t sub_10028DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 648);
  v10 = *v5;
  v6[82] = a1;
  v6[83] = a2;
  v6[84] = a3;
  v6[85] = a4;
  v6[86] = v4;

  if (v4)
  {
    v8 = sub_100290A20;
  }

  else
  {
    v8 = sub_10028E00C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10028E00C()
{
  v43 = v0;
  v1 = v0[83];
  v2 = v0[77];
  if (v1)
  {
    v3 = v0[75];
    v41 = v1;
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v40 = v0[80];
      v7 = v0[75];
      v8 = v0[70];
      v9 = v0[66];
      v10 = v0[65];
      v11 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v42);
      *(v11 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v12 = UUID.uuidString.getter();
      v14 = v13;
      v40(v8, v10);
      v15 = sub_1002FFA0C(v12, v14, &v42);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: Starting new wired mode handle for credential %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v16 = v0[85];
    v17 = v0[84];
    v18 = v0[83];
    v19 = v0[82];
    v20 = v0[54];
    v21 = v17;
    v22 = v16;
    v23 = v41;
    v24 = v19;
    sub_1001FEFA8(v19, v18, v17, v16 | 0x4000000000000000);
    v0[2] = v0;
    v0[7] = v0 + 49;
    v0[3] = sub_10028E4C0;
    v25 = swift_continuation_init();
    v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001FDA0C;
    v0[21] = &unk_1004CEE88;
    v0[22] = v25;
    [v23 requestSETransceiverWithCompletion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v26 = v0[76];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v42);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: NFCredentialSession in handle has been invalidated", v29, 0xCu);
      sub_1000752F4(v30);
    }

    v31 = v0[85];
    v32 = v0[84];
    v33 = v0[82];
    v34 = v0[75];
    sub_10009591C();
    v35 = swift_allocError();
    *v36 = 9;
    swift_willThrow();

    v0[93] = v35;
    v37 = swift_task_alloc();
    v0[94] = v37;
    *v37 = v0;
    v37[1] = sub_1002907C0;
    v38 = v0[54];

    return sub_1001FF5CC();
  }
}

uint64_t sub_10028E4C0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 696) = v3;
  if (v3)
  {
    v4 = *(v1 + 608);

    v5 = sub_100290AF4;
  }

  else
  {
    v5 = sub_10028E604;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10028E604()
{
  v255 = v0;
  v1 = v0;
  v2 = v0[49];
  v0[88] = v2;
  if (!v2)
  {
    v22 = v0[77];
    v23 = v0[76];

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v249 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v249);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s: Unable to get transceiver", v26, 0xCu);
      sub_1000752F4(v27);
      v1 = v248;
    }

    v28 = v1[85];
    v29 = v1[84];
    v30 = v1[83];
    v31 = v1[82];
    v32 = v1[75];
    sub_10009591C();
    v33 = swift_allocError();
    *v34 = 9;
    swift_willThrow();

    goto LABEL_30;
  }

  v0[50] = 0;
  v3 = [v2 listAppletsAndRefreshCache:0 outError:v0 + 50];
  v4 = v0[50];
  v205 = v2;
  if (!v3)
  {
    v46 = v0[77];
    v47 = v0[76];
    v48 = v4;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      *v51 = 136315394;
      *(v51 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v249);
      *(v51 + 12) = 2080;
      swift_getErrorValue();
      v53 = v1[37];
      v52 = v1[38];
      v54 = v1[39];
      v55 = Error.localizedDescription.getter();
      v57 = sub_1002FFA0C(v55, v56, &v249);

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s: Nearfield error %s encountered when listing applets", v51, 0x16u);
      swift_arrayDestroy();
    }

    v58 = v1[85];
    v59 = v1[84];
    v60 = v1[83];
    v61 = v1[82];
    v62 = v1[75];
    [v205 invalidate];
    sub_10009591C();
    v33 = swift_allocError();
    *v63 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_30;
  }

  v5 = v3;
  v6 = v1[76];
  v203 = sub_10012E2F8();
  v239 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v4;

  [v2 invalidate];
  if (v6 >> 62)
  {
    goto LABEL_315;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v249 = _swiftEmptyArrayStorage;
      sub_10019F4A4(0, i & ~(i >> 63), 0);
      if ((i & 0x8000000000000000) != 0)
      {
LABEL_319:
        __break(1u);
LABEL_320:
        v240 = i & 0xFFFFFFFFFFFFFF8;
        v246 = _CocoaArrayWrapper.endIndex.getter();
        v10 = v213;
        goto LABEL_37;
      }

      v9 = 0;
      v10 = v249;
      v11 = v6 & 0xC000000000000001;
      v12 = v248[76] + 32;
      do
      {
        if (v11)
        {
          v13 = v248[76];
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v12 + 8 * v9);
        }

        v15 = v14;
        v16 = InstanceInfoInternal.instanceAID.getter();
        v18 = v17;

        v249 = v10;
        v20 = v10[2];
        v19 = v10[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F4A4((v19 > 1), v20 + 1, 1);
          v10 = v249;
        }

        ++v9;
        v10[2] = v20 + 1;
        v21 = &v10[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
      }

      while (i != v9);
      v249 = _swiftEmptyArrayStorage;
      sub_100108288(i);
      v35 = 0;
      do
      {
        if (v11)
        {
          v36 = v248[76];
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v12 + 8 * v35);
        }

        v38 = v37;
        v39 = InstanceInfoInternal.securityDomainAID.getter();
        v41 = v40;

        v42 = v249;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10019F4A4(0, v42[2] + 1, 1);
          v42 = v249;
        }

        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          sub_10019F4A4((v43 > 1), v44 + 1, 1);
          v42 = v249;
        }

        ++v35;
        v42[2] = v44 + 1;
        v45 = &v42[2 * v44];
        v45[4] = v39;
        v45[5] = v41;
      }

      while (i != v35);
      v6 = v248;
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
      v10 = _swiftEmptyArrayStorage;
      v6 = v248;
    }

    *(v6 + 416) = _swiftEmptyArrayStorage;
    i = v239;
    v213 = v10;
    v221 = v42;
    v210 = v10[2];
    if (!v210)
    {
      v236 = *(v6 + 688);
      v204 = _swiftEmptyArrayStorage;
LABEL_166:
      v210 = v42[2];
      if (v210)
      {
        v209 = v6 + 760;
        v122 = i & 0xFFFFFFFFFFFFFF8;
        if (i >> 62)
        {
LABEL_322:
          v247 = _CocoaArrayWrapper.endIndex.getter();
          v42 = v221;
        }

        else
        {
          v247 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v123 = 0;
        v208 = (v6 + 774);
        v212 = v42 + 4;
        v243 = i & 0xC000000000000001;
        v227 = v122;
        while (1)
        {
          if (v123 >= v42[2])
          {
            goto LABEL_301;
          }

          v231 = v123;
          v124 = &v212[2 * v123];
          v126 = *v124;
          v125 = v124[1];
          sub_100069E2C(*v124, v125);
          v241 = v125;
          if (v247)
          {
            break;
          }

LABEL_261:
          sub_10006A178(v126, v241);
LABEL_266:
          v168 = v231;
LABEL_267:
          v123 = v168 + 1;
          v42 = v221;
          if (v123 == v210)
          {
            goto LABEL_277;
          }
        }

        v127 = 0;
        v233 = v126;
        v235 = BYTE6(v125);
        if (v126)
        {
          v128 = 0;
        }

        else
        {
          v128 = v125 == 0xC000000000000000;
        }

        v129 = v125 >> 62;
        v130 = v128;
        v238 = v130;
        v229 = v126;
        v215 = v126 >> 32;
        v217 = HIDWORD(v126);
        v131 = __OFSUB__(HIDWORD(v126), v126);
        v225 = v131;
        v223 = HIDWORD(v126) - v126;
        v245 = v129;
        while (1)
        {
          if (v243)
          {
            v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v127 >= *(v122 + 16))
            {
              goto LABEL_290;
            }

            v132 = *(i + 8 * v127 + 32);
          }

          v133 = v132;
          v134 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            goto LABEL_289;
          }

          v135 = [v132 identifierAsData];
          v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          i = v137;

          v138 = i >> 62;
          if (v245 == 3)
          {
            v139 = v238;
            if (i >> 62 != 3)
            {
              v139 = 0;
            }

            if (v139 == 1)
            {
              v140 = 0;
              if (!v136 && i == 0xC000000000000000)
              {
                v165 = 0;
                v166 = 0xC000000000000000;
LABEL_263:
                sub_10006A178(v165, v166);
LABEL_264:
                v167 = [v133 rawGPState];
                type metadata accessor for InstanceInfoInternal();
                if (v167 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter())
                {
                  sub_10006A178(v126, v241);

                  i = v239;
                  goto LABEL_266;
                }

                i = v239;
                v168 = v231;
                if ([v133 isGPLocked])
                {
                  sub_10006A178(v126, v241);
                }

                else
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v169 = *((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    i = v239;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  sub_10006A178(v126, v241);
                  v204 = *(v6 + 416);
                }

                goto LABEL_267;
              }

LABEL_202:
              if (v138 > 1)
              {
                goto LABEL_207;
              }

              goto LABEL_203;
            }
          }

          else
          {
            if (v245 <= 1)
            {
              v140 = v235;
              if (v245)
              {
                v140 = v223;
                if (v225)
                {
                  goto LABEL_299;
                }
              }

              goto LABEL_202;
            }

            if (v245 == 2)
            {
              v142 = *(v126 + 16);
              v141 = *(v126 + 24);
              v89 = __OFSUB__(v141, v142);
              v140 = v141 - v142;
              if (v89)
              {
                goto LABEL_300;
              }

              goto LABEL_202;
            }
          }

          v140 = 0;
          if (v138 > 1)
          {
LABEL_207:
            if (v138 == 2)
            {
              v144 = *(v136 + 16);
              v143 = *(v136 + 24);
              v89 = __OFSUB__(v143, v144);
              v145 = v143 - v144;
              if (v89)
              {
                goto LABEL_295;
              }

              if (v140 == v145)
              {
                goto LABEL_213;
              }
            }

            else if (!v140)
            {
              goto LABEL_262;
            }

            goto LABEL_183;
          }

LABEL_203:
          if (v138)
          {
            if (__OFSUB__(HIDWORD(v136), v136))
            {
              goto LABEL_294;
            }

            if (v140 == HIDWORD(v136) - v136)
            {
LABEL_213:
              if (v140 < 1)
              {
                goto LABEL_262;
              }

              if (v245 > 1)
              {
                if (v245 != 2)
                {
                  v146 = v208;
                  *(v208 + 6) = 0;
                  *v208 = 0;
                  goto LABEL_230;
                }

                v6 = *(v126 + 16);
                v147 = __DataStorage._bytes.getter();
                if (v147)
                {
                  v148 = __DataStorage._offset.getter();
                  if (__OFSUB__(v6, v148))
                  {
                    goto LABEL_309;
                  }

                  v147 += v6 - v148;
                }

                v104 = __DataStorage._length.getter();
                v126 = v233;
                if (v138 == 2)
                {
                  v149 = *(v136 + 16);
                  v150 = *(v136 + 24);
                }

                else
                {
                  if (v138 != 1)
                  {
                    v249 = v136;
                    v250 = i;
                    v251 = BYTE2(i);
                    v252 = BYTE3(i);
                    v253 = BYTE4(i);
                    v254 = BYTE5(i);
                    v6 = v248;
                    if (!v147)
                    {
                      goto LABEL_341;
                    }

                    v162 = memcmp(v147, &v249, BYTE6(i));
                    sub_10006A178(v136, i);
                    v122 = v227;
                    if (!v162)
                    {
                      goto LABEL_264;
                    }

                    goto LABEL_259;
                  }

                  v149 = v136;
                  v150 = v136 >> 32;
                  if (v136 >> 32 < v136)
                  {
                    __break(1u);
LABEL_318:
                    __break(1u);
                    goto LABEL_319;
                  }
                }

                v160 = sub_100189FB8(v149, v150, i & 0x3FFFFFFFFFFFFFFFLL, v147);
                if (v236)
                {
                  goto LABEL_274;
                }

                v161 = v160;
                sub_10006A178(v136, i);
                v236 = 0;
                v6 = v248;
                v122 = v227;
                if (v161)
                {
                  goto LABEL_264;
                }
              }

              else if (v245)
              {
                if (v215 < v229)
                {
                  goto LABEL_304;
                }

                v151 = __DataStorage._bytes.getter();
                if (v151)
                {
                  v152 = v151;
                  v153 = __DataStorage._offset.getter();
                  if (__OFSUB__(v229, v153))
                  {
                    goto LABEL_310;
                  }

                  __s1b = (v229 - v153 + v152);
                }

                else
                {
                  __s1b = 0;
                }

                __DataStorage._length.getter();
                v122 = v227;
                v126 = v233;
                if (v138 == 2)
                {
                  v163 = sub_100189FB8(*(v136 + 16), *(v136 + 24), i & 0x3FFFFFFFFFFFFFFFLL, __s1b);
                  v6 = v248;
                  sub_10006A178(v136, i);
                  if (v163)
                  {
                    goto LABEL_264;
                  }
                }

                else
                {
                  if (v138 == 1)
                  {
                    v122 = v136;
                    v6 = (v136 >> 32) - v136;
                    if (v136 >> 32 < v136)
                    {
                      goto LABEL_318;
                    }

                    v154 = __DataStorage._bytes.getter();
                    if (v154)
                    {
                      v155 = __DataStorage._offset.getter();
                      if (__OFSUB__(v136, v155))
                      {
                        __break(1u);
                        goto LABEL_322;
                      }

                      v154 += v136 - v155;
                    }

                    v122 = v227;
                    v156 = __DataStorage._length.getter();
                    if (v156 >= v6)
                    {
                      v157 = (v136 >> 32) - v136;
                    }

                    else
                    {
                      v157 = v156;
                    }

                    v104 = __s1b;
                    if (!__s1b)
                    {
                      goto LABEL_343;
                    }

                    v6 = v248;
                    if (!v154)
                    {
                      goto LABEL_342;
                    }

                    if (__s1b == v154)
                    {
LABEL_262:
                      v165 = v136;
                      v166 = i;
                      goto LABEL_263;
                    }

                    v158 = v157;
                    v159 = v154;
                  }

                  else
                  {
                    v104 = __s1b;
                    v249 = v136;
                    v250 = i;
                    v251 = BYTE2(i);
                    v252 = BYTE3(i);
                    v253 = BYTE4(i);
                    v254 = BYTE5(i);
                    if (!__s1b)
                    {
                      goto LABEL_344;
                    }

                    v158 = BYTE6(i);
                    v159 = &v249;
                  }

                  v164 = memcmp(v104, v159, v158);
                  sub_10006A178(v136, i);
                  if (!v164)
                  {
                    goto LABEL_264;
                  }
                }
              }

              else
              {
                *(v6 + 760) = v126;
                *(v6 + 762) = BYTE2(v126);
                *(v6 + 763) = BYTE3(v126);
                *(v6 + 764) = v217;
                *(v6 + 765) = BYTE5(v126);
                *(v6 + 766) = BYTE6(v126);
                *(v6 + 767) = HIBYTE(v126);
                *(v6 + 768) = v241;
                *(v6 + 772) = WORD2(v241);
                v146 = v209;
LABEL_230:
                sub_10019F024(v146, v136, i, &v249);
                if (v236)
                {
                  goto LABEL_274;
                }

                sub_10006A178(v136, i);
                v236 = 0;
                v6 = v248;
                if (v249)
                {
                  goto LABEL_264;
                }
              }

LABEL_259:

              goto LABEL_184;
            }
          }

          else if (v140 == BYTE6(i))
          {
            goto LABEL_213;
          }

LABEL_183:

          sub_10006A178(v136, i);
LABEL_184:
          ++v127;
          i = v239;
          if (v134 == v247)
          {
            goto LABEL_261;
          }
        }
      }

LABEL_277:
      *(v6 + 712) = v204;
      if (v204 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          v170.super.isa = Array._bridgeToObjectiveC()().super.isa;
          v171 = _CocoaArrayWrapper.endIndex.getter();
LABEL_280:
          *(v6 + 720) = v170;
          v172 = *(v6 + 608);

          if (v171)
          {
            if ((v204 & 0xC000000000000001) == 0)
            {
              if (!*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
              }

              v173 = *(v204 + 32);
              goto LABEL_284;
            }
          }

          else
          {
            __break(1u);
          }

          v173 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_284:
          v174 = v173;
          *(v6 + 728) = v173;
          v175 = *(v6 + 664);
          *(v6 + 80) = v6;
          *(v6 + 88) = sub_100290080;
          v176 = swift_continuation_init();
          *(v6 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
          *(v6 + 208) = _NSConcreteStackBlock;
          *(v6 + 216) = 1107296256;
          *(v6 + 224) = sub_1001E95B0;
          *(v6 + 232) = &unk_1004CEEB0;
          *(v6 + 240) = v176;
          [v175 startWiredModeWithApplets:v170.super.isa selectOnStart:v174 externalAuth:0 completion:v6 + 208];
          v104 = (v6 + 80);

          return _swift_continuation_await(v104);
        }
      }

      else if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v170.super.isa = Array._bridgeToObjectiveC()().super.isa;
        v171 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_280;
      }

      v178 = *(v6 + 632);
      v179 = *(v6 + 624);
      v180 = *(v6 + 616);
      v181 = *(v6 + 608);
      v182 = *(v6 + 552);
      v183 = v6;
      v184 = *(v6 + 520);
      v185 = v183[55];

      v179(v182, v185, v184);
      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.error.getter();
      v188 = os_log_type_enabled(v186, v187);
      v189 = v183[69];
      v190 = v183[66];
      v191 = v183[65];
      if (v188)
      {
        v192 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        *v192 = 136315394;
        *(v192 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v249);
        *(v192 + 12) = 2080;
        v193 = UUID.uuidString.getter();
        v195 = v194;
        (*(v190 + 8))(v189, v191);
        v196 = sub_1002FFA0C(v193, v195, &v249);

        *(v192 + 14) = v196;
        _os_log_impl(&_mh_execute_header, v186, v187, "%s: No applets are associated with credential with UUID %s", v192, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v190 + 8))(v189, v191);
      }

      v1 = v248;
      v197 = v248[85];
      v198 = v248[84];
      v199 = v248[83];
      v200 = v248[82];
      v201 = v248[75];
      sub_10009591C();
      v33 = swift_allocError();
      *v202 = 5;
      swift_willThrow();

      swift_unknownObjectRelease();
LABEL_30:
      v1[93] = v33;
      v64 = swift_task_alloc();
      v1[94] = v64;
      *v64 = v1;
      v64[1] = sub_1002907C0;
      v65 = v1[54];

      return sub_1001FF5CC();
    }

    v209 = v6 + 788;
    if (v239 >> 62)
    {
      goto LABEL_320;
    }

    v240 = v239 & 0xFFFFFFFFFFFFFF8;
    v246 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
    v67 = 0;
    v207 = (v6 + 802);
    v211 = v10 + 4;
    v242 = i & 0xC000000000000001;
    v204 = _swiftEmptyArrayStorage;
    v236 = *(v6 + 688);
LABEL_41:
    if (v67 >= v10[2])
    {
      goto LABEL_293;
    }

    v228 = v67;
    v69 = &v211[2 * v67];
    v70 = *v69;
    v71 = v69[1];
    sub_100069E2C(*v69, v71);
    v237 = v71;
    if (!v246)
    {
LABEL_38:
      sub_10006A178(v70, v237);
      goto LABEL_39;
    }

    v72 = 0;
    v230 = v70;
    v232 = BYTE6(v71);
    v73 = !v70 && v71 == 0xC000000000000000;
    v74 = v71 >> 62;
    v75 = v73;
    v234 = v75;
    v226 = v70;
    v214 = v70 >> 32;
    v216 = HIDWORD(v70);
    v76 = __OFSUB__(HIDWORD(v70), v70);
    v224 = v76;
    v222 = HIDWORD(v70) - v70;
    v244 = v74;
LABEL_56:
    if (v242)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v72 >= *(v240 + 16))
      {
        goto LABEL_288;
      }

      v77 = *(i + 8 * v72 + 32);
    }

    v78 = v77;
    v79 = v72 + 1;
    if (!__OFADD__(v72, 1))
    {
      break;
    }

    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    if (v248[76] < 0)
    {
      v177 = v248[76];
    }
  }

  v80 = [v77 identifierAsData];
  v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = v83 >> 62;
  if (v244 != 3)
  {
    if (v244 > 1)
    {
      if (v244 != 2)
      {
        goto LABEL_77;
      }

      v88 = *(v70 + 16);
      v87 = *(v70 + 24);
      v89 = __OFSUB__(v87, v88);
      v86 = v87 - v88;
      if (v89)
      {
        goto LABEL_297;
      }
    }

    else
    {
      v86 = v232;
      if (v244)
      {
        v86 = v222;
        if (v224)
        {
          goto LABEL_296;
        }
      }
    }

LABEL_73:
    if (v84 <= 1)
    {
      goto LABEL_74;
    }

LABEL_78:
    if (v84 == 2)
    {
      v91 = *(v81 + 16);
      v90 = *(v81 + 24);
      v89 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v89)
      {
        goto LABEL_291;
      }

      if (v86 == v92)
      {
        goto LABEL_84;
      }
    }

    else if (!v86)
    {
      goto LABEL_154;
    }

LABEL_54:

    sub_10006A178(v81, v83);
LABEL_55:
    ++v72;
    if (v79 == v246)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

  v85 = v234;
  if (v83 >> 62 != 3)
  {
    v85 = 0;
  }

  if (v85)
  {
    v86 = 0;
    if (!v81 && v83 == 0xC000000000000000)
    {
      v118 = 0;
      v119 = 0xC000000000000000;
      goto LABEL_155;
    }

    goto LABEL_73;
  }

LABEL_77:
  v86 = 0;
  if (v84 > 1)
  {
    goto LABEL_78;
  }

LABEL_74:
  if (!v84)
  {
    if (v86 == BYTE6(v83))
    {
      goto LABEL_84;
    }

    goto LABEL_54;
  }

  if (__OFSUB__(HIDWORD(v81), v81))
  {
    goto LABEL_292;
  }

  if (v86 != HIDWORD(v81) - v81)
  {
    goto LABEL_54;
  }

LABEL_84:
  if (v86 < 1)
  {
    goto LABEL_154;
  }

  if (v244 <= 1)
  {
    if (!v244)
    {
      *(v6 + 788) = v70;
      *(v6 + 790) = BYTE2(v70);
      *(v6 + 791) = BYTE3(v70);
      *(v6 + 792) = v216;
      *(v6 + 793) = BYTE5(v70);
      *(v6 + 794) = BYTE6(v70);
      *(v6 + 795) = HIBYTE(v70);
      *(v6 + 796) = v237;
      *(v6 + 800) = WORD2(v237);
      v93 = v209;
      goto LABEL_97;
    }

    if (v214 < v226)
    {
      goto LABEL_298;
    }

    v97 = __DataStorage._bytes.getter();
    if (v97)
    {
      v98 = v97;
      v99 = __DataStorage._offset.getter();
      if (__OFSUB__(v226, v99))
      {
        goto LABEL_303;
      }

      __s1a = (v226 - v99 + v98);
    }

    else
    {
      __s1a = 0;
    }

    __DataStorage._length.getter();
    i = v239;
    v70 = v230;
    if (v84 != 2)
    {
      if (v84 == 1)
      {
        v6 = (v81 >> 32) - v81;
        if (v81 >> 32 < v81)
        {
          goto LABEL_307;
        }

        v100 = __DataStorage._bytes.getter();
        if (v100)
        {
          v105 = __DataStorage._offset.getter();
          if (__OFSUB__(v81, v105))
          {
            goto LABEL_314;
          }

          v100 += v81 - v105;
        }

        v106 = __DataStorage._length.getter();
        if (v106 >= v6)
        {
          v103 = (v81 >> 32) - v81;
        }

        else
        {
          v103 = v106;
        }

        i = v239;
        v104 = __s1a;
        if (!__s1a)
        {
          goto LABEL_334;
        }

        v6 = v248;
        if (!v100)
        {
          goto LABEL_333;
        }

        goto LABEL_147;
      }

      v104 = __s1a;
      v249 = v81;
      v250 = v83;
      v251 = BYTE2(v83);
      v252 = BYTE3(v83);
      v253 = BYTE4(v83);
      v254 = BYTE5(v83);
      if (!__s1a)
      {
        goto LABEL_335;
      }

LABEL_150:
      v115 = BYTE6(v83);
      v116 = &v249;
LABEL_151:
      v117 = memcmp(v104, v116, v115);
      sub_10006A178(v81, v83);
      if (!v117)
      {
        goto LABEL_156;
      }

LABEL_152:

      goto LABEL_55;
    }

    v6 = *(v81 + 16);
    v111 = *(v81 + 24);
    v100 = __DataStorage._bytes.getter();
    if (v100)
    {
      v112 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, v112))
      {
        goto LABEL_313;
      }

      v100 += v6 - v112;
    }

    v89 = __OFSUB__(v111, v6);
    v113 = v111 - v6;
    if (v89)
    {
      goto LABEL_308;
    }

    v114 = __DataStorage._length.getter();
    if (v114 >= v113)
    {
      v103 = v113;
    }

    else
    {
      v103 = v114;
    }

    v104 = __s1a;
    if (!__s1a)
    {
      goto LABEL_337;
    }

    v6 = v248;
    i = v239;
    if (!v100)
    {
      goto LABEL_336;
    }

    goto LABEL_147;
  }

  if (v244 != 2)
  {
    v93 = v207;
    *(v207 + 6) = 0;
    *v207 = 0;
LABEL_97:
    sub_10019F024(v93, v81, v83, &v249);
    if (v236)
    {
LABEL_274:
    }

    sub_10006A178(v81, v83);
    v236 = 0;
    v6 = v248;
    if (v249)
    {
      goto LABEL_156;
    }

    goto LABEL_152;
  }

  v6 = *(v70 + 16);
  v94 = __DataStorage._bytes.getter();
  if (v94)
  {
    v95 = v94;
    v96 = __DataStorage._offset.getter();
    if (__OFSUB__(v6, v96))
    {
      goto LABEL_302;
    }

    __s1 = (v6 - v96 + v95);
  }

  else
  {
    __s1 = 0;
  }

  __DataStorage._length.getter();
  v6 = v248;
  i = v239;
  v70 = v230;
  if (v84 != 2)
  {
    if (v84 == 1)
    {
      v6 = v81;
      if (v81 >> 32 < v81)
      {
        goto LABEL_305;
      }

      v100 = __DataStorage._bytes.getter();
      if (v100)
      {
        v101 = __DataStorage._offset.getter();
        if (__OFSUB__(v81, v101))
        {
          goto LABEL_312;
        }

        v100 += v81 - v101;
      }

      v102 = __DataStorage._length.getter();
      if (v102 >= (v81 >> 32) - v81)
      {
        v103 = (v81 >> 32) - v81;
      }

      else
      {
        v103 = v102;
      }

      v6 = v248;
      v104 = __s1;
      if (!__s1)
      {
        goto LABEL_339;
      }

      i = v239;
      if (!v100)
      {
        goto LABEL_338;
      }

      goto LABEL_147;
    }

    v104 = __s1;
    v249 = v81;
    v250 = v83;
    v251 = BYTE2(v83);
    v252 = BYTE3(v83);
    v253 = BYTE4(v83);
    v254 = BYTE5(v83);
    if (!__s1)
    {
      goto LABEL_340;
    }

    goto LABEL_150;
  }

  v107 = *(v81 + 16);
  v206 = *(v81 + 24);
  v100 = __DataStorage._bytes.getter();
  if (v100)
  {
    v108 = __DataStorage._offset.getter();
    if (__OFSUB__(v107, v108))
    {
      goto LABEL_311;
    }

    v100 += v107 - v108;
  }

  v89 = __OFSUB__(v206, v107);
  v109 = v206 - v107;
  if (v89)
  {
    goto LABEL_306;
  }

  v110 = __DataStorage._length.getter();
  if (v110 >= v109)
  {
    v103 = v109;
  }

  else
  {
    v103 = v110;
  }

  v104 = __s1;
  if (!__s1)
  {
    goto LABEL_332;
  }

  i = v239;
  if (v100)
  {
LABEL_147:
    if (v104 != v100)
    {
      v115 = v103;
      v116 = v100;
      goto LABEL_151;
    }

LABEL_154:
    v118 = v81;
    v119 = v83;
LABEL_155:
    sub_10006A178(v118, v119);
LABEL_156:
    if ([v78 managedBySP])
    {
      v120 = [v78 rawGPState];
      type metadata accessor for InstanceInfoInternal();
      v68 = v228;
      if (v120 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter())
      {
        sub_10006A178(v230, v237);

        i = v239;
      }

      else
      {
        i = v239;
        if ([v78 isGPLocked])
        {
          sub_10006A178(v230, v237);
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v121 = *((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            i = v239;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_10006A178(v230, v237);
          v204 = *(v6 + 416);
        }
      }

      goto LABEL_40;
    }

    sub_10006A178(v70, v237);

LABEL_39:
    v68 = v228;
LABEL_40:
    v67 = v68 + 1;
    v10 = v213;
    v42 = v221;
    if (v67 == v210)
    {
      goto LABEL_166;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
  return _swift_continuation_await(v104);
}

uint64_t sub_100290080()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 736) = v3;
  if (v3)
  {
    v4 = *(v1 + 712);

    v5 = sub_100290C04;
  }

  else
  {
    v5 = sub_1002901C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002901C4()
{
  v75 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 616);
  v4 = *(v0 + 432);

  v5 = v4;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 712);
  if (!v8)
  {

    goto LABEL_21;
  }

  v10 = *(v0 + 432);
  v11 = swift_slowAlloc();
  v74 = swift_slowAlloc();
  *v11 = 136315394;
  v12 = UUID.uuidString.getter();
  v14 = sub_1002FFA0C(v12, v13, &v74);

  *(v11 + 4) = v14;
  *(v11 + 12) = 2080;
  v15 = *(v0 + 712);
  if (v9 >> 62)
  {
    if (v15 < 0)
    {
      v29 = *(v0 + 712);
    }

    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_4:
      sub_100108270(v16);
      if (v16 < 0)
      {
        goto LABEL_28;
      }

      v69 = v11;
      v71 = v7;
      v17 = 0;
      v18 = *(v0 + 712) + 32;
      do
      {
        if ((*(v0 + 712) & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v18 + 8 * v17);
        }

        v20 = v19;
        v21 = [v19 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10019F3C0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_10019F3C0((v25 > 1), v26 + 1, 1);
        }

        ++v17;
        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
      }

      while (v16 != v17);
      v28 = *(v0 + 712);

      v7 = v71;
      v11 = v69;
      goto LABEL_20;
    }
  }

  v30 = *(v0 + 712);

LABEL_20:
  v31 = Array.description.getter();
  v33 = v32;

  v34 = sub_1002FFA0C(v31, v33, &v74);

  *(v11 + 14) = v34;
  _os_log_impl(&_mh_execute_header, v6, v7, "Session %s: Started wired mode with allowed applets: %s", v11, 0x16u);
  swift_arrayDestroy();

LABEL_21:
  v36 = *(v0 + 496);
  v35 = *(v0 + 504);
  v37 = *(v0 + 432);
  v38 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if ((*(v35 + 48))(v37 + v38, 1, v36))
  {
    goto LABEL_24;
  }

  v40 = *(v0 + 480);
  v39 = *(v0 + 488);
  v41 = *(v0 + 472);
  sub_10012DFF8(v37 + v38, *(v0 + 512));
  static DispatchTime.now()();
  v42 = DispatchTime.uptimeNanoseconds.getter();
  (*(v40 + 8))(v39, v41);
  v43 = DispatchTime.uptimeNanoseconds.getter();
  if (v42 < v43)
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v44 = *(v0 + 512);
  v45 = v44 + *(*(v0 + 496) + 24);
  v46 = *(v45 + 8);
  (*v45)((v42 - v43) / 0x3B9ACA00);
  sub_10012E4DC(v44, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
LABEL_24:
  v72 = *(v0 + 672);
  v73 = *(v0 + 680);
  v47 = *(v0 + 664);
  v68 = *(v0 + 704);
  v70 = *(v0 + 656);
  v48 = *(v0 + 496);
  v49 = *(v0 + 504);
  v50 = *(v0 + 456);
  v51 = *(v0 + 464);
  v66 = *(v0 + 448);
  v67 = *(v0 + 600);
  v52 = *(*(v0 + 432) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(4, 1);
  static DispatchTime.now()();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = 1;
  *(v51 + *(v48 + 20)) = 1;
  v54 = (v51 + *(v48 + 24));
  *v54 = sub_10012E59C;
  v54[1] = v53;
  (*(v49 + 56))(v51, 0, 1, v48);
  swift_beginAccess();
  sub_10012DF88(v51, v37 + v38);
  swift_endAccess();
  v66(0);

  swift_unknownObjectRelease();
  v55 = *(v0 + 592);
  v56 = *(v0 + 568);
  v57 = *(v0 + 560);
  v58 = *(v0 + 552);
  v59 = *(v0 + 544);
  v60 = *(v0 + 536);
  v61 = *(v0 + 512);
  v62 = *(v0 + 488);
  v63 = *(v0 + 464);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1002907C0()
{
  v1 = *(*v0 + 752);
  v3 = *v0;

  return _swift_task_switch(sub_1002908E8, 0, 0);
}

uint64_t sub_1002908E8()
{
  v1 = v0[93];
  v3 = v0[56];
  v2 = v0[57];
  swift_errorRetain();
  v3(v1);

  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[64];
  v11 = v0[61];
  v12 = v0[58];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100290A20()
{
  v1 = v0[76];
  v2 = v0[75];

  v0[93] = v0[86];
  v3 = swift_task_alloc();
  v0[94] = v3;
  *v3 = v0;
  v3[1] = sub_1002907C0;
  v4 = v0[54];

  return sub_1001FF5CC();
}

uint64_t sub_100290AF4()
{
  v1 = v0[87];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[75];
  swift_willThrow();

  v0[93] = v0[87];
  v7 = swift_task_alloc();
  v0[94] = v7;
  *v7 = v0;
  v7[1] = sub_1002907C0;
  v8 = v0[54];

  return sub_1001FF5CC();
}

uint64_t sub_100290C04()
{
  v28 = v0;
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[77];
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[92];
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v27);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[42];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v27);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Nearfield error %s when starting wired mode", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[92];
  v16 = v0[88];
  v17 = v0[85];
  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  v21 = v0[75];
  sub_10009591C();
  v22 = swift_allocError();
  *v23 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[93] = v22;
  v24 = swift_task_alloc();
  v0[94] = v24;
  *v24 = v0;
  v24[1] = sub_1002907C0;
  v25 = v0[54];

  return sub_1001FF5CC();
}

uint64_t sub_100291140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2120) = v37;
  *(v8 + 2104) = v36;
  *(v8 + 2096) = a8;
  *(v8 + 2088) = a7;
  *(v8 + 2080) = a6;
  *(v8 + 2072) = a5;
  *(v8 + 2064) = a4;
  v9 = *(*(sub_100068FC4(&unk_100504270, &qword_10040B598) - 8) + 64) + 15;
  *(v8 + 2128) = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Identifier();
  *(v8 + 2136) = v10;
  v11 = *(v10 - 8);
  *(v8 + 2144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 2152) = swift_task_alloc();
  v13 = type metadata accessor for Calendar();
  *(v8 + 2160) = v13;
  v14 = *(v13 - 8);
  *(v8 + 2168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 2176) = swift_task_alloc();
  v16 = type metadata accessor for Date();
  *(v8 + 2184) = v16;
  v17 = *(v16 - 8);
  *(v8 + 2192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 2200) = swift_task_alloc();
  *(v8 + 2208) = swift_task_alloc();
  v19 = type metadata accessor for PresentmentInfo();
  *(v8 + 2216) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 2224) = swift_task_alloc();
  v21 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  *(v8 + 2232) = swift_task_alloc();
  v22 = type metadata accessor for DispatchTime();
  *(v8 + 2240) = v22;
  v23 = *(v22 - 8);
  *(v8 + 2248) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 2256) = swift_task_alloc();
  v25 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  *(v8 + 2264) = v25;
  v26 = *(v25 - 8);
  *(v8 + 2272) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 2280) = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  *(v8 + 2288) = v28;
  v29 = *(v28 - 8);
  *(v8 + 2296) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 2304) = swift_task_alloc();
  *(v8 + 2312) = swift_task_alloc();
  *(v8 + 2320) = swift_task_alloc();
  *(v8 + 2328) = swift_task_alloc();
  *(v8 + 2336) = swift_task_alloc();
  *(v8 + 2344) = swift_task_alloc();
  v31 = type metadata accessor for StateInternal();
  *(v8 + 2352) = v31;
  v32 = *(v31 - 8);
  *(v8 + 2360) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 2368) = swift_task_alloc();

  return _swift_task_switch(sub_100291564, 0, 0);
}

uint64_t sub_100291564()
{
  v146 = v0;
  v1 = v0[258];
  v2 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24);
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1 || (v2 == 0x8000000000000000 ? (v3 = (*(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8) | *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16) | *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState)) == 0) : (v3 = 0), !v3))
    {
      if (qword_1005019D8 != -1)
      {
        goto LABEL_113;
      }

      goto LABEL_8;
    }
  }

  v11 = v0[259];
  v12 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = swift_task_alloc();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;

  v15 = 0;
  v16 = sub_10033322C(sub_10012E2D4, v14, v13);

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_115:

    if (qword_1005019D8 == -1)
    {
LABEL_116:
      v106 = v0[288];
      v107 = v0[287];
      v108 = v0[286];
      v109 = v0[259];
      v110 = type metadata accessor for Logger();
      sub_1000958E4(v110, qword_10051B2C8);
      (*(v107 + 16))(v106, v109, v108);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v0[288];
      v115 = v0[287];
      v116 = v0[286];
      if (v113)
      {
        v117 = swift_slowAlloc();
        v145[0] = swift_slowAlloc();
        *v117 = 136315394;
        *(v117 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v145);
        *(v117 + 12) = 2080;
        v118 = UUID.uuidString.getter();
        v120 = v119;
        (*(v115 + 8))(v114, v116);
        v121 = sub_1002FFA0C(v118, v120, v145);

        *(v117 + 14) = v121;
        _os_log_impl(&_mh_execute_header, v111, v112, "%s: Credential %s not found", v117, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v115 + 8))(v114, v116);
      }

      sub_10009591C();
      v9 = swift_allocError();
      v10 = 1;
      goto LABEL_120;
    }

LABEL_127:
    swift_once();
    goto LABEL_116;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_115;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = 0;
      v18 = *(v16 + 32);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_127;
  }

LABEL_125:
  v17 = v15;
  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v19 = v18;
  v0[297] = v18;
  v20 = v0[296];
  v21 = v0[295];
  v22 = v0[294];

  CredentialInternal.state.getter();
  v23 = (*(v21 + 88))(v20, v22);
  v24 = v0[296];
  v25 = v0[295];
  v26 = v0[294];
  v137 = v19;
  if (v23 != enum case for StateInternal.installed(_:))
  {
    (*(v25 + 8))(v24, v26);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v60 = v0[289];
    v61 = v0[287];
    v62 = v0[286];
    v63 = v0[259];
    v64 = type metadata accessor for Logger();
    sub_1000958E4(v64, qword_10051B2C8);
    (*(v61 + 16))(v60, v63, v62);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[289];
    v69 = v0[287];
    v70 = v0[286];
    if (v67)
    {
      v71 = swift_slowAlloc();
      v145[0] = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v145);
      *(v71 + 12) = 2080;
      v72 = UUID.uuidString.getter();
      v74 = v73;
      (*(v69 + 8))(v68, v70);
      v75 = sub_1002FFA0C(v72, v74, v145);

      *(v71 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s: Credential %s not installed", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v69 + 8))(v68, v70);
    }

    sub_10009591C();
    v9 = swift_allocError();
    *v76 = 7;
    swift_willThrow();

    goto LABEL_121;
  }

  (*(v25 + 96))(v24, v26);
  v27 = *v24;
  v0[298] = *v24;
  v145[0] = _swiftEmptyArrayStorage;
  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[299] = v28;
  v135 = v0;
  if (!v28)
  {
    v77 = _swiftEmptyArrayStorage;
LABEL_94:
    if (v77 < 0 || (v77 & 0x4000000000000000) != 0)
    {
      v0 = v135;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_97;
      }
    }

    else
    {
      v0 = v135;
      if (*(v77 + 16))
      {
LABEL_97:
        if ((v77 & 0xC000000000000001) != 0)
        {
LABEL_133:
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v77 + 16))
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
          }

          v78 = *(v77 + 32);
        }

        v79 = v78;

        v0[300] = v79;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v80 = v0[293];
        v81 = v0[287];
        v82 = v0[286];
        v83 = v0[259];
        v84 = v0[258];
        v85 = type metadata accessor for Logger();
        v0[301] = sub_1000958E4(v85, qword_10051B2C8);
        v86 = *(v81 + 16);
        v0[302] = v86;
        v0[303] = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v86(v80, v83, v82);
        v87 = v84;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.info.getter();

        v90 = os_log_type_enabled(v88, v89);
        v91 = v0[293];
        v92 = v0[287];
        v93 = v0[286];
        if (v90)
        {
          v94 = v0[258];
          v95 = swift_slowAlloc();
          v145[0] = swift_slowAlloc();
          *v95 = 136315394;
          v96 = UUID.uuidString.getter();
          v98 = sub_1002FFA0C(v96, v97, v145);

          *(v95 + 4) = v98;
          *(v95 + 12) = 2080;
          v99 = UUID.uuidString.getter();
          v101 = v100;
          v102 = *(v92 + 8);
          v102(v91, v93);
          v103 = sub_1002FFA0C(v99, v101, v145);

          *(v95 + 14) = v103;
          _os_log_impl(&_mh_execute_header, v88, v89, "Session %s: Authorizing credential %s in wired mode", v95, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v102 = *(v92 + 8);
          v102(v91, v93);
        }

        v0[304] = v102;
        v104 = swift_task_alloc();
        v0[305] = v104;
        *v104 = v0;
        v104[1] = sub_1002924C0;
        v105 = v0[258];

        return sub_1001FDAE0(v137);
      }
    }

    sub_10009591C();
    v9 = swift_allocError();
    *v124 = 5;
    swift_willThrow();

    goto LABEL_121;
  }

  v141 = v17;
  v29 = 0;
  v127 = (v0 + 337);
  v128 = v0 + 351;
  v30 = v0[261];
  v31 = v0[260];
  v15 = v27 & 0xC000000000000001;
  v143 = v27 & 0xFFFFFFFFFFFFFF8;
  v0 = (v30 >> 62);
  v139 = v30;
  v140 = BYTE6(v30);
  v33 = v30 == 0xC000000000000000 && v31 == 0;
  v142 = v33;
  v131 = v31;
  v132 = v27;
  v125 = v31 >> 32;
  v138 = v31;
  v126 = HIDWORD(v31);
  v34 = HIDWORD(v31) - v31;
  v35 = __OFSUB__(HIDWORD(v31), v31);
  v134 = v35;
  v133 = v34;
  v136 = v27 & 0xC000000000000001;
  while (1)
  {
    if (v15)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v143 + 16))
      {
        goto LABEL_110;
      }

      v36 = *(v27 + 8 * v29 + 32);
    }

    v37 = v36;
    v38 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    v39 = v28;
    v40 = InstanceInfoInternal.instanceAID.getter();
    v42 = v40;
    v43 = v41;
    v44 = v41 >> 62;
    if (v0 == 3)
    {
      v45 = v142;
      if (v41 >> 62 != 3)
      {
        v45 = 0;
      }

      if (v45)
      {
        v46 = 0;
        if (!v40 && v41 == 0xC000000000000000)
        {
          v40 = 0;
          v41 = 0xC000000000000000;
          goto LABEL_65;
        }

LABEL_50:
        if (v44 > 1)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v0 <= 1)
      {
        v46 = v140;
        if (v0)
        {
          v46 = v133;
          if (v134)
          {
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }
        }

        goto LABEL_50;
      }

      if (v0 == 2)
      {
        v48 = *(v138 + 16);
        v47 = *(v138 + 24);
        v49 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (v49)
        {
          goto LABEL_124;
        }

        goto LABEL_50;
      }
    }

    v46 = 0;
    if (v44 > 1)
    {
LABEL_55:
      if (v44 == 2)
      {
        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        v49 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v49)
        {
          goto LABEL_112;
        }

        if (v46 == v52)
        {
          goto LABEL_61;
        }
      }

      else if (!v46)
      {
        goto LABEL_65;
      }

      goto LABEL_31;
    }

LABEL_51:
    if (v44)
    {
      if (__OFSUB__(HIDWORD(v40), v40))
      {
        goto LABEL_111;
      }

      if (v46 == HIDWORD(v40) - v40)
      {
LABEL_61:
        if (v46 >= 1)
        {
          if (v0 > 1)
          {
            if (v0 != 2)
            {
              v53 = v127;
              *(v127 + 6) = 0;
              *v127 = 0;
              goto LABEL_76;
            }

            v129 = *(v138 + 24);
            v130 = *(v138 + 16);
            v54 = __DataStorage._bytes.getter();
            if (v54)
            {
              v55 = __DataStorage._offset.getter();
              v56 = v130;
              if (__OFSUB__(v130, v55))
              {
                goto LABEL_135;
              }

              v54 += v130 - v55;
            }

            else
            {
              v56 = v130;
            }

            if (__OFSUB__(v129, v56))
            {
              goto LABEL_132;
            }
          }

          else
          {
            if (!v0)
            {
              *(v135 + 351) = v138;
              *(v135 + 355) = v126;
              *(v135 + 178) = *(&v138 + 5);
              *(v135 + 358) = HIBYTE(v138);
              *(v135 + 359) = v139;
              *(v135 + 363) = WORD2(v139);
              v53 = v128;
LABEL_76:
              result = sub_10019F024(v53, v42, v41, v144);
              if (v141)
              {
                return result;
              }

              sub_10006A178(v42, v43);
              if (!v144[0])
              {
                goto LABEL_84;
              }

LABEL_78:
              v141 = 0;
              v28 = v39;
              v15 = v136;
LABEL_79:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v59 = *(v145[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_32;
            }

            if (v125 < v131)
            {
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v54 = __DataStorage._bytes.getter();
            if (v54)
            {
              v57 = __DataStorage._offset.getter();
              if (__OFSUB__(v131, v57))
              {
                goto LABEL_136;
              }

              v54 += v131 - v57;
            }
          }

          __DataStorage._length.getter();
          result = sub_10019F024(v54, v42, v43, v144);
          if (v141)
          {
            return result;
          }

          sub_10006A178(v42, v43);
          v27 = v132;
          if (!v144[0])
          {
LABEL_84:

            v141 = 0;
            v28 = v39;
            v15 = v136;
            goto LABEL_32;
          }

          goto LABEL_78;
        }

LABEL_65:
        sub_10006A178(v40, v41);
        v28 = v39;
        goto LABEL_79;
      }
    }

    else if (v46 == BYTE6(v41))
    {
      goto LABEL_61;
    }

LABEL_31:

    sub_10006A178(v42, v43);
    v28 = v39;
LABEL_32:
    ++v29;
    if (v38 == v28)
    {
      v77 = v145[0];
      v19 = v137;
      goto LABEL_94;
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
  swift_once();
LABEL_8:
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempted to enter wired mode in invalid state", v7, 2u);
  }

  sub_10009591C();
  v9 = swift_allocError();
  v10 = 10;
LABEL_120:
  *v8 = v10;
  swift_willThrow();
LABEL_121:
  v0[337] = v9;
  v122 = swift_task_alloc();
  v0[338] = v122;
  *v122 = v0;
  v122[1] = sub_100295AC0;
  v123 = v0[258];

  return sub_1001FF5CC();
}

uint64_t sub_1002924C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 2440);
  v10 = *v5;
  v6[306] = a1;
  v6[307] = a2;
  v6[308] = a3;
  v6[309] = a4;
  v6[310] = v4;

  if (v4)
  {
    v8 = sub_100295D84;
  }

  else
  {
    v8 = sub_100292610;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100292610()
{
  v45 = v0;
  v1 = v0[307];
  v2 = v0[301];
  if (v1)
  {
    v3 = v0[297];
    v4 = v1;
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v43 = v0[304];
      v8 = v0[297];
      v9 = v0[292];
      v10 = v0[287];
      v11 = v0[286];
      v12 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, &v44);
      *(v12 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v13 = UUID.uuidString.getter();
      v15 = v14;
      v43(v9, v11);
      v16 = sub_1002FFA0C(v13, v15, &v44);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s; Starting new wired mode handle for credential %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    v17 = v0[309];
    v18 = v0[308];
    v19 = v0[307];
    v20 = v0[306];
    v21 = v0[258];
    v22 = v18;
    v23 = v17;
    v24 = v4;
    v25 = v20;
    sub_1001FEFA8(v20, v19, v18, v17 | 0x4000000000000000);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v0[311] = qword_10051B858;
    v26 = swift_task_alloc();
    v0[312] = v26;
    *v26 = v0;
    v26[1] = sub_100292A90;
    v27 = v0[297];

    return sub_100301130(v27);
  }

  else
  {
    v29 = v0[298];

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, &v44);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: NFCredentialSession in handle has been invalidated", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v34 = v0[309];
    v35 = v0[308];
    v36 = v0[306];
    v37 = v0[300];
    v38 = v0[297];
    sub_10009591C();
    v39 = swift_allocError();
    *v40 = 9;
    swift_willThrow();

    v0[337] = v39;
    v41 = swift_task_alloc();
    v0[338] = v41;
    *v41 = v0;
    v41[1] = sub_100295AC0;
    v42 = v0[258];

    return sub_1001FF5CC();
  }
}

uint64_t sub_100292A90()
{
  v2 = *(*v1 + 2496);
  v5 = *v1;
  *(*v1 + 2504) = v0;

  if (v0)
  {
    v3 = sub_100295E6C;
  }

  else
  {
    v3 = sub_100292BD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100292BD0()
{
  v1 = v0[307];
  v0[10] = v0;
  v0[15] = v0 + 256;
  v0[11] = sub_100292D24;
  v2 = swift_continuation_init();
  v0[208] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[205] = v2;
  v0[201] = _NSConcreteStackBlock;
  v0[202] = 1107296256;
  v0[203] = sub_1001FDA0C;
  v0[204] = &unk_1004CED98;
  [v1 requestSETransceiverWithCompletion:v0 + 201];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100292D24()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 2512) = v3;
  if (v3)
  {
    v4 = *(v1 + 2384);

    v5 = sub_100295F88;
  }

  else
  {
    v5 = sub_100292E68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100292E68()
{
  v188 = v0;
  v1 = *(v0 + 2048);
  *(v0 + 2520) = v1;
  if (!v1)
  {
    v15 = *(v0 + 2408);
    v16 = *(v0 + 2384);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v187[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v187);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Unable to get transceiver", v19, 0xCu);
      sub_1000752F4(v20);
    }

    v21 = *(v0 + 2472);
    v22 = *(v0 + 2464);
    v23 = *(v0 + 2456);
    v24 = *(v0 + 2448);
    v25 = *(v0 + 2400);
    v26 = *(v0 + 2376);
    sub_10009591C();
    v27 = swift_allocError();
    *v28 = 9;
    swift_willThrow();

    goto LABEL_58;
  }

  *(v0 + 2032) = 0;
  v2 = [v1 listAppletsAndRefreshCache:0 outError:v0 + 2032];
  v3 = *(v0 + 2032);
  if (!v2)
  {
    v29 = *(v0 + 2408);
    v30 = *(v0 + 2384);
    v31 = v3;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v187[0] = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v187);
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v35 = *(v0 + 1840);
      v36 = *(v0 + 1848);
      v37 = *(v0 + 1856);
      v38 = Error.localizedDescription.getter();
      v40 = sub_1002FFA0C(v38, v39, v187);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s: Nearfield error %s encountered when listing applets", v34, 0x16u);
      swift_arrayDestroy();
    }

    v41 = *(v0 + 2472);
    v42 = *(v0 + 2464);
    v43 = *(v0 + 2456);
    v44 = *(v0 + 2448);
    v45 = *(v0 + 2400);
    v184 = *(v0 + 2376);
    [v1 invalidate];
    sub_10009591C();
    v27 = swift_allocError();
    *v46 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_58;
  }

  v4 = v2;
  v5 = *(v0 + 2392);
  *(v0 + 2528) = sub_10012E2F8();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2536) = v6;
  v7 = v3;

  [v1 invalidate];
  v186[0] = _swiftEmptyArrayStorage;
  if (!v5)
  {
    v47 = *(v0 + 2504);
    v48 = _swiftEmptyArrayStorage;
LABEL_20:
    *(v0 + 2544) = v48;
    if (v48 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      v49 = *(v0 + 2104);
      v50 = *(v0 + 2096);
      if (sub_1002B3D04())
      {
        if (SESInternalVariant())
        {
          v51 = *(v0 + 2104);
          v52 = *(v0 + 2096);
          *(v0 + 2000) = 95;
          *(v0 + 2008) = 0xE100000000000000;
          v53 = swift_task_alloc();
          *(v53 + 16) = v0 + 2000;

          v55 = sub_10029F26C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10029FE24, v53, v52, v51, v54);
          *(v0 + 2552) = v47;

          v56 = v55[2];
          if (v56)
          {
            v57 = &v55[4 * v56];
            v58 = *v57;
            v59 = v57[1];
            v60 = v57[2];
            v61 = v57[3];

            v62 = static String._fromSubstring(_:)();
            v64 = v63;

            *(v0 + 2560) = sub_10013044C(v62, v64);
            *(v0 + 2568) = v65;
            if (v65 >> 60 != 15)
            {
              v66 = *(v0 + 2456);
              v67 = *(v0 + 2384);

              isa = Array._bridgeToObjectiveC()().super.isa;
              *(v0 + 2576) = isa;

              v69 = Data._bridgeToObjectiveC()().super.isa;
              *(v0 + 2584) = v69;
              *(v0 + 144) = v0;
              *(v0 + 152) = sub_100294034;
              v70 = swift_continuation_init();
              *(v0 + 1728) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
              *(v0 + 1704) = v70;
              *(v0 + 1672) = _NSConcreteStackBlock;
              *(v0 + 1680) = 1107296256;
              *(v0 + 1688) = sub_1001E95B0;
              *(v0 + 1696) = &unk_1004CEE10;
              [v66 startWiredModeWithApplets:isa externalAuth:v69 completion:v0 + 1672];

              return _swift_continuation_await(v0 + 144);
            }
          }

          else
          {
          }

          v187[0] = 0;
          v187[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(51);
          v144._object = 0x800000010046A4F0;
          v144._countAndFlagsBits = 0xD000000000000047;
          String.append(_:)(v144);
          v145._countAndFlagsBits = 0xD000000000000031;
          v145._object = 0x8000000100463AD0;
          String.append(_:)(v145);
        }

        return _assertionFailure(_:_:file:line:flags:)();
      }

      v71 = *(v0 + 2064);
      *(v0 + 1736) = 0u;
      *(v0 + 1752) = 0u;
      v72 = &v71[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
      *(v0 + 568) = *&v71[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
      v73 = *(v72 + 4);
      v75 = *(v72 + 1);
      v74 = *(v72 + 2);
      *(v0 + 616) = *(v72 + 3);
      *(v0 + 632) = v73;
      *(v0 + 584) = v75;
      *(v0 + 600) = v74;
      v77 = *(v72 + 6);
      v76 = *(v72 + 7);
      v78 = *(v72 + 5);
      *(v0 + 696) = v72[128];
      *(v0 + 664) = v77;
      *(v0 + 680) = v76;
      *(v0 + 648) = v78;
      if (*(v0 + 696) <= 1u)
      {
        v79 = *(v0 + 2376);
        v80 = *(v0 + 656);
        v81 = *(v0 + 648);
        v82 = *(v0 + 632);
        v83 = *(v0 + 616);
        v84 = *(v0 + 600);
        v85 = *(v0 + 584);
        v87 = *(v72 + 6);
        v86 = *(v72 + 7);
        *(v0 + 532) = v87;
        *(v0 + 548) = v86;
        *(v0 + 1432) = v85;
        *(v0 + 1448) = v84;
        *(v0 + 1464) = v83;
        *(v0 + 1480) = v82;
        *(v0 + 1496) = v81;
        *(v0 + 1504) = v80;
        *(v0 + 1512) = v87;
        *(v0 + 1528) = v86;
        sub_10012E344(v0 + 568, v0 + 368);
        sub_10012E3F4(v0 + 584, v0 + 976);
        v88 = *(v0 + 548);
        *(v0 + 500) = *(v0 + 532);
        *(v0 + 516) = v88;
        v89 = audit_token_to_pid((v0 + 500));
        sub_10012E450(v0 + 1432);
        sub_10012E3A0(v0 + 568);
        v90 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
        *(v0 + 2600) = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
        swift_beginAccess();
        v91 = *&v71[v90];

        os_unfair_lock_lock((v91 + 20));
        *(v91 + 16) = 1;
        os_unfair_lock_unlock((v91 + 20));

        v92 = CredentialInternal.friendlyName.getter();
        v94 = v93;
        *(v0 + 2608) = v93;
        v95 = swift_task_alloc();
        *(v0 + 2616) = v95;
        *v95 = v0;
        v95[1] = sub_1002947A0;
        v96 = *(v0 + 2104);
        v97 = *(v0 + 2096);

        return sub_1000B4000(v97, v96, v89, v92, v94);
      }

      v103 = *(v0 + 2408);
      v104 = *(v0 + 2384);
      sub_10012E344(v0 + 568, v0 + 704);

      sub_10012E3A0(v0 + 568);
      v105 = v71;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v187[0] = v109;
        *v108 = 136315138;
        *(v0 + 208) = *v72;
        v110 = *(v72 + 4);
        v112 = *(v72 + 1);
        v111 = *(v72 + 2);
        *(v0 + 256) = *(v72 + 3);
        *(v0 + 272) = v110;
        *(v0 + 224) = v112;
        *(v0 + 240) = v111;
        v114 = *(v72 + 6);
        v113 = *(v72 + 7);
        v115 = *(v72 + 5);
        *(v0 + 336) = v72[128];
        *(v0 + 304) = v114;
        *(v0 + 320) = v113;
        *(v0 + 288) = v115;
        v116 = sub_10012E344(v0 + 208, v0 + 840);
        v117 = sub_10013F33C(v116);
        v119 = v118;
        sub_10012E3A0(v0 + 208);
        v120 = sub_1002FFA0C(v117, v119, v187);

        *(v108 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v106, v107, "Client %s has no pid", v108, 0xCu);
        sub_1000752F4(v109);
      }

      sub_10009591C();
      swift_allocError();
      *v121 = 6;
      swift_willThrow();
      v122 = *(v0 + 2408);
      swift_errorRetain();
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v187[0] = v126;
        *v125 = 136315138;
        swift_getErrorValue();
        v127 = *(v0 + 1792);
        v128 = *(v0 + 1800);
        v129 = *(v0 + 1808);
        v130 = Error.localizedDescription.getter();
        v132 = sub_1002FFA0C(v130, v131, v187);

        *(v125 + 4) = v132;
        _os_log_impl(&_mh_execute_header, v123, v124, "Error %s encountered when authorizing in wired mode", v125, 0xCu);
        sub_1000752F4(v126);
      }

      v133 = *(v0 + 2520);
      v181 = *(v0 + 2472);
      v134 = *(v0 + 2464);
      v135 = *(v0 + 2456);
      v136 = *(v0 + 2448);
      v137 = *(v0 + 2400);
      v138 = *(v0 + 2376);
      v139 = *(v0 + 2064);
      sub_1000B5374(0);
      v140 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
      swift_beginAccess();
      v141 = *(v139 + v140);

      os_unfair_lock_lock((v141 + 20));
      *(v141 + 16) = 0;
      os_unfair_lock_unlock((v141 + 20));

      v27 = swift_allocError();
      *v142 = 8;
      swift_willThrow();

      swift_unknownObjectRelease();

      v143 = *(v0 + 1744);
      sub_1000B2A4C(*(v0 + 1736));

      goto LABEL_58;
    }

    v182 = *(v0 + 2424);
    v146 = *(v0 + 2416);
    v185 = *(v0 + 2408);
    v147 = *(v0 + 2384);
    v148 = *(v0 + 2320);
    v149 = *(v0 + 2288);
    v150 = *(v0 + 2088);
    v151 = *(v0 + 2080);
    v152 = *(v0 + 2072);

    v146(v148, v152, v149);
    sub_100069E2C(v151, v150);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    sub_10006A178(v151, v150);
    v155 = os_log_type_enabled(v153, v154);
    v156 = *(v0 + 2432);
    v157 = *(v0 + 2320);
    v158 = *(v0 + 2296);
    v159 = *(v0 + 2288);
    if (v155)
    {
      v183 = *(v0 + 2432);
      v160 = *(v0 + 2088);
      v180 = *(v0 + 2288);
      v161 = *(v0 + 2080);
      v162 = swift_slowAlloc();
      v187[0] = swift_slowAlloc();
      *v162 = 136315650;
      *(v162 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v187);
      *(v162 + 12) = 2080;
      *(v0 + 2056) = sub_100288788(v161, v160);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v163 = BidirectionalCollection<>.joined(separator:)();
      v165 = v164;

      v166 = sub_1002FFA0C(v163, v165, v187);

      *(v162 + 14) = v166;
      *(v162 + 22) = 2080;
      v167 = UUID.uuidString.getter();
      v169 = v168;
      v183(v157, v180);
      v170 = sub_1002FFA0C(v167, v169, v187);

      *(v162 + 24) = v170;
      _os_log_impl(&_mh_execute_header, v153, v154, "%s: Instance AID %s is not found under credential %s", v162, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v156(v157, v159);
    }

    v171 = *(v0 + 2472);
    v172 = *(v0 + 2464);
    v173 = *(v0 + 2456);
    v174 = *(v0 + 2448);
    v175 = *(v0 + 2400);
    v176 = *(v0 + 2376);
    sub_10009591C();
    v27 = swift_allocError();
    *v177 = 5;
    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_58:
    *(v0 + 2696) = v27;
    v178 = swift_task_alloc();
    *(v0 + 2704) = v178;
    *v178 = v0;
    v178[1] = sub_100295AC0;
    v179 = *(v0 + 2064);

    return sub_1001FF5CC();
  }

  v8 = *(v0 + 2384);
  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v0 + 2504);
  v11 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  for (i = *(v8 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v13 = i;
    v187[0] = i;
    sub_100296DBC(v186, v187, v6);
    if (v10)
    {
      break;
    }

    v10 = *(v0 + 2392);

    if (v10 == 1)
    {
LABEL_19:
      v47 = 0;
      v48 = v186[0];
      goto LABEL_20;
    }

    v98 = (v8 + 40);
    v8 = 1;
    while (1)
    {
      if (v11)
      {
        v102 = *(v0 + 2384);
        v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_50;
        }

        v99 = *v98;
      }

      v100 = v99;
      v101 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v187[0] = v99;
      sub_100296DBC(v186, v187, v6);
      v10 = *(v0 + 2392);

      ++v8;
      ++v98;
      if (v101 == v10)
      {
        goto LABEL_19;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }
}

uint64_t sub_100294034()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 2592) = v2;
  if (v2)
  {
    v3 = sub_1002960A0;
  }

  else
  {
    v3 = sub_100294170;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100294170()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);
  sub_10006A2D0(*(v0 + 2560), *(v0 + 2568));

  v3 = *(v0 + 2552);
  v4 = *(v0 + 2272);
  v5 = *(v0 + 2264);
  v6 = *(v0 + 2064);
  v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v6 + v7, 1, v5))
  {
    v8 = *(v0 + 2256);
    v9 = *(v0 + 2248);
    v10 = *(v0 + 2240);
    sub_10012DFF8(v6 + v7, *(v0 + 2280));
    static DispatchTime.now()();
    v11 = DispatchTime.uptimeNanoseconds.getter();
    (*(v9 + 8))(v8, v10);
    v12 = DispatchTime.uptimeNanoseconds.getter();
    if (v11 < v12)
    {
      __break(1u);
    }

    v13 = *(v0 + 2280);
    v14 = v13 + *(*(v0 + 2264) + 24);
    v15 = *(v14 + 8);
    (*v14)((v11 - v12) / 0x3B9ACA00);
    sub_10012E4DC(v13, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v16 = *(v0 + 2376);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2272);
  v19 = *(v0 + 2264);
  v67 = v3;
  v20 = *(v0 + 2232);
  v21 = *(*(v0 + 2064) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(5, 1);
  static DispatchTime.now()();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = 2;
  *(v20 + *(v19 + 20)) = 2;
  v23 = (v20 + *(v19 + 24));
  *v23 = sub_10012E59C;
  v23[1] = v22;
  (*(v18 + 56))(v20, 0, 1, v19);
  swift_beginAccess();
  sub_10012DF88(v20, v6 + v7);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1320));
  if (v67)
  {
    v25 = *(v0 + 2520);
    v26 = *(v0 + 2472);
    v27 = *(v0 + 2464);
    v28 = *(v0 + 2456);
    v29 = *(v0 + 2448);
    v30 = *(v0 + 2400);
    v31 = *(v0 + 2376);
    v32 = *(v0 + 2296) + 8;
    (*(v0 + 2432))(*(v0 + 2328), *(v0 + 2288));

    swift_unknownObjectRelease();
    *(v0 + 2696) = v67;
    v33 = swift_task_alloc();
    *(v0 + 2704) = v33;
    *v33 = v0;
    v33[1] = sub_100295AC0;
    v34 = *(v0 + 2064);

    return sub_1001FF5CC();
  }

  else
  {
    v24 = *(v0 + 2064);
    sub_10012E450(v0 + 1320);
    sub_1001FF418((v0 + 1208));
    v36 = *(v0 + 2064);
    *(v0 + 1984) = *(v0 + 1256);
    v37 = *(v0 + 1992);

    sub_10012E450(v0 + 1208);
    sub_1001FF418((v0 + 1096));
    *(v0 + 2680) = 0;
    v38 = *(v0 + 2208);
    v39 = *(v0 + 2176);
    v40 = *(v0 + 2152);
    v41 = *(v0 + 2144);
    v42 = *(v0 + 2136);
    v43 = *(v0 + 2128);
    sub_10012E450(v0 + 1096);
    static Date.now.getter();
    (*(v41 + 104))(v40, enum case for Calendar.Identifier.gregorian(_:), v42);
    Calendar.init(identifier:)();
    (*(v41 + 8))(v40, v42);
    TimeZone.init(abbreviation:)();
    v44 = type metadata accessor for TimeZone();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    if (v45 == 1)
    {
      __break(1u);
    }

    else
    {
      v48 = *(v0 + 2296);
      v65 = *(v0 + 2288);
      v66 = *(v0 + 2328);
      v49 = *(v0 + 2224);
      v50 = *(v0 + 2216);
      v51 = *(v0 + 2208);
      v52 = *(v0 + 2200);
      v53 = *(v0 + 2192);
      v54 = *(v0 + 2184);
      v55 = *(v0 + 2176);
      v56 = *(v0 + 2168);
      v61 = *(v0 + 2488);
      v62 = *(v0 + 2160);
      v57 = *(v0 + 2128);
      v63 = *(v0 + 1168);
      v64 = *(v0 + 1384);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v56 + 8))(v55, v62);
      v58 = *(v53 + 8);
      v58(v51, v54);
      Date.timeIntervalSince1970.getter();
      v60 = v59;
      v58(v52, v54);
      (*(v48 + 32))(v49, v66, v65);
      *(v49 + v50[5]) = 1;
      *(v49 + v50[8]) = *(v0 + 1984);
      *(v49 + v50[7]) = v63;
      *(v49 + v50[6]) = v64;
      *(v49 + v50[9]) = v60 * 1000.0;
      v45 = sub_100295694;
      v46 = v61;
      v47 = 0;
    }

    return _swift_task_switch(v45, v46, v47);
  }
}

uint64_t sub_1002947A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2616);
  v7 = *v3;
  v5[328] = a1;
  v5[329] = a2;
  v5[330] = v2;

  v8 = v4[326];
  if (v2)
  {
    v9 = v5[318];
    v10 = v5[317];
    v11 = v5[298];

    v12 = sub_1002967F8;
  }

  else
  {

    v12 = sub_100294940;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100294940()
{
  v55 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2064);
  swift_beginAccess();
  v5 = *(v4 + v1);
  os_unfair_lock_lock((v5 + 20));
  LODWORD(v4) = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 20));
  swift_endAccess();

  v6 = *(v0 + 2544);
  if (v4 == 1)
  {
    v7 = *(v0 + 2528);
    v8 = *(v0 + 2544);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 2648) = v9;
    v10 = *(v0 + 2544);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v50 = *(v0 + 2544);
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v51 = *(v0 + 2544);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v11 = *(v10 + 32);
    }

    *(v0 + 2656) = v11;
    v12 = *(v0 + 2632);
    v13 = *(v0 + 2624);
    v14 = *(v0 + 2456);

    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 2664) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100294EC0;
    v16 = swift_continuation_init();
    *(v0 + 1600) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 1576) = v16;
    *(v0 + 1544) = _NSConcreteStackBlock;
    *(v0 + 1552) = 1107296256;
    *(v0 + 1560) = sub_1001E95B0;
    *(v0 + 1568) = &unk_1004CEDC0;
    [v14 startWiredModeWithApplets:v9.super.isa selectOnStart:v11 externalAuth:isa completion:v0 + 1544];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v17 = *(v0 + 2408);
    v18 = *(v0 + 2544);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "End Wired Mode has been called while presenting auth sheet", v21, 2u);
    }

    v22 = *(v0 + 2632);
    v23 = *(v0 + 2624);

    sub_1000B5374(0);
    sub_10009591C();
    swift_allocError();
    *v24 = 10;
    swift_willThrow();
    sub_10006A178(v23, v22);
    v25 = *(v0 + 2408);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = *(v0 + 1792);
      v31 = *(v0 + 1800);
      v32 = *(v0 + 1808);
      v33 = Error.localizedDescription.getter();
      v35 = sub_1002FFA0C(v33, v34, &v54);

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error %s encountered when authorizing in wired mode", v28, 0xCu);
      sub_1000752F4(v29);
    }

    v36 = *(v0 + 2520);
    v53 = *(v0 + 2472);
    v37 = *(v0 + 2464);
    v38 = *(v0 + 2456);
    v39 = *(v0 + 2448);
    v40 = *(v0 + 2400);
    v41 = *(v0 + 2376);
    v42 = *(v0 + 2064);
    sub_1000B5374(0);
    v43 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v44 = *(v42 + v43);

    os_unfair_lock_lock((v44 + 20));
    *(v44 + 16) = 0;
    os_unfair_lock_unlock((v44 + 20));

    v45 = swift_allocError();
    *v46 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    v47 = *(v0 + 1744);
    sub_1000B2A4C(*(v0 + 1736));

    *(v0 + 2696) = v45;
    v48 = swift_task_alloc();
    *(v0 + 2704) = v48;
    *v48 = v0;
    v48[1] = sub_100295AC0;
    v49 = *(v0 + 2064);

    return sub_1001FF5CC();
  }
}

uint64_t sub_100294EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 2672) = v2;
  if (v2)
  {
    v3 = sub_100296AC0;
  }

  else
  {
    v3 = sub_100294FFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100294FFC()
{
  v1 = *(v0 + 2656);
  v2 = *(v0 + 2648);
  v3 = *(v0 + 2632);
  v4 = *(v0 + 2624);
  v5 = *(v0 + 2600);
  v6 = *(v0 + 2064);

  sub_1000B5374(1);
  v7 = *(v6 + v5);

  os_unfair_lock_lock((v7 + 20));
  *(v7 + 16) = 0;
  os_unfair_lock_unlock((v7 + 20));
  sub_10006A178(v4, v3);
  v8 = *(v0 + 1744);
  sub_1000B2A4C(*(v0 + 1736));

  v9 = *(v0 + 1760);

  v10 = *(v0 + 2640);
  v11 = *(v0 + 2272);
  v12 = *(v0 + 2264);
  v13 = *(v0 + 2064);
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v11 + 48))(v13 + v14, 1, v12))
  {
    v15 = *(v0 + 2256);
    v16 = *(v0 + 2248);
    v17 = *(v0 + 2240);
    sub_10012DFF8(v13 + v14, *(v0 + 2280));
    static DispatchTime.now()();
    v18 = DispatchTime.uptimeNanoseconds.getter();
    (*(v16 + 8))(v15, v17);
    v19 = DispatchTime.uptimeNanoseconds.getter();
    if (v18 < v19)
    {
      __break(1u);
    }

    v20 = *(v0 + 2280);
    v21 = v20 + *(*(v0 + 2264) + 24);
    v22 = *(v21 + 8);
    (*v21)((v18 - v19) / 0x3B9ACA00);
    sub_10012E4DC(v20, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v23 = *(v0 + 2376);
  v24 = *(v0 + 2328);
  v25 = *(v0 + 2272);
  v26 = *(v0 + 2264);
  v74 = v10;
  v27 = *(v0 + 2232);
  v28 = *(*(v0 + 2064) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(5, 1);
  static DispatchTime.now()();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = 2;
  *(v27 + *(v26 + 20)) = 2;
  v30 = (v27 + *(v26 + 24));
  *v30 = sub_10012E59C;
  v30[1] = v29;
  (*(v25 + 56))(v27, 0, 1, v26);
  swift_beginAccess();
  sub_10012DF88(v27, v13 + v14);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1320));
  if (v74)
  {
    v32 = *(v0 + 2520);
    v33 = *(v0 + 2472);
    v34 = *(v0 + 2464);
    v35 = *(v0 + 2456);
    v36 = *(v0 + 2448);
    v37 = *(v0 + 2400);
    v38 = *(v0 + 2376);
    v39 = *(v0 + 2296) + 8;
    (*(v0 + 2432))(*(v0 + 2328), *(v0 + 2288));

    swift_unknownObjectRelease();
    *(v0 + 2696) = v74;
    v40 = swift_task_alloc();
    *(v0 + 2704) = v40;
    *v40 = v0;
    v40[1] = sub_100295AC0;
    v41 = *(v0 + 2064);

    return sub_1001FF5CC();
  }

  else
  {
    v31 = *(v0 + 2064);
    sub_10012E450(v0 + 1320);
    sub_1001FF418((v0 + 1208));
    v43 = *(v0 + 2064);
    *(v0 + 1984) = *(v0 + 1256);
    v44 = *(v0 + 1992);

    sub_10012E450(v0 + 1208);
    sub_1001FF418((v0 + 1096));
    *(v0 + 2680) = 0;
    v45 = *(v0 + 2208);
    v46 = *(v0 + 2176);
    v47 = *(v0 + 2152);
    v48 = *(v0 + 2144);
    v49 = *(v0 + 2136);
    v50 = *(v0 + 2128);
    sub_10012E450(v0 + 1096);
    static Date.now.getter();
    (*(v48 + 104))(v47, enum case for Calendar.Identifier.gregorian(_:), v49);
    Calendar.init(identifier:)();
    (*(v48 + 8))(v47, v49);
    TimeZone.init(abbreviation:)();
    v51 = type metadata accessor for TimeZone();
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    if (v52 == 1)
    {
      __break(1u);
    }

    else
    {
      v55 = *(v0 + 2296);
      v72 = *(v0 + 2288);
      v73 = *(v0 + 2328);
      v56 = *(v0 + 2224);
      v57 = *(v0 + 2216);
      v58 = *(v0 + 2208);
      v59 = *(v0 + 2200);
      v60 = *(v0 + 2192);
      v61 = *(v0 + 2184);
      v62 = *(v0 + 2176);
      v63 = *(v0 + 2168);
      v68 = *(v0 + 2488);
      v69 = *(v0 + 2160);
      v64 = *(v0 + 2128);
      v70 = *(v0 + 1168);
      v71 = *(v0 + 1384);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v63 + 8))(v62, v69);
      v65 = *(v60 + 8);
      v65(v58, v61);
      Date.timeIntervalSince1970.getter();
      v67 = v66;
      v65(v59, v61);
      (*(v55 + 32))(v56, v73, v72);
      *(v56 + v57[5]) = 1;
      *(v56 + v57[8]) = *(v0 + 1984);
      *(v56 + v57[7]) = v70;
      *(v56 + v57[6]) = v71;
      *(v56 + v57[9]) = v67 * 1000.0;
      v52 = sub_100295694;
      v53 = v68;
      v54 = 0;
    }

    return _swift_task_switch(v52, v53, v54);
  }
}

uint64_t sub_100295694()
{
  v1 = v0[335];
  v2 = v0[311];
  v3 = sub_10035E904();
  if (v1)
  {
    v0[336] = v1;
    v7 = sub_100295984;
  }

  else
  {
    v4 = v3;
    v5 = v0[278];
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v7 = sub_1002957A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002957A4()
{
  v1 = *(v0 + 2520);
  v2 = *(v0 + 2472);
  v3 = *(v0 + 2464);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2448);
  v6 = *(v0 + 2400);
  v7 = *(v0 + 2376);
  v8 = *(v0 + 2224);
  v9 = *(v0 + 2120);
  (*(v0 + 2112))(0);

  swift_unknownObjectRelease();
  sub_10012E4DC(v8, type metadata accessor for PresentmentInfo);
  v10 = *(v0 + 2368);
  v11 = *(v0 + 2344);
  v12 = *(v0 + 2336);
  v13 = *(v0 + 2328);
  v14 = *(v0 + 2320);
  v15 = *(v0 + 2312);
  v16 = *(v0 + 2304);
  v17 = *(v0 + 2280);
  v18 = *(v0 + 2256);
  v19 = *(v0 + 2232);
  v22 = *(v0 + 2224);
  v23 = *(v0 + 2208);
  v24 = *(v0 + 2200);
  v25 = *(v0 + 2176);
  v26 = *(v0 + 2152);
  v27 = *(v0 + 2128);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100295984()
{
  v1 = *(v0 + 2520);
  v2 = *(v0 + 2472);
  v3 = *(v0 + 2464);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2448);
  v6 = *(v0 + 2376);
  v7 = *(v0 + 2224);

  swift_unknownObjectRelease();
  sub_10012E4DC(v7, type metadata accessor for PresentmentInfo);
  *(v0 + 2696) = *(v0 + 2688);
  v8 = swift_task_alloc();
  *(v0 + 2704) = v8;
  *v8 = v0;
  v8[1] = sub_100295AC0;
  v9 = *(v0 + 2064);

  return sub_1001FF5CC();
}

uint64_t sub_100295AC0()
{
  v1 = *(*v0 + 2704);
  v3 = *v0;

  return _swift_task_switch(sub_100295BE8, 0, 0);
}

uint64_t sub_100295BE8()
{
  v1 = v0[337];
  v2 = v0[265];
  v3 = v0[264];
  swift_errorRetain();
  v3(v1);

  v4 = v0[296];
  v5 = v0[293];
  v6 = v0[292];
  v7 = v0[291];
  v8 = v0[290];
  v9 = v0[289];
  v10 = v0[288];
  v11 = v0[285];
  v12 = v0[282];
  v13 = v0[279];
  v16 = v0[278];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[272];
  v20 = v0[269];
  v21 = v0[266];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100295D84()
{
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);

  *(v0 + 2696) = *(v0 + 2480);
  v3 = swift_task_alloc();
  *(v0 + 2704) = v3;
  *v3 = v0;
  v3[1] = sub_100295AC0;
  v4 = *(v0 + 2064);

  return sub_1001FF5CC();
}

uint64_t sub_100295E6C()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2464);
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2384);
  v6 = *(v0 + 2376);

  *(v0 + 2696) = *(v0 + 2504);
  v7 = swift_task_alloc();
  *(v0 + 2704) = v7;
  *v7 = v0;
  v7[1] = sub_100295AC0;
  v8 = *(v0 + 2064);

  return sub_1001FF5CC();
}

uint64_t sub_100295F88()
{
  v1 = v0[314];
  v2 = v0[309];
  v3 = v0[308];
  v4 = v0[307];
  v5 = v0[306];
  v6 = v0[300];
  v7 = v0[297];
  swift_willThrow();

  v0[337] = v0[314];
  v8 = swift_task_alloc();
  v0[338] = v8;
  *v8 = v0;
  v8[1] = sub_100295AC0;
  v9 = v0[258];

  return sub_1001FF5CC();
}

uint64_t sub_1002960A0()
{
  v73 = v0;
  v1 = *(v0 + 2592);
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 2408);
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 2592);
    v8 = *(v0 + 2568);
    v9 = *(v0 + 2560);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v72 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 1864);
    v13 = *(v0 + 1872);
    v14 = *(v0 + 1880);
    v15 = Error.localizedDescription.getter();
    v17 = sub_1002FFA0C(v15, v16, &v72);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "NearField Error %s encountered when authorizing in wired mode -- CAM path", v10, 0xCu);
    sub_1000752F4(v11);

    sub_10006A2D0(v9, v8);
  }

  else
  {
    v18 = *(v0 + 2592);
    sub_10006A2D0(*(v0 + 2560), *(v0 + 2568));
  }

  v19 = *(v0 + 2272);
  v20 = *(v0 + 2264);
  v21 = *(v0 + 2064);
  v22 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v19 + 48))(v21 + v22, 1, v20))
  {
    v23 = *(v0 + 2256);
    v24 = *(v0 + 2248);
    v25 = *(v0 + 2240);
    sub_10012DFF8(v21 + v22, *(v0 + 2280));
    static DispatchTime.now()();
    v26 = DispatchTime.uptimeNanoseconds.getter();
    (*(v24 + 8))(v23, v25);
    v27 = DispatchTime.uptimeNanoseconds.getter();
    if (v26 < v27)
    {
      __break(1u);
    }

    v28 = *(v0 + 2280);
    v29 = v28 + *(*(v0 + 2264) + 24);
    v30 = *(v29 + 8);
    (*v29)((v26 - v27) / 0x3B9ACA00);
    sub_10012E4DC(v28, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v31 = *(v0 + 2376);
  v32 = *(v0 + 2328);
  v33 = *(v0 + 2272);
  v34 = *(v0 + 2264);
  v35 = *(v0 + 2232);
  v36 = *(*(v0 + 2064) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(5, 1);
  static DispatchTime.now()();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = 2;
  *(v35 + *(v34 + 20)) = 2;
  v38 = (v35 + *(v34 + 24));
  *v38 = sub_10012E59C;
  v38[1] = v37;
  (*(v33 + 56))(v35, 0, 1, v34);
  swift_beginAccess();
  sub_10012DF88(v35, v21 + v22);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1320));
  v39 = *(v0 + 2064);
  sub_10012E450(v0 + 1320);
  sub_1001FF418((v0 + 1208));
  v40 = *(v0 + 2064);
  *(v0 + 1984) = *(v0 + 1256);
  v41 = *(v0 + 1992);

  sub_10012E450(v0 + 1208);
  sub_1001FF418((v0 + 1096));
  *(v0 + 2680) = 0;
  v42 = *(v0 + 2208);
  v43 = *(v0 + 2176);
  v44 = *(v0 + 2152);
  v45 = *(v0 + 2144);
  v46 = *(v0 + 2136);
  v47 = *(v0 + 2128);
  sub_10012E450(v0 + 1096);
  static Date.now.getter();
  (*(v45 + 104))(v44, enum case for Calendar.Identifier.gregorian(_:), v46);
  Calendar.init(identifier:)();
  (*(v45 + 8))(v44, v46);
  TimeZone.init(abbreviation:)();
  v48 = type metadata accessor for TimeZone();
  v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
  if (v49 == 1)
  {
    __break(1u);
  }

  else
  {
    v52 = *(v0 + 2296);
    v70 = *(v0 + 2288);
    v71 = *(v0 + 2328);
    v53 = *(v0 + 2224);
    v54 = *(v0 + 2216);
    v55 = *(v0 + 2208);
    v56 = *(v0 + 2200);
    v57 = *(v0 + 2192);
    v58 = *(v0 + 2184);
    v59 = *(v0 + 2176);
    v60 = *(v0 + 2168);
    v66 = *(v0 + 2488);
    v67 = *(v0 + 2160);
    v61 = *(v0 + 2128);
    v68 = *(v0 + 1168);
    v69 = *(v0 + 1384);
    Calendar.timeZone.setter();
    Calendar.startOfDay(for:)();
    (*(v60 + 8))(v59, v67);
    v62 = *(v57 + 8);
    v62(v55, v58);
    Date.timeIntervalSince1970.getter();
    v64 = v63;
    v62(v56, v58);
    (*(v52 + 32))(v53, v71, v70);
    *(v53 + v54[5]) = 1;
    *(v53 + v54[8]) = *(v0 + 1984);
    *(v53 + v54[7]) = v68;
    *(v53 + v54[6]) = v69;
    *(v53 + v54[9]) = v64 * 1000.0;
    v49 = sub_100295694;
    v50 = v66;
    v51 = 0;
  }

  return _swift_task_switch(v49, v50, v51);
}

uint64_t sub_1002967F8()
{
  v30 = v0;
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2408);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = *(v0 + 1792);
    v8 = *(v0 + 1800);
    v9 = *(v0 + 1808);
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %s encountered when authorizing in wired mode", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v13 = *(v0 + 2520);
  v28 = *(v0 + 2472);
  v14 = *(v0 + 2464);
  v15 = *(v0 + 2456);
  v16 = *(v0 + 2448);
  v17 = *(v0 + 2400);
  v18 = *(v0 + 2376);
  v19 = *(v0 + 2064);
  sub_1000B5374(0);
  v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v21 = *(v19 + v20);

  os_unfair_lock_lock((v21 + 20));
  *(v21 + 16) = 0;
  os_unfair_lock_unlock((v21 + 20));

  sub_10009591C();
  v22 = swift_allocError();
  *v23 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v24 = *(v0 + 1744);
  sub_1000B2A4C(*(v0 + 1736));

  *(v0 + 2696) = v22;
  v25 = swift_task_alloc();
  *(v0 + 2704) = v25;
  *v25 = v0;
  v25[1] = sub_100295AC0;
  v26 = *(v0 + 2064);

  return sub_1001FF5CC();
}

uint64_t sub_100296AC0()
{
  v36 = v0;
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2656);
  v4 = *(v0 + 2648);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2624);
  swift_willThrow();
  sub_10006A178(v6, v5);

  v7 = *(v0 + 2672);
  v8 = *(v0 + 2408);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 1792);
    v14 = *(v0 + 1800);
    v15 = *(v0 + 1808);
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, &v35);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error %s encountered when authorizing in wired mode", v11, 0xCu);
    sub_1000752F4(v12);
  }

  v19 = *(v0 + 2520);
  v34 = *(v0 + 2472);
  v20 = *(v0 + 2464);
  v21 = *(v0 + 2456);
  v22 = *(v0 + 2448);
  v23 = *(v0 + 2400);
  v24 = *(v0 + 2376);
  v25 = *(v0 + 2064);
  sub_1000B5374(0);
  v26 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v27 = *(v25 + v26);

  os_unfair_lock_lock((v27 + 20));
  *(v27 + 16) = 0;
  os_unfair_lock_unlock((v27 + 20));

  sub_10009591C();
  v28 = swift_allocError();
  *v29 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v30 = *(v0 + 1744);
  sub_1000B2A4C(*(v0 + 1736));

  *(v0 + 2696) = v28;
  v31 = swift_task_alloc();
  *(v0 + 2704) = v31;
  *v31 = v0;
  v31[1] = sub_100295AC0;
  v32 = *(v0 + 2064);

  return sub_1001FF5CC();
}

void sub_100296DBC(void *a1, uint64_t *a2, unint64_t a3)
{
  v3 = a3;
  v64 = *a2;
  if (a3 >> 62)
  {
    goto LABEL_113;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v60 = v3;
    v61 = v4;
    v59 = a1;
    v5 = 0;
    v62 = v3 & 0xFFFFFFFFFFFFFF8;
    v63 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v63)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v62 + 16))
        {
          goto LABEL_102;
        }

        a1 = *(v3 + 8 * v5 + 32);
      }

      v6 = a1;
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = [a1 identifierAsData];
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      a1 = InstanceInfoInternal.instanceAID.getter();
      v13 = a1;
      v14 = v12;
      v15 = v11 >> 62;
      v16 = v12 >> 62;
      if (v11 >> 62 == 3)
      {
        if (v9)
        {
          v17 = 0;
        }

        else
        {
          v17 = v11 == 0xC000000000000000;
        }

        v18 = 0;
        v19 = v17 && v12 >> 62 == 3;
        if (v19 && !a1 && v12 == 0xC000000000000000)
        {
          sub_10006A178(0, 0xC000000000000000);
          v27 = 0;
          v28 = 0xC000000000000000;
          goto LABEL_45;
        }
      }

      else if (v15)
      {
        if (v15 == 1)
        {
          LODWORD(v18) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_110;
          }

          v18 = v18;
        }

        else
        {
          v21 = *(v9 + 16);
          v20 = *(v9 + 24);
          v22 = __OFSUB__(v20, v21);
          v18 = v20 - v21;
          if (v22)
          {
            goto LABEL_109;
          }
        }
      }

      else
      {
        v18 = BYTE6(v11);
      }

      if (v16 > 1)
      {
        if (v16 != 2)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

LABEL_5:

          sub_10006A178(v13, v14);
          a1 = sub_10006A178(v9, v11);
          goto LABEL_6;
        }

        v24 = a1[2];
        v23 = a1[3];
        v22 = __OFSUB__(v23, v24);
        v25 = v23 - v24;
        if (v22)
        {
          goto LABEL_105;
        }

        if (v18 != v25)
        {
          goto LABEL_5;
        }
      }

      else if (v16)
      {
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_106;
        }

        if (v18 != HIDWORD(a1) - a1)
        {
          goto LABEL_5;
        }
      }

      else if (v18 != BYTE6(v12))
      {
        goto LABEL_5;
      }

      if (v18 < 1)
      {
LABEL_43:
        sub_10006A178(a1, v12);
        v27 = v9;
        v28 = v11;
LABEL_45:
        sub_10006A178(v27, v28);
LABEL_46:
        if ([v6 managedBySP])
        {
          v29 = [v6 rawGPState];
          type metadata accessor for InstanceInfoInternal();
          if (v29 != static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter() && ([v6 isGPLocked] & 1) == 0)
          {
            v30 = v6;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v58 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

LABEL_53:
        v31 = 0;
        while (2)
        {
          if (v63)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v62 + 16))
            {
              goto LABEL_104;
            }

            a1 = *(v3 + 8 * v31 + 32);
          }

          v32 = a1;
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_103;
          }

          v34 = [a1 identifierAsData];
          v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          a1 = InstanceInfoInternal.securityDomainAID.getter();
          v39 = a1;
          v40 = v38;
          v41 = v37 >> 62;
          v42 = v38 >> 62;
          if (v37 >> 62 == 3)
          {
            if (v35)
            {
              v43 = 0;
            }

            else
            {
              v43 = v37 == 0xC000000000000000;
            }

            v44 = 0;
            v45 = v43 && v38 >> 62 == 3;
            if (v45 && !a1 && v38 == 0xC000000000000000)
            {
              sub_10006A178(0, 0xC000000000000000);
              v52 = 0;
              v53 = 0xC000000000000000;
LABEL_93:
              sub_10006A178(v52, v53);
LABEL_94:
              v54 = [v32 rawGPState];
              type metadata accessor for InstanceInfoInternal();
              if (v54 != static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter() && ([v32 isGPLocked] & 1) == 0)
              {
                v55 = v32;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v57 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              return;
            }

LABEL_79:
            if (v42 <= 1)
            {
LABEL_80:
              if (v42)
              {
                LODWORD(v48) = HIDWORD(a1) - a1;
                if (__OFSUB__(HIDWORD(a1), a1))
                {
                  goto LABEL_108;
                }

                v48 = v48;
              }

              else
              {
                v48 = BYTE6(v38);
              }

              goto LABEL_87;
            }
          }

          else
          {
            if (v41 == 2)
            {
              v47 = *(v35 + 16);
              v46 = *(v35 + 24);
              v22 = __OFSUB__(v46, v47);
              v44 = v46 - v47;
              if (v22)
              {
                goto LABEL_112;
              }

              goto LABEL_79;
            }

            if (v41 == 1)
            {
              LODWORD(v44) = HIDWORD(v35) - v35;
              if (__OFSUB__(HIDWORD(v35), v35))
              {
                goto LABEL_111;
              }

              v44 = v44;
              if (v42 <= 1)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v44 = BYTE6(v37);
              if (v42 <= 1)
              {
                goto LABEL_80;
              }
            }
          }

          if (v42 == 2)
          {
            v50 = a1[2];
            v49 = a1[3];
            v22 = __OFSUB__(v49, v50);
            v48 = v49 - v50;
            if (v22)
            {
              goto LABEL_107;
            }

LABEL_87:
            if (v44 == v48)
            {
              if (v44 < 1)
              {
LABEL_92:
                sub_10006A178(a1, v38);
                v52 = v35;
                v53 = v37;
                goto LABEL_93;
              }

              sub_100069E2C(a1, v38);
              v51 = sub_10008C678(v35, v37, v39, v40);
              sub_10006A178(v35, v37);
              sub_10006A178(v39, v40);
              if (v51)
              {
                goto LABEL_94;
              }

              v3 = v60;
              goto LABEL_56;
            }
          }

          else if (!v44)
          {
            goto LABEL_92;
          }

          sub_10006A178(v39, v40);
          a1 = sub_10006A178(v35, v37);
LABEL_56:
          ++v31;
          if (v33 == v61)
          {
            return;
          }

          continue;
        }
      }

      sub_100069E2C(a1, v12);
      v26 = sub_10008C678(v9, v11, v13, v14);
      sub_10006A178(v9, v11);
      sub_10006A178(v13, v14);
      if (v26)
      {
        v3 = v60;
        goto LABEL_46;
      }

      v3 = v60;
LABEL_6:
      ++v5;
      if (v7 == v61)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    v56 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v56;
  }
}

id sub_10029770C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v14 = result;
    v15 = [result processIdentifier];
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v4;
    *(v17 + 40) = v15;
    *(v17 + 48) = a1;
    *(v17 + 56) = a2;
    *(v17 + 64) = a3;
    *(v17 + 72) = a4;
    v18 = v4;
    sub_100069E2C(a1, a2);

    sub_1001F9BE8(0, 0, v12, &unk_100413FE0, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002978A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v14;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 152) = a5;
  *(v8 + 72) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1002979A0, 0, 0);
}

uint64_t sub_1002979A0()
{
  v101 = v0;
  v1 = *(v0 + 72);
  v2 = &v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v3 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if (v3 >> 62 == 1)
  {
    v5 = *v2;
    v4 = *(v2 + 1);
    v6 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
    v7 = *(v2 + 2);
    if (v4)
    {
      v8 = v4;
      sub_100218E94(v5, v4, v7, v3);
      if (qword_1005019A8 != -1)
      {
        swift_once();
      }

      v9 = *(qword_10051B2C0 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
      if (v9)
      {
        v10 = *(v0 + 152);
        v11 = v9;
        sub_1001C9F50(v10);
      }

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000958E4(v12, qword_10051B2C8);
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v16 = v5;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      v99 = v16;
      if (os_log_type_enabled(v17, v18))
      {
        v96 = v15;
        v19 = *(v0 + 120);
        v20 = *(v0 + 128);
        v95 = *(v0 + 112);
        v21 = swift_slowAlloc();
        v97 = v14;
        v22 = swift_slowAlloc();
        v100 = v22;
        *v21 = 136315138;
        CredentialInternal.identifier.getter();
        v23 = UUID.uuidString.getter();
        v24 = v13;
        v26 = v25;
        v27 = v20;
        v15 = v96;
        (*(v19 + 8))(v27, v95);
        v28 = sub_1002FFA0C(v23, v26, &v100);
        v13 = v24;

        *(v21 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v17, v18, "Transceiving to instance of credential %s", v21, 0xCu);
        sub_1000752F4(v22);
        v14 = v97;
      }

      v29 = *(v0 + 80);
      v30 = *(v0 + 88);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 56) = 0;
      v32 = [v15 wiredModeTransceive:isa outError:v0 + 56];

      v33 = *(v0 + 56);
      if (v32)
      {
        v35 = *(v0 + 96);
        v34 = *(v0 + 104);
        v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v35(v36, v38, 0);
        sub_10006A178(v36, v38);
LABEL_45:
        v86 = *(v0 + 128);

        v87 = *(v0 + 8);

        return v87();
      }

      v59 = v15;
      v98 = v13;
      v60 = v33;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v63 = 136315394;
        *(v63 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v100);
        *(v63 + 12) = 2080;
        swift_getErrorValue();
        v65 = *(v0 + 16);
        v64 = *(v0 + 24);
        v66 = *(v0 + 32);
        v67 = Error.localizedDescription.getter();
        v69 = sub_1002FFA0C(v67, v68, &v100);

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "%s: Nearfield error %s encountered when transceiving in wired mode", v63, 0x16u);
        swift_arrayDestroy();
      }

      sub_10009591C();
      v57 = swift_allocError();
      *v70 = 8;
      swift_willThrow();
    }

    else
    {
      v48 = qword_1005019D8;
      v49 = v5;
      v50 = v7;
      v51 = v6;
      if (v48 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000958E4(v52, qword_10051B2C8);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v100 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v100);
        _os_log_impl(&_mh_execute_header, v53, v54, "%s: NFCredentialSession has been invalidated", v55, 0xCu);
        sub_1000752F4(v56);
      }

      sub_10009591C();
      v57 = swift_allocError();
      *v58 = 9;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v1 = *(v0 + 72);
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_10051B2C8);
    v40 = v1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v100 = v44;
      *v43 = 136315138;
      v45 = *(v2 + 3);
      if (v45 >> 62)
      {
        if (v45 >> 62 == 1)
        {
          v46 = 0xE500000000000000;
          v47 = 0x6465726957;
        }

        else
        {
          v71 = (*(v2 + 2) | *v2 | *(v2 + 1)) == 0;
          v72 = v45 == 0x8000000000000000;
          if (v72 && v71)
          {
            v47 = 0x656D6567616E614DLL;
          }

          else
          {
            v47 = 0x64696C61766E49;
          }

          if (v72 && v71)
          {
            v46 = 0xEA0000000000746ELL;
          }

          else
          {
            v46 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v46 = 0xED00006E6F697461;
        v47 = 0x6C756D4564726143;
      }

      v73 = sub_1002FFA0C(v47, v46, &v100);

      *(v43 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v41, v42, "Unexpected state %s while trying to transceive in wired mode", v43, 0xCu);
      sub_1000752F4(v44);
    }

    sub_10009591C();
    v57 = swift_allocError();
    *v74 = 10;
    swift_willThrow();
  }

  *(v0 + 40) = v57;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v75 = *(v0 + 48);
  if (v75 == 9)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000958E4(v89, qword_10051B2C8);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v100 = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v100);
      _os_log_impl(&_mh_execute_header, v90, v91, "%s: Transitioning to management state because of unavailable nearfield resource", v92, 0xCu);
      sub_1000752F4(v93);
    }

    v81 = swift_task_alloc();
    *(v0 + 144) = v81;
    *v81 = v0;
    v82 = sub_1002987B8;
    goto LABEL_53;
  }

  if (v75 != 8)
  {
LABEL_44:
    v83 = *(v0 + 96);
    v84 = *(v0 + 104);
    v85 = *(v0 + 40);

    swift_errorRetain();
    v83(0, 0xF000000000000000, v57);

    goto LABEL_45;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_1000958E4(v76, qword_10051B2C8);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v100 = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v100);
    _os_log_impl(&_mh_execute_header, v77, v78, "%s: Transitioning to management state because of nearfield error", v79, 0xCu);
    sub_1000752F4(v80);
  }

  v81 = swift_task_alloc();
  *(v0 + 136) = v81;
  *v81 = v0;
  v82 = sub_1002985AC;
LABEL_53:
  v81[1] = v82;
  v94 = *(v0 + 72);

  return sub_1001FF5CC();
}

uint64_t sub_1002985AC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1002986D4, 0, 0);
}

uint64_t sub_1002986D4()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_10009591C();
  v3 = swift_allocError();
  *v4 = 8;
  v2(0, 0xF000000000000000, v3);

  v5 = v0[5];

  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002987B8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_1002988E0, 0, 0);
}

uint64_t sub_1002988E0()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_10009591C();
  v3 = swift_allocError();
  *v4 = 32;
  v2(0, 0xF000000000000000, v3);

  v5 = v0[5];

  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100298A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[255] = a8;
  v8[254] = a7;
  v8[253] = a6;
  v8[252] = a5;
  v8[251] = a4;
  v9 = *(*(sub_100068FC4(&unk_100504270, &qword_10040B598) - 8) + 64) + 15;
  v8[256] = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Identifier();
  v8[257] = v10;
  v11 = *(v10 - 8);
  v8[258] = v11;
  v12 = *(v11 + 64) + 15;
  v8[259] = swift_task_alloc();
  v13 = type metadata accessor for Calendar();
  v8[260] = v13;
  v14 = *(v13 - 8);
  v8[261] = v14;
  v15 = *(v14 + 64) + 15;
  v8[262] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v8[263] = v16;
  v17 = *(v16 - 8);
  v8[264] = v17;
  v18 = *(v17 + 64) + 15;
  v8[265] = swift_task_alloc();
  v8[266] = swift_task_alloc();
  v19 = type metadata accessor for PresentmentInfo();
  v8[267] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[268] = swift_task_alloc();
  v21 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v8[269] = swift_task_alloc();
  v22 = type metadata accessor for DispatchTime();
  v8[270] = v22;
  v23 = *(v22 - 8);
  v8[271] = v23;
  v24 = *(v23 + 64) + 15;
  v8[272] = swift_task_alloc();
  v25 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v8[273] = v25;
  v26 = *(v25 - 8);
  v8[274] = v26;
  v27 = *(v26 + 64) + 15;
  v8[275] = swift_task_alloc();
  v28 = type metadata accessor for StateInternal();
  v8[276] = v28;
  v29 = *(v28 - 8);
  v8[277] = v29;
  v30 = *(v29 + 64) + 15;
  v8[278] = swift_task_alloc();
  v31 = type metadata accessor for UUID();
  v8[279] = v31;
  v32 = *(v31 - 8);
  v8[280] = v32;
  v33 = *(v32 + 64) + 15;
  v8[281] = swift_task_alloc();
  v8[282] = swift_task_alloc();

  return _swift_task_switch(sub_100298E78, 0, 0);
}

uint64_t sub_100298E78()
{
  v64 = v0;
  v1 = v0[251];
  v2 = &v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v3 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v0[283] = v3;
  v4 = *(v2 + 1);
  v0[284] = v4;
  v5 = *(v2 + 2);
  v0[285] = v5;
  v6 = *(v2 + 3);
  v0[286] = v6;
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
        v1 = v0[251];
      }

      v41 = type metadata accessor for Logger();
      sub_1000958E4(v41, qword_10051B2C8);
      v42 = v1;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v63 = v46;
        *v45 = 136315138;
        v47 = *(v2 + 3);
        if (v47 >> 62)
        {
          if (v47 >> 62 == 1)
          {
            v48 = 0xE500000000000000;
            v49 = 0x6465726957;
          }

          else
          {
            v55 = (*(v2 + 2) | *v2 | *(v2 + 1)) == 0;
            v56 = v47 == 0x8000000000000000;
            if (v56 && v55)
            {
              v49 = 0x656D6567616E614DLL;
            }

            else
            {
              v49 = 0x64696C61766E49;
            }

            if (v56 && v55)
            {
              v48 = 0xEA0000000000746ELL;
            }

            else
            {
              v48 = 0xE700000000000000;
            }
          }
        }

        else
        {
          v48 = 0xED00006E6F697461;
          v49 = 0x6C756D4564726143;
        }

        v57 = sub_1002FFA0C(v49, v48, &v63);

        *(v45 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v43, v44, "Unexpected state %s when arming current credential for card emulation", v45, 0xCu);
        sub_1000752F4(v46);
      }

      sub_10009591C();
      v15 = swift_allocError();
      *v58 = 10;
      swift_willThrow();
      goto LABEL_43;
    }

    v7 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    sub_100218E94(v3, v4, v5, v6);
    if (!sub_1001D0A10())
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000958E4(v50, qword_10051B2C8);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "NFC not enabled", v53, 2u);
      }

      sub_10009591C();
      v15 = swift_allocError();
      v16 = 22;
      goto LABEL_28;
    }

    v8 = v0[251];
    v9 = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    v0[287] = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    if (*(v8 + v9 + 128))
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000958E4(v10, qword_10051B2C8);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Card Emulation is not available on non-application clients", v13, 2u);
      }

      sub_10009591C();
      v15 = swift_allocError();
      v16 = 15;
LABEL_28:
      *v14 = v16;
      swift_willThrow();

LABEL_43:
      v0[314] = v15;
      v59 = swift_task_alloc();
      v0[315] = v59;
      *v59 = v0;
      v59[1] = sub_10029D33C;
      v60 = v0[251];

      return sub_1001FF5CC();
    }

    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v0[288] = qword_10051B858;
    v54 = swift_task_alloc();
    v0[289] = v54;
    *v54 = v0;
    v54[1] = sub_1002996F0;

    return sub_100301130(v3);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v1 = v0[251];
    }

    v17 = type metadata accessor for Logger();
    sub_1000958E4(v17, qword_10051B2C8);
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[251];
      v22 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = UUID.uuidString.getter();
      v25 = sub_1002FFA0C(v23, v24, &v63);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, &v63);
      _os_log_impl(&_mh_execute_header, v19, v20, "Session %s: %s: Current Credential already in Card Emulation", v22, 0x16u);
      swift_arrayDestroy();
    }

    v26 = v0[253];
    v27 = v0[252];
    sub_10009591C();
    swift_allocError();
    *v28 = 10;
    v27();

    v29 = v0[282];
    v30 = v0[281];
    v31 = v0[278];
    v32 = v0[275];
    v33 = v0[272];
    v34 = v0[269];
    v35 = v0[268];
    v36 = v0[266];
    v37 = v0[265];
    v38 = v0[262];
    v61 = v0[259];
    v62 = v0[256];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1002996F0()
{
  v2 = *(*v1 + 2312);
  v5 = *v1;
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v3 = sub_10029D5C8;
  }

  else
  {
    v3 = sub_100299830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100299830()
{
  v49 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[251];
  v5 = (v0[286] & 0x3FFFFFFFFFFFFFFFLL);
  v6 = type metadata accessor for Logger();
  v0[291] = sub_1000958E4(v6, qword_10051B2C8);
  v7 = v1;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = v7;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v46 = v15;
    v47 = v12;
    v18 = v0[282];
    v19 = v0[280];
    v44 = v0[283];
    v45 = v0[279];
    v20 = v0[251];
    v21 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = UUID.uuidString.getter();
    v24 = sub_1002FFA0C(v22, v23, &v48);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    v28 = v18;
    v12 = v47;
    (*(v19 + 8))(v28, v45);
    v15 = v46;
    v29 = sub_1002FFA0C(v25, v27, &v48);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "Session %s: Arming Current credential %s for card emulation", v21, 0x16u);
    swift_arrayDestroy();
  }

  if (v0[284])
  {
    v0[10] = v0;
    v0[15] = v0 + 249;
    v0[11] = sub_100299D74;
    v30 = swift_continuation_init();
    v0[205] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
    v0[202] = v30;
    v0[198] = _NSConcreteStackBlock;
    v0[199] = 1107296256;
    v0[200] = sub_1001FDA0C;
    v0[201] = &unk_1004CEC58;
    [v15 requestSETransceiverWithCompletion:v0 + 198];

    return _swift_continuation_await(v0 + 10);
  }

  else
  {
    v31 = v0[286];
    v32 = v0[283];

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, &v48);
      _os_log_impl(&_mh_execute_header, v33, v34, "%s: NFCredentialSession has been invalidated", v35, 0xCu);
      sub_1000752F4(v36);
    }

    v37 = v0[283];
    v38 = (v0[286] & 0x3FFFFFFFFFFFFFFFLL);
    sub_10009591C();
    v39 = swift_allocError();
    *v40 = 9;
    swift_willThrow();

    v0[314] = v39;
    v41 = swift_task_alloc();
    v0[315] = v41;
    *v41 = v0;
    v41[1] = sub_10029D33C;
    v42 = v0[251];

    return sub_1001FF5CC();
  }
}

uint64_t sub_100299D74()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 2336) = v3;
  if (v3)
  {
    v4 = *(v1 + 2288);
    v5 = *(v1 + 2272);
    v6 = *(v1 + 2264);

    v7 = sub_10029D6B8;
  }

  else
  {
    v7 = sub_100299EDC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100299EDC()
{
  v259 = v0;
  v1 = *(v0 + 1992);
  *(v0 + 2344) = v1;
  if (!v1)
  {
    v21 = *(v0 + 2328);
    v22 = *(v0 + 2288);
    v23 = *(v0 + 2272);
    v24 = *(v0 + 2264);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v258[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v258);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: Unable to get transceiver", v27, 0xCu);
      sub_1000752F4(v28);
    }

    v29 = *(v0 + 2280);
    v30 = *(v0 + 2272);
    v31 = *(v0 + 2264);
    v32 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_10009591C();
    v33 = swift_allocError();
    *v34 = 9;
    swift_willThrow();

    goto LABEL_94;
  }

  *(v0 + 1984) = 0;
  v2 = [v1 listAppletsAndRefreshCache:0 outError:v0 + 1984];
  v3 = *(v0 + 1984);
  if (!v2)
  {
    v35 = v1;
    v36 = *(v0 + 2328);
    v37 = *(v0 + 2280);
    v38 = *(v0 + 2272);
    v39 = *(v0 + 2264);
    v40 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    v41 = v3;

    _convertNSErrorToError(_:)();
    swift_willThrow();
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v258[0] = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v258);
      *(v44 + 12) = 2080;
      swift_getErrorValue();
      v45 = *(v0 + 1792);
      v46 = *(v0 + 1800);
      v47 = *(v0 + 1808);
      v48 = Error.localizedDescription.getter();
      v50 = sub_1002FFA0C(v48, v49, v258);

      *(v44 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s: Nearfield error %s encountered when listing applets", v44, 0x16u);
      swift_arrayDestroy();
    }

    v51 = *(v0 + 2280);
    v52 = *(v0 + 2272);
    v53 = *(v0 + 2264);
    v54 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    [v35 invalidate];
    sub_10009591C();
    v33 = swift_allocError();
    *v55 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_95;
  }

  v4 = v2;
  v5 = *(v0 + 2264);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  *(v0 + 2352) = sub_10012E2F8();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v3;

  [v1 invalidate];
  CredentialInternal.state.getter();
  v11 = (*(v7 + 88))(v6, v8);
  if (v11 != enum case for StateInternal.installed(_:))
  {
    if (v11 == enum case for StateInternal.locked(_:))
    {
      v56 = *(v0 + 2328);
      v57 = *(v0 + 2288);
      v58 = *(v0 + 2280);
      v59 = *(v0 + 2272);
      v60 = *(v0 + 2264);
      v61 = *(v0 + 2224);
      v62 = *(v0 + 2216);
      v63 = *(v0 + 2208);

      (*(v62 + 8))(v61, v63);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = *(v0 + 2264);
        v67 = *(v0 + 2256);
        v68 = *(v0 + 2240);
        v69 = *(v0 + 2232);
        v70 = swift_slowAlloc();
        v258[0] = swift_slowAlloc();
        *v70 = 136315394;
        *(v70 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v258);
        *(v70 + 12) = 2080;
        CredentialInternal.identifier.getter();
        v71 = UUID.uuidString.getter();
        v73 = v72;
        (*(v68 + 8))(v67, v69);
        v74 = sub_1002FFA0C(v71, v73, v258);

        *(v70 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v64, v65, "%s: Current Credential %s is locked", v70, 0x16u);
        swift_arrayDestroy();
      }

      v29 = *(v0 + 2280);
      v75 = *(v0 + 2272);
      v31 = *(v0 + 2264);
      v32 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
      sub_10009591C();
      v33 = swift_allocError();
      v77 = 34;
    }

    else
    {
      if (v11 == enum case for StateInternal.installationPending(_:) || v11 == enum case for StateInternal.installationFailed(_:))
      {
      }

      else
      {
        v78 = enum case for StateInternal.terminated(_:);
        v79 = v11;

        if (v79 != v78)
        {
          v80 = *(v0 + 2288);
          v81 = *(v0 + 2280);
          v82 = *(v0 + 2272);
          v83 = *(v0 + 2264);
          v84 = *(v0 + 2224);
          v85 = *(v0 + 2216);
          v86 = *(v0 + 2208);

          v87 = (v80 & 0x3FFFFFFFFFFFFFFFLL);
          sub_10009591C();
          v33 = swift_allocError();
          *v88 = 6;
          swift_willThrow();

          swift_unknownObjectRelease();
          (*(v85 + 8))(v84, v86);
LABEL_95:
          *(v0 + 2512) = v33;
          v149 = swift_task_alloc();
          *(v0 + 2520) = v149;
          *v149 = v0;
          v149[1] = sub_10029D33C;
          v150 = *(v0 + 2008);

          return sub_1001FF5CC();
        }
      }

      v89 = *(v0 + 2328);
      v90 = *(v0 + 2280);
      v91 = *(v0 + 2272);
      v92 = *(v0 + 2264);
      v93 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = *(v0 + 2264);
        v97 = *(v0 + 2256);
        v98 = *(v0 + 2240);
        v99 = *(v0 + 2232);
        v100 = swift_slowAlloc();
        v258[0] = swift_slowAlloc();
        *v100 = 136315394;
        *(v100 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v258);
        *(v100 + 12) = 2080;
        CredentialInternal.identifier.getter();
        v101 = UUID.uuidString.getter();
        v103 = v102;
        (*(v98 + 8))(v97, v99);
        v104 = sub_1002FFA0C(v101, v103, v258);

        *(v100 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v94, v95, "%s: Current Credential %s is not installed", v100, 0x16u);
        swift_arrayDestroy();
      }

      v29 = *(v0 + 2280);
      v75 = *(v0 + 2272);
      v31 = *(v0 + 2264);
      v32 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
      sub_10009591C();
      v33 = swift_allocError();
      v77 = 7;
    }

    *v76 = v77;
    swift_willThrow();
    goto LABEL_93;
  }

  v12 = *(v0 + 2224);
  (*(*(v0 + 2216) + 96))(v12, *(v0 + 2208));
  v13 = *v12;
  v14 = *v12 & 0xFFFFFFFFFFFFFF8;
  if (*v12 >> 62)
  {
    goto LABEL_36;
  }

  v15 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 > 1)
  {
    while (1)
    {
      v16 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v14 + 16))
          {
            goto LABEL_35;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        InstanceInfoInternal.type.getter();
        v20 = InstanceTypeInternal.rawValue.getter();
        if (v20 == InstanceTypeInternal.rawValue.getter())
        {
          goto LABEL_44;
        }

        ++v16;
        if (v19 == v15)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v105 = _CocoaArrayWrapper.endIndex.getter();
      v106 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v106;
      if (v105 < 2)
      {
        break;
      }

      if (!v106)
      {
        goto LABEL_82;
      }
    }
  }

  if (!v15)
  {
LABEL_82:

    v257 = 0;
LABEL_90:
    v132 = *(v0 + 2328);
    v133 = *(v0 + 2280);
    v134 = *(v0 + 2272);
    v135 = *(v0 + 2264);
    v136 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = *(v0 + 2264);
      v140 = *(v0 + 2256);
      v141 = *(v0 + 2240);
      v142 = *(v0 + 2232);
      v143 = swift_slowAlloc();
      v258[0] = swift_slowAlloc();
      *v143 = 136315394;
      *(v143 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v258);
      *(v143 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v144 = UUID.uuidString.getter();
      v146 = v145;
      (*(v141 + 8))(v140, v142);
      v147 = sub_1002FFA0C(v144, v146, v258);

      *(v143 + 14) = v147;
      _os_log_impl(&_mh_execute_header, v137, v138, "%s: No applets are associated with credential with UUID %s", v143, 0x16u);
      swift_arrayDestroy();
    }

    v29 = *(v0 + 2280);
    v75 = *(v0 + 2272);
    v31 = *(v0 + 2264);
    v32 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_10009591C();
    v33 = swift_allocError();
    *v148 = 5;
    swift_willThrow();

LABEL_93:
    swift_unknownObjectRelease();
LABEL_94:

    goto LABEL_95;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v107 = *(v13 + 32);
  }

  v18 = v107;
LABEL_44:
  *(v0 + 2360) = v18;

  if (v9 >> 62)
  {
    goto LABEL_124;
  }

  v108 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
  v257 = v18;
  if (!v108)
  {
LABEL_83:

    goto LABEL_90;
  }

  v109 = 0;
  v250 = (v0 + 680);
  v251 = (v0 + 372);
  v254 = v9 & 0xFFFFFFFFFFFFFF8;
  v255 = v9 & 0xC000000000000001;
  v110 = *(v0 + 2320);
  v252 = v108;
  v253 = v9;
  while (1)
  {
    if (v255)
    {
      v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v109 >= *(v254 + 16))
      {
        goto LABEL_116;
      }

      v111 = *(v9 + 8 * v109 + 32);
    }

    v9 = v111;
    *(v0 + 2368) = v111;
    v112 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v113 = InstanceInfoInternal.instanceAID.getter();
    v18 = v114;
    v115 = [v9 identifierAsData];
    v116 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;

    v119 = v18 >> 62;
    v120 = v118 >> 62;
    if (v18 >> 62 == 3)
    {
      break;
    }

    if (v119)
    {
      if (v119 == 1)
      {
        LODWORD(v121) = HIDWORD(v113) - v113;
        if (__OFSUB__(HIDWORD(v113), v113))
        {
          goto LABEL_123;
        }

        v121 = v121;
      }

      else
      {
        v123 = *(v113 + 16);
        v122 = *(v113 + 24);
        v124 = __OFSUB__(v122, v123);
        v121 = v122 - v123;
        if (v124)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      v121 = BYTE6(v18);
    }

LABEL_68:
    if (v120 > 1)
    {
      if (v120 != 2)
      {
        if (!v121)
        {
          goto LABEL_84;
        }

LABEL_49:

        sub_10006A178(v116, v118);
        sub_10006A178(v113, v18);
        goto LABEL_50;
      }

      v126 = *(v116 + 16);
      v125 = *(v116 + 24);
      v124 = __OFSUB__(v125, v126);
      v127 = v125 - v126;
      if (v124)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        v108 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_46;
      }

      if (v121 != v127)
      {
        goto LABEL_49;
      }
    }

    else if (v120)
    {
      if (__OFSUB__(HIDWORD(v116), v116))
      {
        goto LABEL_121;
      }

      if (v121 != HIDWORD(v116) - v116)
      {
        goto LABEL_49;
      }
    }

    else if (v121 != BYTE6(v118))
    {
      goto LABEL_49;
    }

    if (v121 < 1)
    {
LABEL_84:
      sub_10006A178(v116, v118);
      v129 = v113;
      v130 = v18;
      goto LABEL_85;
    }

    sub_100069E2C(v116, v118);
    v128 = sub_10008C678(v113, v18, v116, v118);
    sub_10006A178(v113, v18);
    sub_10006A178(v116, v118);
    if (v128)
    {
      goto LABEL_86;
    }

LABEL_50:
    ++v109;
    v9 = v253;
    if (v112 == v252)
    {
      goto LABEL_83;
    }
  }

  v121 = 0;
  if (v113)
  {
    goto LABEL_68;
  }

  if (v18 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  if (v118 >> 62 != 3)
  {
    goto LABEL_68;
  }

  v121 = 0;
  if (v116 || v118 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  sub_10006A178(0, 0xC000000000000000);
  v129 = 0;
  v130 = 0xC000000000000000;
LABEL_85:
  sub_10006A178(v129, v130);
LABEL_86:
  if (![v9 managedBySP] || (v131 = objc_msgSend(v9, "rawGPState"), type metadata accessor for InstanceInfoInternal(), v131 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter()) || (objc_msgSend(v9, "isGPLocked") & 1) != 0)
  {

    goto LABEL_90;
  }

  v152 = *(v0 + 2040);
  v153 = *(v0 + 2032);
  if (sub_1002B3D04())
  {
    if (!SESInternalVariant())
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v154 = *(v0 + 2040);
    v155 = *(v0 + 2032);
    *(v0 + 1936) = 95;
    *(v0 + 1944) = 0xE100000000000000;
    v156 = swift_task_alloc();
    *(v156 + 16) = v0 + 1936;

    v158 = sub_10029F26C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10029F7A8, v156, v155, v154, v157);
    *(v0 + 2376) = v110;

    v159 = v158[2];
    if (v159)
    {
      v160 = &v158[4 * v159];
      v161 = *v160;
      v162 = v160[1];
      v163 = v160[2];
      v164 = v160[3];

      v165 = static String._fromSubstring(_:)();
      v167 = v166;

      *(v0 + 2384) = sub_10013044C(v165, v167);
      *(v0 + 2392) = v168;
      if (v168 >> 60 != 15)
      {
        v169 = *(v0 + 2272);

        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_100409E40;
        *(v170 + 32) = v9;
        v171 = v9;
        isa = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 2400) = isa;

        v173 = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 2408) = v173;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_10029B734;
        v174 = swift_continuation_init();
        *(v0 + 1576) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        *(v0 + 1552) = v174;
        *(v0 + 1520) = _NSConcreteStackBlock;
        *(v0 + 1528) = 1107296256;
        *(v0 + 1536) = sub_1001E95B0;
        *(v0 + 1544) = &unk_1004CECD0;
        [v169 startCardEmulationWithApplets:isa externalAuth:v173 completion:v0 + 1520];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_118:
      v258[0] = 0;
      v258[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v248._object = 0x800000010046A460;
      v248._countAndFlagsBits = 0xD00000000000003CLL;
      String.append(_:)(v248);
      v249._countAndFlagsBits = 0xD000000000000031;
      v249._object = 0x8000000100463AD0;
      String.append(_:)(v249);
      return _assertionFailure(_:_:file:line:flags:)();
    }

LABEL_117:

    goto LABEL_118;
  }

  v175 = *(v0 + 2008);
  v176 = &v175[*(v0 + 2296)];
  *(v0 + 1712) = 0u;
  *(v0 + 1728) = 0u;
  v177 = *(v176 + 5);
  v178 = *(v176 + 6);
  v179 = *(v176 + 7);
  v180 = v176[128];
  *(v0 + 336) = v180;
  *(v0 + 304) = v178;
  *(v0 + 320) = v179;
  *(v0 + 288) = v177;
  v181 = *(v176 + 1);
  v182 = *(v176 + 2);
  v183 = *(v176 + 4);
  *(v0 + 256) = *(v176 + 3);
  *(v0 + 272) = v183;
  *(v0 + 224) = v181;
  *(v0 + 240) = v182;
  *(v0 + 208) = *v176;
  if (v180 > 1u)
  {
    v203 = *(v0 + 2328);
    v204 = *(v0 + 2280);
    v205 = *(v0 + 2272);
    v206 = *(v0 + 2264);
    v207 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_10012E344(v0 + 208, v0 + 408);

    sub_10012E3A0(v0 + 208);
    v208 = v175;
    v209 = Logger.logObject.getter();
    v210 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = *(v0 + 2008) + *(v0 + 2296);
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v258[0] = v213;
      *v212 = 136315138;
      *v250 = *v211;
      v214 = *(v211 + 64);
      v216 = *(v211 + 16);
      v215 = *(v211 + 32);
      *(v0 + 728) = *(v211 + 48);
      *(v0 + 744) = v214;
      *(v0 + 696) = v216;
      *(v0 + 712) = v215;
      v218 = *(v211 + 96);
      v217 = *(v211 + 112);
      v219 = *(v211 + 80);
      *(v0 + 808) = *(v211 + 128);
      *(v0 + 776) = v218;
      *(v0 + 792) = v217;
      *(v0 + 760) = v219;
      v220 = sub_10012E344(v250, v0 + 816);
      v221 = sub_10013F33C(v220);
      v223 = v222;
      sub_10012E3A0(v250);
      v224 = sub_1002FFA0C(v221, v223, v258);

      *(v212 + 4) = v224;
      _os_log_impl(&_mh_execute_header, v209, v210, "Client %s has no pid", v212, 0xCu);
      sub_1000752F4(v213);
    }

    sub_10009591C();
    swift_allocError();
    *v225 = 6;
    swift_willThrow();
    v226 = *(v0 + 2328);
    swift_errorRetain();
    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v258[0] = v230;
      *v229 = 136315138;
      swift_getErrorValue();
      v231 = *(v0 + 1744);
      v232 = *(v0 + 1752);
      v233 = *(v0 + 1760);
      v234 = Error.localizedDescription.getter();
      v236 = sub_1002FFA0C(v234, v235, v258);

      *(v229 + 4) = v236;
      _os_log_impl(&_mh_execute_header, v227, v228, "Error %s encountered when arming current credential for card emulation", v229, 0xCu);
      sub_1000752F4(v230);
    }

    v237 = *(v0 + 2368);
    v238 = *(v0 + 2360);
    v239 = *(v0 + 2344);
    v240 = *(v0 + 2280);
    v241 = *(v0 + 2272);
    v256 = *(v0 + 2264);
    v242 = *(v0 + 2008);
    v243 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_1000B5374(0);
    v244 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v245 = *(v242 + v244);

    os_unfair_lock_lock((v245 + 20));
    *(v245 + 16) = 0;
    os_unfair_lock_unlock((v245 + 20));

    v33 = swift_allocError();
    *v246 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    v247 = *(v0 + 1720);
    sub_1000B2A4C(*(v0 + 1712));

    goto LABEL_95;
  }

  v184 = *(v0 + 2264);
  v186 = *(v0 + 272);
  v185 = *(v0 + 280);
  v188 = *(v0 + 240);
  v187 = *(v0 + 256);
  v189 = *(v0 + 224);
  v190 = *(v0 + 288);
  v192 = *(v176 + 6);
  v191 = *(v176 + 7);
  *v251 = v192;
  *(v0 + 388) = v191;
  *(v0 + 1072) = v189;
  *(v0 + 1088) = v188;
  *(v0 + 1104) = v187;
  *(v0 + 1120) = v186;
  *(v0 + 1128) = v185;
  *(v0 + 1136) = v190;
  *(v0 + 1152) = v192;
  *(v0 + 1168) = v191;
  sub_10012E344(v0 + 208, v0 + 544);
  sub_10012E3F4(v0 + 224, v0 + 952);
  v193 = *(v0 + 388);
  *(v0 + 340) = *v251;
  *(v0 + 356) = v193;
  v194 = audit_token_to_pid((v0 + 340));
  sub_10012E450(v0 + 1072);
  sub_10012E3A0(v0 + 208);
  v195 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  *(v0 + 2424) = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v196 = *&v175[v195];

  os_unfair_lock_lock((v196 + 20));
  *(v196 + 16) = 1;
  os_unfair_lock_unlock((v196 + 20));

  v197 = CredentialInternal.friendlyName.getter();
  v199 = v198;
  *(v0 + 2432) = v198;
  v200 = swift_task_alloc();
  *(v0 + 2440) = v200;
  *v200 = v0;
  v200[1] = sub_10029BF30;
  v201 = *(v0 + 2040);
  v202 = *(v0 + 2032);

  return sub_1000B4000(v202, v201, v194, v197, v199);
}

uint64_t sub_10029B734()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 2416) = v3;
  if (v3)
  {
    v4 = *(v1 + 2288);
    v5 = *(v1 + 2272);
    v6 = *(v1 + 2264);

    v7 = sub_10029D7BC;
  }

  else
  {
    v7 = sub_10029B89C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10029B89C()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2400);
  sub_10006A2D0(*(v0 + 2384), *(v0 + 2392));

  v3 = *(v0 + 2376);
  v4 = *(v0 + 2192);
  v5 = *(v0 + 2184);
  v6 = *(v0 + 2008);
  v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v6 + v7, 1, v5))
  {
    v8 = *(v0 + 2176);
    v9 = *(v0 + 2168);
    v10 = *(v0 + 2160);
    sub_10012DFF8(v6 + v7, *(v0 + 2200));
    static DispatchTime.now()();
    v11 = DispatchTime.uptimeNanoseconds.getter();
    (*(v9 + 8))(v8, v10);
    v12 = DispatchTime.uptimeNanoseconds.getter();
    if (v11 < v12)
    {
      __break(1u);
    }

    v13 = *(v0 + 2200);
    v14 = v13 + *(*(v0 + 2184) + 24);
    v15 = *(v14 + 8);
    (*v14)((v11 - v12) / 0x3B9ACA00);
    sub_10012E4DC(v13, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v16 = *(v0 + 2264);
  v17 = *(v0 + 2248);
  v18 = *(v0 + 2192);
  v19 = *(v0 + 2184);
  v68 = v3;
  v20 = *(v0 + 2152);
  v21 = *(*(v0 + 2008) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = 3;
  *(v20 + *(v19 + 20)) = 3;
  v23 = (v20 + *(v19 + 24));
  *v23 = sub_10012E59C;
  v23[1] = v22;
  (*(v18 + 56))(v20, 0, 1, v19);
  swift_beginAccess();
  sub_10012DF88(v20, v6 + v7);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  v24 = v68;
  sub_1001FF418((v0 + 1408));
  if (v68)
  {
    v26 = *(v0 + 2360);
    v27 = *(v0 + 2344);
    v28 = *(v0 + 2288);
    v29 = *(v0 + 2280);
    v30 = *(v0 + 2272);
    v31 = *(v0 + 2264);
    v69 = *(v0 + 2248);
    v32 = *(v0 + 2240);
    v33 = *(v0 + 2232);

    swift_unknownObjectRelease();
    (*(v32 + 8))(v69, v33);
    *(v0 + 2512) = v24;
    v34 = swift_task_alloc();
    *(v0 + 2520) = v34;
    *v34 = v0;
    v34[1] = sub_10029D33C;
    v35 = *(v0 + 2008);

    return sub_1001FF5CC();
  }

  else
  {
    v25 = *(v0 + 2008);
    sub_10012E450(v0 + 1408);
    sub_1001FF418((v0 + 1296));
    v37 = *(v0 + 2008);
    *(v0 + 1952) = *(v0 + 1344);
    v38 = *(v0 + 1960);

    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    *(v0 + 2496) = 0;
    v39 = *(v0 + 2128);
    v40 = *(v0 + 2096);
    v41 = *(v0 + 2072);
    v42 = *(v0 + 2064);
    v43 = *(v0 + 2056);
    v44 = *(v0 + 2048);

    sub_10012E450(v0 + 1184);
    static Date.now.getter();
    (*(v42 + 104))(v41, enum case for Calendar.Identifier.gregorian(_:), v43);
    Calendar.init(identifier:)();
    (*(v42 + 8))(v41, v43);
    TimeZone.init(abbreviation:)();
    v45 = type metadata accessor for TimeZone();
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
    if (v46 == 1)
    {
      __break(1u);
    }

    else
    {
      v49 = *(v0 + 2240);
      v50 = *(v0 + 2144);
      v51 = *(v0 + 2136);
      v52 = *(v0 + 2128);
      v53 = *(v0 + 2120);
      v54 = *(v0 + 2112);
      v55 = *(v0 + 2104);
      v56 = *(v0 + 2096);
      v57 = *(v0 + 2088);
      v62 = *(v0 + 2304);
      v63 = *(v0 + 2080);
      v58 = *(v0 + 2048);
      v66 = *(v0 + 1472);
      v67 = *(v0 + 2248);
      v64 = *(v0 + 1256);
      v65 = *(v0 + 2232);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v57 + 8))(v56, v63);
      v59 = *(v54 + 8);
      v59(v52, v55);
      Date.timeIntervalSince1970.getter();
      v61 = v60;
      v59(v53, v55);
      (*(v49 + 32))(v50, v67, v65);
      *(v50 + v51[5]) = 0;
      *(v50 + v51[8]) = *(v0 + 1952);
      *(v50 + v51[7]) = v64;
      *(v50 + v51[6]) = v66;
      *(v50 + v51[9]) = v61 * 1000.0;
      v46 = sub_10029CEB4;
      v47 = v62;
      v48 = 0;
    }

    return _swift_task_switch(v46, v47, v48);
  }
}

uint64_t sub_10029BF30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2440);
  v7 = *v3;
  v5[306] = a1;
  v5[307] = a2;
  v5[308] = v2;

  v8 = v4[304];
  if (v2)
  {
    v9 = v5[286];
    v10 = v5[285];
    v11 = v5[284];
    v12 = v5[283];

    v13 = sub_10029DA58;
  }

  else
  {

    v13 = sub_10029C0D4;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_10029C0D4()
{
  v52 = v0;
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2008);
  swift_beginAccess();
  v3 = *(v2 + v1);
  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  swift_endAccess();
  if (v2 == 1)
  {
    v4 = *(v0 + 2456);
    v5 = *(v0 + 2448);
    v6 = *(v0 + 2368);
    v7 = *(v0 + 2352);
    v8 = *(v0 + 2272);
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100409E40;
    *(v9 + 32) = v6;
    v10 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 2472) = isa;

    v12 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 2480) = v12;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_10029C654;
    v13 = swift_continuation_init();
    *(v0 + 1704) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 1680) = v13;
    *(v0 + 1648) = _NSConcreteStackBlock;
    *(v0 + 1656) = 1107296256;
    *(v0 + 1664) = sub_1001E95B0;
    *(v0 + 1672) = &unk_1004CEC80;
    [v8 startCardEmulationWithApplets:isa externalAuth:v12 completion:v0 + 1648];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {
    v14 = *(v0 + 2328);
    v15 = *(v0 + 2288);
    v16 = *(v0 + 2272);
    v17 = *(v0 + 2264);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "End Card Emulation has been called while presenting auth sheet", v20, 2u);
    }

    v21 = *(v0 + 2456);
    v22 = *(v0 + 2448);

    sub_1000B5374(0);
    sub_10009591C();
    swift_allocError();
    *v23 = 10;
    swift_willThrow();
    sub_10006A178(v22, v21);
    v24 = *(v0 + 2328);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = *(v0 + 1744);
      v30 = *(v0 + 1752);
      v31 = *(v0 + 1760);
      v32 = Error.localizedDescription.getter();
      v34 = sub_1002FFA0C(v32, v33, &v51);

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error %s encountered when arming current credential for card emulation", v27, 0xCu);
      sub_1000752F4(v28);
    }

    v35 = *(v0 + 2368);
    v36 = *(v0 + 2360);
    v37 = *(v0 + 2344);
    v38 = *(v0 + 2280);
    v39 = *(v0 + 2272);
    v50 = *(v0 + 2264);
    v40 = *(v0 + 2008);
    v41 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_1000B5374(0);
    v42 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v43 = *(v40 + v42);

    os_unfair_lock_lock((v43 + 20));
    *(v43 + 16) = 0;
    os_unfair_lock_unlock((v43 + 20));

    v44 = swift_allocError();
    *v45 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    v46 = *(v0 + 1720);
    sub_1000B2A4C(*(v0 + 1712));

    *(v0 + 2512) = v44;
    v47 = swift_task_alloc();
    *(v0 + 2520) = v47;
    *v47 = v0;
    v47[1] = sub_10029D33C;
    v48 = *(v0 + 2008);

    return sub_1001FF5CC();
  }
}

uint64_t sub_10029C654()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 2488) = v3;
  if (v3)
  {
    v4 = *(v1 + 2288);
    v5 = *(v1 + 2272);
    v6 = *(v1 + 2264);

    v7 = sub_10029DD24;
  }

  else
  {
    v7 = sub_10029C7C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10029C7C0()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2424);
  v5 = *(v0 + 2008);

  sub_1000B5374(1);
  v6 = *(v5 + v4);

  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = 0;
  os_unfair_lock_unlock((v6 + 20));
  sub_10006A178(v3, v2);
  v7 = *(v0 + 1720);
  sub_1000B2A4C(*(v0 + 1712));

  v8 = *(v0 + 1736);

  v9 = *(v0 + 2464);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2008);
  v13 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v10 + 48))(v12 + v13, 1, v11))
  {
    v14 = *(v0 + 2176);
    v15 = *(v0 + 2168);
    v16 = *(v0 + 2160);
    sub_10012DFF8(v12 + v13, *(v0 + 2200));
    static DispatchTime.now()();
    v17 = DispatchTime.uptimeNanoseconds.getter();
    (*(v15 + 8))(v14, v16);
    v18 = DispatchTime.uptimeNanoseconds.getter();
    if (v17 < v18)
    {
      __break(1u);
    }

    v19 = *(v0 + 2200);
    v20 = v19 + *(*(v0 + 2184) + 24);
    v21 = *(v20 + 8);
    (*v20)((v17 - v18) / 0x3B9ACA00);
    sub_10012E4DC(v19, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v22 = *(v0 + 2264);
  v23 = *(v0 + 2248);
  v24 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v74 = v9;
  v26 = *(v0 + 2152);
  v27 = *(*(v0 + 2008) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 3;
  *(v26 + *(v25 + 20)) = 3;
  v29 = (v26 + *(v25 + 24));
  *v29 = sub_10012E59C;
  v29[1] = v28;
  (*(v24 + 56))(v26, 0, 1, v25);
  swift_beginAccess();
  sub_10012DF88(v26, v12 + v13);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  v30 = v74;
  sub_1001FF418((v0 + 1408));
  if (v74)
  {
    v32 = *(v0 + 2360);
    v33 = *(v0 + 2344);
    v34 = *(v0 + 2288);
    v35 = *(v0 + 2280);
    v36 = *(v0 + 2272);
    v37 = *(v0 + 2264);
    v75 = *(v0 + 2248);
    v38 = *(v0 + 2240);
    v39 = *(v0 + 2232);

    swift_unknownObjectRelease();
    (*(v38 + 8))(v75, v39);
    *(v0 + 2512) = v30;
    v40 = swift_task_alloc();
    *(v0 + 2520) = v40;
    *v40 = v0;
    v40[1] = sub_10029D33C;
    v41 = *(v0 + 2008);

    return sub_1001FF5CC();
  }

  else
  {
    v31 = *(v0 + 2008);
    sub_10012E450(v0 + 1408);
    sub_1001FF418((v0 + 1296));
    v43 = *(v0 + 2008);
    *(v0 + 1952) = *(v0 + 1344);
    v44 = *(v0 + 1960);

    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    *(v0 + 2496) = 0;
    v45 = *(v0 + 2128);
    v46 = *(v0 + 2096);
    v47 = *(v0 + 2072);
    v48 = *(v0 + 2064);
    v49 = *(v0 + 2056);
    v50 = *(v0 + 2048);

    sub_10012E450(v0 + 1184);
    static Date.now.getter();
    (*(v48 + 104))(v47, enum case for Calendar.Identifier.gregorian(_:), v49);
    Calendar.init(identifier:)();
    (*(v48 + 8))(v47, v49);
    TimeZone.init(abbreviation:)();
    v51 = type metadata accessor for TimeZone();
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    if (v52 == 1)
    {
      __break(1u);
    }

    else
    {
      v55 = *(v0 + 2240);
      v56 = *(v0 + 2144);
      v57 = *(v0 + 2136);
      v58 = *(v0 + 2128);
      v59 = *(v0 + 2120);
      v60 = *(v0 + 2112);
      v61 = *(v0 + 2104);
      v62 = *(v0 + 2096);
      v63 = *(v0 + 2088);
      v68 = *(v0 + 2304);
      v69 = *(v0 + 2080);
      v64 = *(v0 + 2048);
      v72 = *(v0 + 1472);
      v73 = *(v0 + 2248);
      v70 = *(v0 + 1256);
      v71 = *(v0 + 2232);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v63 + 8))(v62, v69);
      v65 = *(v60 + 8);
      v65(v58, v61);
      Date.timeIntervalSince1970.getter();
      v67 = v66;
      v65(v59, v61);
      (*(v55 + 32))(v56, v73, v71);
      *(v56 + v57[5]) = 0;
      *(v56 + v57[8]) = *(v0 + 1952);
      *(v56 + v57[7]) = v70;
      *(v56 + v57[6]) = v72;
      *(v56 + v57[9]) = v67 * 1000.0;
      v52 = sub_10029CEB4;
      v53 = v68;
      v54 = 0;
    }

    return _swift_task_switch(v52, v53, v54);
  }
}

uint64_t sub_10029CEB4()
{
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2304);
  v3 = sub_10035E904();
  if (v1)
  {
    v4 = *(v0 + 2288);
    v5 = *(v0 + 2272);
    v6 = *(v0 + 2264);

    *(v0 + 2504) = v1;
    v10 = sub_10029D1F4;
  }

  else
  {
    v7 = v3;
    v8 = *(v0 + 2144);
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v10 = sub_10029D024;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10029D024()
{
  v1 = v0[295];
  v2 = v0[293];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[283];
  v22 = v0[296];
  v24 = v0[268];
  v6 = v0[253];
  v7 = v0[252];
  v8 = v0[251];
  v9 = (v0[286] & 0x3FFFFFFFFFFFFFFFLL);
  sub_1001FEFA8(v5, v4, v3, v9);
  v7(0);

  swift_unknownObjectRelease();
  sub_10012E4DC(v24, type metadata accessor for PresentmentInfo);
  v10 = v0[282];
  v11 = v0[281];
  v12 = v0[278];
  v13 = v0[275];
  v14 = v0[272];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[266];
  v18 = v0[265];
  v19 = v0[262];
  v23 = v0[259];
  v25 = v0[256];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10029D1F4()
{
  v1 = v0[296];
  v2 = v0[295];
  v3 = v0[293];
  v4 = v0[286];
  v5 = v0[285];
  v6 = v0[284];
  v7 = v0[283];
  v8 = v0[268];

  swift_unknownObjectRelease();
  sub_10012E4DC(v8, type metadata accessor for PresentmentInfo);
  v0[314] = v0[313];
  v9 = swift_task_alloc();
  v0[315] = v9;
  *v9 = v0;
  v9[1] = sub_10029D33C;
  v10 = v0[251];

  return sub_1001FF5CC();
}

uint64_t sub_10029D33C()
{
  v1 = *(*v0 + 2520);
  v3 = *v0;

  return _swift_task_switch(sub_10029D464, 0, 0);
}

uint64_t sub_10029D464()
{
  v1 = v0[314];
  v2 = v0[253];
  v3 = v0[252];
  swift_errorRetain();
  v3(v1);

  v4 = v0[282];
  v5 = v0[281];
  v6 = v0[278];
  v7 = v0[275];
  v8 = v0[272];
  v9 = v0[269];
  v10 = v0[268];
  v11 = v0[266];
  v12 = v0[265];
  v13 = v0[262];
  v16 = v0[259];
  v17 = v0[256];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10029D5C8()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];

  v0[314] = v0[290];
  v4 = swift_task_alloc();
  v0[315] = v4;
  *v4 = v0;
  v4[1] = sub_10029D33C;
  v5 = v0[251];

  return sub_1001FF5CC();
}

uint64_t sub_10029D6B8()
{
  v1 = v0[292];
  v2 = v0[285];
  v3 = v0[284];
  v4 = v0[283];
  v5 = (v0[286] & 0x3FFFFFFFFFFFFFFFLL);
  swift_willThrow();

  v0[314] = v0[292];
  v6 = swift_task_alloc();
  v0[315] = v6;
  *v6 = v0;
  v6[1] = sub_10029D33C;
  v7 = v0[251];

  return sub_1001FF5CC();
}

uint64_t sub_10029D7BC()
{
  v32 = v0;
  v1 = v0[302];
  v2 = v0[301];
  v3 = v0[300];
  v4 = v0[291];
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[302];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[239];
    v11 = v0[240];
    v12 = v0[241];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "NearField Error %s encountered when arming current credential for card emulation -- CAM path", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = v0[302];
  v17 = v0[299];
  v18 = v0[298];
  v19 = v0[296];
  v20 = v0[295];
  v21 = v0[293];
  v22 = v0[284];
  v28 = v0[283];
  v29 = v0[285];
  v30 = (v0[286] & 0x3FFFFFFFFFFFFFFFLL);
  sub_10009591C();
  v23 = swift_allocError();
  *v24 = 8;
  swift_willThrow();

  sub_10006A2D0(v18, v17);

  swift_unknownObjectRelease();

  v0[314] = v23;
  v25 = swift_task_alloc();
  v0[315] = v25;
  *v25 = v0;
  v25[1] = sub_10029D33C;
  v26 = v0[251];

  return sub_1001FF5CC();
}

uint64_t sub_10029DA58()
{
  v30 = v0;
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2328);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = *(v0 + 1744);
    v8 = *(v0 + 1752);
    v9 = *(v0 + 1760);
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v29);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %s encountered when arming current credential for card emulation", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v13 = *(v0 + 2368);
  v14 = *(v0 + 2360);
  v15 = *(v0 + 2344);
  v16 = *(v0 + 2280);
  v17 = *(v0 + 2272);
  v28 = *(v0 + 2264);
  v18 = *(v0 + 2008);
  v19 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
  sub_1000B5374(0);
  v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v21 = *(v18 + v20);

  os_unfair_lock_lock((v21 + 20));
  *(v21 + 16) = 0;
  os_unfair_lock_unlock((v21 + 20));

  sub_10009591C();
  v22 = swift_allocError();
  *v23 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v24 = *(v0 + 1720);
  sub_1000B2A4C(*(v0 + 1712));

  *(v0 + 2512) = v22;
  v25 = swift_task_alloc();
  *(v0 + 2520) = v25;
  *v25 = v0;
  v25[1] = sub_10029D33C;
  v26 = *(v0 + 2008);

  return sub_1001FF5CC();
}

uint64_t sub_10029DD24()
{
  v35 = v0;
  v1 = *(v0 + 2488);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2472);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2448);
  swift_willThrow();
  sub_10006A178(v5, v4);

  v6 = *(v0 + 2488);
  v7 = *(v0 + 2328);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 1744);
    v13 = *(v0 + 1752);
    v14 = *(v0 + 1760);
    v15 = Error.localizedDescription.getter();
    v17 = sub_1002FFA0C(v15, v16, &v34);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error %s encountered when arming current credential for card emulation", v10, 0xCu);
    sub_1000752F4(v11);
  }

  v18 = *(v0 + 2368);
  v19 = *(v0 + 2360);
  v20 = *(v0 + 2344);
  v21 = *(v0 + 2280);
  v22 = *(v0 + 2272);
  v33 = *(v0 + 2264);
  v23 = *(v0 + 2008);
  v24 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
  sub_1000B5374(0);
  v25 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v26 = *(v23 + v25);

  os_unfair_lock_lock((v26 + 20));
  *(v26 + 16) = 0;
  os_unfair_lock_unlock((v26 + 20));

  sub_10009591C();
  v27 = swift_allocError();
  *v28 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v29 = *(v0 + 1720);
  sub_1000B2A4C(*(v0 + 1712));

  *(v0 + 2512) = v27;
  v30 = swift_task_alloc();
  *(v0 + 2520) = v30;
  *v30 = v0;
  v30[1] = sub_10029D33C;
  v31 = *(v0 + 2008);

  return sub_1001FF5CC();
}

uint64_t sub_10029E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v7 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  v6[34] = v8;
  v9 = *(v8 - 8);
  v6[35] = v9;
  v10 = *(v9 + 64) + 15;
  v6[36] = swift_task_alloc();
  v11 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v6[37] = v11;
  v12 = *(v11 - 8);
  v6[38] = v12;
  v13 = *(v12 + 64) + 15;
  v6[39] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v6[40] = v14;
  v15 = *(v14 - 8);
  v6[41] = v15;
  v16 = *(v15 + 64) + 15;
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10029E338, 0, 0);
}

uint64_t sub_10029E338()
{
  v83 = v0;
  v1 = v0[30];
  v2 = &v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v3 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v0[43] = v3;
  v4 = *(v2 + 2);
  v0[44] = v4;
  v5 = *(v2 + 3);
  v0[45] = v5;
  if (v5 >> 62 == 1)
  {
    v6 = *v2;
    v0[46] = *v2;
    v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v8 = *&v1[v7];
    sub_100218E94(v6, v3, v4, v5);

    os_unfair_lock_lock((v8 + 20));
    *(v8 + 16) = 0;
    os_unfair_lock_unlock((v8 + 20));

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v9 = v0[30];
    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = v4;
    v12 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
    v13 = v9;
    v14 = v6;
    v15 = v3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v80 = v15;
      v18 = v0[41];
      v19 = v0[42];
      v76 = v0[40];
      v78 = v17;
      v20 = v0[30];
      v21 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = UUID.uuidString.getter();
      v24 = sub_1002FFA0C(v22, v23, v82);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*(v18 + 8))(v19, v76);
      v15 = v80;
      v28 = sub_1002FFA0C(v25, v27, v82);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v16, v78, "Session %s: Ending wired mode for credential %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    if (v3)
    {
      v0[2] = v0;
      v0[3] = sub_10029EBB8;
      v29 = swift_continuation_init();
      v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10021C240;
      v0[13] = &unk_1004CEBE0;
      v0[14] = v29;
      [v15 endSessionWithCompletion:v0 + 10];
      v30 = (v0 + 2);

      return _swift_continuation_await(v30);
    }

    v44 = v0[37];
    v43 = v0[38];
    v45 = v0[30];
    v46 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
    swift_beginAccess();
    if (!(*(v43 + 48))(v45 + v46, 1, v44))
    {
      v48 = v0[35];
      v47 = v0[36];
      v49 = v0[34];
      sub_10012DFF8(v45 + v46, v0[39]);
      static DispatchTime.now()();
      v50 = DispatchTime.uptimeNanoseconds.getter();
      (*(v48 + 8))(v47, v49);
      v30 = DispatchTime.uptimeNanoseconds.getter();
      if (v50 < v30)
      {
        __break(1u);
        return _swift_continuation_await(v30);
      }

      v51 = v0[39];
      v52 = v51 + *(v0[37] + 24);
      v53 = *(v52 + 8);
      (*v52)((v50 - v30) / 0x3B9ACA00);
      sub_10012E4DC(v51, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
    }

    v75 = v0[46];
    v77 = v0[43];
    v54 = v0[37];
    v55 = v0[38];
    v56 = v0[32];
    v57 = v0[33];
    v58 = v0[31];
    v79 = (v0[45] & 0x3FFFFFFFFFFFFFFFLL);
    v81 = v0[44];
    v59 = *(v0[30] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

    static DispatchTime.now()();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = 4;
    *(v57 + *(v54 + 20)) = 4;
    v61 = (v57 + *(v54 + 24));
    *v61 = sub_10012DF7C;
    v61[1] = v60;
    (*(v55 + 56))(v57, 0, 1, v54);
    swift_beginAccess();
    sub_10012DF88(v57, v45 + v46);
    swift_endAccess();
    sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
    v58(0);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v1 = v0[30];
    }

    v31 = type metadata accessor for Logger();
    sub_1000958E4(v31, qword_10051B2C8);
    v32 = v1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v0[30];
      v36 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v36 = 136315394;
      v37 = UUID.uuidString.getter();
      v39 = sub_1002FFA0C(v37, v38, v82);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = *(v2 + 3);
      if (v40 >> 62)
      {
        if (v40 >> 62 == 1)
        {
          v41 = 0xE500000000000000;
          v42 = 0x6465726957;
        }

        else
        {
          v62 = (*(v2 + 2) | *v2 | *(v2 + 1)) == 0;
          v63 = v40 == 0x8000000000000000;
          if (v63 && v62)
          {
            v42 = 0x656D6567616E614DLL;
          }

          else
          {
            v42 = 0x64696C61766E49;
          }

          if (v63 && v62)
          {
            v41 = 0xEA0000000000746ELL;
          }

          else
          {
            v41 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v41 = 0xED00006E6F697461;
        v42 = 0x6C756D4564726143;
      }

      v64 = sub_1002FFA0C(v42, v41, v82);

      *(v36 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v33, v34, "Session %s: Unexpected state %s while trying to end wired mode", v36, 0x16u);
      swift_arrayDestroy();
    }

    v66 = v0[31];
    v65 = v0[32];
    sub_10009591C();
    v67 = swift_allocError();
    *v68 = 10;
    swift_willThrow();
    swift_errorRetain();
    v66(v67);
  }

  v69 = v0[42];
  v70 = v0[39];
  v71 = v0[36];
  v72 = v0[33];

  v73 = v0[1];

  return v73();
}

uint64_t sub_10029EBB8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10029EC98, 0, 0);
}

unint64_t sub_10029EC98()
{
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_10050A868;

  os_unfair_lock_lock(v1 + 6);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 6);

  if (v2)
  {
    sub_100307B18(0, 0);
  }

  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 240);
  v6 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v3 + 48))(v5 + v6, 1, v4))
  {
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 272);
    sub_10012DFF8(v5 + v6, *(v0 + 312));
    static DispatchTime.now()();
    v10 = DispatchTime.uptimeNanoseconds.getter();
    (*(v8 + 8))(v7, v9);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v10 < result)
    {
      __break(1u);
      return result;
    }

    v12 = *(v0 + 312);
    v13 = v12 + *(*(v0 + 296) + 24);
    v14 = *(v13 + 8);
    (*v13)((v10 - result) / 0x3B9ACA00);
    sub_10012E4DC(v12, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v28 = *(v0 + 368);
  v29 = *(v0 + 344);
  v15 = *(v0 + 296);
  v16 = *(v0 + 304);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v19 = *(v0 + 248);
  v30 = (*(v0 + 360) & 0x3FFFFFFFFFFFFFFFLL);
  v31 = *(v0 + 352);
  v20 = *(*(v0 + 240) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = 4;
  *(v18 + *(v15 + 20)) = 4;
  v22 = (v18 + *(v15 + 24));
  *v22 = sub_10012DF7C;
  v22[1] = v21;
  (*(v16 + 56))(v18, 0, 1, v15);
  swift_beginAccess();
  sub_10012DF88(v18, v5 + v6);
  swift_endAccess();
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
  v19(0);

  v23 = *(v0 + 336);
  v24 = *(v0 + 312);
  v25 = *(v0 + 288);
  v26 = *(v0 + 264);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10029F124()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029F15C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10029F1A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10029E184(a1, v4, v5, v6, v7, v8);
}

void *sub_10029F26C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10012F1D8(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10012F1D8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10012F1D8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10012F1D8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10012F1D8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10029F644()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10029F694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_100298A9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10029F770()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10029F7C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_10006A178(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10029F814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000C288C;

  return sub_1002978A0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10029F904()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10006A178(*(v0 + v5), *(v0 + v5 + 8));
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10029FA18(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[2];
  v9 = v1[4];
  v19 = v1[3];
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v14 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10012E598;

  return sub_100291140(a1, v20, v19, v9, v1 + v5, v11, v12, v14);
}

uint64_t sub_10029FB90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10029FC74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10012E598;

  return sub_10028D134(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10029FE40@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_10040C130;
  strcpy((result + 32), "serialNumber");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  *(result + 48) = 147;
  *(result + 56) = 0;
  *(result + 64) = 0u;
  *(result + 80) = -64;
  *(result + 88) = _swiftEmptyArrayStorage;
  strcpy((result + 96), "caIdentifier");
  *(result + 109) = 0;
  *(result + 110) = -5120;
  *(result + 112) = 66;
  *(result + 120) = 0;
  *(result + 128) = 0u;
  *(result + 144) = -64;
  *(result + 152) = _swiftEmptyArrayStorage;
  *(result + 160) = 0xD000000000000011;
  *(result + 168) = 0x8000000100464D60;
  *(result + 176) = 24352;
  *(result + 184) = 0;
  *(result + 192) = 0u;
  *(result + 208) = -64;
  *(result + 216) = _swiftEmptyArrayStorage;
  *(result + 224) = 0x656761735579656BLL;
  *(result + 232) = 0xE800000000000000;
  *(result + 240) = 149;
  *(result + 248) = 0;
  *(result + 256) = 0u;
  *(result + 272) = -64;
  *(result + 280) = _swiftEmptyArrayStorage;
  strcpy((result + 288), "effectiveDate");
  *(result + 302) = -4864;
  *(result + 304) = 37;
  *(result + 312) = 256;
  *(result + 320) = 0u;
  *(result + 336) = -64;
  *(result + 344) = _swiftEmptyArrayStorage;
  strcpy((result + 352), "expirationDate");
  *(result + 367) = -18;
  *(result + 368) = 24356;
  *(result + 376) = 256;
  *(result + 384) = 0u;
  *(result + 400) = -64;
  *(result + 408) = _swiftEmptyArrayStorage;
  *(result + 416) = 0x4E4944536163;
  *(result + 424) = 0xE600000000000000;
  *(result + 432) = 69;
  *(result + 440) = 0;
  *(result + 448) = 0u;
  *(result + 464) = -64;
  *(result + 472) = _swiftEmptyArrayStorage;
  *(result + 480) = 0xD000000000000011;
  *(result + 488) = 0x8000000100464D80;
  *(result + 496) = 83;
  *(result + 504) = 0;
  *(result + 512) = 0u;
  *(result + 528) = -64;
  *(result + 536) = _swiftEmptyArrayStorage;
  *(result + 544) = 0x654B63696C627570;
  *(result + 552) = 0xE900000000000079;
  *(result + 560) = 32585;
  *(result + 568) = 0;
  *(result + 576) = 0u;
  *(result + 592) = -64;
  *(result + 600) = _swiftEmptyArrayStorage;
  *a1 = 32545;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1002A0074@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 4;
    *(v30 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
LABEL_17:
    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 3;
    *(v31 + 24) = 3;
    swift_willThrow();
  }

  v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v5 = sub_10008C908(0x754E6C6169726573, 0xEC0000007265626DLL);
  if ((v6 & 1) == 0)
  {

    goto LABEL_17;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
  if (v7 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *v32 = 4;
    *(v32 + 24) = 3;
    swift_willThrow();
  }

  v10 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v11 = *(v3 + 16);

  sub_100069E2C(v10, v9);
  if (!v11 || (v12 = sub_10008C908(0x69746E6564496163, 0xEC00000072656966), (v13 & 1) == 0))
  {

    sub_10007FC0C();
    swift_allocError();
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = 3;
    *(v33 + 24) = 3;
    swift_willThrow();
LABEL_22:

    return sub_10006A178(v10, v9);
  }

  v14 = *(*(v3 + 56) + 8 * v12);
  if (v14 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 4;
    *(v34 + 24) = 3;
    swift_willThrow();

    goto LABEL_22;
  }

  v16 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v15 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v42 = v15;
  if (!*(v3 + 16))
  {

    sub_100069E2C(v16, v15);
    goto LABEL_25;
  }

  v49 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  sub_100069E2C(v16, v15);
  v17 = sub_10008C908(0xD000000000000011, 0x8000000100464D60);
  if ((v18 & 1) == 0)
  {
LABEL_25:

    sub_10007FC0C();
    swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 3;
    *(v35 + 24) = 3;
    swift_willThrow();

LABEL_26:

    v36 = 0;
    goto LABEL_27;
  }

  v19 = *(*(v3 + 56) + 8 * v17);
  if (v19 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *v37 = 4;
    *(v37 + 24) = 3;
    swift_willThrow();

    goto LABEL_26;
  }

  v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v21 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v40 = v21;
  v41 = v20;
  if (*(v3 + 16))
  {

    sub_100069E2C(v20, v21);
    v22 = sub_10008C908(0xD000000000000011, 0x8000000100464D80);
    if (v23)
    {
      v24 = *(*(v3 + 56) + 8 * v22);

      if (v24 >> 61 == 1)
      {

        v25 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v26 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_100069E2C(v25, v26);

        *&v44 = v10;
        *(&v44 + 1) = v9;
        *&v45 = v49;
        *(&v45 + 1) = v42;
        *&v46 = v20;
        *(&v46 + 1) = v40;
        *&v47 = v25;
        *(&v47 + 1) = v26;
        v48[0] = v10;
        v48[1] = v9;
        v48[2] = v49;
        v48[3] = v42;
        v48[4] = v20;
        v48[5] = v40;
        v48[6] = v25;
        v48[7] = v26;
        sub_1002A0670(&v44, v43);
        result = sub_10018C7D0(v48);
        v28 = v45;
        *a2 = v44;
        a2[1] = v28;
        v29 = v47;
        a2[2] = v46;
        a2[3] = v29;
        return result;
      }

      sub_10007FC0C();
      swift_allocError();
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *v39 = 4;
      *(v39 + 24) = 3;
      swift_willThrow();

      goto LABEL_32;
    }
  }

  else
  {

    sub_100069E2C(v20, v21);
  }

  sub_10007FC0C();
  swift_allocError();
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = 3;
  *(v38 + 24) = 3;
  swift_willThrow();

LABEL_32:

  v36 = 1;
  v16 = v49;
  v8 = v40;
LABEL_27:

  sub_10006A178(v10, v9);
  result = sub_10006A178(v16, v42);
  if (v36)
  {
    return sub_10006A178(v41, v8);
  }

  return result;
}

__n128 sub_1002A06A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002A06BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
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