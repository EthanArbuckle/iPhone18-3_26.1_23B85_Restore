uint64_t sub_100EB49C8(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_1000035D0(v84, v85);
  v4 = _swiftEmptyArrayStorage;
  if (dispatch thunk of BinaryDecodingContaining.isAtEnd.getter())
  {
LABEL_2:
    v5 = sub_100EB42B8(v4);
    if (v2)
    {
      goto LABEL_80;
    }

    v6 = v5;
    sub_100007BAC(v84);
    sub_100007BAC(a1);
    return v6 & 0xFFFFFFFFFFLL;
  }

  while (1)
  {
    sub_10015049C(v84, v85);
    v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    if (v2)
    {
      break;
    }

    v10 = v9;
    v11 = v4;
    v76 = v8;
    sub_10015049C(v84, v85);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v14 = v13;
    *&v79 = v12;
    *(&v79 + 1) = v13;
    sub_1000E0A3C();
    DataProtocol.intValue.getter();
    sub_10015049C(v84, v85);
    v15 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v75 = v16;
    *&__dst = v76;
    *(&__dst + 1) = v10;
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    *&v79 = v12;
    *(&v79 + 1) = v14;
    v77 = v14;
    v17 = v10;
    v18 = sub_1000035D0(&v79, &type metadata for Data);
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 >> 62;
    v73 = v12;
    v74 = v10;
    v22 = v12;
    if ((v20 >> 62) > 1)
    {
      v4 = v11;
      if (v21 == 2)
      {
        v23 = v22;
        v24 = *(v19 + 16);
        v25 = *(v19 + 24);
        sub_100017D5C(v76, v10);
        sub_100017D5C(v23, v77);
        if (__DataStorage._bytes.getter() && __OFSUB__(v24, __DataStorage._offset.getter()))
        {
          goto LABEL_87;
        }

        if (__OFSUB__(v25, v24))
        {
          goto LABEL_82;
        }

LABEL_17:
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        v17 = v10;
        goto LABEL_20;
      }

      *(&v83 + 6) = 0;
      *&v83 = 0;
      sub_100017D5C(v76, v10);
      sub_100017D5C(v22, v77);
    }

    else
    {
      v4 = v11;
      if (v21)
      {
        v26 = v19;
        if (v19 >> 32 < v19)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
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
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
        }

        sub_100017D5C(v76, v10);
        sub_100017D5C(v73, v77);
        if (__DataStorage._bytes.getter() && __OFSUB__(v26, __DataStorage._offset.getter()))
        {
          goto LABEL_89;
        }

        goto LABEL_17;
      }

      *&v83 = *v18;
      WORD4(v83) = v20;
      BYTE10(v83) = BYTE2(v20);
      BYTE11(v83) = BYTE3(v20);
      BYTE12(v83) = BYTE4(v20);
      BYTE13(v83) = BYTE5(v20);
      sub_100017D5C(v76, v10);
      sub_100017D5C(v22, v77);
    }

    Data._Representation.append(contentsOf:)();
LABEL_20:
    sub_100007BAC(&v79);
    v27 = __dst;
    v83 = __dst;
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    *&v79 = v15;
    *(&v79 + 1) = v75;
    v28 = sub_1000035D0(&v79, &type metadata for Data);
    v29 = *v28;
    v30 = v28[1];
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v33 = v4;
        v34 = *(v29 + 16);
        v35 = *(v29 + 24);
        sub_100017D5C(v27, *(&v27 + 1));
        v32 = v15;
        sub_100017D5C(v15, v75);
        if (__DataStorage._bytes.getter() && __OFSUB__(v34, __DataStorage._offset.getter()))
        {
          goto LABEL_88;
        }

        if (__OFSUB__(v35, v34))
        {
          goto LABEL_84;
        }

LABEL_32:
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        sub_100016590(v27, *(&v27 + 1));
        v4 = v33;
        v17 = v74;
        goto LABEL_35;
      }

      memset(__src, 0, 14);
      v32 = v15;
      sub_100017D5C(v15, v75);
    }

    else
    {
      if (v31)
      {
        v33 = v4;
        v36 = v29;
        if (v29 >> 32 < v29)
        {
          goto LABEL_83;
        }

        sub_100017D5C(v27, *(&v27 + 1));
        v32 = v15;
        sub_100017D5C(v15, v75);
        if (__DataStorage._bytes.getter() && __OFSUB__(v36, __DataStorage._offset.getter()))
        {
          goto LABEL_91;
        }

        goto LABEL_32;
      }

      __src[0] = *v28;
      LOWORD(__src[1]) = v30;
      BYTE2(__src[1]) = BYTE2(v30);
      BYTE3(__src[1]) = BYTE3(v30);
      BYTE4(__src[1]) = BYTE4(v30);
      BYTE5(__src[1]) = BYTE5(v30);
      v32 = v15;
      sub_100017D5C(v15, v75);
    }

    Data._Representation.append(contentsOf:)();
LABEL_35:
    sub_100007BAC(&v79);
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    v79 = v83;
    v37 = sub_1000035D0(&v79, &type metadata for Data);
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    v41 = v77;
    if ((v39 >> 62) <= 1)
    {
      if (!v40)
      {
        __src[0] = *v37;
        LOWORD(__src[1]) = v39;
        BYTE2(__src[1]) = BYTE2(v39);
        BYTE3(__src[1]) = BYTE3(v39);
        BYTE4(__src[1]) = BYTE4(v39);
        BYTE5(__src[1]) = BYTE5(v39);
        if (BYTE6(v39))
        {
          if (BYTE6(v39) <= 0xEuLL)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = BYTE6(v39);
            memcpy(&__dst, __src, BYTE6(v39));
            v38 = __dst;
            v39 = v71 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v71 = v39;
          }

          else
          {
            v42 = type metadata accessor for __DataStorage();
            v43 = *(v42 + 48);
            v44 = *(v42 + 52);
            swift_allocObject();
            v38 = BYTE6(v39) << 32;
            v39 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
          }
        }

        else
        {
          v38 = 0;
          v39 = 0xC000000000000000;
        }

        goto LABEL_73;
      }

      v53 = (v38 >> 32) - v38;
      if (v38 >> 32 < v38)
      {
        goto LABEL_85;
      }

      v54 = __DataStorage._bytes.getter();
      if (v54)
      {
        v55 = v54;
        v56 = __DataStorage._offset.getter();
        if (__OFSUB__(v38, v56))
        {
          goto LABEL_92;
        }

        v57 = (v38 - v56 + v55);
      }

      else
      {
        v57 = 0;
      }

      v60 = __DataStorage._length.getter();
      v38 = 0;
      if (v60 >= v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = v60;
      }

      v39 = 0xC000000000000000;
      v17 = v74;
      if (!v57 || !v59)
      {
        goto LABEL_72;
      }

      if (v59 < 15)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v59;
        memcpy(&__dst, v57, v59);
        v38 = __dst;
        v39 = v69 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v69 = v39;
        goto LABEL_72;
      }

      goto LABEL_66;
    }

    if (v40 == 2)
    {
      v45 = *(v38 + 16);
      v46 = *(v38 + 24);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v48 = v47;
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v49))
        {
          goto LABEL_90;
        }

        v50 = (v45 - v49 + v48);
        v51 = __OFSUB__(v46, v45);
        v52 = v46 - v45;
        if (v51)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v50 = 0;
        v51 = __OFSUB__(v46, v45);
        v52 = v46 - v45;
        if (v51)
        {
          goto LABEL_86;
        }
      }

      v58 = __DataStorage._length.getter();
      v38 = 0;
      if (v58 >= v52)
      {
        v59 = v52;
      }

      else
      {
        v59 = v58;
      }

      v39 = 0xC000000000000000;
      if (!v50)
      {
        v17 = v74;
        goto LABEL_72;
      }

      v17 = v74;
      if (!v59)
      {
LABEL_72:
        v41 = v77;
        goto LABEL_73;
      }

      if (v59 < 15)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v59;
        memcpy(&__dst, v50, v59);
        v38 = __dst;
        v39 = v70 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v70 = v39;
        goto LABEL_72;
      }

LABEL_66:
      v61 = type metadata accessor for __DataStorage();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      v64 = __DataStorage.init(bytes:length:)();
      v65 = v64;
      if (v59 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v38 = swift_allocObject();
        *(v38 + 16) = 0;
        *(v38 + 24) = v59;
        v39 = v65 | 0x8000000000000000;
      }

      else
      {
        v38 = v59 << 32;
        v39 = v64 | 0x4000000000000000;
      }

      goto LABEL_72;
    }

LABEL_73:
    sub_100007BAC(&v79);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B734(0, *(v4 + 2) + 1, 1, v4);
    }

    v67 = *(v4 + 2);
    v66 = *(v4 + 3);
    if (v67 >= v66 >> 1)
    {
      v4 = sub_100A5B734((v66 > 1), v67 + 1, 1, v4);
    }

    sub_100016590(v32, v75);
    sub_100016590(v73, v41);
    sub_100016590(v76, v17);
    *(v4 + 2) = v67 + 1;
    v68 = &v4[16 * v67];
    *(v68 + 4) = v38;
    *(v68 + 5) = v39;
    sub_1000035D0(v84, v85);
    v2 = 0;
    if (dispatch thunk of BinaryDecodingContaining.isAtEnd.getter())
    {
      goto LABEL_2;
    }
  }

LABEL_80:
  sub_100007BAC(v84);
  return sub_100007BAC(a1);
}

uint64_t sub_100EB5404(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016BE278, &qword_1013EE3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EB546C()
{
  result = qword_10169CB08;
  if (!qword_10169CB08)
  {
    sub_1000BC580(&qword_10169CB00, &qword_101399648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB08);
  }

  return result;
}

unint64_t sub_100EB54D0()
{
  result = qword_1016BE280;
  if (!qword_1016BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE280);
  }

  return result;
}

unint64_t sub_100EB5524()
{
  result = qword_1016BE288;
  if (!qword_1016BE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLVPackets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[5])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TLVPackets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100EB5648()
{
  result = qword_1016BE290;
  if (!qword_1016BE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE290);
  }

  return result;
}

unint64_t sub_100EB569C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BE298, &qword_1013EE4F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_100EB5814();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_100B9CE70();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[2] | (v12 << 32);
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_100EB5814()
{
  result = qword_1016BE2A0;
  if (!qword_1016BE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2A0);
  }

  return result;
}

unint64_t sub_100EB587C()
{
  result = qword_1016BE2A8;
  if (!qword_1016BE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2A8);
  }

  return result;
}

unint64_t sub_100EB58D4()
{
  result = qword_1016BE2B0;
  if (!qword_1016BE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2B0);
  }

  return result;
}

unint64_t sub_100EB592C()
{
  result = qword_1016BE2B8;
  if (!qword_1016BE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2B8);
  }

  return result;
}

void *sub_100EB5980(uint64_t a1, uint64_t *a2)
{
  v64 = a2;
  v3 = type metadata accessor for SafeLocation();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v50 - v7;
  v8 = &qword_1016BE3D0;
  v9 = &qword_1013EE770;
  v10 = sub_1000BC4D4(&qword_1016BE3D0, &qword_1013EE770);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for LocationOfInterestProvider.RemappingOperation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v53 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v51 = &v50 - v19;
  v67 = type metadata accessor for UUID();
  v20 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v66 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;
  v61 = (v15 + 56);
  v62 = v21 + 16;
  v63 = v21;
  v52 = v15;
  v59 = (v15 + 48);
  v60 = (v21 + 8);
  v65 = a1;

  v29 = 0;
  v58 = _swiftEmptyArrayStorage;
  v54 = v13;
LABEL_4:
  v30 = v29;
  v31 = v66;
  if (!v26)
  {
    goto LABEL_6;
  }

  do
  {
    v29 = v30;
LABEL_9:
    (*(v63 + 16))(v31, *(v65 + 48) + *(v63 + 72) * (__clz(__rbit64(v26)) | (v29 << 6)), v67);
    v32 = v31;
    v33 = *v64;
    if (*(*v64 + 16) && (v34 = sub_1000210EC(v32), (v35 & 1) != 0))
    {
      v36 = v14;
      v37 = v9;
      v38 = v8;
      v39 = v56;
      sub_100EC03A4(*(v33 + 56) + *(v57 + 72) * v34, v56, type metadata accessor for SafeLocation);
      v40 = v39;
      v41 = v55;
      sub_100EBFFE0(v40, v55, type metadata accessor for SafeLocation);
      v42 = v41;
      v8 = v38;
      v9 = v37;
      v14 = v36;
      v13 = v54;
      sub_100EBFFE0(v42, v54, type metadata accessor for SafeLocation);
      swift_storeEnumTagMultiPayload();
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v26 &= v26 - 1;
    (*v61)(v13, v43, 1, v14);
    v31 = v66;
    (*v60)(v66, v67);
    if ((*v59)(v13, 1, v14) != 1)
    {
      v50 = type metadata accessor for LocationOfInterestProvider.RemappingOperation;
      v44 = v51;
      sub_100EBFFE0(v13, v51, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_100EBFFE0(v44, v53, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_100A5ED40(0, v58[2] + 1, 1, v58);
      }

      v46 = v58[2];
      v45 = v58[3];
      v47 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
        v50 = (v46 + 1);
        v49 = sub_100A5ED40(v45 > 1, v46 + 1, 1, v58);
        v47 = v50;
        v58 = v49;
      }

      v48 = v58;
      v58[2] = v47;
      result = sub_100EBFFE0(v53, v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v46, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      goto LABEL_4;
    }

    result = sub_10000B3A8(v13, v8, v9);
    v30 = v29;
  }

  while (v26);
LABEL_6:
  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      return v58;
    }

    v26 = *(v23 + 8 * v29);
    ++v30;
    if (v26)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_100EB5EE0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SafeLocation();
  v8 = *(v1 + v7[8]);
  v9 = *(v1 + v7[9]);
  v10 = *(v1 + v7[10]);
  Date.init()();
  v11 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithCoordinate:isa altitude:v8 horizontalAccuracy:v9 verticalAccuracy:0.0 course:v10 courseAccuracy:v10 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

  (*(v3 + 8))(v6, v2);
  [v13 setReferenceFrame:*(v1 + v7[11])];
  [v13 coordinate];
  v15 = v14;
  v17 = v16;

  v18 = v1 + v7[5];
  UUID.uuidString.getter();
  v19 = objc_allocWithZone(CLCircularRegion);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithCenter:v20 radius:v15 identifier:{v17, v10}];

  return v21;
}

uint64_t sub_100EB60E0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100EB626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100EC0098(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v19;
  *(v3 + 72) = v18;
  *(v3 + 80) = _swiftEmptyArrayStorage;
  v14 = *(v13 + 16);
  *(v3 + 24) = *v13;
  *(v3 + 40) = v14;
  v15 = v20;
  *(v3 + 56) = *(v13 + 32);
  *(v3 + 64) = v15;
  return v3;
}

uint64_t sub_100EB6514()
{
  v1 = sub_1000BC4D4(&qword_1016BE5C0, &qword_1013EE8B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v26 - v4;
  v6 = sub_1000BC4D4(&qword_1016BE5C8, &qword_1013EE8C0);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_1000BC4D4(&qword_1016BE5D0, &qword_1013EE8C8);
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v26 - v14;
  v16 = sub_1000BC4D4(&qword_1016BE5D8, &unk_1013EE8D0);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = *(v0 + 72);
  v33 = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  v26[2] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  Publisher.filter(_:)();

  sub_1000041A4(&qword_1016BE5E0, &qword_1016BE5C0, &qword_1013EE8B8);
  sub_100EC0684();
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v5, v1);
  sub_1000041A4(&qword_1016BE5F0, &qword_1016BE5C8, &qword_1013EE8C0);
  sub_100EC00E0();
  v22 = v27;
  Publisher<>.setFailureType<A>(to:)();
  (*(v28 + 8))(v10, v22);

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016BE438, &qword_1013EE7F0);
  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  sub_1000041A4(&qword_1016BE600, &qword_1016BE5D0, &qword_1013EE8C8);
  sub_1000041A4(&qword_1016BE608, &qword_1016BE5F8, &unk_1013EE8E0);
  v23 = v29;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v30 + 8))(v15, v23);
  sub_1000041A4(&qword_1016BE610, &qword_1016BE5D8, &unk_1013EE8D0);
  v24 = v31;
  Publisher.sink(receiveCompletion:receiveValue:)();
  (*(v32 + 8))(v20, v24);
  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100EB6AE0()
{
  type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100EB6B70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016BE618, &unk_1013EE8F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - v5;
  v9[3] = sub_100EB8244(1);

  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  sub_1000041A4(&qword_1016BE608, &qword_1016BE5F8, &unk_1013EE8E0);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  sub_1000041A4(&qword_1016BE620, &qword_1016BE618, &unk_1013EE8F0);
  v7 = Publisher.eraseToAnyPublisher()();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

void sub_100EB6D60()
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B780);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Updated safe locations due to me device change.", v2, 2u);
  }
}

uint64_t sub_100EB6E48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(a2 + 64) + 184);

  sub_100012908(a4);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a1;

  sub_100012908(a4);
  v12 = qword_101694FA8;

  if (v12 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v15 == 1)
  {
    sub_100EB70E8(a2, a3 & 1, a4, a5, a1);
  }

  else
  {
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    static Transaction.named<A>(_:with:)();
  }

  sub_1000BB27C(a4);
}

uint64_t sub_100EB70E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_1000BC4D4(&qword_1016BE628, &unk_1013EE900);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_100EB8244(a2);
  v28 = *(a1 + 16);
  v17 = v28;
  v29 = v16;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = v17;
  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016BE608, &qword_1016BE5F8, &unk_1013EE8E0);
  sub_1004682F0();
  Publisher.subscribe<A>(on:options:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  v20 = swift_allocObject();
  v21 = v25;
  v22 = v26;
  v20[2] = v25;
  v20[3] = v22;
  v20[4] = v27;
  sub_100012908(v21);
  sub_1000041A4(&qword_1016BE630, &qword_1016BE628, &unk_1013EE900);

  Publisher.oneshot(_:)();

  return (*(v12 + 8))(v15, v11);
}

void sub_100EB73CC(uint64_t a1, void (*a2)(unsigned __int8 *, void))
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    if (a2)
    {
      v3 = *(a1 + 8);
      sub_100EC0310(*a1, v3);
      a2(v2, v3 | 0x100u);
      sub_100EC071C(v2, v3, 1);
    }

LABEL_20:
    Transaction.capture()();
    return;
  }

  v5 = *(v2 + 2);
  if (v5)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v2 + 48;
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      sub_100EC0380(v8, v9, *v7);
      _StringGuts.grow(_:)(51);
      v35 = 0;
      v36 = 0xE000000000000000;
      v11._object = 0x8000000101373030;
      v11._countAndFlagsBits = 0xD000000000000031;
      String.append(_:)(v11);
      v33[0] = v8;
      v33[1] = v9;
      v34 = v10;
      sub_100EC0380(v8, v9, v10);
      v12._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v12);

      sub_100EC032C(v8, v9, v10);
      v37 = v6;
      v14 = v6[2];
      v13 = v6[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_101123BB8((v13 > 1), v14 + 1, 1);
        v6 = v37;
      }

      v7 += 24;
      v6[2] = v15;
      v16 = &v6[2 * v14];
      v16[4] = 0;
      v16[5] = 0xE000000000000000;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
LABEL_18:

      if (a2)
      {
        a2(0, 0);
      }

      goto LABEL_20;
    }
  }

  v17 = 0;
  v18 = v6 + 5;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  while (v17 < v6[2])
  {
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = p_weak_ivar_lyt[366];

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B780);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v15;
      v27 = p_weak_ivar_lyt;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v20;
      v31 = v29;
      v33[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000136BC(v30, v21, v33);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s", v28, 0xCu);
      sub_100007BAC(v31);

      p_weak_ivar_lyt = v27;
      v15 = v26;
    }

    ++v17;
    v18 += 2;
    if (v15 == v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100EB7744(uint64_t (*a1)(void **), uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if ((v9 - 1) > 1)
  {

    v24 = _swiftEmptyArrayStorage;
    v25 = 0;
    return a1(&v24);
  }

  else
  {
    sub_1000D2A70(a4 + 24, &v21, &qword_1016BE5A8, &qword_1013EE8A8);
    if (v22)
    {
      sub_10000A748(&v21, &v24);
    }

    else
    {
      v12 = objc_allocWithZone(RTRoutineManager);

      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 initWithRestorationIdentifier:v13];

      v26 = sub_100008BB8(0, &qword_1016BE5B0, RTRoutineManager_ptr);
      v27 = &off_101658BA8;
      v24 = v14;
      if (v22)
      {
        sub_10000B3A8(&v21, &qword_1016BE5A8, &qword_1013EE8A8);
      }
    }

    v15 = v26;
    v16 = v27;
    sub_1000035D0(&v24, v26);
    if (v9 == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    type metadata accessor for RTLocationOfInterestType(0);
    v22 = v18;
    v23 = &off_101658B90;
    *&v21 = v17;
    sub_10001F280(&v24, v20);
    v19 = swift_allocObject();
    sub_10000A748(v20, (v19 + 2));
    v19[7] = sub_100EC0630;
    v19[8] = v10;
    v19[9] = a5;
    (v16[1])(&v21, sub_100EC0674, v19, v15, v16);

    sub_100007BAC(&v21);
    return sub_100007BAC(&v24);
  }
}

uint64_t sub_100EB7998(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = type metadata accessor for SafeLocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B780);

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = a4;
    v18 = v17;
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v18 = 136315394;
    v42[0] = a1;

    sub_1000BC4D4(&qword_1016BE5B8, &qword_1013EE8B0);
    v19 = String.init<A>(describing:)();
    v40 = a5;
    v21 = sub_1000136BC(v19, v20, v43);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v42[0] = a2;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v22 = String.init<A>(describing:)();
    v24 = sub_1000136BC(v22, v23, v43);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received locations of interest: %s error: %s", v18, 0x16u);
    swift_arrayDestroy();

    a4 = v41;
  }

  if (a2)
  {
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_1000136BC(v29, v30, v43);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to fetch locations of interest due to error: %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    swift_errorRetain();
    a4(a2, 256);
  }

  else
  {
    if (a1)
    {
      v33 = *(a1 + 16);
      v34 = _swiftEmptyArrayStorage;
      if (v33)
      {
        v44 = _swiftEmptyArrayStorage;
        sub_10112483C(0, v33, 0);
        v34 = v44;
        v35 = a1 + 32;
        do
        {
          sub_10001F280(v35, v43);
          sub_10001F280(v43, v42);
          sub_100EB7E64(v42, v13, 80.0);
          sub_100007BAC(v43);
          v44 = v34;
          v37 = v34[2];
          v36 = v34[3];
          if (v37 >= v36 >> 1)
          {
            sub_10112483C(v36 > 1, v37 + 1, 1);
            v34 = v44;
          }

          v34[2] = v37 + 1;
          sub_100EBFFE0(v13, v34 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v37, type metadata accessor for SafeLocation);
          v35 += 40;
          --v33;
        }

        while (v33);
      }
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
    }

    a4(v34, 0);
  }
}

uint64_t sub_100EB7E64@<X0>(uint64_t *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v49 = type metadata accessor for UUID();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v49);
  v48 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v45[-v10];
  v12 = a1[3];
  v13 = a1[4];
  sub_1000035D0(a1, v12);
  (*(v13 + 8))(v12, v13);
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v14 = a1[3];
  v15 = a1[4];
  sub_1000035D0(a1, v14);
  (*(v15 + 32))(v51, v14, v15);
  v16 = sub_100EBEDA0(v51, a3);
  v17 = a1[3];
  v18 = a1[4];
  sub_1000035D0(a1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  v21 = v20;
  v23 = a1[3];
  v22 = a1[4];
  sub_1000035D0(a1, v23);
  (*(v22 + 24))(v51, v23, v22);
  v24 = *sub_1000035D0(v51, v51[3]) + 1;
  if (v24 >= 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x504030200uLL >> (8 * v24);
  }

  v46 = v25;
  v26 = 0xE000000000000000;
  if (v21)
  {
    v26 = v21;
  }

  v47 = v26;
  if (v21)
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  v28 = a1[3];
  v29 = a1[4];
  sub_1000035D0(a1, v28);
  (*(v29 + 24))(v50, v28, v29);
  if (*sub_1000035D0(v50, v50[3]))
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  sub_100007BAC(v50);
  v32 = v48;
  v31 = v49;
  (*(v6 + 16))(v48, v11, v49);
  [v16 coordinate];
  v34 = v33;
  [v16 coordinate];
  v36 = v35;
  [v16 horizontalAccuracy];
  v38 = v37;
  v39 = [v16 referenceFrame];

  if (v39 == 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2 * (v39 == 2);
  }

  (*(v6 + 8))(v11, v31);
  *a2 = xmmword_10138C660;
  v41 = type metadata accessor for SafeLocation();
  (*(v6 + 32))(&a2[v41[5]], v32, v31);
  a2[v41[6]] = v46;
  v42 = &a2[v41[7]];
  v43 = v47;
  *v42 = v27;
  v42[1] = v43;
  *&a2[v41[8]] = v34;
  *&a2[v41[9]] = v36;
  *&a2[v41[10]] = v38;
  a2[v41[11]] = v40;
  a2[v41[12]] = v30;
  *&a2[v41[13]] = _swiftEmptyArrayStorage;
  sub_100007BAC(v51);
  return sub_100007BAC(a1);
}

uint64_t sub_100EB8244(int a1)
{
  LODWORD(v148) = a1;
  v146 = *v1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v130 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v126 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v134 = &v119 - v10;
  v125 = sub_1000BC4D4(&qword_1016BE3F0, &qword_1013EE7A0);
  v124 = *(v125 - 8);
  v11 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v119 - v12;
  v131 = sub_1000BC4D4(&qword_1016BE3F8, &qword_1013EE7A8);
  v129 = *(v131 - 8);
  v13 = *(v129 + 64);
  __chkstk_darwin(v131);
  v127 = &v119 - v14;
  v133 = sub_1000BC4D4(&qword_1016BE400, &qword_1013EE7B0);
  v132 = *(v133 - 8);
  v15 = *(v132 + 64);
  __chkstk_darwin(v133);
  v128 = &v119 - v16;
  v17 = sub_1000BC4D4(&qword_1016BE408, &qword_1013EE7B8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v135 = &v119 - v20;
  v21 = sub_1000BC4D4(&qword_1016BE410, &qword_1013EE7C0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v136 = &v119 - v24;
  v145 = sub_1000BC4D4(&qword_1016BE418, &qword_1013EE7C8);
  v147 = *(v145 - 8);
  v25 = *(v147 + 64);
  __chkstk_darwin(v145);
  v144 = &v119 - v26;
  v143 = sub_1000BC4D4(&qword_1016BE420, &qword_1013EE7D0);
  v138 = *(v143 - 8);
  v27 = *(v138 + 64);
  __chkstk_darwin(v143);
  v142 = &v119 - v28;
  v141 = sub_1000BC4D4(&qword_1016BE428, &qword_1013EE7D8);
  v137 = *(v141 - 8);
  v29 = *(v137 + 64);
  __chkstk_darwin(v141);
  v140 = &v119 - v30;
  v150 = sub_1000BC4D4(&qword_1016BE430, &unk_1013EE7E0);
  v31 = *(v150 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v150);
  v149 = &v119 - v33;
  v34 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v119 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v139 = &v119 - v44;
  My = type metadata accessor for Feature.FindMy();
  v155 = My;
  v156 = sub_100EC0098(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v46 = sub_1000280DC(&v153);
  (*(*(My - 8) + 104))(v46, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v153);
  if ((My & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v153 = 0x7365547265646E75;
    v154 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v152 != 1)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000076D4(v52, qword_10177B780);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Ignoring LOI update as FF is disabled.", v55, 2u);
      }

      type metadata accessor for SPSeparationMonitoringError(0);
      v153 = 1;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100EC0098(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v153 = v152;
      LOBYTE(v154) = 1;
      goto LABEL_19;
    }
  }

  v47 = v151[9];
  AnyCurrentValuePublisher.value.getter();
  if (v153 != 1)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B780);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "This is not a me device, Safe Locations can't be refreshed.", v51, 2u);
    }

    v153 = 0;
    LOBYTE(v154) = 2;
LABEL_19:
    sub_1000BC4D4(&qword_1016BE438, &qword_1013EE7F0);
    sub_100EC00E0();
    v56 = v149;
    Fail.init(error:)();
    sub_1000041A4(&qword_1016BE448, &qword_1016BE430, &unk_1013EE7E0);
    v57 = v150;
    v58 = Publisher.eraseToAnyPublisher()();
    (*(v31 + 8))(v56, v57);
    return v58;
  }

  v122 = v18;
  if (v148)
  {
LABEL_26:
    v120 = v22;
    v121 = v21;
    v74 = sub_100EE8F6C();
    v75 = *(v74 + 2);
    v119 = v17;
    if (v75)
    {
      v153 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v138 += 8;
      v139 = (v147 + 8);
      v137 += 8;
      v76 = 32;
      v77 = v151;
      v149 = v74;
      do
      {
        v147 = v76;
        v148 = v75;
        v78 = v149[v76];
        v79 = swift_allocObject();
        *(v79 + 16) = v78;
        LODWORD(v150) = v78;
        v80 = v146;
        *(v79 + 24) = v77;
        *(v79 + 32) = v80;
        v81 = sub_1000BC4D4(&qword_1016BE450, &qword_1013EE7F8);
        v82 = *(v81 + 48);
        v83 = *(v81 + 52);
        swift_allocObject();

        v152 = Future.init(_:)();
        v84 = swift_allocObject();
        *(v84 + 16) = v78;
        *(v84 + 24) = v151;

        static Subscribers.Demand.unlimited.getter();
        sub_1000BC4D4(&qword_1016BE458, &qword_1013EE800);
        sub_1000041A4(&qword_1016BE460, &qword_1016BE450, &qword_1013EE7F8);
        sub_1000041A4(&qword_1016BE468, &qword_1016BE458, &qword_1013EE800);
        v85 = v144;
        Publisher.flatMap<A>(maxPublishers:_:)();

        v77 = v151;

        v86 = swift_allocObject();
        *(v86 + 16) = v150;
        *(v86 + 24) = v77;

        static Subscribers.Demand.unlimited.getter();
        sub_1000BC4D4(&qword_1016BE470, &qword_1013EE808);
        sub_1000041A4(&qword_1016BE478, &qword_1016BE418, &qword_1013EE7C8);
        sub_1000041A4(&qword_1016BE480, &qword_1016BE470, &qword_1013EE808);
        v87 = v142;
        v88 = v145;
        Publisher.flatMap<A, B>(maxPublishers:_:)();

        (*v139)(v85, v88);
        *(swift_allocObject() + 16) = v150;
        sub_1000BC4D4(&qword_1016BE488, &qword_1013EE810);
        sub_1000041A4(&qword_1016BE490, &qword_1016BE420, &qword_1013EE7D0);
        sub_1000041A4(&qword_1016BE498, &qword_1016BE488, &qword_1013EE810);
        v89 = v140;
        v90 = v143;
        Publisher.catch<A>(_:)();

        (*v138)(v87, v90);
        sub_1000041A4(&qword_1016BE4A0, &qword_1016BE428, &qword_1013EE7D8);
        v91 = v141;
        v92 = Publisher.eraseToAnyPublisher()();
        (*v137)(v89, v91);
        v152 = v92;
        Publisher.eraseToAnyPublisher()();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v93 = *(v153 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v94 = v148;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v76 = v147 + 1;
        v75 = (v94 - 1);
      }

      while (v75);

      v95 = v153;
    }

    else
    {

      v95 = _swiftEmptyArrayStorage;
      v77 = v151;
    }

    v96 = v146;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_1000076D4(v97, qword_10177B780);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Will update all LOI backed safe locations.", v100, 2u);
    }

    v101 = dispatch_group_create();
    v153 = v95;
    sub_1000BC4D4(&qword_1016BE488, &qword_1013EE810);
    sub_1000BC4D4(&qword_1016BE4A8, &qword_1013EE818);
    sub_1000041A4(&qword_1016BE498, &qword_1016BE488, &qword_1013EE810);
    sub_1000041A4(&qword_1016BE4B0, &qword_1016BE4A8, &qword_1013EE818);
    v102 = v123;
    Publishers.MergeMany.init<A>(_:)();
    sub_1000041A4(&qword_1016BE4B8, &qword_1016BE3F0, &qword_1013EE7A0);
    v103 = v127;
    v104 = v125;
    Publisher.collect()();
    (*(v124 + 8))(v102, v104);
    v153 = v77[2];
    v105 = v153;
    static DispatchQoS.background.getter();
    static DispatchWorkItemFlags.barrier.getter();
    v106 = v101;
    v107 = v134;
    OS_dispatch_queue.SchedulerOptions.init(qos:flags:group:)();
    v108 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016BE4C0, &qword_1016BE3F8, &qword_1013EE7A8);
    sub_1004682F0();
    v109 = v128;
    v110 = v131;
    Publisher.subscribe<A>(on:options:)();
    sub_10000B3A8(v107, &unk_1016B0FE0, &unk_101391980);

    (*(v129 + 8))(v103, v110);
    sub_1000041A4(&qword_1016BE4C8, &qword_1016BE400, &qword_1013EE7B0);
    sub_100EC00E0();
    v111 = v135;
    v112 = v133;
    Publisher<>.setFailureType<A>(to:)();
    (*(v132 + 8))(v109, v112);
    *(swift_allocObject() + 16) = v96;
    sub_1000041A4(&qword_1016BE4D0, &qword_1016BE408, &qword_1013EE7B8);
    v113 = v119;
    v114 = v136;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v122 + 8))(v111, v113);
    sub_1000041A4(&qword_1016BE4D8, &qword_1016BE410, &qword_1013EE7C0);
    v115 = v121;
    v58 = Publisher.eraseToAnyPublisher()();

    (*(v120 + 8))(v114, v115);
    return v58;
  }

  sub_100EB60E0(v37);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_10000B3A8(v37, &unk_101696900, &unk_10138B1E0);
    goto LABEL_26;
  }

  v59 = v139;
  (*(v39 + 32))(v139, v37, v38);
  Date.timeIntervalSinceNow.getter();
  if (v60 >= 86400.0)
  {
    (*(v39 + 8))(v59, v38);
    goto LABEL_26;
  }

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_10177B780);
  v62 = v139;
  v63 = v38;
  (*(v39 + 16))(v43, v139, v38);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v148 = v66;
    v151 = swift_slowAlloc();
    v153 = v151;
    *v66 = 136315138;
    sub_100EC0098(&qword_1016969A0, &type metadata accessor for Date);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v63;
    v70 = v69;
    v71 = *(v39 + 8);
    v71(v43, v68);
    v72 = sub_1000136BC(v67, v70, &v153);
    v63 = v68;

    v73 = v148;
    *(v148 + 1) = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "Ignoring LOI update as last refresh date is too fresh lastUpdateDate: %s", v73, 0xCu);
    sub_100007BAC(v151);

    v62 = v139;
  }

  else
  {

    v71 = *(v39 + 8);
    v71(v43, v63);
  }

  v153 = 1;
  LOBYTE(v154) = 2;
  sub_1000BC4D4(&qword_1016BE438, &qword_1013EE7F0);
  sub_100EC00E0();
  v117 = v149;
  Fail.init(error:)();
  sub_1000041A4(&qword_1016BE448, &qword_1016BE430, &unk_1013EE7E0);
  v118 = v150;
  v58 = Publisher.eraseToAnyPublisher()();
  (*(v31 + 8))(v117, v118);
  v71(v62, v63);
  return v58;
}

uint64_t sub_100EB9A78()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  Date.init()();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return sub_100EC0168(v3);
}

uint64_t sub_100EB9B34@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v152 = a3;
  LODWORD(v154) = a2;
  v132 = sub_1000BC4D4(&qword_1016BE528, &qword_1013EE860);
  v131 = *(v132 - 8);
  v6 = *(v131 + 64);
  __chkstk_darwin(v132);
  v130 = &v129 - v7;
  v167 = sub_1000BC4D4(&qword_1016BE530, &qword_1013EE868);
  v135 = *(v167 - 8);
  v8 = *(v135 + 64);
  __chkstk_darwin(v167);
  v166 = &v129 - v9;
  v165 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v134 = *(v165 - 8);
  v10 = *(v134 + 64);
  __chkstk_darwin(v165);
  v164 = &v129 - v11;
  v12 = type metadata accessor for LocationOfInterestProvider.RemappingOperation();
  v133 = *(v12 - 8);
  v13 = *(v133 + 64);
  v14 = __chkstk_darwin(v12);
  v162 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v161 = &v129 - v17;
  v163 = v18;
  __chkstk_darwin(v16);
  v169 = &v129 - v19;
  v142 = sub_1000BC4D4(&qword_1016BE538, &qword_1013EE870);
  v139 = *(v142 - 8);
  v20 = *(v139 + 64);
  __chkstk_darwin(v142);
  v136 = &v129 - v21;
  v22 = sub_1000BC4D4(&qword_1016BE540, &qword_1013EE878);
  v140 = *(v22 - 1);
  v23 = *(v140 + 64);
  __chkstk_darwin(v22);
  v137 = &v129 - v24;
  v25 = sub_1000BC4D4(&qword_1016BE548, &qword_1013EE880);
  v141 = *(v25 - 8);
  v26 = *(v141 + 64);
  __chkstk_darwin(v25);
  v138 = &v129 - v27;
  v168 = type metadata accessor for SafeLocation();
  v172 = *(v168 - 8);
  v28 = *(v172 + 64);
  v29 = __chkstk_darwin(v168);
  v173 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v155 = &v129 - v32;
  v33 = __chkstk_darwin(v31);
  v158 = &v129 - v34;
  v160 = v35;
  __chkstk_darwin(v33);
  v156 = (&v129 - v36);
  v37 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v171 = &v129 - v39;
  v149 = type metadata accessor for DirectorySequence();
  v148 = *(v149 - 8);
  v40 = *(v148 + 64);
  __chkstk_darwin(v149);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v48 = (&v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46);
  v153 = &v129 - v49;
  v146 = *a1;
  if (qword_101694B70 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v50 = type metadata accessor for Logger();
    v150 = sub_1000076D4(v50, qword_10177B780);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v170 = v12;
    v145 = a4;
    v144 = v25;
    v143 = v22;
    v147 = v48;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v175 = v55;
      *v54 = 136315138;
      LOBYTE(v174) = v154;
      v56 = String.init<A>(describing:)();
      v58 = sub_1000136BC(v56, v57, &v175);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Updating smart safe locations of type: %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    v159 = *(v152 + 64);
    v59 = *(v159 + 168);
    if (qword_101694F88 != -1)
    {
      swift_once();
    }

    v60 = sub_1000076D4(v43, qword_10177C268);
    (*(v44 + 16))(v153, v60, v43);
    v174 = _swiftEmptyArrayStorage;
    v175 = _swiftEmptyArrayStorage;
    v61 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v62 = v171;
    DirectorySequence.next()();
    v63 = v62;
    v151 = v44;
    v157 = *(v44 + 48);
    v64 = v157(v62, 1, v43);
    v44 = v147;
    if (v64 != 1)
    {
      v65 = *(v151 + 32);
      v66 = (v151 + 8);
      do
      {
        v65(v44, v63, v43);
        v67 = objc_autoreleasePoolPush();
        sub_1006005CC(v44, v59, &v175, &v174);
        objc_autoreleasePoolPop(v67);
        (*v66)(v44, v43);
        DirectorySequence.next()();
        v63 = v171;
      }

      while (v157(v171, 1, v43) != 1);
    }

    (*(v148 + 8))(v42, v149);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v68 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_10138BBE0;
    a4 = v175;
    v70 = v175[2];
    *(v69 + 56) = &type metadata for Int;
    *(v69 + 64) = &protocol witness table for Int;
    *(v69 + 32) = v70;
    sub_100EC0098(&qword_1016B14E0, &type metadata accessor for URL);

    v71 = v153;
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    *(v69 + 96) = &type metadata for String;
    *(v69 + 104) = sub_100008C00();
    *(v69 + 72) = v72;
    *(v69 + 80) = v74;
    os_log(_:dso:log:_:_:)();

    (*(v151 + 8))(v71, v43);

    v75 = a4[2];
    v22 = _swiftEmptyArrayStorage;
    if (!v75)
    {
      break;
    }

    v25 = 0;
    v48 = _swiftEmptyArrayStorage;
    v76 = v154;
    v12 = v156;
    while (v25 < a4[2])
    {
      v44 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v42 = *(v172 + 72);
      sub_100EC03A4(a4 + v44 + v42 * v25, v12, type metadata accessor for SafeLocation);
      v77 = *(v12 + *(v168 + 24));
      if (v77 == v76 || v77 == 1)
      {
        sub_100EBFFE0(v12, v158, type metadata accessor for SafeLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v175 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112483C(0, v48[2] + 1, 1);
          v76 = v154;
          v48 = v175;
        }

        v81 = v48[2];
        v80 = v48[3];
        v43 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          sub_10112483C(v80 > 1, v81 + 1, 1);
          v76 = v154;
          v48 = v175;
        }

        v48[2] = v43;
        sub_100EBFFE0(v158, v48 + v44 + v81 * v42, type metadata accessor for SafeLocation);
        v12 = v156;
      }

      else
      {
        sub_100EC040C(v12, type metadata accessor for SafeLocation);
      }

      if (v75 == ++v25)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_24:

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v175 = v85;
    *v84 = 136315138;
    v86 = Array.description.getter();
    v88 = sub_1000136BC(v86, v87, &v175);

    *(v84 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "Existing safe locations: %s", v84, 0xCu);
    sub_100007BAC(v85);
  }

  v89 = v169;
  v90 = sub_100EBC3B8(v154, v48, v146);

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  v154 = v90;

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v175 = v94;
    *v93 = 136315138;
    v95 = Array.description.getter();
    v97 = sub_1000136BC(v95, v96, &v175);

    *(v93 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v91, v92, "Received mapping response: %s", v93, 0xCu);
    sub_100007BAC(v94);
  }

  v98 = *(v154 + 16);
  if (v98)
  {
    v175 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v99 = *(v133 + 80);
    v100 = v154 + ((v99 + 32) & ~v99);
    v168 = v134 + 8;
    v101 = *(v133 + 72);
    v171 = v99;
    v157 = ((v99 + 16) & ~v99);
    v158 = v101;
    v156 = (v135 + 8);
    v102 = v155;
    do
    {
      sub_100EC03A4(v100, v89, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      v115 = v161;
      sub_100EC03A4(v89, v161, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100EBFFE0(v115, v102, type metadata accessor for SafeLocation);
      sub_100EC03A4(v102, v173, type metadata accessor for SafeLocation);
      v117 = (*(v172 + 80) + 24) & ~*(v172 + 80);
      if (EnumCaseMultiPayload)
      {
        v118 = swift_allocObject();
        *(v118 + 16) = v159;
        sub_100EBFFE0(v173, v118 + v117, type metadata accessor for SafeLocation);
      }

      else
      {
        v103 = v117 + v160;
        v104 = swift_allocObject();
        *(v104 + 16) = v159;
        sub_100EBFFE0(v173, v104 + v117, type metadata accessor for SafeLocation);
        *(v104 + v103) = 1;
        v102 = v155;
      }

      sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
      sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850);
      v105 = v164;
      Deferred.init(createPublisher:)();
      sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98);
      v106 = v165;
      v107 = Publisher.eraseToAnyPublisher()();
      (*v168)(v105, v106);
      sub_100EC040C(v102, type metadata accessor for SafeLocation);
      v174 = v107;
      v108 = v162;
      sub_100EC03A4(v89, v162, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      v109 = v157;
      v110 = swift_allocObject();
      sub_100EBFFE0(v108, v109 + v110, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
      sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0);
      v111 = v166;
      Publisher.map<A>(_:)();

      sub_1000041A4(&qword_1016BE550, &qword_1016BE530, &qword_1013EE868);
      v112 = v167;
      Publisher.eraseToAnyPublisher()();

      v113 = v111;
      v89 = v169;
      (*v156)(v113, v112);
      sub_100EC040C(v89, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v114 = v175[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v100 += v158;
      --v98;
    }

    while (v98);

    sub_1000BC4D4(&qword_1016BE558, &qword_1013EE888);
    sub_1000BC4D4(&qword_1016BE560, &qword_1013EE890);
    sub_1000041A4(&qword_1016BE568, &qword_1016BE558, &qword_1013EE888);
    sub_1000041A4(&qword_1016BE570, &qword_1016BE560, &qword_1013EE890);
    v119 = v136;
    Publishers.MergeMany.init<A>(_:)();
    sub_1000041A4(&qword_1016BE578, &qword_1016BE538, &qword_1013EE870);
    v120 = v137;
    v121 = v142;
    Publisher.compactMap<A>(_:)();
    (*(v139 + 8))(v119, v121);
    sub_1000041A4(&qword_1016BE580, &qword_1016BE540, &qword_1013EE878);
    v122 = v138;
    v123 = v143;
    Publisher.collect()();
    (*(v140 + 8))(v120, v123);
    sub_1000041A4(&qword_1016BE588, &qword_1016BE548, &qword_1013EE880);
    v124 = v144;
    v125 = Publisher.eraseToAnyPublisher()();
    result = (*(v141 + 8))(v122, v124);
  }

  else
  {

    v175 = _swiftEmptyArrayStorage;
    sub_1000BC4D4(&qword_1016BE590, &qword_1013EE898);
    v127 = v130;
    Just.init(_:)();
    sub_1000041A4(&qword_1016BE598, &qword_1016BE528, &qword_1013EE860);
    v128 = v132;
    v125 = Publisher.eraseToAnyPublisher()();
    result = (*(v131 + 8))(v127, v128);
  }

  *v145 = v125;
  return result;
}

uint64_t sub_100EBB25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016BE5A0, &qword_1013EE8A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000D2A70(a1, &v11 - v6, &qword_1016BE5A0, &qword_1013EE8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000B3A8(v7, &qword_1016BE5A0, &qword_1013EE8A0);
    v8 = 1;
  }

  else
  {
    sub_100EBFFE0(v7, a2, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
    v8 = 0;
  }

  v9 = type metadata accessor for LocationOfInterestProvider.RemappingOperation();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_100EBB39C@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v68 = a4;
  v6 = sub_1000BC4D4(&qword_1016BE4E0, &qword_1013EE820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v55 - v9;
  v11 = sub_1000BC4D4(&qword_1016BE4F8, &unk_1013EE830);
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v14 = v55 - v13;
  v15 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  __chkstk_darwin(v15);
  v58 = v55 - v17;
  v18 = sub_1000BC4D4(&qword_1016BE500, &qword_1013EE840);
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = *(v63 + 64);
  __chkstk_darwin(v18);
  v61 = v55 - v20;
  v21 = sub_1000BC4D4(&qword_1016BE508, &qword_1013EE848);
  v65 = *(v21 - 8);
  v66 = v21;
  v22 = *(v65 + 64);
  __chkstk_darwin(v21);
  v62 = v55 - v23;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v67 = a2;

  if ((sub_100EBBC78(v30) & 1) != 0 && a2 == 2)
  {
    v31 = *(v56 + 64);
    v32 = sub_1009EC650();
    v33 = v32[2];
    if (v33)
    {
      v56 = v31;
      v57 = v29;
      v73 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v33, 0);
      v34 = v73;
      v55[1] = v32;
      v35 = (v32 + 4);
      do
      {
        sub_10001F280(v35, v69);
        v37 = v71;
        v36 = v72;
        sub_1000035D0(v69, v71);
        (*(*(*(v36 + 8) + 8) + 32))(v37);
        sub_100007BAC(v69);
        v73 = v34;
        v39 = v34[2];
        v38 = v34[3];
        if (v39 >= v38 >> 1)
        {
          sub_101123D4C(v38 > 1, v39 + 1, 1);
          v34 = v73;
        }

        v34[2] = v39 + 1;
        (*(v25 + 32))(v34 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v39, v28, v24);
        v35 += 40;
        --v33;
      }

      while (v33);

      v31 = v56;
      v29 = v57;
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177B780);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "New Safe Location triggered auto-enrollment.", v45, 2u);
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v31;
    *(v46 + 24) = v34;

    sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
    sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850);
    v47 = v58;
    Deferred.init(createPublisher:)();
    sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98);
    v48 = v60;
    v49 = Publisher.eraseToAnyPublisher()();
    (*(v59 + 8))(v47, v48);
    v69[0] = v49;
    v50 = swift_allocObject();
    *(v50 + 16) = v67;
    *(v50 + 24) = v29;
    *(v50 + 32) = 0;

    sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
    sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0);
    v51 = v61;
    Publisher.map<A>(_:)();

    sub_1000041A4(&qword_1016BE518, &qword_1016BE500, &qword_1013EE840);
    sub_100EC00E0();
    v52 = v62;
    v53 = v64;
    Publisher.mapError<A>(_:)();
    (*(v63 + 8))(v51, v53);
    sub_1000041A4(&qword_1016BE520, &qword_1016BE508, &qword_1013EE848);
    v54 = v66;
    v40 = Publisher.eraseToAnyPublisher()();

    result = (*(v65 + 8))(v52, v54);
  }

  else
  {
    v69[0] = v67;
    v69[1] = v29;
    v70 = 0;

    Just.init(_:)();
    sub_100EC00E0();
    Just.setFailureType<A>(to:)();
    (*(v7 + 8))(v10, v6);
    sub_1000041A4(&qword_1016BE510, &qword_1016BE4F8, &unk_1013EE830);
    v40 = Publisher.eraseToAnyPublisher()();

    result = (*(v57 + 8))(v14, v11);
  }

  *v68 = v40;
  return result;
}

uint64_t sub_100EBBC78(uint64_t a1)
{
  v2 = type metadata accessor for LocationOfInterestProvider.RemappingOperation();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_100EC03A4(v11, v9, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_100EBFFE0(v9, v6, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100EC040C(v6, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      }

      else
      {
        v13 = v6[*(sub_1000BC4D4(&qword_1016BE3E8, &unk_1013EE790) + 48)];
        sub_100EC040C(v6, type metadata accessor for SafeLocation);
        if ((v13 & 1) == 0)
        {
          return 1;
        }
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

id sub_100EBBE30@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = 1;
  return v2;
}

uint64_t sub_100EBBE44@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v5 = sub_1000BC4D4(&qword_1016BE4E0, &qword_1013EE820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = sub_1000BC4D4(&qword_1016BE4E8, &qword_1013EE828);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v19[1] = a2;
  v19[2] = v15;
  v20 = v16 | 0x40;
  sub_100EC0310(v15, v16);
  Just.init(_:)();
  Just.setFailureType<A>(to:)();
  (*(v6 + 8))(v9, v5);
  sub_1000041A4(&qword_1016BE4F0, &qword_1016BE4E8, &qword_1013EE828);
  v17 = Publisher.eraseToAnyPublisher()();
  result = (*(v11 + 8))(v14, v10);
  *v19[0] = v17;
  return result;
}

uint64_t sub_100EBC3B8(int a1, uint64_t a2, uint64_t a3)
{
  v314 = a1;
  v5 = sub_1000BC4D4(&qword_1016BE3D0, &qword_1013EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v323 = &v312 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v316 = &v312 - v9;
  v327 = type metadata accessor for LocationOfInterestProvider.RemappingOperation();
  v317 = *(v327 - 8);
  v10 = *(v317 + 64);
  v11 = __chkstk_darwin(v327);
  v312 = &v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v313 = &v312 - v13;
  v345 = sub_1000BC4D4(&qword_1016BE3D8, &qword_1013EE778);
  v14 = *(*(v345 - 8) + 64);
  v15 = __chkstk_darwin(v345);
  v344 = (&v312 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v343 = &v312 - v18;
  v19 = __chkstk_darwin(v17);
  v342 = (&v312 - v20);
  __chkstk_darwin(v19);
  v341 = &v312 - v21;
  v358 = type metadata accessor for UUID();
  v357 = *(v358 - 8);
  v22 = *(v357 + 64);
  v23 = __chkstk_darwin(v358);
  v328 = &v312 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v353 = (&v312 - v26);
  v27 = __chkstk_darwin(v25);
  v29 = &v312 - v28;
  v30 = __chkstk_darwin(v27);
  v332 = &v312 - v31;
  __chkstk_darwin(v30);
  v333 = &v312 - v32;
  v337 = sub_1000BC4D4(&qword_1016BE3E0, &unk_1013EE780);
  v33 = *(*(v337 - 8) + 64);
  __chkstk_darwin(v337);
  v340 = &v312 - v34;
  v35 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v322 = &v312 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v352 = (&v312 - v40);
  __chkstk_darwin(v39);
  v356 = (&v312 - v41);
  v42 = type metadata accessor for SafeLocation();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v320 = &v312 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v321 = &v312 - v48;
  v49 = __chkstk_darwin(v47);
  v319 = &v312 - v50;
  v51 = __chkstk_darwin(v49);
  v318 = &v312 - v52;
  v53 = __chkstk_darwin(v51);
  v331 = &v312 - v54;
  v55 = __chkstk_darwin(v53);
  v347 = &v312 - v56;
  v57 = __chkstk_darwin(v55);
  v330 = &v312 - v58;
  v59 = __chkstk_darwin(v57);
  v329 = &v312 - v60;
  v61 = __chkstk_darwin(v59);
  v359 = &v312 - v62;
  v63 = __chkstk_darwin(v61);
  v65 = &v312 - v64;
  v66 = __chkstk_darwin(v63);
  v338 = (&v312 - v67);
  __chkstk_darwin(v66);
  v69 = &v312 - v68;
  v355 = sub_10090BC7C(_swiftEmptyArrayStorage);
  v70 = sub_10090BC7C(_swiftEmptyArrayStorage);
  v364 = v70;
  v325 = sub_10090BC7C(_swiftEmptyArrayStorage);
  v363 = v325;
  v72 = *(a3 + 16);
  v326 = a2;
  v360 = v42;
  v351 = v43;
  v346 = v29;
  v336 = v72;
  if (v72)
  {
    v73 = 0;
    v74 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v335 = a3 + v74;
    v350 = *(a2 + 16);
    v339 = a2 + v74;
    v349 = v43 + 56;
    v75 = v43;
    v76 = *(v43 + 72);
    v334 = (v75 + 48);
    *&v71 = 136315138;
    v324 = v71;
    v77 = v338;
    while (1)
    {
      sub_100EC03A4(v335 + v76 * v73, v69, type metadata accessor for SafeLocation);
      swift_beginAccess();
      v83 = v350;
      v348 = v73;
      if (v350)
      {
        v84 = v339;
        while (1)
        {
          sub_100EC03A4(v84, v77, type metadata accessor for SafeLocation);
          v85 = *(v42 + 20);
          if (static UUID.== infix(_:_:)())
          {
            break;
          }

          sub_100EC040C(v77, type metadata accessor for SafeLocation);
          v84 += v76;
          v83 = (v83 - 1);
          if (!v83)
          {
            goto LABEL_10;
          }
        }

        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v87 = type metadata accessor for Logger();
        sub_1000076D4(v87, qword_10177B780);
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v361 = v91;
          *v90 = v324;
          v92 = *(v42 + 20);
          sub_100EC0098(&qword_101696930, &type metadata accessor for UUID);
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = sub_1000136BC(v93, v94, &v361);

          *(v90 + 4) = v95;
          v42 = v360;
          _os_log_impl(&_mh_execute_header, v88, v89, "Inferred safe location identifier %s matches existing safe location.", v90, 0xCu);
          sub_100007BAC(v91);
        }

        sub_100EBFFE0(v338, v356, type metadata accessor for SafeLocation);
        v86 = 0;
      }

      else
      {
LABEL_10:
        v86 = 1;
      }

      v96 = 1;
      v354 = *v349;
      (v354)(v356, v86, 1, v42);
      v97 = v339;
      v98 = v350;
      if (v350)
      {
        while (1)
        {
          sub_100EC03A4(v97, v65, type metadata accessor for SafeLocation);
          v99 = *(v42 + 20);
          if ((static UUID.== infix(_:_:)() & 1) == 0)
          {
            v100 = v76;
            v101 = v359;
            sub_100EC03A4(v69, v359, type metadata accessor for SafeLocation);
            v102 = sub_100EB5EE0();
            v103 = sub_100EB5EE0();
            v104 = sub_100EE8968(v103);
            [v102 radius];
            v106 = v105;
            [v102 radius];
            v108 = v106 * v107 * 3.14159265;
            [v103 radius];
            v110 = v109;
            [v103 radius];
            v112 = v111;

            v42 = v360;
            v113 = v110 * v112 * 3.14159265 >= v108 ? v108 : v110 * v112 * 3.14159265;
            v114 = v101;
            v76 = v100;
            sub_100EC040C(v114, type metadata accessor for SafeLocation);
            if (v113 > 0.0 && v104 / v113 > 0.5)
            {
              break;
            }
          }

          sub_100EC040C(v65, type metadata accessor for SafeLocation);
          v97 += v76;
          v98 = (v98 - 1);
          if (!v98)
          {
            v96 = 1;
            goto LABEL_31;
          }
        }

        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Logger();
        sub_1000076D4(v115, qword_10177B780);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v361 = v119;
          *v118 = v324;
          v120 = *(v42 + 20);
          sub_100EC0098(&qword_101696930, &type metadata accessor for UUID);
          v121 = dispatch thunk of CustomStringConvertible.description.getter();
          v123 = sub_1000136BC(v121, v122, &v361);

          *(v118 + 4) = v123;
          v42 = v360;
          _os_log_impl(&_mh_execute_header, v116, v117, "Inferred safe location identifier %s is within the region of existing safe location.", v118, 0xCu);
          sub_100007BAC(v119);
        }

        sub_100EBFFE0(v65, v352, type metadata accessor for SafeLocation);
        v96 = 0;
      }

LABEL_31:
      v124 = v352;
      (v354)(v352, v96, 1, v42);
      v125 = *(v337 + 48);
      v126 = v340;
      sub_1000D2A70(v356, v340, &unk_1016AFA10, &qword_1013CB000);
      sub_1000D2A70(v124, v126 + v125, &unk_1016AFA10, &qword_1013CB000);
      v127 = *v334;
      v128 = (*v334)(v126, 1, v42);
      v129 = v127(v126 + v125, 1, v42);
      if (v128 == 1)
      {
        if (v129 != 1)
        {
          v130 = v347;
          sub_100EBFFE0(v340 + v125, v347, type metadata accessor for SafeLocation);
          v131 = *(v130 + *(v42 + 52));
          swift_beginAccess();
          v132 = *(v42 + 52);
          v133 = *&v69[v132];
          *&v69[v132] = v131;

          v134 = *(v42 + 20);
          v135 = v331;
          sub_100EC03A4(v130, v331, type metadata accessor for SafeLocation);
          v136 = v355;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v361 = v136;
          sub_101001A58(v135, v130 + v134, isUniquelyReferenced_nonNull_native);
          v355 = v361;
          v138 = *(v42 + 20);
          sub_100EC03A4(v69, v135, type metadata accessor for SafeLocation);
          v139 = v364;
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v139;
          sub_101001A58(v135, &v69[v138], v140);
          v354 = v361;
          v364 = v361;
          v141 = *(v42 + 20);
          sub_100EC03A4(v130, v135, type metadata accessor for SafeLocation);
          v142 = v363;
          v143 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v142;
          sub_101001A58(v135, &v69[v141], v143);
          sub_100EC040C(v130, type metadata accessor for SafeLocation);
          sub_10000B3A8(v352, &unk_1016AFA10, &qword_1013CB000);
          sub_10000B3A8(v356, &unk_1016AFA10, &qword_1013CB000);
          sub_100EC040C(v69, type metadata accessor for SafeLocation);
          v325 = v361;
          v363 = v361;
          goto LABEL_5;
        }

        v78 = *(v42 + 20);
        v79 = v347;
        sub_100EC03A4(v69, v347, type metadata accessor for SafeLocation);
        v80 = v364;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v361 = v80;
        sub_101001A58(v79, &v69[v78], v81);
        sub_10000B3A8(v352, &unk_1016AFA10, &qword_1013CB000);
        sub_10000B3A8(v356, &unk_1016AFA10, &qword_1013CB000);
        v82 = v69;
      }

      else
      {
        if (v129 == 1)
        {
          v144 = v347;
          sub_100EBFFE0(v340, v347, type metadata accessor for SafeLocation);
          v145 = *(v144 + *(v42 + 52));
          swift_beginAccess();
          v146 = *(v42 + 52);
          v147 = *&v69[v146];
          *&v69[v146] = v145;

          v148 = *(v42 + 20);
          v149 = v331;
          sub_100EC03A4(v144, v331, type metadata accessor for SafeLocation);
          v150 = v355;
          v151 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v150;
          sub_101001A58(v149, v144 + v148, v151);
          v355 = v361;
          v152 = *(v42 + 20);
          sub_100EC03A4(v69, v149, type metadata accessor for SafeLocation);
          v153 = v364;
          v154 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v153;
          sub_101001A58(v149, &v69[v152], v154);
          v155 = v144;
        }

        else
        {
          v156 = v340;
          v157 = v329;
          sub_100EBFFE0(v340, v329, type metadata accessor for SafeLocation);
          v158 = v156 + v125;
          v159 = v330;
          sub_100EBFFE0(v158, v330, type metadata accessor for SafeLocation);
          v160 = *(v42 + 52);
          v161 = *(v159 + v160);
          v361 = *(v157 + v160);

          sub_100398278(v162);
          v163 = sub_10000954C(v361);

          v164 = *(v163 + 16);
          if (v164)
          {
            v165 = sub_1003A85FC(*(v163 + 16), 0);
            v166 = sub_1003A9D58(&v361, &v165[(*(v357 + 80) + 32) & ~*(v357 + 80)], v164, v163);
            result = sub_1000128F8();
            if (v166 != v164)
            {
              goto LABEL_162;
            }
          }

          else
          {

            v165 = _swiftEmptyArrayStorage;
          }

          swift_beginAccess();
          v168 = *(v42 + 52);
          v169 = *&v69[v168];
          *&v69[v168] = v165;

          v170 = *(v42 + 20);
          v171 = v329;
          v172 = v347;
          sub_100EC03A4(v329, v347, type metadata accessor for SafeLocation);
          v173 = v355;
          v174 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v173;
          sub_101001A58(v172, v171 + v170, v174);
          v175 = v361;
          v176 = *(v42 + 20);
          v177 = v330;
          sub_100EC03A4(v330, v172, type metadata accessor for SafeLocation);
          v178 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v175;
          sub_101001A58(v172, v177 + v176, v178);
          v355 = v361;
          v179 = *(v42 + 20);
          sub_100EC03A4(v69, v172, type metadata accessor for SafeLocation);
          v180 = v364;
          v181 = swift_isUniquelyReferenced_nonNull_native();
          v361 = v180;
          sub_101001A58(v172, &v69[v179], v181);
          sub_100EC040C(v177, type metadata accessor for SafeLocation);
          v155 = v171;
        }

        sub_100EC040C(v155, type metadata accessor for SafeLocation);
        sub_10000B3A8(v352, &unk_1016AFA10, &qword_1013CB000);
        sub_10000B3A8(v356, &unk_1016AFA10, &qword_1013CB000);
        v82 = v69;
      }

      sub_100EC040C(v82, type metadata accessor for SafeLocation);
      v354 = v361;
      v364 = v361;
LABEL_5:
      v73 = v348 + 1;
      v77 = v338;
      if (v348 + 1 == v336)
      {
        goto LABEL_43;
      }
    }
  }

  v354 = v70;
LABEL_43:
  v182 = v354;
  v183 = v354[2];
  v184 = _swiftEmptyArrayStorage;
  if (v183)
  {
    v361 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v183, 0);
    v184 = v361;
    v185 = (v182 + 8);
    v186 = -1 << *(v182 + 32);
    result = _HashTable.startBucket.getter();
    v187 = result;
    v188 = 0;
    v189 = *(v182 + 9);
    v359 = v357 + 16;
    v335 = (v182 + 9);
    v336 = v183;
    v338 = v182 + 8;
    v337 = v189;
    v339 = v357 + 32;
    v354 = v182;
    while (1)
    {
      if (v187 < 0 || v187 >= 1 << *(v182 + 32))
      {
        goto LABEL_150;
      }

      if ((*(v185 + 8 * (v187 >> 6)) & (1 << v187)) == 0)
      {
        break;
      }

      if (v189 != *(v182 + 9))
      {
        goto LABEL_152;
      }

      v348 = 1 << v187;
      v349 = v187 >> 6;
      v340 = v188;
      v356 = v184;
      v192 = v345;
      v193 = *(v345 + 48);
      v194 = v182[6];
      v195 = v357;
      v352 = *(v357 + 72);
      v350 = *(v357 + 16);
      v196 = v341;
      (v350)(v341, v194 + v352 * v187, v358);
      sub_100EC03A4(v182[7] + v351[9] * v187, &v196[v193], type metadata accessor for SafeLocation);
      v197 = *(v195 + 32);
      v198 = v342;
      v197(v342, v196, v358);
      sub_100EBFFE0(&v196[v193], v198 + *(v192 + 48), type metadata accessor for SafeLocation);
      v199 = v343;
      sub_1000D2A70(v198, v343, &qword_1016BE3D8, &qword_1013EE778);
      v200 = *(v192 + 48);
      v201 = v344;
      v197(v344, v199, v358);
      v202 = &v199[v200];
      v203 = v333;
      v204 = v201 + v200;
      v205 = v358;
      sub_100EBFFE0(v202, v204, type metadata accessor for SafeLocation);
      (v350)(v203, v201, v205);
      v206 = v201;
      v184 = v356;
      sub_10000B3A8(v206, &qword_1016BE3D8, &qword_1013EE778);
      sub_10000B3A8(v198, &qword_1016BE3D8, &qword_1013EE778);
      v361 = v184;
      v208 = v184[2];
      v207 = v184[3];
      if (v208 >= v207 >> 1)
      {
        sub_101123D4C(v207 > 1, v208 + 1, 1);
        v184 = v361;
      }

      v184[2] = v208 + 1;
      result = (v197)(v184 + ((*(v357 + 80) + 32) & ~*(v357 + 80)) + v208 * v352, v203, v205);
      v182 = v354;
      v190 = 1 << *(v354 + 32);
      if (v187 >= v190)
      {
        goto LABEL_153;
      }

      v185 = v338;
      v209 = v338[v349];
      if ((v209 & v348) == 0)
      {
        goto LABEL_154;
      }

      LODWORD(v189) = v337;
      if (v337 != *(v354 + 9))
      {
        goto LABEL_155;
      }

      v210 = v209 & (-2 << (v187 & 0x3F));
      if (v210)
      {
        v190 = __clz(__rbit64(v210)) | v187 & 0x7FFFFFFFFFFFFFC0;
        v191 = v346;
      }

      else
      {
        v211 = v349 << 6;
        v212 = v349 + 1;
        v213 = (v335 + 8 * v349);
        v191 = v346;
        while (v212 < (v190 + 63) >> 6)
        {
          v215 = *v213++;
          v214 = v215;
          v211 += 64;
          ++v212;
          if (v215)
          {
            result = sub_1000BB408(v187, v337, 0);
            v190 = __clz(__rbit64(v214)) + v211;
            goto LABEL_62;
          }
        }

        result = sub_1000BB408(v187, v337, 0);
LABEL_62:
        v182 = v354;
      }

      v188 = v340 + 1;
      v187 = v190;
      if (v340 + 1 == v336)
      {
        goto LABEL_64;
      }
    }

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
    goto LABEL_156;
  }

  v205 = v358;
  v191 = v346;
LABEL_64:
  v333 = sub_10000954C(v184);

  v216 = v355;
  v217 = v355[2];
  v218 = _swiftEmptyArrayStorage;
  if (!v217)
  {
LABEL_83:
    v246 = sub_10000954C(v218);

    v247 = v326;
    v248 = *(v326 + 16);
    v249 = _swiftEmptyArrayStorage;
    v250 = v351;
    v349 = v248;
    if (v248)
    {
      v356 = v246;
      v361 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v248, 0);
      v249 = v361;
      v251 = v247 + ((*(v250 + 80) + 32) & ~*(v250 + 80));
      v359 = v250[9];
      v252 = (v357 + 16);
      do
      {
        v253 = v347;
        sub_100EC03A4(v251, v347, type metadata accessor for SafeLocation);
        (*v252)(v191, v253 + v360[5], v205);
        sub_100EC040C(v253, type metadata accessor for SafeLocation);
        v361 = v249;
        v254 = v191;
        v256 = v249[2];
        v255 = v249[3];
        if (v256 >= v255 >> 1)
        {
          sub_101123D4C(v255 > 1, v256 + 1, 1);
          v249 = v361;
        }

        v249[2] = v256 + 1;
        (*(v357 + 32))(v249 + ((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v256, v254, v205);
        v251 += v359;
        --v248;
        v191 = v254;
      }

      while (v248);
      v248 = v349;
      v246 = v356;
    }

    v257 = sub_10000954C(v249);

    v258 = v333;
    if (v257[2] <= *(v333 + 2) >> 3)
    {
      v361 = v333;

      sub_10087D5B4(v257);
      v259 = v361;
    }

    else
    {

      v259 = sub_100610BC8(v257, v258);
    }

    if (v259[2] <= v258[2] >> 3)
    {
      v361 = v258;
      sub_10087D5B4(v259);
      v260 = v361;
    }

    else
    {
      v260 = sub_100610BC8(v259, v258);
    }

    if (v246[2] <= v257[2] >> 3)
    {
      v361 = v257;

      sub_10087D5B4(v246);

      v348 = v361;
    }

    else
    {

      v348 = sub_100610BC8(v246, v257);
    }

    if (v260[2] <= v257[2] >> 3)
    {
      v361 = v257;
      sub_10087D5B4(v260);
      v261 = v361;
    }

    else
    {
      v261 = sub_100610BC8(v260, v257);
    }

    v262 = v358;
    if (*(v348 + 16) > v261[2] >> 3)
    {
      v263 = sub_100610BC8(v348, v261);
    }

    else
    {
      v361 = v261;
      sub_10087D5B4(v348);
      v263 = v361;
    }

    v264 = v327;
    LODWORD(v345) = v314;
    v265 = v315;

    v343 = sub_100EBF6A8(v259, &v364, &v363, v265);

    v342 = sub_100EB5980(v260, &v364);

    v266 = v263 + 7;
    v267 = 1 << *(v263 + 32);
    v268 = -1;
    if (v267 < 64)
    {
      v268 = ~(-1 << v267);
    }

    v269 = v268 & v263[7];
    v270 = (v267 + 63) >> 6;
    v271 = v357 + 16;
    v359 = v317 + 56;
    v356 = (v357 + 8);
    v352 = (v317 + 48);
    v350 = v263;

    v272 = 0;
    v344 = _swiftEmptyArrayStorage;
    v273 = v316;
    v346 = 0;
    while (1)
    {
      v274 = v272;
      if (!v269)
      {
        break;
      }

LABEL_111:
      (*(v357 + 16))(v353, v350[6] + *(v357 + 72) * (__clz(__rbit64(v269)) | (v272 << 6)), v262);
      if (v248)
      {
        v275 = v271;
        v276 = v326 + ((*(v351 + 80) + 32) & ~*(v351 + 80));
        v277 = v351[9];
        v278 = v321;
        while (1)
        {
          sub_100EC03A4(v276, v278, type metadata accessor for SafeLocation);
          v279 = v278 + v360[5];
          if (static UUID.== infix(_:_:)())
          {
            break;
          }

          sub_100EC040C(v278, type metadata accessor for SafeLocation);
          v276 += v277;
          if (!--v248)
          {
            v280 = 1;
            v264 = v327;
            goto LABEL_118;
          }
        }

        v281 = v319;
        sub_100EBFFE0(v278, v319, type metadata accessor for SafeLocation);
        v282 = v281;
        v283 = v318;
        sub_100EBFFE0(v282, v318, type metadata accessor for SafeLocation);
        sub_100EBFFE0(v283, v273, type metadata accessor for SafeLocation);
        v264 = v327;
        swift_storeEnumTagMultiPayload();
        v280 = 0;
LABEL_118:
        v262 = v358;
        v248 = v349;
        v271 = v275;
      }

      else
      {
        v280 = 1;
      }

      v269 &= v269 - 1;
      (*v359)(v273, v280, 1, v264);
      (*v356)(v353, v262);
      if ((*v352)(v273, 1, v264) == 1)
      {
        result = sub_10000B3A8(v273, &qword_1016BE3D0, &qword_1013EE770);
      }

      else
      {
        sub_100EBFFE0(v273, v313, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v344 = sub_100A5ED40(0, v344[2] + 1, 1, v344);
        }

        v285 = v344[2];
        v284 = v344[3];
        if (v285 >= v284 >> 1)
        {
          v344 = sub_100A5ED40(v284 > 1, v285 + 1, 1, v344);
        }

        v286 = v344;
        v344[2] = v285 + 1;
        result = sub_100EBFFE0(v313, v286 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v285, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        v264 = v327;
        v262 = v358;
      }
    }

    while (1)
    {
      v272 = v274 + 1;
      if (__OFADD__(v274, 1))
      {
        __break(1u);
        goto LABEL_149;
      }

      if (v272 >= v270)
      {
        break;
      }

      v269 = v266[v272];
      ++v274;
      if (v269)
      {
        goto LABEL_111;
      }
    }

    v287 = v348;
    v288 = v348 + 56;
    v289 = 1 << *(v348 + 32);
    v290 = -1;
    if (v289 < 64)
    {
      v290 = ~(-1 << v289);
    }

    v291 = v290 & *(v348 + 56);
    v292 = (v289 + 63) >> 6;
    v353 = (v351 + 6);

    v293 = 0;
    v351 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (!v291)
      {
        while (1)
        {
          v294 = v293 + 1;
          if (__OFADD__(v293, 1))
          {
            break;
          }

          if (v294 >= v292)
          {

            v362 = v343;
            sub_10039B5A4(v342);
            sub_10039B5A4(v344);
            sub_10039B5A4(v351);

            return v362;
          }

          v291 = *(v288 + 8 * v294);
          ++v293;
          if (v291)
          {
            goto LABEL_134;
          }
        }

LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v294 = v293;
LABEL_134:
      v295 = v328;
      v296 = (*(v357 + 16))(v328, *(v287 + 48) + *(v357 + 72) * (__clz(__rbit64(v291)) | (v294 << 6)), v358);
      __chkstk_darwin(v296);
      *(&v312 - 2) = v295;
      v297 = v322;
      sub_1012BC8D8(sub_100EC0048, v326, v322);
      v298 = v297;
      v299 = v297;
      v300 = v360;
      if ((*v353)(v299, 1, v360) == 1)
      {
        break;
      }

      v301 = v298;
      v302 = v320;
      sub_100EBFFE0(v301, v320, type metadata accessor for SafeLocation);
      if (*(v302 + v300[6]) != v345)
      {
        sub_100EC040C(v302, type metadata accessor for SafeLocation);
        goto LABEL_139;
      }

      v303 = v347;
      sub_100EC03A4(v302, v347, type metadata accessor for SafeLocation);
      *(v303 + v360[6]) = 1;
      sub_100EC040C(v302, type metadata accessor for SafeLocation);
      v304 = (v303 + v360[7]);
      v305 = v304[1];

      *v304 = 0;
      v304[1] = 0xE000000000000000;
      v306 = v323;
      sub_100EC03A4(v303, v323, type metadata accessor for SafeLocation);
      v307 = v327;
      swift_storeEnumTagMultiPayload();
      (*v359)(v306, 0, 1, v307);
      v308 = v303;
      v287 = v348;
      sub_100EC040C(v308, type metadata accessor for SafeLocation);
LABEL_140:
      v291 &= v291 - 1;
      (*v356)(v328, v358);
      if ((*v352)(v306, 1, v307) == 1)
      {
        result = sub_10000B3A8(v306, &qword_1016BE3D0, &qword_1013EE770);
        v293 = v294;
      }

      else
      {
        sub_100EBFFE0(v306, v312, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v351 = sub_100A5ED40(0, v351[2] + 1, 1, v351);
        }

        v310 = v351[2];
        v309 = v351[3];
        if (v310 >= v309 >> 1)
        {
          v351 = sub_100A5ED40(v309 > 1, v310 + 1, 1, v351);
        }

        v311 = v351;
        v351[2] = v310 + 1;
        result = sub_100EBFFE0(v312, v311 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v310, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        v293 = v294;
      }
    }

    sub_10000B3A8(v298, &unk_1016AFA10, &qword_1013CB000);
LABEL_139:
    v306 = v323;
    v307 = v327;
    (*v359)(v323, 1, 1, v327);
    goto LABEL_140;
  }

  v361 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, v217, 0);
  v218 = v361;
  v219 = v216 + 8;
  v220 = -1 << *(v216 + 32);
  result = _HashTable.startBucket.getter();
  v221 = result;
  v222 = 0;
  v359 = *(v216 + 9);
  v356 = (v357 + 16);
  v337 = v357 + 32;
  v334 = (v216 + 9);
  v335 = v217;
  v336 = (v216 + 8);
  v355 = v216;
  while ((v221 & 0x8000000000000000) == 0 && v221 < 1 << *(v216 + 32))
  {
    if ((v219[v221 >> 6] & (1 << v221)) == 0)
    {
      goto LABEL_157;
    }

    if (v359 != *(v216 + 9))
    {
      goto LABEL_158;
    }

    v339 = 1 << v221;
    v340 = v221 >> 6;
    v338 = v222;
    v352 = v218;
    v225 = v345;
    v226 = *(v345 + 48);
    v227 = v216[6];
    v228 = v357;
    v350 = *(v357 + 72);
    v348 = *(v357 + 16);
    v229 = v341;
    (v348)(v341, v227 + v350 * v221, v205);
    sub_100EC03A4(v216[7] + v351[9] * v221, &v229[v226], type metadata accessor for SafeLocation);
    v230 = *(v228 + 32);
    v231 = v342;
    v230(v342, v229, v205);
    sub_100EBFFE0(&v229[v226], v231 + *(v225 + 48), type metadata accessor for SafeLocation);
    v232 = v343;
    sub_1000D2A70(v231, v343, &qword_1016BE3D8, &qword_1013EE778);
    v233 = *(v225 + 48);
    v234 = v344;
    v349 = v230;
    v230(v344, v232, v205);
    sub_100EBFFE0(&v232[v233], v234 + v233, type metadata accessor for SafeLocation);
    v235 = v332;
    (v348)(v332, v234, v205);
    v236 = v234;
    v218 = v352;
    sub_10000B3A8(v236, &qword_1016BE3D8, &qword_1013EE778);
    sub_10000B3A8(v231, &qword_1016BE3D8, &qword_1013EE778);
    v361 = v218;
    v238 = v218[2];
    v237 = v218[3];
    if (v238 >= v237 >> 1)
    {
      sub_101123D4C(v237 > 1, v238 + 1, 1);
      v218 = v361;
    }

    v218[2] = v238 + 1;
    result = (v349)(v218 + ((*(v357 + 80) + 32) & ~*(v357 + 80)) + v238 * v350, v235, v205);
    v216 = v355;
    v223 = 1 << *(v355 + 32);
    if (v221 >= v223)
    {
      goto LABEL_159;
    }

    v219 = v336;
    v239 = *(v336 + 8 * v340);
    if ((v239 & v339) == 0)
    {
      goto LABEL_160;
    }

    if (v359 != *(v355 + 9))
    {
      goto LABEL_161;
    }

    v240 = v239 & (-2 << (v221 & 0x3F));
    if (v240)
    {
      v223 = __clz(__rbit64(v240)) | v221 & 0x7FFFFFFFFFFFFFC0;
      v205 = v358;
      v191 = v346;
      v224 = v335;
    }

    else
    {
      v241 = v340 << 6;
      v242 = v340 + 1;
      v243 = &v334[v340];
      v205 = v358;
      v191 = v346;
      v224 = v335;
      while (v242 < (v223 + 63) >> 6)
      {
        v245 = *v243++;
        v244 = v245;
        v241 += 64;
        ++v242;
        if (v245)
        {
          result = sub_1000BB408(v221, v359, 0);
          v223 = __clz(__rbit64(v244)) + v241;
          goto LABEL_67;
        }
      }

      result = sub_1000BB408(v221, v359, 0);
    }

LABEL_67:
    v222 = v338 + 1;
    v221 = v223;
    if ((v338 + 1) == v224)
    {
      goto LABEL_83;
    }
  }

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
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_100EBED38()
{
  sub_10000B3A8(v0 + 24, &qword_1016BE5A8, &qword_1013EE8A8);
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return swift_deallocClassInstance();
}

id sub_100EBEDA0(uint64_t *a1, double a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_1000035D0(a1, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = a1[3];
  v17 = a1[4];
  sub_1000035D0(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  v19 = a1[3];
  v20 = a1[4];
  sub_1000035D0(a1, v19);
  v21 = (*(v20 + 24))(v19, v20);
  v22 = a1[3];
  v23 = a1[4];
  sub_1000035D0(a1, v22);
  v24 = (*(v23 + 32))(v22, v23);
  v25 = a1[3];
  v26 = a1[4];
  sub_1000035D0(a1, v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = a1[3];
  v29 = a1[4];
  sub_1000035D0(a1, v28);
  (*(v29 + 56))(v28, v29);
  v30 = *(v9 + 48);
  if (v30(v7, 1, v8) == 1)
  {
    Date.init()();
    if (v30(v7, 1, v8) != 1)
    {
      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  if (v24 > a2)
  {
    a2 = v24;
  }

  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v33 = [v31 initWithCoordinate:isa altitude:v15 horizontalAccuracy:v18 verticalAccuracy:v21 timestamp:{a2, v27}];

  v34 = a1[3];
  v35 = a1[4];
  sub_1000035D0(a1, v34);
  v36 = *(v35 + 48);
  v37 = v33;
  [v37 setReferenceFrame:{v36(v34, v35)}];

  sub_100007BAC(a1);
  return v37;
}

void sub_100EBF154()
{
  v1 = [*v0 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100EBF1B4()
{
  v1 = [*v0 preferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100EBF21C(void *a1@<X8>)
{
  v3 = [*v1 type];
  type metadata accessor for RTLocationOfInterestType(0);
  a1[3] = v4;
  a1[4] = &off_101658B90;
  *a1 = v3;
}

uint64_t sub_100EBF268@<X0>(void *a1@<X8>)
{
  v3 = [*v1 location];
  result = sub_100008BB8(0, &qword_1016BE638, RTLocation_ptr);
  a1[3] = result;
  a1[4] = &off_101658BB8;
  *a1 = v3;
  return result;
}

uint64_t sub_100EBF2CC(unint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_10039D59C(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

uint64_t sub_100EBF334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100008BB8(0, &qword_10169F050, RTLocationOfInterest_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100EBF3D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *sub_1000035D0(a1, a1[3]);

  return sub_100EBF584(v7, a2, a3, v6);
}

uint64_t sub_100EBF470@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 date];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t type metadata accessor for LocationOfInterestProvider.RemappingOperation()
{
  result = qword_1016BE6B0;
  if (!qword_1016BE6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EBF584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for RTLocationOfInterestType(0);
  v14[3] = v8;
  v14[4] = &off_101658B90;
  v14[0] = a1;
  v9 = *sub_1000035D0(v14, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  aBlock[4] = sub_100EC0728;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100EBF334;
  aBlock[3] = &unk_101658E78;
  v11 = _Block_copy(aBlock);

  [a4 fetchLocationsOfInterestOfType:v9 withHandler:v11];
  _Block_release(v11);
  return sub_100007BAC(v14);
}

void *sub_100EBF6A8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v89 = a3;
  v7 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v87 = v74 - v9;
  v91 = type metadata accessor for SafeLocation();
  v10 = *(v91 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v91);
  v85 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v74 - v14;
  v15 = sub_1000BC4D4(&qword_1016BE3D0, &qword_1013EE770);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v98 = v74 - v17;
  v18 = type metadata accessor for LocationOfInterestProvider.RemappingOperation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v79 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = v74 - v23;
  v103 = type metadata accessor for UUID();
  v24 = *(*(v103 - 8) + 64);
  v25 = __chkstk_darwin(v103);
  v80 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v74 - v28;
  v30 = a1 + 56;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v99 = (v31 + 63) >> 6;
  v96 = v27 + 16;
  v82 = (v10 + 56);
  v86 = v10;
  v81 = (v10 + 48);
  v100 = v27 + 32;
  v102 = v27;
  v94 = (v27 + 8);
  v95 = (v19 + 56);
  v78 = v19;
  v93 = (v19 + 48);

  v35 = 0;
  v90 = _swiftEmptyArrayStorage;
  v84 = v18;
  v83 = v29;
  v97 = a1 + 56;
  v88 = a2;
LABEL_4:
  v36 = v35;
  v37 = v99;
  if (!v33)
  {
    goto LABEL_6;
  }

  do
  {
    v35 = v36;
LABEL_9:
    v38 = *(a1 + 48);
    v101 = *(v102 + 72);
    (*(v102 + 16))(v29, v38 + v101 * (__clz(__rbit64(v33)) | (v35 << 6)), v103);
    v39 = *a2;
    if (!*(*a2 + 16) || (v40 = sub_1000210EC(v29), (v41 & 1) == 0))
    {
      v51 = v98;
      (*v95)(v98, 1, 1, v18);
      goto LABEL_31;
    }

    v42 = *(v86 + 72);
    v43 = *(v39 + 56) + v42 * v40;
    v44 = v85;
    sub_100EC03A4(v43, v85, type metadata accessor for SafeLocation);
    sub_100EBFFE0(v44, v92, type metadata accessor for SafeLocation);
    v45 = *v89;
    if (*(*v89 + 16) && (v46 = sub_1000210EC(v29), (v47 & 1) != 0))
    {
      v48 = *(v45 + 56) + v46 * v42;
      v49 = v87;
      sub_100EC03A4(v48, v87, type metadata accessor for SafeLocation);
      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v87;
    }

    v52 = v91;
    v53 = v92;
    (*v82)(v49, v50, 1, v91);
    if ((*v81)(v49, 1, v52))
    {
      sub_10000B3A8(v49, &unk_1016AFA10, &qword_1013CB000);
LABEL_20:
      if (*(v53 + *(v52 + 24)) == 2)
      {
        v76 = a4;
        v56 = *(a4 + 64);
        v57 = sub_1009EC650();
        v58 = v57[2];
        if (v58)
        {
          v75 = a1;
          v107 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v58, 0);
          v59 = v107;
          v74[1] = v57;
          v60 = (v57 + 4);
          v61 = v80;
          do
          {
            sub_10001F280(v60, &v104);
            v63 = v105;
            v62 = v106;
            sub_1000035D0(&v104, v105);
            (*(*(*(v62 + 8) + 8) + 32))(v63);
            sub_100007BAC(&v104);
            v107 = v59;
            v65 = v59[2];
            v64 = v59[3];
            if (v65 >= v64 >> 1)
            {
              sub_101123D4C(v64 > 1, v65 + 1, 1);
              v59 = v107;
            }

            v59[2] = v65 + 1;
            (*(v102 + 32))(v59 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + v65 * v101, v61, v103);
            v60 += 40;
            --v58;
          }

          while (v58);

          a1 = v75;
        }

        else
        {

          v59 = _swiftEmptyArrayStorage;
        }

        v53 = v92;
        v66 = *(v91 + 52);
        v67 = *(v92 + v66);

        v55 = 0;
        *(v53 + v66) = v59;
        a4 = v76;
      }

      else
      {
        v55 = 0;
      }

      goto LABEL_30;
    }

    v54 = *(v49 + *(v52 + 48));
    sub_10000B3A8(v49, &unk_1016AFA10, &qword_1013CB000);
    v53 = v92;
    if (v54 != 1)
    {
      goto LABEL_20;
    }

    v55 = 1;
LABEL_30:
    v68 = *(sub_1000BC4D4(&qword_1016BE3E8, &unk_1013EE790) + 48);
    v51 = v98;
    sub_100EC03A4(v53, v98, type metadata accessor for SafeLocation);
    *(v51 + v68) = v55;
    v18 = v84;
    swift_storeEnumTagMultiPayload();
    (*v95)(v51, 0, 1, v18);
    sub_100EC040C(v53, type metadata accessor for SafeLocation);
    a2 = v88;
    v29 = v83;
LABEL_31:
    v33 &= v33 - 1;
    (*v94)(v29, v103);
    if ((*v93)(v51, 1, v18) != 1)
    {
      v69 = v51;
      v70 = v77;
      sub_100EBFFE0(v69, v77, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_100EBFFE0(v70, v79, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_100A5ED40(0, v90[2] + 1, 1, v90);
      }

      v72 = v90[2];
      v71 = v90[3];
      if (v72 >= v71 >> 1)
      {
        v90 = sub_100A5ED40(v71 > 1, v72 + 1, 1, v90);
      }

      v73 = v90;
      v90[2] = v72 + 1;
      result = sub_100EBFFE0(v79, v73 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v72, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      v30 = v97;
      goto LABEL_4;
    }

    result = sub_10000B3A8(v51, &qword_1016BE3D0, &qword_1013EE770);
    v36 = v35;
    v30 = v97;
    v37 = v99;
  }

  while (v33);
LABEL_6:
  while (1)
  {
    v35 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v35 >= v37)
    {

      return v90;
    }

    v33 = *(v30 + 8 * v35);
    ++v36;
    if (v33)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100EBFFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EC0048()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SafeLocation() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100EC0098(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100EC00E0()
{
  result = qword_1016BE440;
  if (!qword_1016BE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE440);
  }

  return result;
}

uint64_t sub_100EC0168(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v5, &unk_101696900, &unk_10138B1E0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

id sub_100EC0310(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return swift_errorRetain();
  }

  return result;
}

void sub_100EC032C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_100EC0350(a2, a3 & 0x3F);
  }

  else if (!(a3 >> 6))
  {
  }
}

void sub_100EC0350(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_100EC036C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_100EC0380(v2, v3, v4);
}

id sub_100EC0380(uint64_t a1, void *a2, unsigned __int8 a3)
{
  result = a2;
  if (a3 >> 6 == 1)
  {
    return sub_100EC0310(a2, a3 & 0x3F);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

uint64_t sub_100EC03A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EC040C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EC0514(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SafeLocation() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100EC059C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SafeLocation() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_1009E9B04(v4, v5, v6, a1);
}

uint64_t sub_100EC0630(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 0x1FF;
  return v3(&v6);
}

unint64_t sub_100EC0684()
{
  result = qword_1016BE5E8;
  if (!qword_1016BE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE5E8);
  }

  return result;
}

void sub_100EC0710(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100EB73CC(a1, *(v1 + 16));
}

void sub_100EC071C(void *a1, char a2, char a3)
{
  if (a3)
  {
    sub_100EC0350(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_100EC0730(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100EC075C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 & 7 | (8 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_100EC0784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100EC07D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = 8 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100EC082C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
    *result &= 7uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = (a2 - 2) & 7;
    *(result + 8) = (a2 - 2) >> 3;
    *(result + 16) = 0x80;
  }

  return result;
}

void sub_100EC087C()
{
  sub_100EC08F0();
  if (v0 <= 0x3F)
  {
    sub_100EC095C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100EC08F0()
{
  if (!qword_1016BE6C0)
  {
    type metadata accessor for SafeLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016BE6C0);
    }
  }
}

void sub_100EC095C()
{
  if (!qword_1016BE6C8)
  {
    v0 = type metadata accessor for SafeLocation();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BE6C8);
    }
  }
}

uint64_t sub_100EC09A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChangeSetAdaptor();
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyDictionarySingleton;
  *(v11 + 24) = _swiftEmptyDictionarySingleton;
  v12 = (v11 + 24);

  sub_100C9F944(v13, &off_101658FC0, a1, a2);

  if (v3)
  {
  }

  swift_beginAccess();
  v15 = v27;
  if (*(*(v11 + 16) + 16))
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v16 = *v12;
  if ((*v12 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v17 = *v12;
    }

    v18 = *v12;

    v19 = __CocoaDictionary.count.getter();

    if (v19)
    {
      goto LABEL_8;
    }
  }

  else if (*(v16 + 16))
  {
LABEL_8:
    UUID.init()();
    swift_beginAccess();
    v20 = *(v11 + 24);

    v22 = sub_1003A8B54(v21);

    v23 = *(v11 + 16);

    (*(v7 + 32))(v15, v10, v6);
    v24 = type metadata accessor for CloudKitChangeSet(0);
    *(v15 + *(v24 + 20)) = v22;
    *(v15 + *(v24 + 24)) = v23;
    return (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  }

  v25 = type metadata accessor for CloudKitChangeSet(0);
  return (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
}

uint64_t sub_100EC0C48@<X0>(void (*a1)(uint64_t, _UNKNOWN **)@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChangeSetAdaptor();
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  *(v9 + 24) = &_swiftEmptyDictionarySingleton;
  v10 = (v9 + 24);

  a1(v11, &off_101658FC0);

  if (v2)
  {
  }

  swift_beginAccess();
  v13 = v25;
  if (*(*(v9 + 16) + 16))
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v14 = *v10;
  if ((*v10 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v10;
    }

    v16 = *v10;

    v17 = __CocoaDictionary.count.getter();

    if (v17)
    {
      goto LABEL_8;
    }
  }

  else if (*(v14 + 16))
  {
LABEL_8:
    UUID.init()();
    swift_beginAccess();
    v18 = *(v9 + 24);

    v20 = sub_1003A8B54(v19);

    v21 = *(v9 + 16);

    (*(v5 + 32))(v13, v8, v4);
    v22 = type metadata accessor for CloudKitChangeSet(0);
    *(v13 + *(v22 + 20)) = v20;
    *(v13 + *(v22 + 24)) = v21;
    return (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  }

  v23 = type metadata accessor for CloudKitChangeSet(0);
  return (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
}

uint64_t sub_100EC0EE8(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnerPeerTrust();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC4F94(a2, v9, type metadata accessor for OwnerPeerTrust);
  [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v11 = v6[6];
  v12 = *(v3 + v11);
  v13 = v9[v11];
  if (v12 != v13)
  {
    v45 = &type metadata for Int;
    v46 = &protocol witness table for Int;
    v43 = v13;
    CKRecordKeyValueSetting.subscript.setter();
  }

  if ((sub_10098BFC0(v3 + v6[7], &v9[v6[7]]) & 1) == 0)
  {
    v14 = type metadata accessor for PropertyListEncoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeerCommunicationIdentifier();
    sub_100EC4F4C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier);
    v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v19 = v18;

    v45 = &type metadata for Data;
    v46 = &protocol witness table for Data;
    v43 = v17;
    v44 = v19;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v20 = v6[8];
  v21 = *(v3 + v20);
  v22 = *(v3 + v20 + 8);
  v23 = &v9[v20];
  v25 = *v23;
  v24 = *(v23 + 1);
  if (v21 != *v23 || v22 != v24)
  {
    v27 = *v23;
    v28 = *(v23 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v45 = &type metadata for String;
      v46 = &protocol witness table for String;
      v43 = v25;
      v44 = v24;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v42[1] = ObjectType;
  v29 = v6[9];
  v30 = *(v3 + v29);
  v31 = *(v3 + v29 + 8);
  v32 = &v9[v29];
  v33 = *&v9[v29];
  v34 = *&v9[v29 + 8];
  sub_100017D5C(v30, v31);
  sub_100017D5C(v33, v34);
  v35 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v31, v33, v34);
  sub_100016590(v33, v34);
  sub_100016590(v30, v31);
  if ((v35 & 1) == 0)
  {
    v36 = *v32;
    v37 = v32[1];
    v45 = &type metadata for Data;
    v46 = &protocol witness table for Data;
    v43 = v36;
    v44 = v37;
    sub_100017D5C(v36, v37);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v38 = v6[10];
  v39 = *(v3 + v38);
  v40 = v9[v38];
  if (v39 != v40)
  {
    v45 = &type metadata for Int;
    v46 = &protocol witness table for Int;
    v43 = v40;
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100EC4FFC(v9, type metadata accessor for OwnerPeerTrust);
}

uint64_t sub_100EC12C4(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MemberSharingCircle();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC4F94(a2, v9, type metadata accessor for MemberSharingCircle);
  v10 = [*a1 encryptedValues];
  v34[1] = swift_getObjectType();
  v11 = v6[6];
  type metadata accessor for UUID();
  sub_100EC4F4C(&qword_1016984A0, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = UUID.uuidString.getter();
    v37 = &type metadata for String;
    v38 = &protocol witness table for String;
    v35 = v12;
    v36 = v13;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v14 = v6[7];
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v15 = UUID.uuidString.getter();
    v37 = &type metadata for String;
    v38 = &protocol witness table for String;
    v35 = v15;
    v36 = v16;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v17 = v6[8];
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v18 = UUID.uuidString.getter();
    v37 = &type metadata for String;
    v38 = &protocol witness table for String;
    v35 = v18;
    v36 = v19;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v20 = v6[9];
  v21 = *&v9[v20];
  if ((sub_100DE7C90(*(v3 + v20), v21) & 1) == 0)
  {
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v35 = v21;

    sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
    sub_100328898();
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v27 = v26;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = String._bridgeToObjectiveC()();
    [v10 setObject:isa forKeyedSubscript:v29];

    sub_100016590(v25, v27);
  }

  v30 = v6[10];
  v31 = *(v3 + v30);
  v32 = v9[v30];
  if (v31 == v32)
  {
    sub_100EC4FFC(v9, type metadata accessor for MemberSharingCircle);
    return swift_unknownObjectRelease();
  }

  else
  {
    v37 = &type metadata for Int;
    v38 = &protocol witness table for Int;
    v35 = v32;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_100EC4FFC(v9, type metadata accessor for MemberSharingCircle);
  }
}

unint64_t sub_100EC17B8()
{
  _StringGuts.grow(_:)(43);

  v1._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A65766173203ALL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3 = type metadata accessor for CloudKitChangeSet(0);
  v4 = v3;
  v5 = *(v0 + *(v3 + 20));
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v12 = *(v0 + *(v3 + 20));
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A6574656C656420;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  v13 = *(*(v0 + *(v4 + 24)) + 16);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0xD000000000000013;
}

uint64_t sub_100EC1938(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MemberPeerTrust();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC4F94(a2, v9, type metadata accessor for MemberPeerTrust);
  [*a1 encryptedValues];
  swift_getObjectType();
  v10 = v6[6];
  v11 = *(v3 + v10);
  v12 = v9[v10];
  if (v11 != v12)
  {
    v41 = &type metadata for Int;
    v42 = &protocol witness table for Int;
    v39 = v12;
    CKRecordKeyValueSetting.subscript.setter();
  }

  if ((sub_10098BFC0(v3 + v6[7], &v9[v6[7]]) & 1) == 0)
  {
    v13 = type metadata accessor for PropertyListEncoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeerCommunicationIdentifier();
    sub_100EC4F4C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier);
    v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v18 = v17;

    v41 = &type metadata for Data;
    v42 = &protocol witness table for Data;
    v39 = v16;
    v40 = v18;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v19 = v6[8];
  v20 = *(v3 + v19);
  v21 = *(v3 + v19 + 8);
  v22 = &v9[v19];
  v24 = *v22;
  v23 = *(v22 + 1);
  if (v20 != *v22 || v21 != v23)
  {
    v26 = *v22;
    v27 = *(v22 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v41 = &type metadata for String;
      v42 = &protocol witness table for String;
      v39 = v24;
      v40 = v23;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v28 = v6[9];
  v29 = *(v3 + v28);
  v30 = *(v3 + v28 + 8);
  v31 = &v9[v28];
  v32 = *&v9[v28];
  v33 = *&v9[v28 + 8];
  sub_100017D5C(v29, v30);
  sub_100017D5C(v32, v33);
  v34 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v29, v30, v32, v33);
  sub_100016590(v32, v33);
  sub_100016590(v29, v30);
  if ((v34 & 1) == 0)
  {
    v35 = *v31;
    v36 = v31[1];
    v41 = &type metadata for Data;
    v42 = &protocol witness table for Data;
    v39 = v35;
    v40 = v36;
    sub_100017D5C(v35, v36);
    CKRecordKeyValueSetting.subscript.setter();
  }

  swift_unknownObjectRelease();
  return sub_100EC4FFC(v9, type metadata accessor for MemberPeerTrust);
}

void sub_100EC1CBC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v48 - v7);
  v9 = type metadata accessor for MemberSharingCircle();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v16)
  {
    if (v14 == v14 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v24 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48 = v11;
  v17 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v2)
  {
    v19 = v18;
    objc_autoreleasePoolPop(v17);
    v53 = v19;
    swift_beginAccess();
    v20 = *(a2 + 24);

    v21 = [v19 recordID];
    v49 = v19;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v22 = v21;
      v23 = __CocoaDictionary.contains(_:)();

      if (v23)
      {
        goto LABEL_19;
      }
    }

    else if (*(v20 + 16))
    {
      v25 = v21;
      sub_100771FF8(v21);
      v27 = v26;

      if (v27)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v28 = v21;
    }

    swift_beginAccess();
    v29 = *(a2 + 16);

    v30 = [v49 recordID];
    v31 = v30;
    if (*(v29 + 16))
    {
      sub_100771FF8(v30);
      v33 = v32;

      if (v33)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v34 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v51 = 0x7365547265646E75;
    v52 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v35 = v49;
    if (v50 == 1)
    {
      v36 = [v49 valueStore];
      [v36 resetChangedKeys];

      v37 = [v49 encryptedValueStore];
      v38 = v49;
      [v37 resetChangedKeys];

      v35 = v38;
    }

    v39 = [v35 recordID];
    v40 = *(a2 + 24);

    v17 = sub_1005CAAF8(v39, v40);

    if (v17)
    {
      sub_1003268EC(v17, v8);
      v41 = v49;
      (*(v48 + 56))(v8, 0, 1, v9);
      sub_100EC505C(v8, v13, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v41 = v49;
      sub_100EC4F94(a1, v13, type metadata accessor for MemberSharingCircle);
    }

    v13[*(v9 + 40)] = 1;
    sub_100EC12C4(&v53, v13);
    if (sub_1003287CC(a1, v13))
    {
      goto LABEL_36;
    }

    v42 = v41;
    v43 = [v42 recordID];
    swift_beginAccess();
    v44 = *(a2 + 24);
    if ((v44 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a2 + 24);
      sub_100FFB704(v42, v43, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v50;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v13, type metadata accessor for MemberSharingCircle);

      return;
    }

    if (v44 < 0)
    {
      v45 = *(a2 + 24);
    }

    else
    {
      v45 = v44 & 0xFFFFFFFFFFFFFF8;
    }

    v46 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v46, 1))
    {
      *(a2 + 24) = sub_100D47C24(v45, v46 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v17);
  __break(1u);
}

void sub_100EC2350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v11 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v54 - v13);
  v15 = type metadata accessor for MemberSharingCircle();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2 || *(v20 + 16) == *(v20 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v22)
  {
    if (v20 == v20 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v32 = 2;
      swift_willThrow();

      return;
    }
  }

  else if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v55 = v17;
  v56 = a4;
  v57 = a5;
  v23 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v5)
  {
    v25 = v24;
    objc_autoreleasePoolPop(v23);
    v63 = v25;
    swift_beginAccess();
    v26 = v25;
    v27 = *(a2 + 24);

    v59 = v26;
    v28 = [v26 recordID];
    v29 = v28;
    v58 = a3;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = v28;
      v31 = __CocoaDictionary.contains(_:)();

      if (v31)
      {
        goto LABEL_19;
      }
    }

    else if (*(v27 + 16))
    {
      sub_100771FF8(v28);
      v34 = v33;

      if (v34)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v35 = *(a2 + 16);

    v36 = [v59 recordID];
    v37 = v36;
    if (*(v35 + 16))
    {
      sub_100771FF8(v36);
      v39 = v38;

      if (v39)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v40 = 4;
        swift_willThrow();
LABEL_37:

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v61 = 0x7365547265646E75;
    v62 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v60 == 1)
    {
      v41 = v59;
      v42 = [v59 valueStore];
      [v42 resetChangedKeys];

      v43 = [v41 encryptedValueStore];
      [v43 resetChangedKeys];
    }

    v44 = [v59 recordID];
    v45 = *(a2 + 24);

    v46 = sub_1005CAAF8(v44, v45);

    if (v46)
    {
      sub_1003268EC(v46, v14);
      v47 = v57;
      v48 = v58;
      (*(v55 + 56))(v14, 0, 1, v15);
      sub_100EC505C(v14, v19, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v47 = v57;
      v48 = v58;
      sub_100EC4F94(a1, v19, type metadata accessor for MemberSharingCircle);
    }

    v47(v19, v48);
    sub_100EC12C4(&v63, v19);
    if (sub_1003287CC(a1, v19))
    {
LABEL_36:
      sub_100EC4FFC(v19, type metadata accessor for MemberSharingCircle);
      goto LABEL_37;
    }

    v23 = v59;
    v49 = [v23 recordID];
    swift_beginAccess();
    v50 = *(a2 + 24);
    if ((v50 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(a2 + 24);
      sub_100FFB704(v23, v49, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v60;

      swift_endAccess();
      goto LABEL_36;
    }

    if (v50 < 0)
    {
      v51 = *(a2 + 24);
    }

    else
    {
      v51 = v50 & 0xFFFFFFFFFFFFFF8;
    }

    v52 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v52, 1))
    {
      *(a2 + 24) = sub_100D47C24(v51, v52 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v23);
  __break(1u);
}

void sub_100EC2984(uint64_t *a1, uint64_t a2, int a3)
{
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v49 - v9);
  v11 = type metadata accessor for MemberSharingCircle();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v27 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v50 = v13;
  v51 = a3;
  v19 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v3)
  {
    v21 = v20;
    objc_autoreleasePoolPop(v19);
    v56 = v21;
    swift_beginAccess();
    v22 = *(a2 + 24);

    v23 = [v21 recordID];
    v24 = v23;
    v52 = v21;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = v23;
      v26 = __CocoaDictionary.contains(_:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v29 = v28;

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v30 = *(a2 + 16);

    v31 = [v52 recordID];
    v32 = v31;
    if (*(v30 + 16))
    {
      sub_100771FF8(v31);
      v34 = v33;

      if (v34)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v35 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v54 = 0x7365547265646E75;
    v55 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v36 = v52;
    if (v53 == 1)
    {
      v37 = [v52 valueStore];
      [v37 resetChangedKeys];

      v38 = [v52 encryptedValueStore];
      v39 = v52;
      [v38 resetChangedKeys];

      v36 = v39;
    }

    v40 = [v36 recordID];
    v41 = *(a2 + 24);

    v42 = sub_1005CAAF8(v40, v41);

    if (v42)
    {
      sub_1003268EC(v42, v10);
      v43 = v52;
      (*(v50 + 56))(v10, 0, 1, v11);
      sub_100EC505C(v10, v15, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v43 = v52;
      sub_100EC4F94(a1, v15, type metadata accessor for MemberSharingCircle);
    }

    v15[*(v11 + 40)] = v51;
    sub_100EC12C4(&v56, v15);
    if (sub_1003287CC(a1, v15))
    {
      goto LABEL_36;
    }

    v44 = v43;
    v19 = [v44 recordID];
    swift_beginAccess();
    v45 = *(a2 + 24);
    if ((v45 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(a2 + 24);
      sub_100FFB704(v44, v19, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v53;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v15, type metadata accessor for MemberSharingCircle);

      return;
    }

    if (v45 < 0)
    {
      v46 = *(a2 + 24);
    }

    else
    {
      v46 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    v47 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v47, 1))
    {
      *(a2 + 24) = sub_100D47C24(v46, v47 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_100EC2FA0(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v48 - v7);
  v9 = type metadata accessor for OwnerSharingCircle();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v16)
  {
    if (v14 == v14 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v24 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48 = v11;
  v17 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (!v2)
  {
    v19 = v18;
    objc_autoreleasePoolPop(v17);
    v53 = v19;
    swift_beginAccess();
    v20 = *(a2 + 24);

    v21 = [v19 recordID];
    v49 = v19;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v22 = v21;
      v23 = __CocoaDictionary.contains(_:)();

      if (v23)
      {
        goto LABEL_19;
      }
    }

    else if (*(v20 + 16))
    {
      v25 = v21;
      sub_100771FF8(v21);
      v27 = v26;

      if (v27)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v28 = v21;
    }

    swift_beginAccess();
    v29 = *(a2 + 16);

    v30 = [v49 recordID];
    v31 = v30;
    if (*(v29 + 16))
    {
      sub_100771FF8(v30);
      v33 = v32;

      if (v33)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v34 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v51 = 0x7365547265646E75;
    v52 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v35 = v49;
    if (v50 == 1)
    {
      v36 = [v49 valueStore];
      [v36 resetChangedKeys];

      v37 = [v49 encryptedValueStore];
      v38 = v49;
      [v37 resetChangedKeys];

      v35 = v38;
    }

    v39 = [v35 recordID];
    v40 = *(a2 + 24);

    v17 = sub_1005CAAF8(v39, v40);

    if (v17)
    {
      sub_100E0F270(v17, v8);
      v41 = v49;
      (*(v48 + 56))(v8, 0, 1, v9);
      sub_100EC505C(v8, v13, type metadata accessor for OwnerSharingCircle);
    }

    else
    {
      v41 = v49;
      sub_100EC4F94(a1, v13, type metadata accessor for OwnerSharingCircle);
    }

    v13[*(v9 + 36)] = 4;
    sub_100D42FF4(&v53, v13);
    if (sub_100E11AF8(a1, v13))
    {
      goto LABEL_36;
    }

    v42 = v41;
    v43 = [v42 recordID];
    swift_beginAccess();
    v44 = *(a2 + 24);
    if ((v44 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a2 + 24);
      sub_100FFB704(v42, v43, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v50;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v13, type metadata accessor for OwnerSharingCircle);

      return;
    }

    if (v44 < 0)
    {
      v45 = *(a2 + 24);
    }

    else
    {
      v45 = v44 & 0xFFFFFFFFFFFFFF8;
    }

    v46 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v46, 1))
    {
      *(a2 + 24) = sub_100D47C24(v45, v46 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v17);
  __break(1u);
}

void sub_100EC360C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v56 - v11);
  v13 = type metadata accessor for OwnerSharingCircle();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v20)
  {
    if (v18 == v18 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v56[0] = v15;
  v56[1] = a4;
  v57 = a3;
  v21 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (!v4)
  {
    v23 = v22;
    objc_autoreleasePoolPop(v21);
    v62 = v23;
    swift_beginAccess();
    v24 = *(a2 + 24);

    v25 = [v23 recordID];
    v26 = v25;
    v58 = v23;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = v25;
      v28 = __CocoaDictionary.contains(_:)();

      if (v28)
      {
        goto LABEL_19;
      }
    }

    else if (*(v24 + 16))
    {
      sub_100771FF8(v25);
      v31 = v30;

      if (v31)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v32 = *(a2 + 16);

    v33 = [v58 recordID];
    v34 = v33;
    if (*(v32 + 16))
    {
      sub_100771FF8(v33);
      v36 = v35;

      if (v36)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v37 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v60 = 0x7365547265646E75;
    v61 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v38 = v58;
    if (v59 == 1)
    {
      v39 = [v58 valueStore];
      [v39 resetChangedKeys];

      v40 = [v58 encryptedValueStore];
      v41 = v58;
      [v40 resetChangedKeys];

      v38 = v41;
    }

    v42 = [v38 recordID];
    v43 = *(a2 + 24);

    v44 = sub_1005CAAF8(v42, v43);

    if (v44)
    {
      sub_100E0F270(v44, v12);
      v45 = v57;
      (*(v56[0] + 56))(v12, 0, 1, v13);
      sub_100EC505C(v12, v17, type metadata accessor for OwnerSharingCircle);
    }

    else
    {
      v45 = v57;
      sub_100EC4F94(a1, v17, type metadata accessor for OwnerSharingCircle);
    }

    v46 = *v45;
    v47 = *(v13 + 32);
    v48 = *&v17[v47];

    *&v17[v47] = v46;
    sub_100D42FF4(&v62, v17);
    v49 = sub_100E11AF8(a1, v17);
    v50 = v58;
    if (v49)
    {
      goto LABEL_36;
    }

    v51 = v58;
    v21 = [v51 recordID];
    swift_beginAccess();
    v52 = *(a2 + 24);
    if ((v52 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(a2 + 24);
      sub_100FFB704(v51, v21, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v59;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v17, type metadata accessor for OwnerSharingCircle);

      return;
    }

    if (v52 < 0)
    {
      v53 = *(a2 + 24);
    }

    else
    {
      v53 = v52 & 0xFFFFFFFFFFFFFF8;
    }

    v54 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v54, 1))
    {
      *(a2 + 24) = sub_100D47C24(v53, v54 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_100EC3C34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v53 - v11);
  v13 = type metadata accessor for MemberPeerTrust();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v20)
  {
    if (v18 == v18 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v30 = 2;
      swift_willThrow();

      return;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v53 = v15;
  v54 = a3;
  v21 = objc_autoreleasePoolPush();
  sub_101121880(a1);
  if (!v4)
  {
    v23 = v22;
    objc_autoreleasePoolPop(v21);
    v60 = v23;
    swift_beginAccess();
    v24 = v23;
    v25 = *(a2 + 24);

    v56 = v24;
    v26 = [v24 recordID];
    v27 = v26;
    v55 = a4;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = v26;
      v29 = __CocoaDictionary.contains(_:)();

      if (v29)
      {
        goto LABEL_19;
      }
    }

    else if (*(v25 + 16))
    {
      sub_100771FF8(v26);
      v32 = v31;

      if (v32)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v33 = *(a2 + 16);

    v34 = [v56 recordID];
    v35 = v34;
    if (*(v33 + 16))
    {
      sub_100771FF8(v34);
      v37 = v36;

      if (v37)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v38 = 4;
        swift_willThrow();
LABEL_37:

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v58 = 0x7365547265646E75;
    v59 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v57 == 1)
    {
      v39 = v56;
      v40 = [v56 valueStore];
      [v40 resetChangedKeys];

      v41 = [v39 encryptedValueStore];
      [v41 resetChangedKeys];
    }

    v42 = [v56 recordID];
    v43 = *(a2 + 24);

    v44 = sub_1005CAAF8(v42, v43);

    if (v44)
    {
      sub_100E939A4(v44, v12);
      v45 = v55;
      (*(v53 + 56))(v12, 0, 1, v13);
      sub_100EC505C(v12, v17, type metadata accessor for MemberPeerTrust);
    }

    else
    {
      v45 = v55;
      sub_100EC4F94(a1, v17, type metadata accessor for MemberPeerTrust);
    }

    v46 = &v17[*(v13 + 32)];
    v47 = *(v46 + 1);

    *v46 = v54;
    *(v46 + 1) = v45;
    sub_100EC1938(&v60, v17);
    if (sub_100E95758(a1, v17))
    {
LABEL_36:
      sub_100EC4FFC(v17, type metadata accessor for MemberPeerTrust);
      goto LABEL_37;
    }

    v48 = v56;
    v49 = [v48 recordID];
    swift_beginAccess();
    v50 = *(a2 + 24);
    if ((v50 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(a2 + 24);
      sub_100FFB704(v48, v49, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v57;

      swift_endAccess();
      goto LABEL_36;
    }

    if (v50 < 0)
    {
      v21 = *(a2 + 24);
    }

    else
    {
      v21 = (v50 & 0xFFFFFFFFFFFFFF8);
    }

    v51 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v51, 1))
    {
      *(a2 + 24) = sub_100D47C24(v21, v51 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_100EC4284(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v48 - v7);
  v9 = type metadata accessor for OwnerPeerTrust();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v16)
  {
    if (v14 == v14 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v24 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v48 = v11;
  v17 = objc_autoreleasePoolPush();
  sub_101121820(a1);
  if (!v2)
  {
    v19 = v18;
    objc_autoreleasePoolPop(v17);
    v53 = v19;
    swift_beginAccess();
    v20 = *(a2 + 24);

    v21 = [v19 recordID];
    v49 = v19;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v22 = v21;
      v23 = __CocoaDictionary.contains(_:)();

      if (v23)
      {
        goto LABEL_19;
      }
    }

    else if (*(v20 + 16))
    {
      v25 = v21;
      sub_100771FF8(v21);
      v27 = v26;

      if (v27)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v28 = v21;
    }

    swift_beginAccess();
    v29 = *(a2 + 16);

    v30 = [v49 recordID];
    v31 = v30;
    if (*(v29 + 16))
    {
      sub_100771FF8(v30);
      v33 = v32;

      if (v33)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v34 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v51 = 0x7365547265646E75;
    v52 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v35 = v49;
    if (v50 == 1)
    {
      v36 = [v49 valueStore];
      [v36 resetChangedKeys];

      v37 = [v49 encryptedValueStore];
      v38 = v49;
      [v37 resetChangedKeys];

      v35 = v38;
    }

    v39 = [v35 recordID];
    v40 = *(a2 + 24);

    v17 = sub_1005CAAF8(v39, v40);

    if (v17)
    {
      sub_100310ECC(v17, v8);
      v41 = v49;
      (*(v48 + 56))(v8, 0, 1, v9);
      sub_100EC505C(v8, v13, type metadata accessor for OwnerPeerTrust);
    }

    else
    {
      v41 = v49;
      sub_100EC4F94(a1, v13, type metadata accessor for OwnerPeerTrust);
    }

    v13[*(v9 + 40)] = 1;
    sub_100EC0EE8(&v53, v13);
    if (sub_1003132D8(a1, v13))
    {
      goto LABEL_36;
    }

    v42 = v41;
    v43 = [v42 recordID];
    swift_beginAccess();
    v44 = *(a2 + 24);
    if ((v44 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a2 + 24);
      sub_100FFB704(v42, v43, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v50;

      swift_endAccess();
LABEL_36:
      sub_100EC4FFC(v13, type metadata accessor for OwnerPeerTrust);

      return;
    }

    if (v44 < 0)
    {
      v45 = *(a2 + 24);
    }

    else
    {
      v45 = v44 & 0xFFFFFFFFFFFFFF8;
    }

    v46 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v46, 1))
    {
      *(a2 + 24) = sub_100D47C24(v45, v46 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v17);
  __break(1u);
}

void sub_100EC4898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v41 - v10);
  v12 = (*(a3 + 24))(a2, a3);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      sub_100016590(v12, v13);
      if (v17 == v16)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    sub_100016590(v12, v13);
LABEL_15:
    sub_100D48968();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
    return;
  }

  if (v14)
  {
    v18 = v12;
    sub_100016590(v12, v13);
    if (v18 != v18 >> 32)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v15 = v13;
  sub_100016590(v12, v13);
  if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v43 = v4;
  v44 = (*(a3 + 40))(a2, a3);
  v19 = [v44 recordID];
  swift_beginAccess();
  v20 = *(v5 + 24);
  if ((v20 & 0xC000000000000001) != 0)
  {
    if (v20 < 0)
    {
      v21 = *(v5 + 24);
    }

    v22 = *(v5 + 24);

    v23 = v5;
    v24 = v19;
    v25 = v19;
    v26 = __CocoaDictionary.contains(_:)();

    v19 = v24;
    v5 = v23;
    if (v26)
    {
      goto LABEL_20;
    }
  }

  else if (*(v20 + 16))
  {
    v28 = *(v5 + 24);

    sub_100771FF8(v19);
    v30 = v29;

    if (v30)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    v31 = *(v5 + 16);

    sub_100771FF8(v19);
    v33 = v32;

    if (v33)
    {
LABEL_20:
      sub_100D48968();
      swift_allocError();
      *v34 = 4;
      swift_willThrow();

      return;
    }
  }

  v35 = *(a3 + 8);
  v41 = *(v35 + 32);
  v36 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v42 = v19;
  v37 = v36;
  v38 = *(v36 + 20);
  v39 = v44;
  v41(a2, v35);
  v40 = v11 + *(v37 + 24);
  (*(v35 + 40))(a2, v35);
  *v11 = v39;
  (*(*(v37 - 8) + 56))(v11, 0, 1, v37);
  swift_beginAccess();
  sub_1001DDF1C(v11, v42);
  swift_endAccess();
}

void sub_100EC4C94()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100EC4D30();
    if (v1 <= 0x3F)
    {
      sub_100EC4D98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100EC4D30()
{
  if (!qword_1016BE850)
  {
    sub_100008BB8(255, &qword_101698150, CKRecord_ptr);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BE850);
    }
  }
}

void sub_100EC4D98()
{
  if (!qword_1016BE858)
  {
    sub_100008BB8(255, &qword_1016A9110, CKRecordID_ptr);
    type metadata accessor for CloudKitChangeSet.TombstoneInfo(255);
    sub_100009D18(&unk_1016BE860, &qword_1016A9110, CKRecordID_ptr);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BE858);
    }
  }
}

uint64_t sub_100EC4EA0()
{
  result = sub_100008BB8(319, &qword_101698150, CKRecord_ptr);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100EC4F4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100EC4F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EC4FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EC505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EC50D8()
{
  result = qword_1016BE930;
  if (!qword_1016BE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE930);
  }

  return result;
}

uint64_t sub_100EC5148()
{
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000101373270;
  *(inited + 48) = 1;
  *(inited + 88) = 0;
  v2 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101696CA0, &qword_10138B5D8);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100EC5230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[65] = a3;
  v3[63] = a1;
  v3[64] = a2;
  v4 = type metadata accessor for UUID();
  v3[66] = v4;
  v5 = *(v4 - 8);
  v3[67] = v5;
  v3[68] = *(v5 + 64);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();

  return _swift_task_switch(sub_100EC5308, 0, 0);
}

uint64_t sub_100EC5308()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = type metadata accessor for OwnerSharingCircle();
  v0[71] = v4;
  v5 = *(v2 + *(v4 + 32));
  v0[72] = v5;
  v0[73] = *(v5 + 16);
  v0[74] = *(sub_100EC71B4(v5) + 16);

  v0[62] = v5;
  v6 = swift_task_alloc();
  v0[75] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = async function pointer to Sequence.asyncFilter(_:)[1];

  v8 = swift_task_alloc();
  v0[76] = v8;
  v9 = sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  v10 = sub_1000041A4(&qword_1016BE940, &qword_1016BC2D0, &unk_1013E4B00);
  *v8 = v0;
  v8[1] = sub_100EC547C;

  return Sequence.asyncFilter(_:)(&unk_1013EEC78, v6, v9, v10);
}

uint64_t sub_100EC547C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[75];
    v9 = v4[72];

    v4[77] = a1;

    return _swift_task_switch(sub_100EC55CC, 0, 0);
  }
}

uint64_t sub_100EC55CC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 512);
  *(v0 + 624) = *(*(v0 + 616) + 16);

  *(v0 + 648) = *(v1 + 24);

  return _swift_task_switch(sub_100EC564C, v2, 0);
}

uint64_t sub_100EC564C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 512);
  (*(v3 + 16))(v1, *(v0 + 504) + *(v0 + 648), v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 632) = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 640) = v9;
  *v9 = v0;
  v9[1] = sub_100EC57BC;
  v10 = *(v0 + 560);
  v11 = *(v0 + 528);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100ECD398, v7, v11);
}

uint64_t sub_100EC57BC()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 632);
  v4 = *v0;

  return _swift_task_switch(sub_100EC58D4, 0, 0);
}

uint64_t sub_100EC58D4()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[70];
  v14 = v0[78];
  v15 = v0[69];
  v4 = v0[67];
  v5 = v0[66];
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_10138B420;
  *(inited + 40) = 0x8000000101373270;
  *(inited + 48) = 0;
  *(inited + 88) = 0;
  strcpy((inited + 96), "isFromRequest");
  *(inited + 110) = -4864;
  *(inited + 112) = 0;
  *(inited + 152) = 0;
  *(inited + 160) = 0x6563637553736177;
  *(inited + 168) = 0xEA00000000007373;
  *(inited + 176) = 1;
  *(inited + 216) = 0;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000101373290;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = sub_1000DF96C();
  *(inited + 240) = v6;
  *(inited + 248) = v8;
  *(inited + 280) = 1;
  *(inited + 288) = 0xD000000000000013;
  *(inited + 296) = 0x80000001013732B0;
  *(inited + 328) = &type metadata for Int;
  v10 = sub_1000DFAD8();
  *(inited + 336) = v10;
  *(inited + 304) = v1;
  *(inited + 344) = 2;
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x80000001013732D0;
  *(inited + 392) = &type metadata for Int;
  *(inited + 400) = v10;
  *(inited + 368) = v2;
  *(inited + 408) = 2;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000001013732F0;
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v10;
  *(inited + 432) = v14;
  *(inited + 472) = 2;
  v11 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_100EC5B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for PeerCommunicationIdentifier();
  v3[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v3[9] = *(v8 + 64);
  v3[10] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v3[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for OwnerPeerTrust();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100EC5CD0, a2, 0);
}

uint64_t sub_100EC5CD0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_100EC5E2C;
  v10 = v0[11];
  v9 = v0[12];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100ECD3B0, v6, v10);
}

uint64_t sub_100EC5E2C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_100EC5F44, 0, 0);
}

uint64_t sub_100EC5F44()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
LABEL_11:
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[6];

    v19 = v0[1];

    return v19(0);
  }

  v3 = v0[15];
  v5 = v0[5];
  v4 = v0[6];
  sub_10002ADE4(v2, v3, type metadata accessor for OwnerPeerTrust);
  sub_100ECD450(v3 + *(v1 + 28), v4, type metadata accessor for PeerCommunicationIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v9 = v0[15];
      v8 = type metadata accessor for OwnerPeerTrust;
      goto LABEL_10;
    }

    v10 = v0[6];
    if (EnumCaseMultiPayload == 4)
    {
      v11 = *v10;
      v13 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = *(v10 + 32);
    }

    else
    {
      v22 = *(v10 + 8);
      v11 = *(v10 + 16);
      v13 = *(v10 + 24);
      v12 = *(v10 + 32);
      v23 = *(v10 + 48);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 2)
    {
      v7 = v0[6];
      sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);
      v8 = type metadata accessor for PeerCommunicationIdentifier;
      v9 = v7;
LABEL_10:
      sub_1000327C4(v9, v8);
      goto LABEL_11;
    }

    v21 = v0[6];
    v11 = *v21;
    v13 = *(v21 + 8);
    v12 = *(v21 + 16);
  }

  v0[18] = v12;
  if (!v0[4])
  {
    sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);

    goto LABEL_11;
  }

  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  v24[1] = sub_100EC6208;

  return sub_100D4E560(v11, v13, v12);
}

uint64_t sub_100EC6208(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v5 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;

  v9 = *(v5 + 144);
  if (v2)
  {

    v10 = sub_100EC648C;
    v11 = 0;
  }

  else
  {

    *(v6 + 160) = a2;
    v11 = *(v6 + 32);
    v10 = sub_100EC6368;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100EC6368()
{
  v1 = *(v0 + 160);

  return _swift_task_switch(sub_100EC63D0, 0, 0);
}

uint64_t sub_100EC63D0()
{
  sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);
  v1 = v0[20] != 0;
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_100EC648C()
{
  sub_1000327C4(v0[15], type metadata accessor for OwnerPeerTrust);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_100EC655C()
{
  v1 = v0[39];
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  swift_getErrorValue();
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[32];
  v0[37] = Error.code.getter();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  *(inited + 72) = &type metadata for String;
  v9 = sub_1000DF96C();
  *(inited + 80) = v9;
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 88) = 1;
  *(inited + 96) = 0x6D6F44726F727265;
  *(inited + 104) = 0xEB000000006E6961;
  swift_getErrorValue();
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[35];
  v13 = Error.domain.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 112) = v13;
  *(inited + 120) = v14;
  *(inited + 152) = 1;
  *(inited + 160) = 0x6563637553736177;
  *(inited + 168) = 0xEA00000000007373;
  *(inited + 176) = 0;
  *(inited + 216) = 0;
  v15 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_100EC672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  v5 = type metadata accessor for UUID();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  *(v3 + 56) = *(v6 + 64);
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v3 + 72) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 104) = *(type metadata accessor for MemberSharingCircle() + 32);

  return _swift_task_switch(sub_100EC6848, a3, 0);
}

uint64_t sub_100EC6848()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  (*(v3 + 16))(v1, *(v0 + 24) + *(v0 + 104), v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_100EC69AC;
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100ECD230, v6, v10);
}

uint64_t sub_100EC69AC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100EC6AC4, 0, 0);
}

uint64_t sub_100EC6AC4()
{
  v1 = v0[10];
  v2 = type metadata accessor for MemberPeerTrust();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = (v1 + *(v2 + 32));
    v3 = *v5;
    v4 = v5[1];

    sub_1000327C4(v1, type metadata accessor for MemberPeerTrust);
  }

  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[2];
  *v8 = v3;
  v8[1] = v4;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100EC6BE4(char a1, char a2)
{
  *(v2 + 177) = a2;
  *(v2 + 176) = a1;
  return _swift_task_switch(sub_100EC6C08, 0, 0);
}

uint64_t sub_100EC6C08()
{
  v1 = *(v0 + 177);
  v2 = *(v0 + 176);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x4165726168537369;
  *(inited + 40) = 0xEF64657470656363;
  *(inited + 48) = v2;
  *(inited + 88) = 0;
  strcpy((inited + 96), "isUTFSResponse");
  *(inited + 111) = -18;
  *(inited + 112) = v1;
  *(inited + 152) = 0;
  v4 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100EC6D34(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return _swift_task_switch(sub_100EC6D54, 0, 0);
}

uint64_t sub_100EC6D54()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001013731B0;
  *(inited + 72) = &type metadata for Int;
  v4 = sub_1000DFAD8();
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD00000000000001ALL;
  *(inited + 104) = 0x80000001013731D0;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = v4;
  *(inited + 112) = v1;
  *(inited + 152) = 2;
  v5 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100EC6E90(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return _swift_task_switch(sub_100EC6EB0, 0, 0);
}

uint64_t sub_100EC6EB0()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101373420;
  *(inited + 72) = &type metadata for Int;
  v4 = sub_1000DFAD8();
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x8000000101373440;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = v4;
  *(inited + 112) = v1;
  *(inited + 152) = 2;
  v5 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100EC700C()
{
  v1 = *(v0 + 112);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x746164705579656BLL;
  *(inited + 40) = 0xEF73757461745365;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = sub_1000DFAD8();
  *(inited + 48) = v1 - 1;
  *(inited + 88) = 2;
  v3 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101696CA0, &qword_10138B5D8);
  v4 = *(v0 + 8);

  return v4(v3);
}

void *sub_100EC713C(void *result, uint64_t a2, void *a3)
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

    v6 = sub_100EC7314(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100EC71B4(uint64_t a1)
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
    result = sub_100EC7314(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100EC713C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100EC7314(unint64_t *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a1;
  v48 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
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
    sub_100ECD4B8(v31, v47);
    LODWORD(v30) = *(v32 + *(v30 + 48));
    v33 = *(v25 + 8);
    v33(v32, v24);
    result = (v33)(v27, v24);
    v18 = v50;
    if (v30 == 1)
    {
      *(v37 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_10061C234(v37, v36, v38, v49);
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
      return sub_10061C234(v37, v36, v38, v49);
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

uint64_t sub_100EC7608(char a1)
{
  *(v1 + 112) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100EC76A4, 0, 0);
}

uint64_t sub_100EC76A4()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[7] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[8] = v8;
  v0[9] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000036;
  *(v4 + 16) = 0x8000000101373310;

  return _swift_task_switch(sub_100EC77FC, v4, 0);
}

uint64_t sub_100EC77FC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100EC7914;
  v8 = *(v0 + 48);
  v9 = *(v0 + 112);

  return sub_10115D880(v8, v9);
}

uint64_t sub_100EC7914()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100EC7BBC, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v3[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v3[13] = v4;
    *v4 = v3;
    v4[1] = sub_100EC7AA4;
    v5 = v3[6];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100EC7AA4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100ECD528, 0, 0);
}

uint64_t sub_100EC7BBC()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for Keys Download.", v4, 2u);
  }

  v5 = v0[11];

  type metadata accessor for AnalyticsPublisher();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100EC7AA4;
  v7 = v0[6];

  return sub_101163F78(v7);
}

uint64_t sub_100EC7D34(char a1, char a2)
{
  *(v2 + 113) = a2;
  *(v2 + 112) = a1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100EC7DD4, 0, 0);
}

uint64_t sub_100EC7DD4()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[7] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[8] = v8;
  v0[9] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD00000000000003CLL;
  *(v4 + 16) = 0x8000000101373390;

  return _swift_task_switch(sub_100EC7F2C, v4, 0);
}

uint64_t sub_100EC7F2C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100EC8048;
  v8 = *(v0 + 48);
  v9 = *(v0 + 113);
  v10 = *(v0 + 112);

  return sub_10115DC0C(v8, v10, v9);
}

uint64_t sub_100EC8048()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100EC81D8, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v3[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v3[13] = v4;
    *v4 = v3;
    v4[1] = sub_100EC7AA4;
    v5 = v3[6];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100EC81D8()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for share response.", v4, 2u);
  }

  v5 = v0[11];

  type metadata accessor for AnalyticsPublisher();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100EC7AA4;
  v7 = v0[6];

  return sub_101163F78(v7);
}

uint64_t sub_100EC8350(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for OwnerSharingCircle();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_100EC8484;

  return daemon.getter();
}

uint64_t sub_100EC8484(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  v3[12] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[13] = v6;
  v7 = type metadata accessor for Daemon();
  v3[14] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019738(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[15] = v9;
  v10 = sub_100019738(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100EC8664;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100EC8664(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 128) = a1;

  v7 = *(v3 + 96);
  if (v1)
  {

    return _swift_task_switch(sub_100EC933C, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 136) = v9;
    *v9 = v6;
    v9[1] = sub_100EC8810;

    return daemon.getter();
  }
}

uint64_t sub_100EC8810(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;
  v3[18] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[19] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100019738(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_100EC89C4;
  v10 = v3[15];
  v11 = v3[14];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100EC89C4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 152);
  v7 = *v2;

  v8 = *(v4 + 144);
  if (v1)
  {

    v9 = sub_100EC9480;
  }

  else
  {

    *(v5 + 160) = a1;
    v9 = sub_100EC8B18;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100EC8B18()
{
  *(v0 + 168) = *(v0 + 160);
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v3 + 80);
    *(v0 + 264) = v5;
    v6 = *(v3 + 72);
    *(v0 + 200) = 0;
    *(v0 + 184) = v6;
    *(v0 + 192) = _swiftEmptyDictionarySingleton;
    v7 = *(v0 + 80);
    for (i = v1 + ((v5 + 32) & ~v5); ; i = v14 + ((v13 + 32) & ~v13) + v12 * v11)
    {
      sub_100ECD450(i, v7, type metadata accessor for OwnerSharingCircle);
      if (*(v7 + *(v4 + 28)) == 2)
      {
        break;
      }

      v9 = *(v0 + 176);
      v10 = *(v0 + 200) + 1;
      sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
      if (v10 == v9)
      {
        v24 = *(v0 + 168);
        v25 = *(v0 + 128);
        goto LABEL_11;
      }

      v11 = *(v0 + 200) + 1;
      v12 = *(v0 + 184);
      v13 = *(v0 + 264);
      v14 = *(v0 + 40);
      *(v0 + 192) = _swiftEmptyDictionarySingleton;
      *(v0 + 200) = v11;
      v7 = *(v0 + 80);
      v4 = *(v0 + 56);
    }

    v15 = type metadata accessor for AnalyticsEvent(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    *(v0 + 208) = v18;
    swift_defaultActor_initialize();
    *(v18 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v19 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v20 = type metadata accessor for DispatchTime();
    *(v0 + 216) = v20;
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    *(v0 + 224) = v22;
    *(v0 + 232) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v22(&v18[v19], 1, 1, v20);
    v22(&v18[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v20);
    *(v18 + 15) = 0xD000000000000037;
    *(v18 + 16) = 0x8000000101373230;

    return _swift_task_switch(sub_100EC8DD8, v18, 0);
  }

  else
  {
    v23 = *(v0 + 128);
LABEL_11:

    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = *(v0 + 48);

    v29 = *(v0 + 8);

    return v29(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100EC8DD8()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[6];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();

  return _swift_task_switch(sub_100EC8EA4, 0, 0);
}

uint64_t sub_100EC8EA4()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[30] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100EC8F78;
  v6 = v0[26];

  return sub_101162604(&unk_1013EEC68, v4);
}

uint64_t sub_100EC8F78()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_100EC973C;
  }

  else
  {
    v4 = sub_100EC90A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100EC90A8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 80);
  v4 = *(*(v0 + 56) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFB6F0(v1, v3 + v4, isUniquelyReferenced_nonNull_native);
  while (1)
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 200) + 1;
    sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
    if (v7 == v6)
    {
      break;
    }

    v8 = *(v0 + 200) + 1;
    *(v0 + 192) = v2;
    *(v0 + 200) = v8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    sub_100ECD450(*(v0 + 40) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 184) * v8, v9, type metadata accessor for OwnerSharingCircle);
    if (*(v9 + *(v10 + 28)) == 2)
    {
      v11 = type metadata accessor for AnalyticsEvent(0);
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v0 + 208) = v14;
      swift_defaultActor_initialize();
      *(v14 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
      UUID.init()();
      v15 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
      v16 = type metadata accessor for DispatchTime();
      *(v0 + 216) = v16;
      v17 = *(v16 - 8);
      v18 = *(v17 + 56);
      *(v0 + 224) = v18;
      *(v0 + 232) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v18(&v14[v15], 1, 1, v16);
      v18(&v14[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v16);
      *(v14 + 15) = 0xD000000000000037;
      *(v14 + 16) = 0x8000000101373230;

      return _swift_task_switch(sub_100EC8DD8, v14, 0);
    }
  }

  v19 = *(v0 + 168);
  v20 = *(v0 + 128);

  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = *(v0 + 48);

  v24 = *(v0 + 8);

  return v24(v2);
}

uint64_t sub_100EC933C()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get BeaconStoreActor!", v4, 2u);
  }

  v5 = sub_10090836C(_swiftEmptyArrayStorage);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_100EC9480()
{
  *(v0 + 168) = 0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v3 + 80);
    *(v0 + 264) = v5;
    v6 = *(v3 + 72);
    *(v0 + 200) = 0;
    *(v0 + 184) = v6;
    *(v0 + 192) = _swiftEmptyDictionarySingleton;
    v7 = *(v0 + 80);
    for (i = v1 + ((v5 + 32) & ~v5); ; i = v14 + ((v13 + 32) & ~v13) + v12 * v11)
    {
      sub_100ECD450(i, v7, type metadata accessor for OwnerSharingCircle);
      if (*(v7 + *(v4 + 28)) == 2)
      {
        break;
      }

      v9 = *(v0 + 176);
      v10 = *(v0 + 200) + 1;
      sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
      if (v10 == v9)
      {
        v24 = *(v0 + 168);
        v25 = *(v0 + 128);

        goto LABEL_11;
      }

      v11 = *(v0 + 200) + 1;
      v12 = *(v0 + 184);
      v13 = *(v0 + 264);
      v14 = *(v0 + 40);
      *(v0 + 192) = _swiftEmptyDictionarySingleton;
      *(v0 + 200) = v11;
      v7 = *(v0 + 80);
      v4 = *(v0 + 56);
    }

    v15 = type metadata accessor for AnalyticsEvent(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    *(v0 + 208) = v18;
    swift_defaultActor_initialize();
    *(v18 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v19 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v20 = type metadata accessor for DispatchTime();
    *(v0 + 216) = v20;
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    *(v0 + 224) = v22;
    *(v0 + 232) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v22(&v18[v19], 1, 1, v20);
    v22(&v18[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v20);
    *(v18 + 15) = 0xD000000000000037;
    *(v18 + 16) = 0x8000000101373230;

    return _swift_task_switch(sub_100EC8DD8, v18, 0);
  }

  else
  {
    v23 = *(v0 + 128);
LABEL_11:

    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = *(v0 + 48);

    v29 = *(v0 + 8);

    return v29(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100EC973C()
{
  v48 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100ECD450(v3, v2, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 256);
  v9 = *(v0 + 72);
  if (v7)
  {
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 24);
    type metadata accessor for UUID();
    sub_100019738(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1000327C4(v9, type metadata accessor for OwnerSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v47);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not prepare analytics event for offer share for beacon %{private,mask.hash}s.\n%{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = *(v0 + 256);

    sub_1000327C4(v9, type metadata accessor for OwnerSharingCircle);
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  v23 = *(v0 + 80);
  v24 = *(*(v0 + 56) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v22;
  sub_100FFB6F0(v21, v23 + v24, isUniquelyReferenced_nonNull_native);
  v26 = v47;
  while (1)
  {
    v27 = *(v0 + 176);
    v28 = *(v0 + 200) + 1;
    sub_1000327C4(*(v0 + 80), type metadata accessor for OwnerSharingCircle);
    if (v28 == v27)
    {
      break;
    }

    v29 = *(v0 + 200) + 1;
    *(v0 + 192) = v26;
    *(v0 + 200) = v29;
    v30 = *(v0 + 80);
    v31 = *(v0 + 56);
    sub_100ECD450(*(v0 + 40) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 184) * v29, v30, type metadata accessor for OwnerSharingCircle);
    if (*(v30 + *(v31 + 28)) == 2)
    {
      v32 = type metadata accessor for AnalyticsEvent(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v35 = swift_allocObject();
      *(v0 + 208) = v35;
      swift_defaultActor_initialize();
      *(v35 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
      UUID.init()();
      v36 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
      v37 = type metadata accessor for DispatchTime();
      *(v0 + 216) = v37;
      v38 = *(v37 - 8);
      v39 = *(v38 + 56);
      *(v0 + 224) = v39;
      *(v0 + 232) = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v39(&v35[v36], 1, 1, v37);
      v39(&v35[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v37);
      *(v35 + 15) = 0xD000000000000037;
      *(v35 + 16) = 0x8000000101373230;

      return _swift_task_switch(sub_100EC8DD8, v35, 0);
    }
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 128);

  v43 = *(v0 + 72);
  v42 = *(v0 + 80);
  v44 = *(v0 + 48);

  v45 = *(v0 + 8);

  return v45(v26);
}

uint64_t sub_100EC9C64()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[2];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v0[3] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[3] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[2];
        v0[4] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[5] = v4;
        v5 = swift_task_alloc();
        v0[6] = v5;
        *v5 = v0;
        v5[1] = sub_100EC9DA8;

        return sub_10115DE88(v4);
      }

      return result;
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100EC9DA8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100ECD530;
  }

  else
  {
    v3 = sub_100EC9EC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EC9EC0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  if (v2 + 1 == v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[4] + 1;
    v0[4] = v6;
    v7 = v0[2];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v0[5] = v8;
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_100EC9DA8;

    return (sub_10115DE88)(v8);
  }
}

uint64_t sub_100EC9FEC(char a1)
{
  *(v1 + 112) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100ECA088, 0, 0);
}

uint64_t sub_100ECA088()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[7] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[8] = v8;
  v0[9] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000034;
  *(v4 + 16) = 0x8000000101373350;

  return _swift_task_switch(sub_100ECA1E0, v4, 0);
}

uint64_t sub_100ECA1E0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100ECA2F8;
  v8 = *(v0 + 48);
  v9 = *(v0 + 112);

  return sub_10115EEE0(v8, v9);
}

uint64_t sub_100ECA2F8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECA5A0, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v3[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v3[13] = v4;
    *v4 = v3;
    v4[1] = sub_100ECA488;
    v5 = v3[6];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100ECA488()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_10086D3EC, 0, 0);
}

uint64_t sub_100ECA5A0()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for Keys  Upload.", v4, 2u);
  }

  v5 = v0[11];

  type metadata accessor for AnalyticsPublisher();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100ECA488;
  v7 = v0[6];

  return sub_101163F78(v7);
}

uint64_t sub_100ECA718(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100ECA7B4, 0, 0);
}

uint64_t sub_100ECA7B4()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[8] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[10] = v8;
  v0[11] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000040;
  *(v4 + 16) = 0x80000001013733D0;

  return _swift_task_switch(sub_100ECA90C, v4, 0);
}

uint64_t sub_100ECA90C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100ECAA24;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];

  return sub_10115F154(v8, v9, v10);
}

uint64_t sub_100ECAA24()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECAD34, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v3[14] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v3[15] = v4;
    *v4 = v3;
    v4[1] = sub_100ECABB4;
    v5 = v3[8];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100ECABB4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100ECACCC, 0, 0);
}

uint64_t sub_100ECACCC()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100ECAD34()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for Owned Daily Shares Count.", v4, 2u);
  }

  v5 = v0[13];

  type metadata accessor for AnalyticsPublisher();
  v0[14] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100ECABB4;
  v7 = v0[8];

  return sub_101163F78(v7);
}

uint64_t sub_100ECAEAC(char a1, char a2)
{
  *(v2 + 353) = a2;
  *(v2 + 352) = a1;
  v3 = type metadata accessor for MemberSharingCircle();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v6 = type metadata accessor for StableIdentifier();
  *(v2 + 112) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord();
  *(v2 + 136) = v8;
  v9 = *(v8 - 8);
  *(v2 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  *(v2 + 176) = v13;
  *v13 = v2;
  v13[1] = sub_100ECB0A0;

  return daemon.getter();
}

uint64_t sub_100ECB0A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  *(v3 + 184) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019738(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019738(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100ECB27C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100ECB27C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *v2;
  *(*v2 + 200) = a1;

  v6 = *(v3 + 184);
  if (v1)
  {

    v7 = sub_100ECC764;
  }

  else
  {

    v7 = sub_100ECB3CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100ECB3CC()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[26] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[27] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[28] = v8;
  v0[29] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000037;
  *(v4 + 16) = 0x80000001013731F0;

  return _swift_task_switch(sub_100ECB524, v4, 0);
}

uint64_t sub_100ECB524()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[21];
  static DispatchTime.now()();
  v2(v6, 0, 1, v3);
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v6, v4 + v7);
  swift_endAccess();

  return _swift_task_switch(sub_100ECB5F4, v5, 0);
}

uint64_t sub_100ECB5F4()
{
  v1 = *(v0 + 200);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100ECB6E0;
  v5 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_100ECB6E0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_100ECB7F8, v2, 0);
}

uint64_t sub_100ECB81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[31];
  v36 = *(v4 + 16);
  if (v36)
  {
    v5 = 0;
    v33 = v3[15] + 8;
    v34 = v3[17];
    v35 = v3[18];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return _swift_task_switch(a1, a2, a3);
      }

      v7 = v3[20];
      v8 = v3[16];
      v9 = v3[14];
      v10 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v11 = *(v35 + 72);
      sub_100ECD450(v3[31] + v10 + v11 * v5, v7, type metadata accessor for OwnedBeaconRecord);
      v12 = *(v34 + 24);
      sub_100ECD450(v7 + v12, v8, type metadata accessor for StableIdentifier);
      LODWORD(v9) = swift_getEnumCaseMultiPayload();
      sub_1000327C4(v8, type metadata accessor for StableIdentifier);
      if (v9 == 1)
      {
        goto LABEL_12;
      }

      v13 = v3[14];
      sub_100ECD450(v7 + v12, v3[15], type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v16 = v33;
        v17 = *(v33 + v15[12]);

        v18 = *(v33 + v15[16]);

        v19 = *(v33 + v15[20]);

        v20 = v15[28];
LABEL_11:
        v24 = *(v16 + v20);
        v25 = v3[15];

        v26 = type metadata accessor for UUID();
        (*(*(v26 - 8) + 8))(v25, v26);
LABEL_12:
        sub_10002ADE4(v3[20], v3[19], type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_10112434C(v27 > 1, v28 + 1, 1);
        }

        v29 = v3[19];
        _swiftEmptyArrayStorage[2] = v28 + 1;
        a1 = sub_10002ADE4(v29, _swiftEmptyArrayStorage + v10 + v28 * v11, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v6 = v3[20];
      sub_1000327C4(v3[15], type metadata accessor for StableIdentifier);
      a1 = sub_1000327C4(v6, type metadata accessor for OwnedBeaconRecord);
LABEL_4:
      if (v36 == ++v5)
      {
        v30 = v3[31];
        goto LABEL_18;
      }
    }

    v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v16 = v33;
    v22 = *(v33 + v21[12]);

    v23 = *(v33 + v21[16]);

    v20 = v21[20];
    goto LABEL_11;
  }

LABEL_18:
  v31 = v3[25];

  v3[32] = _swiftEmptyArrayStorage[2];

  a1 = sub_100ECBBA4;
  a2 = v31;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100ECBBA4()
{
  v1 = v0[25];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[33] = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  v0[34] = v4;
  *v3 = v0;
  v3[1] = sub_100ECBC94;
  v5 = v0[25];

  return unsafeBlocking<A>(context:_:)(v0 + 6, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_100ECBC94()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_100ECBDAC, v2, 0);
}

uint64_t sub_100ECBDD0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5[35];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5[9];
    v34 = v5[8];
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v10 = v5[13];
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = *(v9 + 72);
      sub_100ECD450(v5[35] + v11 + v12 * v8, v10, type metadata accessor for MemberSharingCircle);
      v13 = *(v10 + *(v34 + 40));
      if (v13 == 4 || v13 == 1)
      {
        sub_10002ADE4(v5[13], v5[12], type metadata accessor for MemberSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_101123FA0(v15 > 1, v16 + 1, 1);
        }

        v17 = v5[12];
        _swiftEmptyArrayStorage[2] = v16 + 1;
        a1 = sub_10002ADE4(v17, _swiftEmptyArrayStorage + v11 + v16 * v12, type metadata accessor for MemberSharingCircle);
      }

      else
      {
        a1 = sub_1000327C4(v5[13], type metadata accessor for MemberSharingCircle);
      }

      ++v8;
    }

    while (v7 != v8);
    v19 = v5[8];
    v18 = v5[9];
    v33 = _swiftEmptyArrayStorage[2];

    v20 = 0;
    v35 = v19;
    while (v20 < *(v6 + 16))
    {
      v21 = v5[11];
      v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v23 = *(v18 + 72);
      sub_100ECD450(v5[35] + v22 + v23 * v20, v21, type metadata accessor for MemberSharingCircle);
      v24 = v5[11];
      if (*(v21 + *(v19 + 40)))
      {
        a1 = sub_1000327C4(v24, type metadata accessor for MemberSharingCircle);
      }

      else
      {
        sub_10002ADE4(v24, v5[10], type metadata accessor for MemberSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_101123FA0(v25 > 1, v26 + 1, 1);
        }

        v27 = v5[10];
        _swiftEmptyArrayStorage[2] = v26 + 1;
        a1 = sub_10002ADE4(v27, _swiftEmptyArrayStorage + v22 + v26 * v23, type metadata accessor for MemberSharingCircle);
        v19 = v35;
      }

      if (v7 == ++v20)
      {
        v28 = v33;
        goto LABEL_27;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage[2];

LABEL_27:
    v5[36] = v28;
    v29 = v5[35];
    v5[37] = _swiftEmptyArrayStorage[2];

    v5[7] = v29;
    v30 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
    v31 = swift_task_alloc();
    v5[38] = v31;
    a5 = sub_1000041A4(&qword_1016BE938, &unk_101698C40, &qword_10138C1C0);
    *v31 = v5;
    v31[1] = sub_100ECC1BC;
    a3 = v5[34];
    a2 = v5[25];
    a4 = &type metadata for String;
    a1 = &unk_1013EEC48;
  }

  return Sequence.asyncCompactMap<A>(_:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100ECC1BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 280);

    *(v4 + 312) = a1;

    return _swift_task_switch(sub_100ECC300, 0, 0);
  }
}

uint64_t sub_100ECC300()
{
  v1 = sub_101129930(*(v0 + 312));

  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v3[1] = sub_100ECC3E4;
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v6 = *(v0 + 256);
  v7 = *(v0 + 208);
  v8 = *(v0 + 353);
  v9 = *(v0 + 352);

  return (sub_101160470)(v7, v9, v6, v4, v5, v2, v8);
}

uint64_t sub_100ECC3E4()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECC8E0, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v3[42] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v3[43] = v4;
    *v4 = v3;
    v4[1] = sub_100ECC574;
    v5 = v3[26];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100ECC574()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_100ECC68C, 0, 0);
}

uint64_t sub_100ECC68C()
{
  v2 = v0[25];
  v1 = v0[26];

  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100ECC764()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not get beaconStore reference for analytics.", v4, 2u);
  }

  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100ECC8E0()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for incoming share.", v4, 2u);
  }

  v5 = v0[41];

  type metadata accessor for AnalyticsPublisher();
  v0[42] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_100ECC574;
  v7 = v0[26];

  return sub_101163F78(v7);
}

uint64_t sub_100ECCA58(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100ECCAF4, 0, 0);
}

uint64_t sub_100ECCAF4()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[8] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[10] = v8;
  v0[11] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000044;
  *(v4 + 16) = 0x8000000101373160;

  return _swift_task_switch(sub_100ECCC4C, v4, 0);
}

uint64_t sub_100ECCC4C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100ECCD64;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];

  return sub_101161594(v8, v9, v10);
}

uint64_t sub_100ECCD64()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100ECD00C, 0, 0);
  }

  else
  {
    type metadata accessor for AnalyticsPublisher();
    v3[14] = swift_allocObject();
    swift_defaultActor_initialize();
    v4 = swift_task_alloc();
    v3[15] = v4;
    *v4 = v3;
    v4[1] = sub_100ECCEF4;
    v5 = v3[8];

    return sub_101163F78(v5);
  }
}

uint64_t sub_100ECCEF4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100ECD52C, 0, 0);
}

uint64_t sub_100ECD00C()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not prepare analytics event for sytem error display id prefix.", v4, 2u);
  }

  v5 = v0[13];

  type metadata accessor for AnalyticsPublisher();
  v0[14] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100ECCEF4;
  v7 = v0[8];

  return sub_101163F78(v7);
}

uint64_t sub_100ECD184(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_100EC672C(a1, a2, v2);
}

uint64_t sub_100ECD248()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BBA4C;

  return sub_100EC5230(v2, v3, v4);
}

uint64_t sub_100ECD2F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_100EC5B38(a1, v5, v4);
}

uint64_t sub_100ECD3C8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100ECD450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100ECD4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100ECD538(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for XPCActivity.Priority();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100ECD654, 0, 0);
}

uint64_t sub_100ECD654()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 88) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_100ECD754;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100ECD754()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100ECD86C, 0, 0);
}

unint64_t sub_100ECD86C()
{
  v1 = v0[2];
  (*(v0[9] + 104))(v0[10], enum case for XPCActivity.Priority.utility(_:), v0[8]);
  result = sub_101074BA8(v1);
  if (!is_mul_ok(result, 0x3CuLL))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((60 * result) & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_101074B8C(v1);

  if (!is_mul_ok(v3, 0x3CuLL))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (((60 * v3) & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v12 = v0[4];
  sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
  v8 = *(v6 + 72);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1013B62D0;
  static XPCActivity.Criteria.Options.wakeDevice.getter();
  static XPCActivity.Criteria.Options.powerNap.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.diskIntensive.getter();
  static XPCActivity.Criteria.Options.cpuIntensive.getter();
  static XPCActivity.Criteria.Options.requiresClassC.getter();
  static XPCActivity.Criteria.Options.preventDeviceSleep.getter();
  v0[3] = v10;
  sub_100019780(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options);
  sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
  sub_100359D10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100ECDAC8(uint64_t a1)
{
  v1[2] = a1;
  v3 = type metadata accessor for XPCActivity.State();
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100ECDB8C, a1, 0);
}

uint64_t sub_100ECDB8C()
{
  *(v0 + 128) = *(*(v0 + 16) + 128);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100ECDC28;
  v2 = *(v0 + 16);

  return sub_100ED0388();
}

uint64_t sub_100ECDC28(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 129) = a1;

  return _swift_task_switch(sub_100ECDD40, v3, 0);
}

uint64_t sub_100ECDD40()
{
  v2 = *(v0 + 129);
  v3 = *(v0 + 16);
  v4 = *(v3 + 129);
  *(v0 + 130) = v4;
  if (v2 != v4)
  {
    *(v3 + 129) = v2;
    v3 = *(v0 + 16);
  }

  *(v0 + 56) = *(v3 + 120);

  return _swift_task_switch(sub_100ECDDD0, 0, 0);
}

uint64_t sub_100ECDDD0()
{
  if (*(v0 + 128))
  {
    if (*(v0 + 130) == *(v0 + 129))
    {
    }

    else if (*(v0 + 56))
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_1000076D4(v1, qword_10177A560);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "BeaconSharing beacons shared state changed.", v4, 2u);
      }

      v5 = *(v0 + 56);

      v6 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
      v14 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
      v7 = swift_task_alloc();
      *(v0 + 120) = v7;
      *v7 = v0;
      v7[1] = sub_100ECE890;
      v8 = *(v0 + 40);

      return v14(v8);
    }

    v12 = *(v0 + 40);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v10 = async function pointer to daemon.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_100ECE014;

    return daemon.getter();
  }
}

uint64_t sub_100ECE014(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019780(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019780(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100ECE1F0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100ECE1F0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;

  v8 = *(v4 + 72);
  if (v1)
  {

    v9 = sub_100ECE350;
    v10 = 0;
  }

  else
  {

    *(v5 + 88) = a1;
    v9 = sub_100ECE48C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100ECE350()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v6, 2u);
  }

  else
  {
  }

  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100ECE4B4()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100ECE590;
  v3 = *(v0 + 96);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_100ECE590()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100ECE68C, 0, 0);
}

uint64_t sub_100ECE68C()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100ECE71C;
  v2 = *(v0 + 16);

  return sub_100ECEA54();
}

uint64_t sub_100ECE71C()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100ECE818, 0, 0);
}

uint64_t sub_100ECE818()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100ECE890()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100ECE9E8, 0, 0);
}

uint64_t sub_100ECE9E8()
{
  v1 = v0[7];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100ECEA54()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100ECEB0C, v0, 0);
}

uint64_t sub_100ECEB0C()
{
  v1 = v0[2];
  if (*(v1 + 129) == 1)
  {
    v3 = v0[3];
    v2 = v0[4];
    type metadata accessor for XPCActivity();
    static DispatchQoS.default.getter();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];
    swift_retain_n();
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_100ECED40;
    v7 = v0[4];
    v8 = v0[2];

    return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000024, 0x80000001013734C0, v7, &unk_1013EEDB8, v4, &unk_1013EEDC8, v8);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A560);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "No shared beacons, no activity required.", v12, 2u);
    }

    v13 = v0[4];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100ECED40(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100ECEE58, v3, 0);
}

uint64_t sub_100ECEE58()
{
  v1 = v0[2];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[6];

  *(v1 + 128) = 1;
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}