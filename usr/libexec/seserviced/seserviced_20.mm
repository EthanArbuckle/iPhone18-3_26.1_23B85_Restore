uint64_t sub_1001A292C(uint64_t result)
{
  if (result < 0)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(v3) < result)
      {
        return 0;
      }

LABEL_9:
      v9 = result;
      sub_100069E2C(*v1, *(v1 + 8));
      sub_100288640(v9, v2, v3, v15);
      v10 = v15[0];
      v11 = *v1;
      v12 = *(v1 + 8);
      sub_100069E2C(*v1, v12);
      sub_100084D68(v9, v11, v12, v15);
      v13 = v15[0];
      v14 = v15[1];
      sub_10006A178(*v1, *(v1 + 8));
      result = v10;
      *v1 = v13;
      *(v1 + 8) = v14;
      return result;
    }

    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 < result)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  if (v4 == 2)
  {
    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v8 >= result)
    {
      goto LABEL_9;
    }
  }

  else if (!result)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1001A2A3C()
{
  result = sub_10013044C(0xD000000000000014, 0x8000000100465660);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B360 = result;
    *algn_10051B368 = v1;
  }

  return result;
}

uint64_t sub_1001A2A88(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA384();
      sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001A2C68(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1001A2C68(v4, v5);
  }

  type metadata accessor for SHA384();
  sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001A2C68(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA384();
      sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A2D48(void *a1)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = sub_1003AF1FC(a1, isa);

  if (v3)
  {
    swift_willThrow();

    return 0;
  }

  v5 = sub_1002B3B94(&off_1004C3B78);
  v7 = v6;
  v8 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v5, v7);
  v14 = 0;
  v9 = sub_1003AEB5C(a1, v8, &v14);

  if (!v9)
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v10 = v14;
  v11 = sub_1003B0934(v9);

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t sub_1001A2ED8(char *a1)
{
  v3 = v1;
  if (qword_100501A38 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = sub_1003AF1FC(a1, isa);

    if (v6)
    {
      break;
    }

    v57 = a1;
    v55 = v3;
    v2 = sub_10012F668(0, 16, 0, _swiftEmptyArrayStorage);
    v7 = sub_1002B3B94(&off_1004C4030);
    v9 = v8;
    v10 = 0;
LABEL_5:
    v56 = v2;
    if (v10 <= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = v10;
    }

    a1 = (v10 << 16);
    v3 = v10;
    v12 = v57;
    while (v11 != v3)
    {
      v13 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_65;
        }

        if (*(v7 + 16) > 2)
        {
          goto LABEL_55;
        }

        if (*(v7 + 24) < 3)
        {
          goto LABEL_58;
        }

        v16 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v7 + 16);
          v2 = *(v7 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v17, __DataStorage._offset.getter()))
            {
              goto LABEL_64;
            }

            if (__OFSUB__(v2, v17))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }
          }

          else if (__OFSUB__(v2, v17))
          {
            goto LABEL_62;
          }

          v26 = type metadata accessor for __DataStorage();
          v27 = *(v26 + 48);
          v28 = *(v26 + 52);
          swift_allocObject();
          v29 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v16 = v29;
          v12 = v57;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = *(v7 + 16);
          v30 = *(v7 + 24);
          type metadata accessor for Data.RangeReference();
          v31 = swift_allocObject();
          *(v31 + 16) = v2;
          *(v31 + 24) = v30;

          v7 = v31;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v32 = __DataStorage._bytes.getter();
        if (!v32)
        {
          goto LABEL_67;
        }

        v33 = v32;
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(2, v34))
        {
          goto LABEL_60;
        }

        *(v33 + 2 - v34) = v3;
        v9 = v16 | 0x8000000000000000;
      }

      else if (v13)
      {
        v2 = v7 >> 32;
        if (v7 >> 32 < 3 || v7 > 2)
        {
          goto LABEL_57;
        }

        v18 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
          {
            goto LABEL_63;
          }

          v19 = type metadata accessor for __DataStorage();
          v20 = *(v19 + 48);
          v21 = *(v19 + 52);
          swift_allocObject();
          v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v18 = v22;
          v12 = v57;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          goto LABEL_66;
        }

        v24 = v23;
        v25 = __DataStorage._offset.getter();
        if (__OFSUB__(2, v25))
        {
          goto LABEL_59;
        }

        *(v24 + 2 - v25) = v3;
        v9 = v18 | 0x4000000000000000;
      }

      else
      {
        v14 = BYTE6(v9);
        if (BYTE6(v9) < 3uLL)
        {
          goto LABEL_56;
        }

        v7 = &a1[v7 & 0xFFFFFFFFFF00FFFFLL];
        v15 = v58 & 0xF00000000000000 | v9 & 0xFFFFFFFFFFFFLL;
        v9 = v15 | (BYTE6(v9) << 48);
        v58 = v15 | (v14 << 48);
      }

      v35 = Data._bridgeToObjectiveC()().super.isa;
      v61 = 0;
      v36 = sub_1003AE9C8(v12, v35, &v61);

      if (!v36)
      {
        v2 = v61;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_51;
      }

      v37 = v61;
      v38 = sub_1003B0984(v36);
      if (v38 != 27266)
      {
        if (v38 != 36864)
        {

          sub_1000B9C54();
          v61 = 0;
          v62 = 0xE000000000000000;
          _StringGuts.grow(_:)(25);

          v61 = 0xD000000000000017;
          v62 = 0x8000000100465640;
          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1004098F0;
          v52 = sub_1003B0984(v36);
          *(v51 + 56) = &type metadata for UInt16;
          *(v51 + 64) = &protocol witness table for UInt16;
          *(v51 + 32) = v52;
          v53._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v53);

          sub_10030990C(0, 1, v61, v62, 0);
          swift_willThrow();

          goto LABEL_51;
        }

        v39 = sub_1003B0934(v36);
        v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        sub_10026C534(v63);
        v61 = v40;
        v62 = v42;
        sub_100069E2C(v40, v42);
        v43 = sub_1001A93E0(&v61, v63);
        if (v55)
        {

          sub_10006A178(v40, v42);
          v71 = v64;
          v72 = v65;
          sub_10018C454(&v71);
          v60 = v66;
          sub_1001A3618(&v60);
          sub_10006A178(v61, v62);

          sub_10006A178(v7, v9);
          return v2;
        }

        v44 = v43;
        v69 = v64;
        v70 = v65;
        sub_10018C454(&v69);
        v59 = v66;
        sub_1001A3618(&v59);
        sub_10006A178(v61, v62);
        sub_10026C6C4(v44, v67);
        v55 = 0;
        sub_10006A178(v40, v42);
        v2 = v56;
        v46 = *(v56 + 16);
        v45 = *(v56 + 24);
        if (v46 >= v45 >> 1)
        {
          v2 = sub_10012F668((v45 > 1), v46 + 1, 1, v56);
        }

        v10 = v3 + 1;

        *(v2 + 16) = v46 + 1;
        v47 = v2 + 72 * v46;
        *(v47 + 32) = v67[0];
        v48 = v67[1];
        v49 = v67[2];
        v50 = v67[3];
        *(v47 + 96) = v68;
        *(v47 + 64) = v49;
        *(v47 + 80) = v50;
        *(v47 + 48) = v48;
        if (v3 == 15)
        {
          goto LABEL_51;
        }

        goto LABEL_5;
      }

      ++v3;

      a1 += 0x10000;
      if (v3 == 16)
      {
        v2 = v56;
LABEL_51:
        sub_10006A178(v7, v9);
        return v2;
      }
    }

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
    __break(1u);
LABEL_61:
    swift_once();
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1001A3618(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504EC8, &qword_10040C3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A3680(void *a1)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = sub_1003AF1FC(a1, isa);

  if (!v4)
  {
    v5 = sub_1002B3B94(&off_1004C4058);
    v7 = v6;
    v8 = Data._bridgeToObjectiveC()().super.isa;
    v22 = 0;
    v9 = sub_1003AE9C8(a1, v8, &v22);

    v1 = v22;
    if (!v9)
    {
      v17 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v5, v7);
      return v1;
    }

    v10 = v22;
    v11 = sub_1003B0934(v9);
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = v14;
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v16 == 2)
      {
        v18 = *(v12 + 16);
        v19 = *(v12 + 24);
        sub_10006A178(v12, v15);
        if (v18 == v19)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      sub_10006A178(v12, v14);
    }

    else
    {
      if (!v16)
      {
        sub_10006A178(v12, v14);
        if ((v14 & 0xFF000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:
        v20 = sub_1003B0934(v9);
        v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10006A178(v5, v7);

LABEL_18:
        return v1;
      }

      sub_10006A178(v12, v14);
      if (v12 != v12 >> 32)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    sub_10006A178(v5, v7);
    v1 = 0;
    goto LABEL_18;
  }

  swift_willThrow();
  return v1;
}

void sub_1001A38C8(void *a1)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = sub_1003AF1FC(a1, isa);

  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v4 = Data._bridgeToObjectiveC()().super.isa;
    v5 = sub_1003AEF50();

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = 0;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1001A3A2C(uint64_t a1, unsigned __int16 a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 0xEu)
  {
    v6 = 0;
  }

  else
  {
    v3 = type metadata accessor for __DataStorage();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = __DataStorage.init(capacity:)() | 0x4000000000000000;
  }

  LOWORD(v8) = 0;
  v47 = v6;
  while (1)
  {
    if (((a2 - v8) & 0xFFFF0000) != 0)
    {
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
      __break(1u);
      goto LABEL_61;
    }

    if ((a2 - v8) >= 0x2E4u)
    {
      v9 = 740;
    }

    else
    {
      v9 = (a2 - v8);
    }

    v10 = sub_1003AF0E8();
    if (!v10)
    {
      v32 = 0;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10006A178(0, v47);
    }

    v11 = v10;
    v12 = 0;
    v13 = sub_1003B0934(v11);
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        sub_10006A178(v14, v16);
        if (__OFSUB__(v18, v19))
        {
          goto LABEL_58;
        }

        if (v18 - v19 != v9)
        {
          break;
        }
      }

      else
      {
        sub_10006A178(v14, v16);
        if (a2 != v8)
        {
          break;
        }
      }

      goto LABEL_24;
    }

    if (!v17)
    {
      sub_10006A178(v14, v16);
      if (BYTE6(v16) != v9)
      {
        break;
      }

      goto LABEL_24;
    }

    sub_10006A178(v14, v16);
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      goto LABEL_57;
    }

    if (HIDWORD(v14) - v14 != v9)
    {
      break;
    }

LABEL_24:
    v20 = sub_1003B0934(v11);
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    Data.append(_:)();
    sub_10006A178(v21, v23);
    v24 = sub_1003B0934(v11);
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v28 != 2)
      {
        sub_10006A178(v25, v27);
        LOWORD(v29) = 0;
        goto LABEL_37;
      }

      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      sub_10006A178(v25, v27);
      v29 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_60;
      }

LABEL_33:
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (v29 >> 16)
      {
        goto LABEL_55;
      }

      goto LABEL_37;
    }

    if (v28)
    {
      sub_10006A178(v25, v27);
      LODWORD(v29) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_59;
      }

      v29 = v29;
      goto LABEL_33;
    }

    sub_10006A178(v25, v27);
    LOWORD(v29) = BYTE6(v27);
LABEL_37:
    v8 = v8 + v29;
    if ((v8 & 0x10000) != 0)
    {
      goto LABEL_56;
    }

    if (v8 == a2)
    {
      return 0;
    }
  }

  _StringGuts.grow(_:)(62);
  v33._countAndFlagsBits = 0xD00000000000001ELL;
  v33._object = 0x80000001004656C0;
  String.append(_:)(v33);
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  v35._object = 0x80000001004656E0;
  v35._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v35);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0x746F672074756220;
  v37._object = 0xE900000000000020;
  String.append(_:)(v37);
  v38 = sub_1003B0934(v11);
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v41;
  v43 = v41 >> 62;
  if ((v41 >> 62) <= 1)
  {
    if (!v43)
    {
LABEL_50:
      sub_10006A178(v39, v41);
      goto LABEL_51;
    }

LABEL_48:
    sub_10006A178(v39, v42);
    if (!__OFSUB__(HIDWORD(v39), v39))
    {
      goto LABEL_51;
    }

LABEL_61:
    __break(1u);
  }

  if (v43 != 2)
  {
    goto LABEL_50;
  }

  v45 = *(v39 + 16);
  v44 = *(v39 + 24);
  sub_10006A178(v39, v42);
  if (__OFSUB__(v44, v45))
  {
    __break(1u);
    goto LABEL_48;
  }

LABEL_51:
  sub_1000B9C54();
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  sub_10030990C(0, 1, 0, 0xE000000000000000, 0);
  swift_willThrow();

  return sub_10006A178(0, v47);
}

Class sub_1001A3F58(void *a1)
{
  v3 = objc_opt_self();
  v5 = sub_1003AF3C4(a1, v4);
  v6 = [v5 seid];

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v7, v9);
  v60 = 0;
  v11 = sub_10002DFC0(v3, v10.super.isa, &v60);

  v12 = v60;
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v60 = 0;
    v17 = sub_1003AEF50();

    if (!v17)
    {
      v25 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_29:
      sub_10006A178(v13, v15);
      return v10.super.isa;
    }

    v18 = v60;
    v10.super.isa = sub_1003B0934(v17);
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v21;
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 != 2)
      {
        sub_10006A178(v19, v21);
        goto LABEL_18;
      }

      v26 = *(v19 + 16);
      v10.super.isa = *(v19 + 24);
      sub_10006A178(v19, v22);
      if (!__OFSUB__(v10.super.isa, v26))
      {
        if ((v10.super.isa - v26) != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (!v23)
      {
        sub_10006A178(v19, v21);
        if (BYTE6(v21) != 2)
        {
          goto LABEL_18;
        }

LABEL_15:
        v27 = sub_1003B0934(v17);
        v10.super.isa = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_100090214(v10.super.isa, v29, 0, 0, 0);
        sub_10006A178(v10.super.isa, v29);
        if (v1)
        {
          sub_10006A178(v13, v15);

          return v10.super.isa;
        }

        v42 = sub_1001A3A2C(a1, v30);
        v44 = v43;
        v60 = v42;
        v61 = v43;
        v45 = v42;
        sub_100069E2C(v42, v43);
        v46 = sub_1001AD294(&v60, 0);
        v48 = v47;
        v49 = v46;
        v51 = v50;
        sub_10006A178(v60, v61);
        v59 = v51;
        v52 = sub_1001AD9C0(v49, v48, v51);
        if (v52 < 0)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
        }

        v53 = v52;
        v54 = v45;
        v10.super.isa = Data._Representation.subscript.getter();
        v55 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          v56 = 0;
          if (v55 != 2 || (v58 = *(v54 + 16), v57 = *(v54 + 24), v56 = v57 - v58, !__OFSUB__(v57, v58)))
          {
LABEL_41:
            if (v56 >= v53)
            {
              Data._Representation.subscript.getter();
              sub_10006A178(v48, v59);
              sub_10006A178(v54, v44);

              sub_10006A178(v13, v15);
              return v10.super.isa;
            }

            goto LABEL_47;
          }

          __break(1u);
        }

        else if (!v55)
        {
          v56 = BYTE6(v44);
          goto LABEL_41;
        }

        if (__OFSUB__(HIDWORD(v54), v54))
        {
          goto LABEL_48;
        }

        v56 = HIDWORD(v54) - v54;
        goto LABEL_41;
      }

      v10.super.isa = HIDWORD(v19);
      sub_10006A178(v19, v21);
      if (!__OFSUB__(HIDWORD(v19), v19))
      {
        if (HIDWORD(v19) - v19 == 2)
        {
          goto LABEL_15;
        }

LABEL_18:
        v60 = 0;
        v61 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v31._object = 0x8000000100465680;
        v31._countAndFlagsBits = 0xD000000000000034;
        String.append(_:)(v31);
        v32 = sub_1003B0934(v17);
        v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = v35;
        v37 = v35 >> 62;
        if ((v35 >> 62) > 1)
        {
          if (v37 != 2)
          {
LABEL_27:
            sub_10006A178(v33, v35);
LABEL_28:
            sub_1000B9C54();
            v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v40);

            sub_10030990C(0, 1, v60, v61, 0);
            swift_willThrow();

            goto LABEL_29;
          }

          v39 = *(v33 + 16);
          v38 = *(v33 + 24);
          sub_10006A178(v33, v36);
          v33 = v38 - v39;
          if (!__OFSUB__(v38, v39))
          {
            goto LABEL_28;
          }

          __break(1u);
        }

        else if (!v37)
        {
          goto LABEL_27;
        }

        sub_10006A178(v33, v36);
        if (!__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_28;
        }

        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = v12;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return v10.super.isa;
}

uint64_t sub_1001A44E0(void *a1)
{
  result = sub_1001A3680(a1);
  if (!v1 && v4 >> 60 != 15)
  {
    sub_10006A2D0(result, v4);
    if (qword_100501A38 != -1)
    {
      swift_once();
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = sub_1003AF1FC(a1, isa);

    if (v6)
    {
      return swift_willThrow();
    }

    else
    {
      v7 = sub_1002B3B94(&off_1004C4080);
      v9 = v8;
      v10 = Data._bridgeToObjectiveC()().super.isa;
      v14 = 0;
      v11 = sub_1003AEB5C(a1, v10, &v14);

      if (v11)
      {
        v12 = v14;
      }

      else
      {
        v13 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      return sub_10006A178(v7, v9);
    }
  }

  return result;
}

uint64_t sub_1001A4668(void *a1, void *a2, void *a3)
{
  v6 = sub_1002B3B94(&off_1004C4100);
  v8 = v7;
  v22 = v6;
  v23 = v7;
  v21[3] = &type metadata for Data;
  v21[4] = &protocol witness table for Data;
  v21[0] = a2;
  v21[1] = a3;
  v9 = sub_1000752B0(v21, &type metadata for Data);
  v10 = *v9;
  v11 = v9[1];
  sub_100069E2C(v6, v8);
  sub_100069E2C(a2, a3);
  sub_10008E4C8(v10, v11);
  sub_10006A178(v6, v8);
  sub_1000752F4(v21);
  v13 = v22;
  v12 = v23;
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = sub_1003AF1FC(a1, isa);

  if (v15)
  {
    goto LABEL_4;
  }

  v17 = Data._bridgeToObjectiveC()().super.isa;
  v21[0] = 0;
  v18 = sub_1003AEB5C(a1, v17, v21);

  if (!v18)
  {
    v20 = v21[0];
    _convertNSErrorToError(_:)();

LABEL_4:
    swift_willThrow();
    return sub_10006A178(v13, v12);
  }

  v19 = v21[0];

  return sub_10006A178(v13, v12);
}

void sub_1001A4854(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = sub_1003AF1FC(a1, isa);

  if (v12)
  {
    swift_willThrow();
  }

  else
  {
    v13 = [objc_opt_self() randomData:16];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v65[0] = v14;
    v65[1] = v16;
    v65[2] = a2;
    v65[3] = a3;
    v66 = a4 & 1;
    sub_100069E2C(a2, a3);
    v17 = sub_10026BCF4();
    if (v5)
    {
      sub_1001A6E90(v65);
    }

    else
    {
      v48 = v17;
      v49 = v18;
      v19 = Data._bridgeToObjectiveC()().super.isa;
      v51 = 0;
      v20 = sub_1003AEB5C(a1, v19, &v51);

      if (v20)
      {
        v21 = v51;
        v22 = sub_1003B0934(v20);
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        sub_10026E0EC(v53);
        v51 = v23;
        v52 = v25;
        sub_100069E2C(v23, v25);
        v26 = sub_1001A93E0(&v51, v53);
        v63 = v54;
        v64 = v55;
        v35 = v26;
        sub_10018C454(&v63);
        v50 = v56;
        sub_1001A3618(&v50);
        sub_10006A178(v51, v52);
        sub_10026E8DC(v35, v57);
        v36 = v58;
        v37 = v61;
        v47 = v62;
        sub_10006A178(v23, v25);
        v38 = sub_1003B0934(v20);
        v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        sub_10006A178(v48, v49);

        sub_1001A6E90(v65);
        v42 = v57[1];
        v43 = v57[2];
        v44 = v57[3];
        v45 = v59;
        v46 = v60;
        *a5 = v57[0];
        *(a5 + 16) = v42;
        *(a5 + 32) = v43;
        *(a5 + 48) = v44;
        *(a5 + 64) = v36 & 1;
        *(a5 + 88) = v46;
        *(a5 + 72) = v45;
        *(a5 + 104) = v37;
        *(a5 + 112) = v47;
        *(a5 + 120) = v39;
        *(a5 + 128) = v41;
      }

      else
      {
        v27 = v51;
        v28 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_1000B9C54();
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v51 = 0xD000000000000020;
        v52 = 0x8000000100465700;
        sub_100288788(v48, v49);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v29 = BidirectionalCollection<>.joined(separator:)();
        v31 = v30;

        v32._countAndFlagsBits = v29;
        v32._object = v31;
        String.append(_:)(v32);

        v33 = v51;
        v34 = v52;
        swift_errorRetain();
        sub_10030990C(0, 1, v33, v34, v28);
        swift_willThrow();
        sub_10006A178(v48, v49);
        sub_1001A6E90(v65);
      }
    }
  }
}

void sub_1001A4DF8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for SHA384();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA384Digest();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __DataStorage();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = __DataStorage.init(capacity:)();
  v47 = 0;
  v48 = v17 | 0x4000000000000000;
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    LODWORD(v19) = 0;
    if (v18 != 2)
    {
      goto LABEL_12;
    }

    v21 = *(a2 + 16);
    v20 = *(a2 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    LODWORD(v19) = BYTE6(a3);
    goto LABEL_12;
  }

  LODWORD(v19) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
  }

  v19 = v19;
LABEL_10:
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v19 >> 16))
  {
LABEL_12:
    v40 = a1;
    LOWORD(v43[0]) = bswap32(v19) >> 16;
    v45 = &type metadata for UnsafeRawBufferPointer;
    v46 = &protocol witness table for UnsafeRawBufferPointer;
    v44[0] = v43;
    v44[1] = v43 + 2;
    v23 = sub_1000752B0(v44, &type metadata for UnsafeRawBufferPointer);
    v25 = *v23;
    v24 = v23[1];
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(v44);
    sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384);
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(a2, a3);
    sub_1001A2A88(a2, a3);
    sub_10006A178(a2, a3);
    dispatch thunk of HashFunction.finalize()();
    (*(v41 + 8))(v9, v6);
    v45 = v10;
    v46 = sub_1001A65F0(&qword_1005054B0, &type metadata accessor for SHA384Digest);
    v26 = sub_1000B9634(v44);
    v27 = v42;
    (*(v42 + 16))(v26, v13, v10);
    sub_1000752B0(v44, v45);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v27 + 8))(v13, v10);
    v28 = v43[0];
    v29 = v43[1];
    sub_1000752F4(v44);
    Data.append(_:)();
    sub_10006A178(v28, v29);
    v13 = sub_1001AF63C(192, v47, v48);
    v10 = v30;
    if (qword_100501A38 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_20:
  swift_once();
LABEL_13:
  v44[0] = sub_100288788(qword_10051B360, *algn_10051B368);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();

  v31 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v44[0] = 0;
  v33 = sub_100057B6C(v40, v31, isa, 0, 2, v44);

  v34 = v44[0];
  if (v33)
  {
    v35 = v44[0];
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10006A178(v36, v37);

    if (v34)
    {
LABEL_15:
      swift_willThrow();
      sub_10006A178(v13, v10);
      sub_10006A178(v47, v48);

      return;
    }
  }

  else
  {
    v38 = v44[0];
    if (v34)
    {
      goto LABEL_15;
    }
  }

  sub_10006A178(v13, v10);
  sub_10006A178(v47, v48);
}

uint64_t sub_1001A534C(void *a1, __int16 a2)
{
  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004099F0;
  *(v4 + 32) = 1152;
  *(v4 + 34) = HIBYTE(a2);
  *(v4 + 35) = a2;
  v5 = sub_1002B3B94(v4);
  v7 = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v9 = sub_1003AEB5C(a1, isa, &v13);

  if (v9)
  {
    v10 = v13;
  }

  else
  {
    v11 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10006A178(v5, v7);
}

void sub_1001A5488(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    LOWORD(v8) = BYTE6(a3);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_72;
  }

  v8 = HIDWORD(v5) - v5;
LABEL_10:
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  if (!(v8 >> 16))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  LOWORD(v8) = 0;
LABEL_14:
  sub_1001A534C(a1, v8);
  if (!v3)
  {
    v11 = 0;
    v12 = HIDWORD(v5) - v5;
    v13 = BYTE6(v4);
    v14 = __OFSUB__(HIDWORD(v5), v5);
    v15 = v5;
    v40 = v5 >> 32;
    while (1)
    {
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          if (!v11)
          {
            return;
          }

          LOWORD(v20) = 0;
          goto LABEL_37;
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        v19 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (v19)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v16 = v13;
        if (v7)
        {
          v16 = v12;
          if (v14)
          {
            goto LABEL_74;
          }
        }
      }

      if (v16 == v11)
      {
        return;
      }

      LOWORD(v20) = v13;
      if (v7)
      {
        if (v7 == 2)
        {
          v22 = *(v5 + 16);
          v21 = *(v5 + 24);
          v19 = __OFSUB__(v21, v22);
          v20 = v21 - v22;
          if (v19)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v20 = v12;
          if (v14)
          {
            goto LABEL_75;
          }
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v20 >> 16)
        {
          goto LABEL_66;
        }
      }

LABEL_37:
      v23 = v20 - v11;
      if ((v23 & 0xFFFF0000) != 0)
      {
        goto LABEL_67;
      }

      v23 = v23;
      if (v23 >= 0x2E4u)
      {
        v23 = 740;
      }

      v24 = v23 + v11;
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_68;
      }

      v25 = 0;
      if (v7 > 1)
      {
        if (v7 == 3)
        {
          goto LABEL_46;
        }

        v26 = *(v5 + 16);
        if ((v26 & 0x8000000000000000) != 0)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          v39 = v4;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }
      }

      else
      {
        v26 = v15;
        if (!v7)
        {
          goto LABEL_46;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      v25 = v26;
      if (v26 >> 16)
      {
        __break(1u);
        return;
      }

LABEL_46:
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v27 = 0;
LABEL_58:
          v28 = v27;
          goto LABEL_59;
        }

        v28 = *(v5 + 24);
      }

      else
      {
        v27 = v13;
        v28 = v40;
        if (!v7)
        {
          goto LABEL_58;
        }
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v28 >> 16)
      {
        goto LABEL_70;
      }

LABEL_59:
      if (v28 < v25)
      {
        goto LABEL_71;
      }

      v41 = v15;
      v42 = v14;
      v43 = v13;
      v44 = v12;
      v29 = v5;
      v30 = v4;
      v31 = Data._Representation.subscript.getter();
      v32 = v6;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v36 = v34;
      v6 = v32;
      sub_10006A178(v31, v36);
      v37 = sub_1003AF0E8();

      v4 = 0;
      if (!v37)
      {
        goto LABEL_63;
      }

      v38 = 0;

      v11 = v24;
      v12 = v44;
      v4 = v30;
      v5 = v29;
      v13 = v43;
      v14 = v42;
      v15 = v41;
    }
  }
}

unint64_t sub_1001A57D8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a1;
  v9 = type metadata accessor for SESPeerIdentityData(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A6638(a4, v12);
  v14 = v12[2];
  v13 = v12[3];
  v16 = v12[6];
  v15 = v12[7];
  sub_100069E2C(v14, v13);
  sub_100069E2C(v16, v15);
  sub_1001A669C(v12);
  v72 = &_s14ExportTLKInputVN;
  v73 = &off_1004CE478;
  v17 = swift_allocObject();
  v70 = v17;
  *&v18 = v14;
  *(&v18 + 1) = v13;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *&v19 = v16;
  *(&v19 + 1) = v15;
  *(v17 + 32) = v18;
  *(v17 + 48) = v19;
  sub_100069E2C(v14, v13);
  sub_100069E2C(v16, v15);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(v14, v13, v16, v15);
  v20 = sub_1001A91D4(&v70);
  if (!v4)
  {
    v22 = v20;
    v23 = v21;
    v67 = a3;
    sub_1000752F4(&v70);
    sub_1001A4DF8(v68, v22, v23);
    v24 = v22;
    v5 = 0;
    v65 = v24;
    v66 = v23;
    v64 = a2;
    if (qword_100501A38 != -1)
    {
      swift_once();
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v26 = v68;
    v27 = sub_1003AF1FC(v68, isa);

    v28 = v15;
    if (v27)
    {
      swift_willThrow();
      sub_10006A178(v65, v66);
      sub_10006A178(v64, v67);
      sub_1001A6548(v14, v13, v16, v15);
      sub_10006A178(v14, v13);
      v29 = v16;
LABEL_8:
      v30 = v28;
LABEL_9:
      sub_10006A178(v29, v30);
      return v5;
    }

    sub_1001A5488(v26, v65, v66);
    v32 = v16;
    v33 = sub_1002B3B94(&off_1004C45D8);
    v35 = v34;
    v36 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v33, v35);
    v70 = 0;
    v37 = sub_1003AEB5C(v26, v36, &v70);

    v5 = v70;
    if (!v37)
    {
      v46 = v70;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v14, v13);
      sub_10006A178(v32, v28);
      sub_10006A178(v64, v67);
      sub_1001A6548(v14, v13, v32, v28);
      v29 = v65;
      v30 = v66;
      goto LABEL_9;
    }

    v38 = v70;
    v39 = sub_1003B0934(v37);
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v42;
    v44 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v44 != 2)
      {
        sub_10006A178(v40, v42);
LABEL_25:
        v70 = 0;
        v71 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v53._object = 0x8000000100465680;
        v53._countAndFlagsBits = 0xD000000000000034;
        String.append(_:)(v53);
        v54 = sub_1003B0934(v37);
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = v57;
        v59 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          if (v59 != 2)
          {
            sub_10006A178(v55, v57);
            v55 = 0;
            goto LABEL_35;
          }

          v61 = *(v55 + 16);
          v60 = *(v55 + 24);
          sub_10006A178(v55, v58);
          v55 = v60 - v61;
          if (!__OFSUB__(v60, v61))
          {
            goto LABEL_35;
          }

          __break(1u);
        }

        else if (!v59)
        {
          sub_10006A178(v55, v57);
          v55 = BYTE6(v57);
LABEL_35:
          v62 = sub_1000B9C54();
          v69 = v55;
          v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v63);

          v5 = v62;
          sub_10030990C(0, 1, v70, v71, 0);
          swift_willThrow();

          sub_10006A178(v65, v66);
          sub_10006A178(v64, v67);
          sub_1001A6548(v14, v13, v32, v28);
          sub_10006A178(v14, v13);
          v29 = v32;
          goto LABEL_8;
        }

        sub_10006A178(v55, v58);
        if (!__OFSUB__(HIDWORD(v55), v55))
        {
          v55 = HIDWORD(v55) - v55;
          goto LABEL_35;
        }

LABEL_37:
        __break(1u);
      }

      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      sub_10006A178(v40, v43);
      v45 = v47 - v48;
      if (!__OFSUB__(v47, v48))
      {
LABEL_22:
        if (v45 == 2)
        {
          v49 = sub_1003B0934(v37);
          v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          LOWORD(v49) = sub_100090214(v50, v52, 0, 0, 0);
          sub_10006A178(v50, v52);
          v5 = sub_1001A3A2C(v68, v49);

          sub_10006A178(v65, v66);
          sub_10006A178(v64, v67);
          sub_1001A6548(v14, v13, v32, v28);
          sub_10006A178(v14, v13);
          sub_10006A178(v32, v28);
          return v5;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v44)
    {
      sub_10006A178(v40, v42);
      v45 = BYTE6(v42);
      goto LABEL_22;
    }

    sub_10006A178(v40, v43);
    LODWORD(v45) = HIDWORD(v40) - v40;
    if (__OFSUB__(HIDWORD(v40), v40))
    {
      __break(1u);
      goto LABEL_37;
    }

    v45 = v45;
    goto LABEL_22;
  }

  sub_10006A178(v14, v13);
  sub_10006A178(v16, v15);
  sub_10006A178(a2, a3);
  sub_1001A6548(v14, v13, v16, v15);
  sub_1000752F4(&v70);
  return v5;
}

uint64_t sub_1001A5EF4(id object, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_1003AF1FC(object, isa);

  if (v10)
  {
    swift_willThrow();
    return object;
  }

  v53 = &_s14ExportTLKInputVN;
  v54 = &off_1004CE478;
  v11 = swift_allocObject();
  v51 = v11;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0x2000000000000000;
  swift_bridgeObjectRetain_n();
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(a4, 0, 0, 0x2000000000000000uLL);
  v12 = sub_1001A91D4(&v51);
  if (v4)
  {

    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    sub_1000752F4(&v51);
    return object;
  }

  v14 = v12;
  v15 = v13;
  sub_1000752F4(&v51);
  sub_1001A4DF8(object, v14, v15);
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v17 = sub_1003AF1FC(object, v16);

  if (v17)
  {
    swift_willThrow();
LABEL_10:
    sub_10006A178(v14, v15);
    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);

    return object;
  }

  sub_1001A5488(object, v14, v15);
  v19 = sub_1002B3B94(&off_1004C4600);
  v21 = v20;
  v48 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v19, v21);
  v51 = 0;
  v22 = sub_1003AEB5C(object, v48, &v51);

  if (!v22)
  {
    object = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    sub_10006A178(v14, v15);
    return object;
  }

  v23 = v51;
  v47 = v22;
  v24 = sub_1003B0934(v22);
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v26;
  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      sub_10006A178(v49, v26);
      v29 = BYTE6(v26);
      v30 = v47;
      goto LABEL_22;
    }

    result = sub_10006A178(v49, v26);
    LODWORD(v29) = HIDWORD(v49) - v49;
    v30 = v47;
    if (!__OFSUB__(HIDWORD(v49), v49))
    {
      v29 = v29;
LABEL_22:
      if (v29 == 2)
      {
        v33 = sub_1003B0934(v30);
        v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v46 = sub_100090214(v50, v35, 0, 0, 0);
        sub_10006A178(v50, v35);
        object = sub_1001A3A2C(object, v46);

        sub_10006A178(v14, v15);
        sub_10006A178(a2, a3);
        sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);

        return object;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (v28 == 2)
  {
    v32 = *(v49 + 16);
    v31 = *(v49 + 24);
    result = sub_10006A178(v49, v27);
    v29 = v31 - v32;
    if (!__OFSUB__(v31, v32))
    {
      v30 = v47;
      goto LABEL_22;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_10006A178(v49, v26);
  v30 = v47;
LABEL_25:
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v36._object = 0x8000000100465680;
  v36._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v36);
  v37 = sub_1003B0934(v30);
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = v40;
  v42 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v42 != 2)
    {
LABEL_34:
      sub_10006A178(v38, v40);
LABEL_35:
      sub_1000B9C54();
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v45._object;
      String.append(_:)(v45);

      sub_10030990C(0, 1, v51, v52, 0);
      swift_willThrow();

      goto LABEL_10;
    }

    v44 = *(v38 + 16);
    v43 = *(v38 + 24);
    sub_10006A178(v38, v41);
    v38 = v43 - v44;
    if (!__OFSUB__(v43, v44))
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  else if (!v42)
  {
    goto LABEL_34;
  }

  result = sub_10006A178(v38, v41);
  if (!__OFSUB__(HIDWORD(v38), v38))
  {
    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1001A6548(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_10006A178(a1, a2);

    return sub_10006A178(a3, a4);
  }
}

uint64_t sub_1001A659C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_100069E2C(a1, a2);

    return sub_100069E2C(a3, a4);
  }
}

uint64_t sub_1001A65F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SESPeerIdentityData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A669C(uint64_t a1)
{
  v2 = type metadata accessor for SESPeerIdentityData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A66F8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v37 = a1;
  v8 = type metadata accessor for SESPeerIdentityData(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A6638(a4, v11);
  v13 = v11[4];
  v12 = v11[5];
  v15 = v11[6];
  v14 = v11[7];
  sub_100069E2C(v13, v12);
  sub_100069E2C(v15, v14);
  sub_1001A669C(v11);
  v38[3] = &_s14ImportTLKInputVN;
  v38[4] = &off_1004CE468;
  v16 = swift_allocObject();
  v38[0] = v16;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v13;
  v16[5] = v12;
  v16[6] = v15;
  v16[7] = v14;
  sub_100069E2C(v13, v12);
  sub_100069E2C(v15, v14);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(v13, v12, v15, v14);
  v17 = sub_1001A91D4(v38);
  if (v4)
  {
    sub_10006A178(v13, v12);
    sub_10006A178(v15, v14);
    sub_10006A178(a2, a3);
    sub_1001A6548(v13, v12, v15, v14);
    return sub_1000752F4(v38);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_1000752F4(v38);
    sub_1001A4DF8(v37, v20, v21);
    v22 = v37;
    v35 = v21;
    v36 = v20;
    if (qword_100501A38 != -1)
    {
      swift_once();
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v24 = sub_1003AF1FC(v22, isa);

    if (v24)
    {
      swift_willThrow();
      sub_10006A178(v36, v35);
      sub_10006A178(a2, a3);
      sub_1001A6548(v13, v12, v15, v14);
      sub_10006A178(v13, v12);
      v25 = v15;
      v26 = v14;
    }

    else
    {
      sub_1001A5488(v37, v36, v35);
      v27 = sub_1002B3B94(&off_1004C4628);
      v29 = v28;
      v34 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v27, v29);
      v38[0] = 0;
      v30 = v34;
      v31 = sub_1003AEB5C(v37, v34, v38);

      if (v31)
      {
        v32 = v38[0];
      }

      else
      {
        v33 = v38[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_10006A178(v13, v12);
      sub_10006A178(v15, v14);
      sub_10006A178(a2, a3);
      sub_1001A6548(v13, v12, v15, v14);
      v26 = v35;
      v25 = v36;
    }

    return sub_10006A178(v25, v26);
  }
}

uint64_t sub_1001A6AE4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_1003AF1FC(a1, isa);

  if (v10)
  {
    return swift_willThrow();
  }

  v26[3] = &_s14ImportTLKInputVN;
  v26[4] = &off_1004CE468;
  v12 = swift_allocObject();
  v26[0] = v12;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = 0;
  v12[6] = 0;
  v12[7] = 0x2000000000000000;
  swift_bridgeObjectRetain_n();
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(a4, 0, 0, 0x2000000000000000uLL);
  v13 = sub_1001A91D4(v26);
  if (v4)
  {

    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    return sub_1000752F4(v26);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    sub_1000752F4(v26);
    sub_1001A4DF8(a1, v15, v16);
    v17 = Data._bridgeToObjectiveC()().super.isa;
    v18 = sub_1003AF1FC(a1, v17);

    if (v18)
    {
      swift_willThrow();
      sub_10006A178(v15, v16);
      sub_10006A178(a2, a3);
      sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    }

    else
    {
      sub_1001A5488(a1, v15, v16);
      v19 = sub_1002B3B94(&off_1004C4740);
      v21 = v20;
      v25 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v19, v21);
      v26[0] = 0;
      v22 = sub_1003AEB5C(a1, v25, v26);

      if (v22)
      {
        v23 = v26[0];
      }

      else
      {
        v24 = v26[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_10006A178(a2, a3);
      sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
      return sub_10006A178(v15, v16);
    }
  }
}

uint64_t sub_1001A6E4C()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));
  sub_1001A6548(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001A6EF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for SHA256Digest();
  sub_1001A8824(&qword_1005054C0, &type metadata accessor for SHA256Digest);
  v4 = dispatch thunk of static Digest.byteCount.getter();
  if (((v4 | a3) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!is_mul_ok(v4, 0xFFFFFFFFuLL))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (0xFFFFFFFF * v4 > a3)
  {
    v7 = sub_1001303A8(a3);
    v8 = v5;
    __chkstk_darwin(v7);
    SharedSecret.withUnsafeBytes<A>(_:)();
    Data.subdata(in:)();
    SymmetricKey.init<A>(data:)();
    return sub_10006A178(v7, v8);
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001A70B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v49 = a6;
  v53 = a2;
  v52 = a1;
  v48 = type metadata accessor for SHA256Digest();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v48);
  v47 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256();
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13);
  v51 = a5 >> 62;
  v55 = a4;
  v43 = a4;
  v42 = a4 >> 32;
  v41[0] = (a4 >> 32) - a4;
  v46 = (v10 + 16);
  v45 = (v10 + 8);
  v44 = (v17 + 8);
  v41[1] = v62 + BYTE6(a5);
  v18 = 1;
  v54 = xmmword_1004099F0;
  v56 = a5;
  v57 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (a3 >= 1)
  {
    sub_1001A8824(&qword_100503000, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v27 = swift_allocObject();
    *(v27 + 16) = v54;
    *(v27 + 32) = HIBYTE(v18);
    *(v27 + 33) = BYTE2(v18);
    if (v18 == 0x10000)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v28 = v27;
    *(v27 + 34) = bswap32(v18) >> 16;
    v29 = sub_100068FC4(&qword_100504F50, &qword_1004146C0);
    v63 = v29;
    v64 = sub_1001A8890();
    v62[0] = v28;
    v30 = sub_1000752B0(v62, v29);
    v31 = *v30;
    v32 = *(*v30 + 16);
    if (!v32)
    {
      sub_1000752F4(v62);
      memset(__dst, 0, sizeof(__dst));
LABEL_15:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_20;
    }

    if (v32 <= 0xE)
    {
      memset(__dst, 0, sizeof(__dst));
      v60 = v32;
      memcpy(__dst, (v31 + 32), v32);
      v61[0] = *__dst;
      *(v61 + 6) = *&__dst[6];
      sub_1000752F4(v62);
      *__dst = v61[0];
      *&__dst[6] = *(v61 + 6);
      goto LABEL_15;
    }

    v33 = type metadata accessor for __DataStorage();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    __DataStorage.init(bytes:length:)();
    if (v32 >= 0x7FFFFFFF)
    {
      type metadata accessor for Data.RangeReference();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = v32;
      sub_1000752F4(v62);

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_40;
      }

      __DataStorage._length.getter();
      dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    else
    {
      sub_1000752F4(v62);

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_39;
      }

      __DataStorage._length.getter();
      dispatch thunk of HashFunction.update(bufferPointer:)();
    }

LABEL_20:
    v37 = v56;
    dispatch thunk of HashFunction.update(bufferPointer:)();
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v39 = *(v55 + 16);
        v40 = *(v55 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v39, __DataStorage._offset.getter()))
        {
          goto LABEL_37;
        }

        if (__OFSUB__(v40, v39))
        {
          goto LABEL_36;
        }

        v37 = v56;
        __DataStorage._length.getter();
      }

      else
      {
        memset(v62, 0, 14);
      }
    }

    else
    {
      if (!v51)
      {
        v38 = v55;
        v62[0] = v55;
        LOWORD(v62[1]) = v37;
        BYTE2(v62[1]) = BYTE2(v37);
        BYTE3(v62[1]) = BYTE3(v37);
        BYTE4(v62[1]) = BYTE4(v37);
        BYTE5(v62[1]) = BYTE5(v37);
        dispatch thunk of HashFunction.update(bufferPointer:)();
        v19 = v38;
        goto LABEL_4;
      }

      if (v42 < v43)
      {
        goto LABEL_35;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v43, __DataStorage._offset.getter()))
      {
        goto LABEL_38;
      }

      __DataStorage._length.getter();
    }

    dispatch thunk of HashFunction.update(bufferPointer:)();
    v19 = v55;
LABEL_4:
    sub_10006A178(v19, v37);
    v20 = v47;
    dispatch thunk of HashFunction.finalize()();
    v21 = v48;
    v63 = v48;
    v64 = sub_1001A8824(&qword_100503008, &type metadata accessor for SHA256Digest);
    v22 = sub_1000B9634(v62);
    (*v46)(v22, v20, v21);
    v23 = sub_1000752B0(v62, v63);
    __chkstk_darwin(v23);
    v41[-2] = v49;
    v24 = v58;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v58 = v24;
    v25 = v57;
    (*v45)(v20, v21);
    sub_1000752F4(v62);
    result = (*v44)(v25, v13);
    ++v18;
    v26 = __OFSUB__(a3, v50);
    a3 -= v50;
    if (v26)
    {
      goto LABEL_34;
    }
  }

  return result;
}

unint64_t sub_1001A78F4()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v7 = v6;
  result = String.count.getter();
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = String.count.getter();
  v10 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v7);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v14 = *(v5 + 16);
  v13 = *(v5 + 24);
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (v15)
  {
    __break(1u);
LABEL_10:
    LODWORD(v12) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = v12;
  }

LABEL_13:
  result = v10 + v12;
  if (__OFADD__(v10, v12))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = sub_1001303A8(result);
  v32 = v16;
  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004098F0;
  result = String.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result > 0xFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v5;
  *(v17 + 32) = result;
  v18 = sub_1002B3B94(v17);
  v20 = v19;

  Data.append(_:)();
  sub_10006A178(v18, v20);
  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;
  v24 = *(v1 + 8);
  result = v24(v4, v0);
  if (v23 >> 60 == 15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  Data.append(_:)();
  sub_10006A2D0(v21, v23);
  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;
  result = v24(v4, v0);
  if (v27 >> 60 != 15)
  {
    Data.append(_:)();
    sub_10006A2D0(v25, v27);
    v28 = v30;
    Data.append(_:)();
    sub_10006A178(v28, v7);
    return v31;
  }

LABEL_26:
  __break(1u);
  return result;
}

char *sub_1001A7BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a1;
  v107 = a2;
  v6 = type metadata accessor for SHA256();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v97 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  __chkstk_darwin(v9);
  v100 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100068FC4(&qword_1005054B8, &unk_10040CD40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v108 = (&v87 - v14);
  v15 = type metadata accessor for AES.GCM.SealedBox();
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  __chkstk_darwin(v15);
  v105 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SymmetricKey();
  v112 = *(v110 - 8);
  v18 = *(v112 + 64);
  __chkstk_darwin(v110);
  v113 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SharedSecret();
  v111 = *(v109 - 8);
  v20 = *(v111 + 64);
  __chkstk_darwin(v109);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v114 = *(v23 - 8);
  v24 = *(v114 + 64);
  __chkstk_darwin(v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v115 = *(v27 - 8);
  v28 = *(v115 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v87 - v32;
  v116[0] = a3;
  v116[1] = a4;
  v34 = a4;
  v35 = a3;
  v36 = a3;
  v37 = v34;
  sub_100069E2C(v36, v34);
  v38 = v120;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (!v38)
  {
    v94 = v37;
    v95 = v31;
    v93 = v35;
    v120 = v27;
    v39 = v114;
    v96 = v23;
    P256.KeyAgreement.PrivateKey.init()();
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v40 = v26;
    v91 = v33;
    v41 = v95;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v42 = sub_1001A78F4();
    v44 = v43;
    v45 = v115 + 8;
    v92 = *(v115 + 8);
    v92(v41, v120);
    v46 = v44;
    sub_1001A6EF8(v42, v44, 0x20uLL);
    v116[0] = v106;
    v116[1] = v107;
    v119 = xmmword_10040CD30;
    v47 = sub_1000937E0();
    v48 = v108;
    v107 = v47;
    AES.GCM.Nonce.init<A>(data:)();
    v49 = v22;
    v50 = v39;
    v115 = v45;
    v88 = v42;
    v89 = v46;
    v90 = v49;
    v106 = v40;
    v51 = type metadata accessor for AES.GCM.Nonce();
    (*(*(v51 - 8) + 56))(v48, 0, 1, v51);
    static AES.GCM.seal<A>(_:using:nonce:)();
    sub_1001A87BC(v48);
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004099F0;
    strcpy(v116, "version");
    v116[1] = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v54;
    *(inited + 80) = v55;
    v108 = inited;
    strcpy(v116, "publicKeyHash");
    HIWORD(v116[1]) = -4864;
    AnyHashable.init<A>(_:)();
    sub_1001A8824(&qword_100503000, &type metadata accessor for SHA256);
    v56 = v97;
    v57 = v99;
    dispatch thunk of HashFunction.init()();
    v59 = v93;
    v58 = v94;
    sub_100069E2C(v93, v94);
    sub_100357FC4(v59, v58);
    sub_10006A178(v59, v58);
    v60 = v100;
    dispatch thunk of HashFunction.finalize()();
    (*(v98 + 8))(v56, v57);
    v61 = v102;
    v117 = v102;
    v118 = sub_1001A8824(&qword_100503008, &type metadata accessor for SHA256Digest);
    v62 = sub_1000B9634(v116);
    v63 = v101;
    (*(v101 + 16))(v62, v60, v61);
    sub_1000752B0(v116, v117);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v107 = 0;
    (*(v63 + 8))(v60, v61);
    v65 = *(&v119 + 1);
    v64 = v119;
    sub_1000752F4(v116);
    v66 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v64, v65);
    v67 = v108;
    v108[10]._object = &type metadata for String;
    v67[9] = v66;
    v116[0] = 0xD000000000000012;
    v116[1] = 0x80000001004626A0;
    AnyHashable.init<A>(_:)();
    v68 = v95;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v69 = P256.KeyAgreement.PublicKey.x963Representation.getter();
    v71 = v70;
    v92(v68, v120);
    v72 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v69, v71);
    v67[15]._countAndFlagsBits = &type metadata for String;
    *(v67 + 216) = v72;
    v116[0] = 1635017060;
    v116[1] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v73 = AES.GCM.SealedBox.ciphertext.getter();
    v75 = v74;
    v76 = AES.GCM.SealedBox.tag.getter();
    v78 = v77;
    *&v119 = v73;
    *(&v119 + 1) = v75;
    v117 = &type metadata for Data;
    v118 = &protocol witness table for Data;
    v116[0] = v76;
    v116[1] = v77;
    v79 = sub_1000752B0(v116, &type metadata for Data);
    v80 = v111;
    v82 = *v79;
    v81 = v79[1];
    sub_100069E2C(v73, v75);
    sub_100069E2C(v76, v78);
    sub_10008E4C8(v82, v81);
    sub_10006A178(v76, v78);
    sub_10006A178(v73, v75);
    sub_1000752F4(v116);
    v84 = *(&v119 + 1);
    v83 = v119;
    v85 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v83, v84);
    v86 = v108;
    v108[19]._object = &type metadata for String;
    v86[18] = v85;
    v26 = sub_100090BC4(v86);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    sub_10006A178(v88, v89);
    (*(v103 + 8))(v105, v104);
    (*(v112 + 8))(v113, v110);
    (*(v80 + 8))(v90, v109);
    (*(v50 + 8))(v106, v96);
    v92(v91, v120);
  }

  return v26;
}

uint64_t sub_1001A87BC(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005054B8, &unk_10040CD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A8824(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A8890()
{
  result = qword_100504F58;
  if (!qword_100504F58)
  {
    sub_1000692D8(&qword_100504F50, &qword_1004146C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504F58);
  }

  return result;
}

uint64_t sub_1001A8910(uint64_t a1, unint64_t a2)
{
  v65 = a2;
  v3 = type metadata accessor for AES.GCM.Nonce();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymmetricKey();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharedSecret();
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = 0xD000000000000012;
  v67 = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v21 = sub_10008CA7C(v68), (v22 & 1) == 0))
  {
    sub_100092F28(v68);
    goto LABEL_7;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v21, v69);
  sub_100092F28(v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v25 = sub_1000B9C54();
    v26 = "Missing ephemeralPublicKey";
    goto LABEL_8;
  }

  v56 = v9;
  v57 = Data.init(base64Encoded:options:)();
  v24 = v23;

  v58 = v24;
  if (v24 >> 60 == 15)
  {
    v25 = sub_1000B9C54();
    v26 = "Invalid ephemeralPublicKey";
LABEL_8:
    sub_10030990C(0, 1, 0xD00000000000001ALL, (v26 - 32) | 0x8000000000000000, 0);
    swift_willThrow();
    return v25;
  }

  v66 = 1635017060;
  v67 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v28 = sub_10008CA7C(v68), (v29 & 1) == 0))
  {
    sub_100092F28(v68);
    v31 = v57;
    goto LABEL_16;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v28, v69);
  sub_100092F28(v68);
  v30 = swift_dynamicCast();
  v31 = v57;
  if ((v30 & 1) == 0)
  {
LABEL_16:
    v25 = sub_1000B9C54();
    v34 = 0x20676E697373694DLL;
    goto LABEL_17;
  }

  v55 = Data.init(base64Encoded:options:)();
  v33 = v32;

  if (v33 >> 60 == 15)
  {
    v25 = sub_1000B9C54();
    v34 = 0x2064696C61766E49;
LABEL_17:
    sub_10030990C(0, 1, v34, 0xEC00000061746164, 0);
    swift_willThrow();
    v35 = v31;
    v36 = v58;
LABEL_18:
    sub_10006A2D0(v35, v36);
    return v25;
  }

  v54 = v33;
  v25 = v58;
  *&v68[0] = v31;
  *(&v68[0] + 1) = v58;
  sub_100069E2C(v31, v58);
  v37 = v70;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (v37)
  {
    sub_10006A2D0(v31, v25);
    v35 = v55;
    v36 = v54;
    goto LABEL_18;
  }

  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v65 = sub_1001A78F4();
  v70 = v38;
  result = sub_1001A6EF8(v65, v38, 0x20uLL);
  v39 = v54 >> 62;
  if ((v54 >> 62) <= 1)
  {
    v40 = v55;
    if (!v39)
    {
      v41 = BYTE6(v54);
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v40 = v55;
  if (v39 != 2)
  {
    v41 = 0;
    goto LABEL_31;
  }

  v43 = *(v55 + 16);
  v42 = *(v55 + 24);
  v44 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v44)
  {
    __break(1u);
LABEL_28:
    LODWORD(v41) = HIDWORD(v40) - v40;
    if (__OFSUB__(HIDWORD(v40), v40))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v41 = v41;
  }

LABEL_31:
  v53 = v41 - 16;
  if (__OFSUB__(v41, 16))
  {
    __break(1u);
    goto LABEL_45;
  }

  v68[0] = xmmword_10040CD30;
  v45 = sub_1000937E0();
  result = AES.GCM.Nonce.init<A>(data:)();
  v52 = v45;
  if (v53 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v46 = v55;
  result = Data.subdata(in:)();
  *&v68[0] = result;
  *(&v68[0] + 1) = v47;
  if (v39 > 1)
  {
    v48 = 0;
    if (v39 != 2 || (v50 = *(v46 + 16), v49 = *(v46 + 24), v48 = v49 - v50, !__OFSUB__(v49, v50)))
    {
LABEL_42:
      result = v53;
      if (v48 >= v53)
      {
        v69[0] = Data.subdata(in:)();
        v69[1] = v51;
        AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
        v25 = static AES.GCM.open(_:using:)();
        sub_10006A178(v65, v70);
        sub_10006A2D0(v55, v54);
        sub_10006A2D0(v57, v58);
        (*(v59 + 8))(v8, v5);
        (*(v60 + 8))(v12, v56);
        (*(v61 + 8))(v16, v62);
        (*(v63 + 8))(v20, v64);
        return v25;
      }

      goto LABEL_46;
    }

    __break(1u);
  }

  else if (!v39)
  {
    v48 = BYTE6(v54);
    goto LABEL_42;
  }

  if (!__OFSUB__(HIDWORD(v46), v46))
  {
    v48 = HIDWORD(v46) - v46;
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1001A91D4(void *a1)
{
  sub_1000752B0(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 8))(&v10);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = sub_1001ADEA8(a1, v10, v11, v12, v13, v14);
  sub_1001AF6EC(v3, v4, v5);
  if (v1)
  {
    v24 = v15;
    return sub_100075768(&v24, &qword_100504EC8, &qword_10040C3B0);
  }

  else
  {
    v23 = v15;
    sub_100075768(&v23, &qword_100504EC8, &qword_10040C3B0);
    v9[0] = sub_1001303A8(v6);
    v9[1] = v7;
    sub_1000752B0(a1, a1[3]);
    swift_getDynamicType();
    (*(a1[4] + 8))(v16);
    sub_1001AB134(a1, v16, v9);
    v21 = v17;
    v22 = v18;
    sub_10018C454(&v21);
    v20 = v19;
    sub_100075768(&v20, &qword_100504EC8, &qword_10040C3B0);
    return v9[0];
  }
}

void sub_1001A93B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -64;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
}

unint64_t sub_1001A93E0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a2[2];
  v5 = *(a2 + 32);
  if (v5 <= 0x3F)
  {
    v6 = sub_1001AC940(a1, 1);
    if (!v2)
    {
      v7 = *(v4 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v4 + 32;
        v10 = _swiftEmptyArrayStorage;
        v4 = &qword_1005053F0;
        do
        {
          v11 = (v9 + (v8 << 6));
          v12 = v8;
          while (1)
          {
            if (v12 >= v7)
            {
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

            v13 = *v11;
            v14 = v11[1];
            v15 = v11[3];
            v134 = v11[2];
            v135 = v15;
            v132 = v13;
            v133 = v14;
            v8 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_198;
            }

            if (BYTE8(v133))
            {
              sub_10007FC0C();
              v4 = swift_allocError();
              *(v75 + 8) = 0;
              *(v75 + 16) = 0;
              *v75 = 5;
              *(v75 + 24) = 3;
              swift_willThrow();

              return v4;
            }

            if (v133 == v6)
            {
              break;
            }

            ++v12;
            v11 += 4;
            if (v8 == v7)
            {
              goto LABEL_80;
            }
          }

          v16 = v6;
          sub_1000938D4(&v132, &v126, &qword_1005053F0, &unk_10040CDE0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10019F5F4(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v18 = _swiftEmptyArrayStorage[2];
          v17 = _swiftEmptyArrayStorage[3];
          v19 = v18 + 1;
          v6 = v16;
          if (v18 >= v17 >> 1)
          {
            sub_10019F5F4((v17 > 1), v18 + 1, 1);
            v4 = &qword_1005053F0;
            v19 = v18 + 1;
            v6 = v16;
          }

          _swiftEmptyArrayStorage[2] = v19;
          v20 = &_swiftEmptyArrayStorage[8 * v18];
          v21 = v132;
          v22 = v133;
          v23 = v135;
          v20[4] = v134;
          v20[5] = v23;
          v20[2] = v21;
          v20[3] = v22;
        }

        while (v8 != v7);
      }

LABEL_80:
      if (_swiftEmptyArrayStorage[2])
      {
        v67 = *&_swiftEmptyArrayStorage[6];
        v132 = *&_swiftEmptyArrayStorage[4];
        v133 = v67;
        v68 = *&_swiftEmptyArrayStorage[10];
        v134 = *&_swiftEmptyArrayStorage[8];
        v135 = v68;
        sub_1000938D4(&v132, &v126, &qword_1005053F0, &unk_10040CDE0);

        v69 = *(&v132 + 1);
        v70 = v134;
        v136 = v133;
        v137 = WORD4(v133);
        v138 = v134;
        v71 = v135;
        v139 = v135;
        v140 = *(&v135 + 1);
        v72 = v132;
        v73 = swift_allocObject();
        sub_1000938D4(&v132, &v126, &qword_1005053F0, &unk_10040CDE0);
        sub_1001AF6EC(v70, *(&v70 + 1), v71);

        *(v73 + 16) = v72;
        *(v73 + 24) = v69;
        v74 = sub_1001A93E0(v3, &v136);
        sub_100075768(&v132, &qword_1005053F0, &unk_10040CDE0);
        *(v73 + 32) = v74;
        return v73 | 0xA000000000000000;
      }

      else
      {

        sub_10007FC0C();
        swift_allocError();
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        *v76 = 2;
        *(v76 + 24) = 3;
        swift_willThrow();
      }
    }

    return v4;
  }

  v25 = a2[3];
  v26 = v5 >> 6;
  v28 = v5 >> 6 == 3 && v4 == 3 && v25 == 0;
  if (v28 && v5 == 192)
  {
    v39 = sub_1001AD294(a1, 1);
    if (!v2)
    {
      if ((a2[1] & 1) != 0 || (v42 = *a2, *a2 == v39))
      {
        v106 = v40;
        v107 = v41;
        v108 = swift_allocObject();
        *(v108 + 16) = v106;
        *(v108 + 24) = v107;
        return v108 | 0x2000000000000000;
      }

      else
      {
        v43 = 0;
        v44 = *v3;
        v45 = v3[1] >> 62;
        v46 = v39;
        v4 = v40;
        v47 = v41;
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v43 = *(v44 + 16);
          }
        }

        else if (v45)
        {
          v43 = v44;
        }

        sub_10007FC0C();
        swift_allocError();
        *v113 = v46;
        *(v113 + 8) = v42;
        *(v113 + 16) = v43;
        *(v113 + 24) = 0;
        swift_willThrow();
        sub_10006A178(v4, v47);
      }
    }

    return v4;
  }

  v29 = sub_1001AD294(a1, 0);
  if (v2)
  {
    return v4;
  }

  v32 = v30;
  v33 = v31;
  *&v132 = v29;
  *(&v132 + 1) = v30;
  *&v133 = v31;
  v34 = a2;
  if ((a2[1] & 1) == 0)
  {
    v35 = *a2;
    if (*v34 != v29)
    {
      v36 = *v3;
      v37 = v3[1] >> 62;
      v4 = v29;
      if (v37 > 1)
      {
        v38 = 0;
        if (v37 == 2)
        {
          v38 = *(v36 + 16);
        }
      }

      else if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      sub_10007FC0C();
      swift_allocError();
      *v105 = v4;
      *(v105 + 8) = v35;
      *(v105 + 16) = v38;
      *(v105 + 24) = 0;
      goto LABEL_183;
    }
  }

  v48 = v34[5];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v31 >> 62;
    v51 = HIDWORD(v30) - v30;
    v52 = __OFSUB__(HIDWORD(v30), v30);
    v3 = BYTE6(v31);
    v53 = (v48 + 72);
    while (1)
    {
      v54 = *(v53 - 3);
      v55 = *(v53 - 1);
      if (*(v53 - 32))
      {
        goto LABEL_56;
      }

      v56 = *(v53 - 5);
      if (v50 <= 1)
      {
        break;
      }

      if (v50 == 2)
      {
        v59 = *(v32 + 16);
        v58 = *(v32 + 24);
        v60 = __OFSUB__(v58, v59);
        v57 = v58 - v59;
        if (v60)
        {
          goto LABEL_212;
        }

LABEL_53:
        if (v57 < v56)
        {
          goto LABEL_162;
        }

        goto LABEL_56;
      }

      if (v56 > 0)
      {
        goto LABEL_180;
      }

LABEL_56:
      if (*(v53 - 16))
      {
        goto LABEL_66;
      }

      if (v50 > 1)
      {
        if (v50 != 2)
        {
          if (v54 < 0)
          {
            goto LABEL_180;
          }

          goto LABEL_66;
        }

        v62 = *(v32 + 16);
        v63 = *(v32 + 24);
        v60 = __OFSUB__(v63, v62);
        v61 = v63 - v62;
        if (v60)
        {
          goto LABEL_215;
        }
      }

      else
      {
        v61 = BYTE6(v33);
        if (v50)
        {
          v61 = v51;
          if (v52)
          {
            goto LABEL_214;
          }
        }
      }

      if (v54 < v61)
      {
LABEL_162:
        if (v50 <= 1)
        {
          v4 = v29;
          if (v50)
          {
            v3 = v51;
            if (v52)
            {
              __break(1u);
LABEL_166:
              v109 = swift_allocObject();
              v110 = v3 + 1;
              if (v5)
              {
                v111 = sub_1001AA7A0(v110, v4, v25);
              }

              else
              {
                v111 = sub_1001AA244(v110, v4, v25);
              }

              *(v109 + 16) = v111;
              v4 = v109 | 0x6000000000000000;
              sub_10006A178(*(&v132 + 1), v133);
              return v4;
            }
          }

LABEL_181:
          sub_10007FC0C();
          swift_allocError();
          *v117 = v4;
          *(v117 + 8) = v3;
          *(v117 + 16) = 0;
          v118 = 1;
LABEL_182:
          *(v117 + 24) = v118;
LABEL_183:
          swift_willThrow();
          sub_10006A178(*(&v132 + 1), v133);
          return v4;
        }

        if (v50 != 2)
        {
LABEL_180:
          v4 = v29;
          v3 = 0;
          goto LABEL_181;
        }

        v115 = *(v32 + 16);
        v114 = *(v32 + 24);
        v3 = (v114 - v115);
        if (!__OFSUB__(v114, v115))
        {
          v4 = v29;
          goto LABEL_181;
        }

LABEL_229:
        __break(1u);
      }

LABEL_66:
      if ((*v53 & 1) == 0)
      {
        if (v50 > 1)
        {
          if (v50 == 2)
          {
            v66 = *(v32 + 16);
            v65 = *(v32 + 24);
            v60 = __OFSUB__(v65, v66);
            v64 = v65 - v66;
            if (v60)
            {
              goto LABEL_217;
            }
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = BYTE6(v33);
          if (v50)
          {
            v64 = v51;
            if (v52)
            {
              goto LABEL_216;
            }
          }
        }

        if (!v55)
        {
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        if (v64 == 0x8000000000000000 && v55 == -1)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (v64 % v55)
        {
          goto LABEL_162;
        }
      }

      v53 += 48;
      if (!--v49)
      {
        goto LABEL_84;
      }
    }

    v57 = BYTE6(v33);
    if (v50)
    {
      v57 = v51;
      if (v52)
      {
        goto LABEL_213;
      }
    }

    goto LABEL_53;
  }

LABEL_84:
  v3 = &v132;
  if (v26 == 1)
  {
    goto LABEL_166;
  }

  if (v26 != 2)
  {
    if (v25 | v4 || v5 != 192)
    {
      if (v4 == 1 && !v25 && v5 == 192)
      {
        v119 = v29;
        v120 = swift_allocObject();
        *(v120 + 16) = v119;
        *(v120 + 24) = sub_1001AD600(v32, v33);
        v4 = v120 | 0x4000000000000000;
      }

      else
      {
        if (v4 != 2 || v25 || v5 != 192)
        {
          sub_10007FC0C();
          swift_allocError();
          *(v117 + 8) = 0;
          *(v117 + 16) = 0;
          *v117 = 2;
          v118 = 3;
          goto LABEL_182;
        }

        v4 = swift_allocObject();
        *(v4 + 16) = sub_1001AD89C(v32, v33) & 1;
      }
    }

    else
    {
      v112 = swift_allocObject();
      *(v112 + 16) = v32;
      *(v112 + 24) = v33;
      v4 = v112 | 0x2000000000000000;
      sub_100069E2C(v32, v33);
    }

    sub_10006A178(v32, v33);
    return v4;
  }

  v77 = *(v4 + 48);
  v142 = *(v4 + 32);
  v143 = v77;
  v141 = *(v4 + 16);
  v144 = v142;
  v145 = *(v4 + 48);
  v125 = *(&v77 + 1);
  v123 = swift_allocObject();
  sub_1001AF70C(&v144, &v126);
  sub_1000938D4(&v125, &v126, &qword_100504EC8, &qword_10040C3B0);
  v78 = _swiftEmptyArrayStorage;
  while (1)
  {
    v79 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v79 != 2)
      {
        goto LABEL_196;
      }

      v82 = *(v32 + 16);
      v81 = *(v32 + 24);
      v60 = __OFSUB__(v81, v82);
      v80 = v81 - v82;
      if (v60)
      {
        goto LABEL_220;
      }
    }

    else if (v79)
    {
      LODWORD(v80) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_221;
      }

      v80 = v80;
    }

    else
    {
      v80 = BYTE6(v33);
    }

    if (!v80)
    {
LABEL_196:
      *(v123 + 16) = v78;
      sub_10018C454(&v144);
      sub_100075768(&v125, &qword_100504EC8, &qword_10040C3B0);
      v4 = v123 | 0x8000000000000000;
      sub_10006A178(v32, v33);
      return v4;
    }

    v124 = v78;
    if (v79 == 2)
    {
      v86 = *(v32 + 16);
      v85 = *(v32 + 24);
      v60 = __OFSUB__(v85, v86);
      v84 = v85 - v86;
      if (v60)
      {
        goto LABEL_222;
      }

      v83 = 0;
    }

    else
    {
      v83 = 0;
      if (v79 == 1)
      {
        LODWORD(v84) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_223;
        }

        v84 = v84;
      }

      else
      {
        v84 = BYTE6(v33);
      }
    }

    if (!v84)
    {
LABEL_178:
      sub_10007FC0C();
      swift_allocError();
      *(v116 + 8) = 0;
      *(v116 + 16) = 0;
      *v116 = 0;
      *(v116 + 24) = 3;
      swift_willThrow();

LABEL_179:
      swift_deallocUninitializedObject();
      sub_10018C454(&v144);
      sub_100075768(&v125, &qword_100504EC8, &qword_10040C3B0);
      sub_10006A178(*(&v132 + 1), v133);
      return v4;
    }

    if (v79)
    {
      break;
    }

    if ((v33 & 0xFF000000000000) == 0)
    {
      goto LABEL_224;
    }

    v8 = v32;
LABEL_118:
    if ((~v8 & 0x1E) == 0)
    {
      if (v79)
      {
        if (v79 == 2)
        {
          v93 = *(v32 + 16);
        }

        else
        {
          v93 = v32;
        }
      }

      else
      {
        v93 = 0;
      }

      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_218;
      }

      if (v79 == 2)
      {
        v95 = *(v32 + 24);
      }

      else if (v79 == 1)
      {
        v95 = v32 >> 32;
      }

      else
      {
        v95 = BYTE6(v33);
      }

      if (v95 < v94)
      {
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      while (1)
      {
        if (v95 == v94)
        {
          goto LABEL_178;
        }

        if (v79 == 2)
        {
          break;
        }

        if (v79 == 1)
        {
          if (v94 < v32 || v94 >= v32 >> 32)
          {
            goto LABEL_208;
          }

          v97 = v83;
          result = __DataStorage._bytes.getter();
          if (!result)
          {
            __break(1u);
LABEL_231:
            __break(1u);
            goto LABEL_232;
          }

          v98 = result;
          v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
          v99 = __DataStorage._offset.getter();
          v100 = v94 - v99;
          if (__OFSUB__(v94, v99))
          {
            goto LABEL_210;
          }

          goto LABEL_132;
        }

        if (v94 >= BYTE6(v33))
        {
          goto LABEL_207;
        }

        v126 = v32;
        v127 = v33;
        v128 = BYTE2(v33);
        v129 = BYTE3(v33);
        v130 = BYTE4(v33);
        v131 = BYTE5(v33);
        v96 = *(&v126 + v94);
LABEL_133:
        v8 = v96 | (v8 << 8);
        ++v94;
        if ((v96 & 0x80) == 0)
        {
          goto LABEL_151;
        }
      }

      if (v94 < *(v32 + 16))
      {
        goto LABEL_206;
      }

      if (v94 >= *(v32 + 24))
      {
        goto LABEL_209;
      }

      v97 = v83;
      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_231;
      }

      v98 = result;
      v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      v101 = __DataStorage._offset.getter();
      v100 = v94 - v101;
      if (__OFSUB__(v94, v101))
      {
        goto LABEL_211;
      }

LABEL_132:
      v96 = *(v98 + v100);
      v83 = v97;
      goto LABEL_133;
    }

LABEL_151:
    if ((BYTE8(v141) & 1) == 0)
    {
      v10 = v141;
      if (v141 != v8)
      {
LABEL_199:

        v4 = 0;
        v121 = v133 >> 62;
        if ((v133 >> 62) > 1)
        {
          if (v121 == 2)
          {
            v4 = *(*(&v132 + 1) + 16);
          }
        }

        else if (v121)
        {
          v4 = SDWORD2(v132);
        }

        sub_10007FC0C();
        swift_allocError();
        *v122 = v8;
        *(v122 + 8) = v10;
        *(v122 + 16) = v4;
        *(v122 + 24) = 0;
        swift_willThrow();
        goto LABEL_179;
      }
    }

    v78 = v124;
    v102 = sub_1001A93E0(&v132 + 8, &v141);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_10012F55C(0, *(v124 + 2) + 1, 1, v124);
    }

    v104 = *(v78 + 2);
    v103 = *(v78 + 3);
    v4 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      v78 = sub_10012F55C((v103 > 1), v104 + 1, 1, v78);
    }

    *(v78 + 2) = v4;
    *&v78[8 * v104 + 32] = v102;
    v32 = *(&v132 + 1);
    v33 = v133;
  }

  if (v79 != 2)
  {
    if (v32 >= v32 >> 32)
    {
      goto LABEL_226;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
      goto LABEL_233;
    }

    v89 = result;
    v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v92 = __DataStorage._offset.getter();
    v91 = v32 - v92;
    if (__OFSUB__(v32, v92))
    {
      goto LABEL_227;
    }

    goto LABEL_117;
  }

  v87 = *(v32 + 16);
  if (v87 >= *(v32 + 24))
  {
    goto LABEL_225;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v89 = result;
    v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v90 = __DataStorage._offset.getter();
    v91 = v87 - v90;
    if (__OFSUB__(v87, v90))
    {
      goto LABEL_228;
    }

LABEL_117:
    v8 = *(v89 + v91);
    v83 = 0;
    goto LABEL_118;
  }

LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
  return result;
}

uint64_t *sub_1001AA244(uint64_t *result, uint64_t a2, char a3)
{
  v51 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = 0;
  v46 = a2 + 96;
  v47 = a2 + 32;
  v5 = &_swiftEmptyDictionarySingleton;
  v77 = *(a2 + 16);
  while (1)
  {
    if (v4 >= v3)
    {
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
      return result;
    }

    v6 = (v47 + (v4 << 6));
    v7 = v6[3];
    v68 = v6[2];
    v69 = v7;
    v8 = v6[1];
    v66 = *v6;
    v67 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_55;
    }

    v11 = *(&v66 + 1);
    v10 = v67;
    v12 = BYTE8(v67);
    v13 = BYTE9(v67);
    v15 = *(&v68 + 1);
    v14 = v68;
    v16 = *v51;
    v17 = v51[1];
    v18 = v17 >> 62;
    v52 = v66;
    v50 = v69;
    v49 = *(&v69 + 1);
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        break;
      }

      v21 = v16 + 16;
      v19 = *(v16 + 16);
      v20 = *(v21 + 8);
      v22 = __OFSUB__(v20, v19);
      v16 = v20 - v19;
      if (v22)
      {
        goto LABEL_57;
      }
    }

    else if (v18)
    {
      v22 = __OFSUB__(HIDWORD(v16), v16);
      LODWORD(v16) = HIDWORD(v16) - v16;
      if (v22)
      {
        goto LABEL_56;
      }

      v16 = v16;
    }

    else
    {
      v16 = BYTE6(v17);
    }

    if (!v16)
    {
      break;
    }

    sub_1000938D4(&v66, &v60, &qword_1005053F0, &unk_10040CDE0);
    result = sub_1001AC940(v51, 1);
    if (v54)
    {

      goto LABEL_41;
    }

    v48 = v5;
    v23 = v52;
    *&v60 = v52;
    *(&v60 + 1) = v11;
    v61 = v10;
    LOBYTE(v62) = v12;
    HIBYTE(v62) = v13;
    v24 = v14;
    *&v63 = v14;
    *(&v63 + 1) = v15;
    v25 = v50;
    v64 = v50;
    if (v10 == result)
    {
      v26 = 1;
    }

    else
    {
      v26 = v12;
    }

    v27 = v49;
    v65 = v49;
    if ((v26 & 1) == 0)
    {
      v30 = (v46 + (v4 << 6));
      while (1)
      {
        if ((v13 & 1) == 0)
        {
          v14 = v24;
          v34 = result;
          v50 = v25;
          v49 = v27;
          v52 = v23;
          v5 = v48;

          v35 = *v51;
          v36 = v51[1] >> 62;
          if (v36 > 1)
          {
            v37 = 0;
            if (v36 == 2)
            {
              v37 = *(v35 + 16);
            }
          }

          else if (v36)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0;
          }

          sub_10007FC0C();
          swift_allocError();
          *v39 = v34;
          *(v39 + 8) = v10;
          *(v39 + 16) = v37;
          *(v39 + 24) = 0;
          swift_willThrow();
          v12 = 0;
          v13 = 0;
          goto LABEL_41;
        }

        if (v77 == v9)
        {
          break;
        }

        if (v9 >= v77)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v31 = result;
        v32 = v30[1];
        v56 = *v30;
        v57 = v32;
        v33 = v30[3];
        v58 = v30[2];
        v59 = v33;
        sub_1000938D4(&v56, v55, &qword_1005053F0, &unk_10040CDE0);
        result = sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_53;
        }

        v11 = *(&v56 + 1);
        v23 = v56;
        v27 = *(&v59 + 1);
        v25 = v59;
        v15 = *(&v58 + 1);
        v24 = v58;
        v13 = BYTE9(v57);
        v12 = BYTE8(v57);
        v10 = v57;
        v60 = v56;
        v61 = v57;
        v62 = WORD4(v57);
        v63 = v58;
        v64 = v59;
        v65 = *(&v59 + 1);
        if ((BYTE8(v57) & 1) == 0)
        {
          ++v9;
          v30 += 4;
          result = v31;
          if (v57 != v31)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      if ((a3 & 1) == 0)
      {
        v14 = v24;
        v50 = v25;
        v49 = v27;
        v52 = v23;
        v5 = v48;

        sub_10007FC0C();
        swift_allocError();
        v13 = 1;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        *v38 = 1;
        *(v38 + 24) = 3;
        swift_willThrow();
        v12 = 0;
        goto LABEL_41;
      }

      sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
      return v48;
    }

    ++v4;
LABEL_21:
    v53 = v23;
    v70 = v10;
    v71 = v12;
    v72 = v13;
    v73 = v24;
    v74 = v15;
    v75 = v25;
    v76 = v27;

    v28 = sub_1001A93E0(v51, &v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v48;
    sub_100316520(v28, v53, v11, isUniquelyReferenced_nonNull_native);

    result = sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
    v5 = v56;
    v3 = v77;
    if (v4 == v77)
    {
      return v5;
    }
  }

  if (!BYTE9(v67))
  {
LABEL_50:
    sub_1000938D4(&v66, &v60, &qword_1005053F0, &unk_10040CDE0);

    sub_10007FC0C();
    swift_allocError();
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = 1;
    *(v43 + 24) = 3;
    swift_willThrow();
LABEL_41:
    *&v60 = v52;
    *(&v60 + 1) = v11;
    v61 = v10;
    LOBYTE(v62) = v12;
    HIBYTE(v62) = v13;
    *&v63 = v14;
    *(&v63 + 1) = v15;
    v64 = v50;
    v65 = v49;
    sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
    return v5;
  }

  v40 = (a2 + (v4 << 6) + 121);
  v41 = v4 + 1;
  while (v77 != v41)
  {
    if (v41 >= v77)
    {
      goto LABEL_58;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_59;
    }

    v42 = *v40;
    v40 += 64;
    ++v41;
    if ((v42 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  return v5;
}

uint64_t sub_1001AA7A0(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(a2 + 16);

  v109 = v6;
  v83 = a1;
  if (!v6)
  {

    goto LABEL_14;
  }

  v7 = 0;
  v8 = a2 + 32;
  v79 = 96;
  v81 = v6 - 1;
  while (1)
  {
    v9 = (v8 + (v7 << 6));
    v10 = v9[1];
    v93 = *v9;
    v94 = v10;
    v11 = v9[3];
    v95 = v9[2];
    v96 = v11;
    *v97 = v93;
    *&v97[16] = v10;
    *&v97[32] = v95;
    *&v97[48] = v11;
    v85 = v10;
    v90 = BYTE8(v10);
    v12 = v95;
    v13 = v11;
    sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
    sub_1000938D4(v97, &v99, &qword_1005053F0, &unk_10040CDE0);

    sub_1001AF6EC(v12, *(&v12 + 1), v13);

    if (v90)
    {
      break;
    }

    v14 = v7 + 1;

    if (v14 == v109)
    {

      sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
      goto LABEL_75;
    }

    v77 = v14;
    v84 = v4;
    v16 = v79;
    v15 = v81;
    do
    {
      v17 = *(a2 + v16 + 16);
      v99 = *(a2 + v16);
      v100 = v17;
      v18 = *(a2 + v16 + 48);
      v101 = *(a2 + v16 + 32);
      v102 = v18;
      v19 = v100;
      v91 = BYTE8(v100);
      v20 = v101;
      v21 = v18;
      sub_1000938D4(&v99, v98, &qword_1005053F0, &unk_10040CDE0);
      sub_1000938D4(&v99, v98, &qword_1005053F0, &unk_10040CDE0);

      sub_1001AF6EC(v20, *(&v20 + 1), v21);

      if ((v91 & 1) != 0 || v85 == v19)
      {

        sub_10007FC0C();
        swift_allocError();
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = 2;
        *(v22 + 24) = 3;
        swift_willThrow();
        sub_100075768(&v99, &qword_1005053F0, &unk_10040CDE0);
        sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
      }

      sub_100075768(&v99, &qword_1005053F0, &unk_10040CDE0);
      v16 += 64;
      --v15;
    }

    while (v15);

    sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
    v7 = v77;
    v79 += 64;
    --v81;
    v4 = v84;
    v8 = a2 + 32;
    if (v77 == v109)
    {
LABEL_75:

      if (v109 > 0x40)
      {
        sub_10007FC0C();
        swift_allocError();
        *(v71 + 8) = 0;
        *(v71 + 16) = 0;
        *v71 = 2;
        v72 = 3;
LABEL_70:
        *(v71 + 24) = v72;
        return swift_willThrow();
      }

LABEL_14:
      v86 = 0;
      v92 = (a2 + 32);
      v89 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
LABEL_15:
        v24 = *a1;
        v25 = a1[1];
        v26 = v25 >> 62;
        if ((v25 >> 62) > 1)
        {
          if (v26 != 2)
          {
            goto LABEL_56;
          }

          v29 = v24 + 16;
          v27 = *(v24 + 16);
          v28 = *(v29 + 8);
          v30 = __OFSUB__(v28, v27);
          v31 = v28 - v27;
          if (v30)
          {
            goto LABEL_81;
          }

          if (!v31)
          {
            goto LABEL_56;
          }
        }

        else if (v26)
        {
          v30 = __OFSUB__(HIDWORD(v24), v24);
          v32 = HIDWORD(v24) - v24;
          if (v30)
          {
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (!v32)
          {
LABEL_56:
            if (!v109)
            {
              return v89;
            }

            v62 = 0;
            for (i = v92; ; i += 4)
            {
              v64 = i[1];
              v93 = *i;
              v94 = v64;
              v65 = i[3];
              v95 = i[2];
              v96 = v65;
              *v97 = v93;
              *&v97[16] = v64;
              *&v97[32] = v95;
              *&v97[48] = v65;
              sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
              sub_1000938D4(v97, &v99, &qword_1005053F0, &unk_10040CDE0);

              v66 = v97[25];
              sub_1001AF6EC(*&v97[32], *&v97[40], v97[48]);

              if ((v66 & 1) == 0 && ((v86 >> v62) & 1) == 0)
              {
                break;
              }

              sub_100075768(v97, &qword_1005053F0, &unk_10040CDE0);
              if (v109 == ++v62)
              {
                return v89;
              }
            }

            sub_10007FC0C();
            swift_allocError();
            *(v67 + 8) = 0;
            *(v67 + 16) = 0;
            *v67 = 3;
            *(v67 + 24) = 3;
            goto LABEL_72;
          }
        }

        else if (!BYTE6(v25))
        {
          goto LABEL_56;
        }

        v33 = sub_1001AC940(a1, 1);
        if (v4)
        {
        }

        v34 = v33;
        v35 = v109;
        if (v109)
        {
          v36 = 0;
          v37 = _swiftEmptyArrayStorage;
          do
          {
            v38 = &v92[4 * v36];
            v39 = v36;
            while (1)
            {
              if (v39 >= v35)
              {
                __break(1u);
LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

              v40 = v38[1];
              v93 = *v38;
              v94 = v40;
              v41 = v38[3];
              v95 = v38[2];
              v96 = v41;
              v36 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_78;
              }

              v42 = v38[2];
              *&v97[56] = v38[3];
              *&v97[40] = v42;
              v43 = *v38;
              *&v97[24] = v38[1];
              *&v97[8] = v43;
              *v97 = v39;
              if ((v97[32] & 1) != 0 || *&v97[24] == v34)
              {
                break;
              }

              sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
              sub_100075768(v97, &qword_100505400, &qword_10040CC90);
              ++v39;
              v38 += 4;
              v35 = v109;
              if (v36 == v109)
              {
                goto LABEL_42;
              }
            }

            sub_1000938D4(&v93, &v99, &qword_1005053F0, &unk_10040CDE0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v98[0] = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10019F5D4(0, v37[2] + 1, 1);
              v37 = v98[0];
            }

            v46 = v37[2];
            v45 = v37[3];
            if (v46 >= v45 >> 1)
            {
              sub_10019F5D4((v45 > 1), v46 + 1, 1);
              v37 = v98[0];
            }

            v37[2] = v46 + 1;
            v47 = &v37[9 * v46];
            *(v47 + 2) = *v97;
            v48 = *&v97[16];
            v49 = *&v97[32];
            v50 = *&v97[48];
            v47[12] = *&v97[64];
            *(v47 + 4) = v49;
            *(v47 + 5) = v50;
            *(v47 + 3) = v48;
            v35 = v109;
          }

          while (v36 != v109);
        }

        else
        {
          v37 = _swiftEmptyArrayStorage;
        }

LABEL_42:
        a1 = v83;
        if (v37[2] == 1)
        {
          break;
        }

        if ((a3 & 1) == 0)
        {

          v68 = 0;
          v69 = *v83;
          v70 = v83[1] >> 62;
          if (v70 > 1)
          {
            if (v70 == 2)
            {
              v68 = *(v69 + 16);
            }
          }

          else if (v70)
          {
            v68 = v69;
          }

          sub_10007FC0C();
          swift_allocError();
          *v71 = v34;
          *(v71 + 8) = v68;
          *(v71 + 16) = 0;
          v72 = 2;
          goto LABEL_70;
        }

        sub_1001AD294(v83, 0);
        v4 = 0;
        result = sub_10006A178(v51, v52);
      }

      v53 = *(v37 + 3);
      v54 = *(v37 + 5);
      *&v97[32] = *(v37 + 4);
      *&v97[48] = v54;
      *&v97[64] = v37[12];
      *v97 = *(v37 + 2);
      *&v97[16] = v53;
      sub_1000938D4(v97, &v93, &qword_100505400, &qword_10040CC90);

      if (*v97 > 0x40uLL)
      {
        v55 = 0;
        goto LABEL_49;
      }

      if (*v97 == 64)
      {
        v78 = 0;
      }

      else
      {
        v55 = 1 << v97[0];
LABEL_49:
        if ((v55 & v86) != 0)
        {
LABEL_79:

          sub_10007FC0C();
          swift_allocError();
          *(v76 + 8) = 0;
          *(v76 + 16) = 0;
          *v76 = 6;
          *(v76 + 24) = 3;
          swift_willThrow();
          v74 = &qword_100505400;
          v75 = &qword_10040CC90;
          return sub_100075768(v97, v74, v75);
        }

        if (*v97 <= 0x40uLL)
        {
          v56 = 1 << v97[0];
        }

        else
        {
          v56 = 0;
        }

        v78 = v56;
      }

      v80 = *&v97[8];
      v88 = *&v97[16];
      v57 = *&v97[40];
      v58 = *&v97[48];
      v103 = *&v97[24];
      v104 = *&v97[32];
      v105 = *&v97[40];
      v106 = *&v97[48];
      v59 = v97[56];
      v107 = v97[56];
      v108 = *&v97[64];
      sub_1000938D4(v97, &v93, &qword_100505400, &qword_10040CC90);
      sub_1001AF6EC(v57, v58, v59);

      v4 = 0;
      v60 = sub_1001A93E0(v83, &v103);
      v86 |= v78;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v93 = v89;
      sub_100316520(v60, v80, v88, v61);

      result = sub_100075768(v97, &qword_100505400, &qword_10040CC90);
      v89 = v93;
      goto LABEL_15;
    }
  }

  sub_10007FC0C();
  swift_allocError();
  *(v73 + 8) = 0;
  *(v73 + 16) = 0;
  *v73 = 2;
  *(v73 + 24) = 3;
LABEL_72:
  swift_willThrow();
  v74 = &qword_1005053F0;
  v75 = &unk_10040CDE0;
  return sub_100075768(v97, v74, v75);
}

uint64_t sub_1001AB134(uint64_t result, uint64_t a2, void *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *a2;
  if (v6)
  {
    if (v7 >= 0x40)
    {
      sub_10007FC0C();
      swift_allocError();
      v39 = 2;
LABEL_109:
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = v39;
      *(v38 + 24) = 3;
      return swift_willThrow();
    }

    v8 = 0;
  }

  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = v7 >> 6;
  if (v7 >> 6 <= 1)
  {
    if (v11)
    {
      if (*(a2 + 8))
      {
        goto LABEL_144;
      }

      v40 = result;
      result = sub_1001ABEBC(result, *(a2 + 16));
      if (!v3)
      {
        v41 = result;
        sub_1001AE5BC(v8);
        sub_1001AE6D0(v41, a3);
        return sub_1001AF128(v40, v10, a3);
      }

      return result;
    }

    v12 = *(result + 24);
    v13 = sub_1000752B0(result, v12);
    *(&v85 + 1) = v12;
    v14 = sub_1000B9634(&v84);
    (*(*(v12 - 8) + 16))(v14, v13, v12);
    v15 = sub_1001ABB9C(v88, &v84);
    v17 = v16;
    result = sub_1000752F4(&v84);
    if (v3)
    {
      return result;
    }

    v80 = a3;
    v18 = *(v10 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v10 + 32;
      v21 = _swiftEmptyArrayStorage;
      v101 = v10 + 32;
      do
      {
        v22 = (v20 + (v19 << 6));
        v23 = v19;
        while (1)
        {
          if (v23 >= v18)
          {
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v24 = *v22;
          v25 = v22[1];
          v26 = v22[2];
          v87 = v22[3];
          v85 = v25;
          v86 = v26;
          v84 = v24;
          v19 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_134;
          }

          if (v84 == v15 && *(&v84 + 1) == v17)
          {
            break;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }

          ++v23;
          v22 += 4;
          if (v19 == v18)
          {
            goto LABEL_101;
          }
        }

        sub_1000938D4(&v84, &v82, &qword_1005053F0, &unk_10040CDE0);
        result = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v21;
        if ((result & 1) == 0)
        {
          result = sub_10019F5F4(0, v21[2] + 1, 1);
          v21 = v81[0];
        }

        v20 = v101;
        v29 = v21[2];
        v28 = v21[3];
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          result = sub_10019F5F4((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
          v21 = v81[0];
        }

        v21[2] = v30;
        v31 = &v21[8 * v29];
        v32 = v84;
        v33 = v85;
        v34 = v87;
        v31[4] = v86;
        v31[5] = v34;
        v31[2] = v32;
        v31[3] = v33;
      }

      while (v19 != v18);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

LABEL_101:

    if (v21[2])
    {
      v71 = *(v21 + 3);
      v84 = *(v21 + 2);
      v85 = v71;
      v72 = *(v21 + 5);
      v86 = *(v21 + 4);
      v87 = v72;
      sub_1000938D4(&v84, &v82, &qword_1005053F0, &unk_10040CDE0);

      v93 = v85;
      v94 = WORD4(v85);
      v95 = v86;
      v96 = v87;
      v97 = *(&v87 + 1);
      sub_1001AB134(v88, &v93, v80);
      sub_100075768(&v84, &qword_1005053F0, &unk_10040CDE0);
    }

    else
    {

      sub_10007FC0C();
      swift_allocError();
      *(v73 + 8) = 0;
      *(v73 + 16) = 0;
      *v73 = 2;
      *(v73 + 24) = 3;
      swift_willThrow();
    }

    v37 = v88;
    return sub_1000752F4(v37);
  }

  if (v11 == 2)
  {
    v35 = *(v10 + 48);
    v91 = *(v10 + 32);
    v92 = v35;
    v90 = *(v10 + 16);
    v98 = v91;
    v99 = *(v10 + 48);
    v100[0] = *(&v35 + 1);
    sub_1000BC094(result, &v82);
    sub_1001AF70C(&v98, v81);
    sub_1000938D4(v100, v81, &qword_100504EC8, &qword_10040C3B0);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    sub_100068FC4(&qword_1005054C8, &qword_10040CDF0);
    if (!swift_dynamicCast())
    {
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      sub_100075768(v88, &qword_1005054D0, &qword_10040CDF8);
      sub_10007FC0C();
      swift_allocError();
      *(v63 + 8) = 0;
      *(v63 + 16) = 0;
      *v63 = 2;
      *(v63 + 24) = 3;
      swift_willThrow();
      sub_10018C454(&v98);
      return sub_100075768(v100, &qword_100504EC8, &qword_10040C3B0);
    }

    result = sub_1000BC104(v88, &v84);
    if (v6)
    {
      goto LABEL_145;
    }

    v36 = sub_1001AC450(&v84, &v90);
    if (!v3)
    {
      v64 = v36;
      sub_1001AE5BC(v8);
      sub_1001AE6D0(v64, a3);
      v65 = sub_1000752B0(&v84, *(&v85 + 1));
      result = sub_10034CD08(*v65);
      v66 = result;
      v67 = *(result + 16);
      if (v67)
      {
        v68 = 0;
        v69 = result + 32;
        while (v68 < *(v66 + 16))
        {
          sub_1000BC094(v69, &v82);
          sub_1001AB134(&v82, &v90, a3);
          ++v68;
          result = sub_1000752F4(&v82);
          v69 += 40;
          if (v67 == v68)
          {
            goto LABEL_95;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

LABEL_95:
      sub_10018C454(&v98);
      sub_100075768(v100, &qword_100504EC8, &qword_10040C3B0);

      v37 = &v84;
      return sub_1000752F4(v37);
    }

    goto LABEL_29;
  }

  if (!(v9 | v10) && v7 == 192)
  {
    v42 = a3;
    sub_1000BC094(result, &v84);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    result = swift_dynamicCast();
    if (result)
    {
      v45 = v82;
      v44 = v83;
      v46 = *(a2 + 40);
      v47 = *(v46 + 16);
      v48 = v83 >> 62;
      a3 = v42;
      if (!v47)
      {
LABEL_96:
        if (v6)
        {
          goto LABEL_146;
        }

        result = sub_1001AE5BC(v8);
        if (v48 > 1)
        {
          if (v48 == 2)
          {
            v77 = *(v82 + 16);
            v76 = *(v82 + 24);
            v70 = v76 - v77;
            if (__OFSUB__(v76, v77))
            {
              __break(1u);
              sub_1000752F4(&v82);

LABEL_29:
              sub_10018C454(&v98);
              sub_100075768(v100, &qword_100504EC8, &qword_10040C3B0);
              v37 = &v84;
              return sub_1000752F4(v37);
            }
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          if (v48)
          {
            goto LABEL_121;
          }

          v70 = BYTE6(v83);
        }

LABEL_124:
        sub_1001AE6D0(v70, a3);
        Data.append(_:)();
        return sub_10006A178(v45, v44);
      }

      v49 = HIDWORD(v82) - v82;
      v7 = __OFSUB__(HIDWORD(v82), v82);
      v10 = BYTE6(v83);
      v50 = (v46 + 72);
      while (1)
      {
        v51 = *(v50 - 3);
        v52 = *(v50 - 1);
        if (*(v50 - 32))
        {
          goto LABEL_54;
        }

        v53 = *(v50 - 5);
        if (v48 <= 1)
        {
          break;
        }

        if (v48 == 2)
        {
          result = *(v82 + 16);
          v55 = *(v82 + 24);
          v56 = __OFSUB__(v55, result);
          v54 = v55 - result;
          if (v56)
          {
            goto LABEL_137;
          }

          goto LABEL_51;
        }

        if (v53 > 0)
        {
          goto LABEL_111;
        }

LABEL_54:
        if (*(v50 - 16))
        {
          goto LABEL_64;
        }

        if (v48 <= 1)
        {
          v57 = BYTE6(v83);
          if (v48)
          {
            v57 = v49;
            if (v7)
            {
              goto LABEL_139;
            }
          }

LABEL_61:
          if (v51 < v57)
          {
            goto LABEL_111;
          }

          goto LABEL_64;
        }

        if (v48 == 2)
        {
          v59 = *(v82 + 16);
          v58 = *(v82 + 24);
          v56 = __OFSUB__(v58, v59);
          v57 = v58 - v59;
          if (v56)
          {
            goto LABEL_140;
          }

          goto LABEL_61;
        }

        if (v51 < 0)
        {
          goto LABEL_111;
        }

LABEL_64:
        if ((*v50 & 1) == 0)
        {
          if (v48 > 1)
          {
            if (v48 == 2)
            {
              v62 = *(v82 + 16);
              v61 = *(v82 + 24);
              v56 = __OFSUB__(v61, v62);
              v60 = v61 - v62;
              if (v56)
              {
                goto LABEL_142;
              }
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = BYTE6(v83);
            if (v48)
            {
              v60 = v49;
              if (v7)
              {
                goto LABEL_141;
              }
            }
          }

          if (!v52)
          {
            goto LABEL_136;
          }

          if (v60 == 0x8000000000000000 && v52 == -1)
          {
            __break(1u);
            goto LABEL_78;
          }

          if (v60 % v52)
          {
LABEL_111:
            if (v6)
            {
              sub_10007FC0C();
              swift_allocError();
              *(v74 + 8) = 0;
              *(v74 + 16) = 0;
              *v74 = 5;
              v75 = 3;
              goto LABEL_131;
            }

            if (v48 > 1)
            {
              if (v48 == 2)
              {
                v79 = *(v82 + 16);
                v78 = *(v82 + 24);
                v10 = v78 - v79;
                if (!__OFSUB__(v78, v79))
                {
                  goto LABEL_130;
                }

                __break(1u);
              }

              v10 = 0;
            }

            else if (v48)
            {
              v10 = v49;
              if (v7)
              {
                __break(1u);
LABEL_121:
                if (!__OFSUB__(HIDWORD(v82), v82))
                {
                  v70 = HIDWORD(v82) - v82;
                  goto LABEL_124;
                }

LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
                return result;
              }
            }

LABEL_130:
            sub_10007FC0C();
            swift_allocError();
            *v74 = v5;
            *(v74 + 8) = v10;
            *(v74 + 16) = 0;
            v75 = 1;
LABEL_131:
            *(v74 + 24) = v75;
            swift_willThrow();
            return sub_10006A178(v45, v44);
          }
        }

        v50 += 48;
        if (!--v47)
        {
          goto LABEL_96;
        }
      }

      v54 = BYTE6(v83);
      if (v48)
      {
        v54 = v49;
        if (v7)
        {
          goto LABEL_138;
        }
      }

LABEL_51:
      if (v54 < v53)
      {
        goto LABEL_111;
      }

      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_78:
  if (v10 == 1 && !v9 && v7 == 192)
  {
    sub_1000BC094(result, &v84);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    result = swift_dynamicCast();
    if (result)
    {
      if (v6)
      {
        goto LABEL_147;
      }

      return sub_1001AEB24(v8, v82, a3);
    }

    goto LABEL_108;
  }

  if (v10 != 2 || v9 || v7 != 192)
  {
    sub_1000BC094(result, &v84);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    if (swift_dynamicCast())
    {
      Data.append(_:)();
      return sub_10006A178(v82, v83);
    }

    goto LABEL_108;
  }

  sub_1000BC094(result, &v84);
  sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_108:
    sub_10007FC0C();
    swift_allocError();
    v39 = 4;
    goto LABEL_109;
  }

  if (v6)
  {
    goto LABEL_148;
  }

  return sub_1001AEFAC(v8, v82, a3);
}

uint64_t sub_1001ABB9C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = type metadata accessor for Mirror();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000754F0(a2, &v20);
  Mirror.init(reflecting:)();
  v8 = Mirror.children.getter();
  (*(v4 + 8))(v7, v3);
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v13 == result)
  {
    v15 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v15)
    {
      swift_unknownObjectRelease();

LABEL_8:
      sub_10007FC0C();
      swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 2;
      *(v16 + 24) = 3;
      swift_willThrow();
      return v8;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v22[0] = v20;
    v22[1] = v21[0];
    v22[2] = v21[1];
    sub_1000938D4(v22, &v20, &qword_1005054D8, &unk_10040CE00);

    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100075768(v22, &qword_1005054D8, &unk_10040CE00);
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      sub_100075768(v17, &qword_1005054E0, &unk_10040CE10);
      goto LABEL_8;
    }

    sub_1000BC104(v17, v19);
    result = sub_1000938D4(v22, &v20, &qword_1005054D8, &unk_10040CE00);
    if (*(&v20 + 1))
    {
      v8 = v20;
      sub_100075768(v22, &qword_1005054D8, &unk_10040CE00);
      sub_1000BC104(v19, v23);
      sub_1000752F4(v21);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABEBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = sub_1000752B0(a1, v11);
  v56[3] = v11;
  v13 = sub_1000B9634(v56);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v47 = v10;
  result = Mirror.init(reflecting:)();
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = a2 + 88;
    v42 = v6;
    v41 = v7;
    v46 = v15;
    v40 = a2 + 88;
    while (2)
    {
      v43 = v16;
      v19 = (v18 + (v17 << 6));
      while (1)
      {
        if (v17 >= v15)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (__OFADD__(v17, 1))
        {
          goto LABEL_24;
        }

        v48 = v17 + 1;
        v20 = *(v19 - 6);
        v45 = *(v19 - 5);
        v44 = *(v19 - 32);
        v49 = *(v19 - 31);
        v22 = *(v19 - 3);
        v21 = *(v19 - 2);
        v23 = *(v19 - 8);
        v24 = *v19;
        v50 = v3;
        v25 = *(v19 - 7);

        v51 = v22;
        v52 = v21;
        v53 = v23;
        sub_1001AF744(v22, v21, v23);
        v58 = v24;

        v26 = Mirror.children.getter();
        __chkstk_darwin(v26);
        *(&v39 - 2) = v25;
        *(&v39 - 1) = v20;
        v27 = v50;
        v28 = dispatch thunk of _AnySequenceBox._filter(_:)();
        v3 = v27;

        if (*(v28 + 16) != 1)
        {

          sub_10007FC0C();
          swift_allocError();
          *(v34 + 8) = 0;
          *(v34 + 16) = 0;
          *v34 = 2;
          *(v34 + 24) = 3;
          swift_willThrow();
          sub_1001AF6EC(v51, v52, v53);
          goto LABEL_18;
        }

        sub_1000938D4(v28 + 32, v56, &qword_1005054D8, &unk_10040CE00);

        sub_100068FC4(&qword_100502420, &qword_10040F310);
        swift_dynamicCast();
        if (v55)
        {
          break;
        }

        sub_100075768(&v54, &qword_100502420, &qword_10040F310);
        if ((v49 & 1) == 0)
        {
          v35 = v53;
          v36 = v52;
          v37 = v51;
          sub_10007FC0C();
          swift_allocError();
          *(v38 + 8) = 0;
          *(v38 + 16) = 0;
          *v38 = 3;
          *(v38 + 24) = 3;
          swift_willThrow();
          sub_1001AF6EC(v37, v36, v35);
LABEL_18:

          (*(v41 + 8))(v47, v42);
          return v43;
        }

        sub_1001AF6EC(v51, v52, v53);

        ++v17;
        v19 += 8;
        v15 = v46;
        if (v48 == v46)
        {
          v6 = v42;
          v7 = v41;
          v16 = v43;
          goto LABEL_20;
        }
      }

      sub_100075D50(&v54, v57);
      sub_1000754F0(v57, &v54);
      sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
      swift_dynamicCast();
      v30 = v51;
      v29 = v52;
      v31 = v53;
      v32 = sub_1001ADEA8(v56, v45, v44, v51, v52, v53);
      if (v27)
      {
        sub_1001AF6EC(v30, v29, v31);

        sub_1000752F4(v57);
        (*(v41 + 8))(v47, v42);
        sub_1000752F4(v56);
        return v43;
      }

      v33 = v32;
      sub_1001AF6EC(v30, v29, v31);

      result = sub_1000752F4(v57);
      v16 = v43 + v33;
      v6 = v42;
      v7 = v41;
      if (!__OFADD__(v43, v33))
      {
        result = sub_1000752F4(v56);
        v17 = v48;
        v15 = v46;
        v18 = v40;
        if (v48 != v46)
        {
          continue;
        }

        goto LABEL_20;
      }

      break;
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    v16 = 0;
LABEL_20:
    (*(v7 + 8))(v47, v6);
    return v16;
  }

  return result;
}

uint64_t sub_1001AC450(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000752B0(a1, a1[3]);
  v6 = sub_10034CD08(*v5);
  v7 = v6[2];
  if (v7)
  {
    v24 = _swiftEmptyArrayStorage;
    result = sub_10019F654(0, v7, 0);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = (v6 + 4);
    while (v9 < v6[2])
    {
      sub_1000BC094(v11, v23);
      v12 = sub_1001ADEA8(v23, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
      if (v3)
      {
        sub_1000752F4(v23);

        return a2;
      }

      v13 = v12;
      v14 = v6;
      v15 = v7;
      result = sub_1000752F4(v23);
      v24 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10019F654((v16 > 1), v17 + 1, 1);
        v10 = v24;
      }

      ++v9;
      v10[2] = v17 + 1;
      v10[v17 + 4] = v13;
      v11 += 40;
      v7 = v15;
      v18 = v15 == v9;
      v6 = v14;
      v3 = 0;
      if (v18)
      {

        v19 = v10[2];
        if (v19)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_20;
  }

  v10 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
LABEL_11:
    a2 = 0;
    for (i = 4; ; ++i)
    {
      v21 = v10[i];
      v22 = __OFADD__(a2, v21);
      a2 += v21;
      if (v22)
      {
        break;
      }

      if (!--v19)
      {

        return a2;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_17:

  return 0;
}

void *sub_1001AC648(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1001AC6BC(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1001AC648(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1001AC738(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      v12 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v12)
        {
          if (a1 != 2 || v12)
          {
            if (a1 != 3 || v12)
            {
              if (a1 != 4 || v12)
              {
                if (a1 != 5 || v12)
                {
                  if (a1 != 6 || v12)
                  {
                    if (a1 != 7 || v12)
                    {
                      if (a8 == 3 && a5 == 8 && !(a7 | a6))
                      {
                        return 1;
                      }
                    }

                    else if (a8 == 3 && a5 == 7 && !(a7 | a6))
                    {
                      return 1;
                    }
                  }

                  else if (a8 == 3 && a5 == 6 && !(a7 | a6))
                  {
                    return 1;
                  }
                }

                else if (a8 == 3 && a5 == 5 && !(a7 | a6))
                {
                  return 1;
                }
              }

              else if (a8 == 3 && a5 == 4 && !(a7 | a6))
              {
                return 1;
              }
            }

            else if (a8 == 3 && a5 == 3 && !(a7 | a6))
            {
              return 1;
            }
          }

          else if (a8 == 3 && a5 == 2 && !(a7 | a6))
          {
            return 1;
          }
        }

        else if (a8 == 3 && a5 == 1 && !(a7 | a6))
        {
          return 1;
        }
      }

      else if (a8 == 3 && !(a7 | a6 | a5))
      {
        return 1;
      }

      return 0;
    }

    if (a8 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!a4)
    {
      if (!a8)
      {
        return a1 == a5 && a2 == a6 && a3 == a7;
      }

      return 0;
    }

    if (a8 != 1)
    {
      return 0;
    }
  }

  return a1 == a5 && a2 == a6;
}

uint64_t sub_1001AC940(uint64_t a1, char a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_66;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      goto LABEL_88;
    }

    if (!v12)
    {
      goto LABEL_66;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_89;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_66;
    }
  }

  else if (!BYTE6(v7))
  {
LABEL_66:
    sub_10007FC0C();
    swift_allocError();
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = 0;
    *(v36 + 24) = 3;
    swift_willThrow();
    return v2;
  }

  if (v8 == 2)
  {
    v13 = *(v6 + 16);
  }

  v14 = Data._Representation.subscript.getter();
  v2 = v14;
  if ((~v14 & 0x1E) != 0)
  {
    if ((a2 & 1) == 0)
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        v22 = 0;
        if (v21 == 2)
        {
          v22 = *(v19 + 16);
        }
      }

      else
      {
        v22 = v19;
        if (!v21)
        {
          v22 = 0;
        }
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_91;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v26 = *(v19 + 24);
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v21)
      {
        v26 = v19 >> 32;
      }

      else
      {
        v26 = BYTE6(v20);
      }

      if (v26 >= v22 + 1)
      {
        sub_100069E2C(*a1, *(a1 + 8));
        v42 = Data._Representation.subscript.getter();
        v44 = v43;
        sub_10006A178(v19, v20);
        sub_10006A178(*a1, *(a1 + 8));
        *a1 = v42;
        *(a1 + 8) = v44;
        return v2;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      v18 = 0;
      if (v17 == 2)
      {
        v18 = *(v15 + 16);
      }
    }

    else
    {
      v18 = v15;
      if (!v17)
      {
        v18 = 0;
      }
    }

    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_90;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v25 = *(v15 + 24);
        if (v25 >= v23)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v25 = 0;
        if (v23 <= 0)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v24 = BYTE6(v16);
      v15 >>= 32;
      if (v17)
      {
        v25 = v15;
      }

      else
      {
        v25 = v24;
      }

      if (v25 >= v23)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_44:
    for (i = *(v3 + v15); ; i = *(&v48 + v23))
    {
      v2 = i | (v2 << 8);
      ++v23;
      if ((i & 0x80) == 0)
      {
        break;
      }

LABEL_46:
      if (v25 == v23)
      {
        goto LABEL_66;
      }

      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v30 == 2)
        {
          if (v23 >= *(v28 + 16))
          {
            if (v23 < *(v28 + 24))
            {
              v31 = __DataStorage._bytes.getter();
              if (v31)
              {
                v3 = v31;
                v32 = __DataStorage._offset.getter();
                v15 = v23 - v32;
                if (!__OFSUB__(v23, v32))
                {
                  goto LABEL_44;
                }

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
                goto LABEL_92;
              }

LABEL_96:
              __break(1u);
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v30)
      {
        if (v23 >= v28 >> 32 || v23 < v28)
        {
          goto LABEL_85;
        }

        v34 = __DataStorage._bytes.getter();
        if (!v34)
        {
          goto LABEL_95;
        }

        v3 = v34;
        v35 = __DataStorage._offset.getter();
        v15 = v23 - v35;
        if (__OFSUB__(v23, v35))
        {
          __break(1u);
          goto LABEL_66;
        }

        goto LABEL_44;
      }

      if (v23 >= BYTE6(v29))
      {
        goto LABEL_84;
      }

      v48 = *a1;
      v49 = BYTE2(v28);
      v50 = BYTE3(v28);
      v51 = BYTE4(v28);
      v52 = BYTE5(v28);
      v53 = BYTE6(v28);
      v54 = HIBYTE(v28);
      v55 = v29;
      v56 = BYTE2(v29);
      v57 = BYTE3(v29);
      v58 = BYTE4(v29);
      v59 = BYTE5(v29);
    }

    if ((a2 & 1) == 0)
    {
      v38 = *a1;
      v39 = *(a1 + 8);
      v40 = v39 >> 62;
      if ((v39 >> 62) > 1)
      {
        if (v40 == 2)
        {
          v41 = *(v38 + 24);
        }

        else
        {
          v41 = 0;
        }
      }

      else if (v40)
      {
        v41 = v38 >> 32;
      }

      else
      {
        v41 = BYTE6(v39);
      }

      if (v41 > v23 - 1)
      {
        v45 = Data._Representation.subscript.getter();
        v47 = v46;
        sub_10006A178(*a1, *(a1 + 8));
        *a1 = v45;
        *(a1 + 8) = v47;
        return v2;
      }

      goto LABEL_93;
    }
  }

  return v2;
}

uint64_t sub_1001ACD80(uint64_t a1)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_39;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      goto LABEL_110;
    }

    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_111;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_39;
    }
  }

  else if (!BYTE6(v7))
  {
    goto LABEL_39;
  }

  result = sub_1000CA97C(v6, v7);
  if ((result & 0x100) != 0)
  {
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    return result;
  }

  v2 = result;
  if (result <= 0x7Fu)
  {
    v1 = *a1;
    v3 = *(a1 + 8);
    v14 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      v15 = 0;
      if (v14 == 2)
      {
        v15 = *(v1 + 16);
      }
    }

    else
    {
      v15 = v1;
      if (!v14)
      {
        v15 = 0;
      }
    }

    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_112;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        v19 = v1 >> 32;
      }

      else
      {
        v19 = BYTE6(v3);
      }

      goto LABEL_42;
    }

LABEL_31:
    if (v14 == 2)
    {
      v19 = *(v1 + 24);
    }

    else
    {
      v19 = 0;
    }

LABEL_42:
    if (v19 < v4)
    {
      goto LABEL_113;
    }

    goto LABEL_43;
  }

  v16 = *a1;
  v17 = *(a1 + 8);
  v14 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_39:
      sub_10007FC0C();
      swift_allocError();
      v24[2] = 0;
      v25 = v24 + 3;
      *v24 = 0;
LABEL_40:
      v24[1] = 0;
      *v25 = 3;
      swift_willThrow();
      return v2;
    }

    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v11 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (v11)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else if (v14)
  {
    LODWORD(v18) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_115;
    }

    v18 = v18;
  }

  else
  {
    v18 = BYTE6(v17);
  }

  v22 = result & 0x7F;
  if (v18 <= v22)
  {
    goto LABEL_39;
  }

  if (v14)
  {
    if (v14 == 2)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      v23 = v16;
    }
  }

  else
  {
    v23 = 0;
  }

  if (__OFADD__(v23, 1))
  {
    goto LABEL_114;
  }

  result = Data._Representation.subscript.getter();
  if (!result)
  {
    sub_10007FC0C();
    swift_allocError();
    v24[2] = 0;
    v25 = v24 + 3;
    *v24 = 8;
    goto LABEL_40;
  }

  v29 = 0;
  v1 = *a1;
  v3 = *(a1 + 8);
  v30 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v29 = *(v1 + 16);
    }
  }

  else if (v30)
  {
    v29 = v1;
  }

  v31 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    goto LABEL_116;
  }

  v32 = 0;
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v32 = *(v1 + 16);
    }
  }

  else if (v30)
  {
    v32 = v1;
  }

  v33 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v11 = __OFADD__(v33, v22);
  v34 = v33 + v22;
  if (v11)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v34 < v31)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v31 == v34)
  {
    v2 = 0;
    goto LABEL_89;
  }

  v2 = 0;
  v35 = -v32 - v22;
  while (1)
  {
    v37 = *a1;
    v38 = *(a1 + 8);
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_122;
      }

      if (v31 < *(v37 + 16))
      {
        goto LABEL_105;
      }

      if (v31 >= *(v37 + 24))
      {
        goto LABEL_108;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_124;
      }

      v40 = result;
      result = __DataStorage._offset.getter();
      v41 = v31 - result;
      if (__OFSUB__(v31, result))
      {
        goto LABEL_109;
      }

      goto LABEL_67;
    }

    if (v39)
    {
      break;
    }

    if (v31 >= BYTE6(v38))
    {
      goto LABEL_106;
    }

    v46 = *a1;
    v47 = v38;
    v48 = BYTE2(v38);
    v49 = BYTE3(v38);
    v50 = BYTE4(v38);
    v51 = BYTE5(v38);
    v36 = *(&v46 + v31);
LABEL_68:
    ++v31;
    v2 = v36 | (v2 << 8);
    if (v35 + v31 == 1)
    {
      goto LABEL_88;
    }
  }

  if (v31 >= v37 >> 32 || v31 < v37)
  {
    goto LABEL_107;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_123;
  }

  v40 = result;
  result = __DataStorage._offset.getter();
  v41 = v31 - result;
  if (!__OFSUB__(v31, result))
  {
LABEL_67:
    v36 = *(v40 + v41);
    goto LABEL_68;
  }

  __break(1u);
LABEL_88:
  v1 = *a1;
  v3 = *(a1 + 8);
  v30 = v3 >> 62;
LABEL_89:
  v43 = v22 + 1;
  if (v30 > 1)
  {
    v44 = 0;
    if (v30 == 2)
    {
      v44 = *(v1 + 16);
    }
  }

  else
  {
    v44 = v1;
    if (!v30)
    {
      v44 = 0;
    }
  }

  if (__OFADD__(v44, v43))
  {
LABEL_120:
    __break(1u);
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v45 = *(v1 + 24);
    }

    else
    {
      v45 = 0;
    }
  }

  else if (v30)
  {
    v45 = v1 >> 32;
  }

  else
  {
    v45 = BYTE6(v3);
  }

  if (v45 < v44 + v43)
  {
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
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_43:
  sub_100069E2C(v1, v3);
  v26 = Data._Representation.subscript.getter();
  v28 = v27;
  sub_10006A178(v1, v3);
  sub_10006A178(*a1, *(a1 + 8));
  *a1 = v26;
  *(a1 + 8) = v28;
  return v2;
}

uint64_t sub_1001AD294(uint64_t *a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  sub_100069E2C(*a1, v6);
  v7 = sub_1001AC940(a1, 0);
  if (v2)
  {
    return sub_10006A178(v5, v6);
  }

  v27 = v7;
  result = sub_1001ACD80(a1);
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 == 2)
    {
      v12 = *(v9 + 16);
    }
  }

  else
  {
    v12 = v9;
    if (!v11)
    {
      v12 = 0;
    }
  }

  v13 = v12 + result;
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (*(v9 + 24) >= v13)
      {
        goto LABEL_14;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  if (v11)
  {
    v14 = v9 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  if (v14 < v13)
  {
LABEL_27:
    sub_10007FC0C();
    swift_allocError();
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *v19 = 0;
    *(v19 + 24) = 3;
    swift_willThrow();
    return sub_10006A178(v5, v6);
  }

LABEL_14:
  v15 = 0;
  if (a2)
  {
    v16 = v5;
  }

  else
  {
    v16 = *a1;
  }

  if (a2)
  {
    v17 = v6;
  }

  else
  {
    v17 = a1[1];
  }

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_32;
    }

    v15 = *(v16 + 16);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_32;
    }

    v15 = v16;
  }

  result = sub_100069E2C(v16, v17);
LABEL_32:
  if (v13 < v15)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  Data._Representation.subscript.getter();
  sub_10006A178(v16, v17);
  v20 = *a1;
  v21 = a1[1];
  sub_100069E2C(*a1, v21);
  result = sub_10006A178(v20, v21);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v20 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v20 >> 32;
  }

  else
  {
    v23 = BYTE6(v21);
  }

  if (v23 >= v13)
  {
    v24 = Data._Representation.subscript.getter();
    v26 = v25;
    sub_10006A178(v20, v21);
    sub_10006A178(v5, v6);
    *a1 = v24;
    a1[1] = v26;
    return v27;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1001AD500(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17 = a2;
  v16 = a1;
  sub_100069E2C(a1, a2);
  v7 = sub_1001AD294(&v16, 0);
  v9 = v8;
  v11 = v10;
  sub_10006A178(v16, v17);
  if (!v3 && v7 != a3)
  {
    v12 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      v13 = 0;
      if (v12 == 2)
      {
        v13 = *(a1 + 16);
      }
    }

    else if (v12)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    sub_10007FC0C();
    swift_allocError();
    *v14 = v7;
    *(v14 + 8) = a3;
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    swift_willThrow();
    sub_10006A178(v9, v11);
  }

  return v9;
}

uint64_t sub_1001AD600(uint64_t a1, unint64_t i)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = i >> 62;
  if ((i >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 < 1)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (!v10)
  {
    if (!BYTE6(i))
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a1) - a1 < 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v10 == 2)
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (v13)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v17 <= 8)
    {
      goto LABEL_20;
    }

LABEL_18:
    sub_10007FC0C();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    *(v18 + 24) = 3;
    swift_willThrow();
    return i;
  }

  if (v10 != 1)
  {
    if (BYTE6(i) <= 8uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(a1) - a1 > 8)
  {
    goto LABEL_18;
  }

LABEL_20:
  v19 = v7;
  v20 = sub_1000CA97C(a1, i);
  if ((v20 & 0x100) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v20 & 0x80) == 0)
  {
    if (v10 == 2)
    {
      v21 = *(a1 + 16);
    }

    sub_100069E2C(a1, i);
    Data.Iterator.init(_:at:)();
    v22 = Data.Iterator.next()();
    for (i = 0; (*&v22 & 0x100) == 0; v22 = Data.Iterator.next()())
    {
      i = v22.value | (i << 8);
    }

    (*(v5 + 8))(v9, v19);
    if ((i & 0x8000000000000000) == 0)
    {
      return i;
    }

    goto LABEL_30;
  }

LABEL_34:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001AD89C(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_21;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 1)
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v2)
      {
        if (v2 == 2)
        {
          if (*(result + 16) == *(result + 24))
          {
            goto LABEL_21;
          }
        }

        else if (result == result >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v7 = Data._Representation.subscript.getter();
      if (!v7)
      {
        return v7 & 1;
      }

      if (v7 == 255)
      {
        LOBYTE(v7) = 1;
        return v7 & 1;
      }

LABEL_21:
      sub_10007FC0C();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 7;
      *(v8 + 24) = 3;
      swift_willThrow();
      return v7 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AD9C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 >= 255)
  {
    if (a1 > 0xFFFE)
    {
LABEL_35:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_24;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_14;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = v5;
LABEL_14:
  v9 = 1;
  if (v5 >= 127)
  {
    do
    {
      ++v9;
      v10 = v5 >= 0x100;
      v5 = v5 >> 8;
    }

    while (v10);
  }

  v8 = __OFADD__(v3, v9);
  v3 += v9;
  if (v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    LODWORD(v4) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_34;
    }

    v4 = v4;
  }

  else
  {
    while (v4 > 1)
    {
      if (v4 != 2)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v12 = *(a2 + 16);
      v11 = *(a2 + 24);
      v8 = __OFSUB__(v11, v12);
      v4 = v11 - v12;
      if (!v8)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_24:
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_26;
      }
    }

    if (v4)
    {
      goto LABEL_27;
    }

    v4 = BYTE6(a3);
  }

LABEL_30:
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1001ADB18(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  if (!a1)
  {
    return 1;
  }

  v40 = bswap64(a1);
  v1 = sub_1001E0BBC(&v40, 8);
  v3 = v1;
  v4 = v2;
  v5 = v2 >> 62;
  v38 = v1;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 16);
    }
  }

  else if (v5)
  {
    v6 = v1;
  }

  else
  {
    v6 = 0;
  }

  v8 = v1 >> 32;
  v9 = BYTE6(v2);
  v36 = v1 >> 16;
  v37 = v1 >> 8;
  v34 = HIDWORD(v1);
  v35 = v1 >> 24;
  v32 = HIWORD(v1);
  v33 = v1 >> 40;
  v30 = v2 >> 8;
  v31 = HIBYTE(v1);
  v10 = v2 >> 16;
  v29 = v6;
  v11 = v2 >> 24;
  if (v5 > 1)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = BYTE6(v4);
  if (v5)
  {
    v12 = v3 >> 32;
  }

  while (v6 != v12)
  {
    if (v5 == 2)
    {
      if (v6 < *(v3 + 16))
      {
        goto LABEL_54;
      }

      if (v6 >= *(v3 + 24))
      {
        goto LABEL_56;
      }

      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        goto LABEL_64;
      }

      v14 = v17;
      v18 = __DataStorage._offset.getter();
      v16 = v6 - v18;
      if (__OFSUB__(v6, v18))
      {
        goto LABEL_58;
      }

      goto LABEL_28;
    }

    if (v5 == 1)
    {
      if (v6 < v38 || v6 >= v8)
      {
        goto LABEL_55;
      }

      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        goto LABEL_63;
      }

      v14 = v13;
      v15 = __DataStorage._offset.getter();
      v16 = v6 - v15;
      if (__OFSUB__(v6, v15))
      {
        goto LABEL_57;
      }

LABEL_28:
      if (*(v14 + v16))
      {
        break;
      }

      goto LABEL_32;
    }

    if (v6 >= BYTE6(v4))
    {
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
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39[0] = v3;
    v39[1] = v37;
    v39[2] = v36;
    v39[3] = v35;
    v39[4] = v34;
    v39[5] = v33;
    v39[6] = v32;
    v39[7] = v31;
    v39[8] = v4;
    v39[9] = v30;
    v39[10] = v10;
    v39[11] = v11;
    v39[12] = BYTE4(v4);
    v39[13] = BYTE5(v4);
    if (v39[v6])
    {
      break;
    }

LABEL_32:
    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_11;
    }

LABEL_13:
    if (v5 != 2)
    {
      if (!v29)
      {
        goto LABEL_38;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    v12 = *(v3 + 24);
  }

  if (v5)
  {
    v9 = v3 >> 32;
    if (v5 == 2)
    {
      v9 = *(v3 + 24);
    }
  }

  if (v9 < v6)
  {
    goto LABEL_59;
  }

LABEL_38:
  v19 = Data._Representation.subscript.getter();
  v21 = v20;
  sub_10006A178(v3, v4);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      v23 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (!v22)
    {
      v23 = BYTE6(v21);
      goto LABEL_48;
    }

LABEL_45:
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_61;
    }

    v23 = HIDWORD(v19) - v19;
  }

LABEL_48:
  v26 = sub_1000CA97C(v19, v21);
  if ((v26 & 0x100) != 0)
  {
    __break(1u);
LABEL_66:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v26;
  sub_10006A178(v19, v21);
  v28 = (v27 >> 7) & 1;
  result = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    goto LABEL_60;
  }

  return result;
}

uint64_t sub_1001ADEA8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 >> 6) <= 1u)
  {
    if (!(a6 >> 6))
    {
      a2 = a1[3];
      v10 = sub_1000752B0(a1, a2);
      *(&v61 + 1) = a2;
      v11 = sub_1000B9634(&v60);
      (*(*(a2 - 8) + 16))(v11, v10, a2);
      v12 = sub_1001ABB9C(v65, &v60);
      v14 = v13;
      sub_1000752F4(&v60);
      if (!v6)
      {
        v15 = *(a4 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = a4 + 32;
          a2 = _swiftEmptyArrayStorage;
LABEL_6:
          v18 = (v17 + (v16 << 6));
          v19 = v16;
          while (v19 < v15)
          {
            v20 = *v18;
            v21 = v18[1];
            v22 = v18[3];
            v62 = v18[2];
            v63 = v22;
            v60 = v20;
            v61 = v21;
            v16 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_84;
            }

            v23 = v60 == v12 && *(&v60 + 1) == v14;
            if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_1000938D4(&v60, &v58, &qword_1005053F0, &unk_10040CDE0);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v64 = a2;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10019F5F4(0, *(a2 + 16) + 1, 1);
                a2 = v64;
              }

              v26 = *(a2 + 16);
              v25 = *(a2 + 24);
              v27 = v26 + 1;
              if (v26 >= v25 >> 1)
              {
                sub_10019F5F4((v25 > 1), v26 + 1, 1);
                v27 = v26 + 1;
                a2 = v64;
              }

              *(a2 + 16) = v27;
              v28 = (a2 + (v26 << 6));
              v29 = v60;
              v30 = v61;
              v31 = v63;
              v28[4] = v62;
              v28[5] = v31;
              v28[2] = v29;
              v28[3] = v30;
              if (v16 != v15)
              {
                goto LABEL_6;
              }

              goto LABEL_50;
            }

            ++v19;
            v18 += 4;
            if (v16 == v15)
            {
              goto LABEL_50;
            }
          }

LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        goto LABEL_49;
      }

      return a2;
    }

    v34 = sub_1001ABEBC(a1, a4, a5, a6 & 1);
    if (v6)
    {
      return a2;
    }

    goto LABEL_59;
  }

  if (a6 >> 6 == 2)
  {
    v32 = *(a4 + 48);
    v67 = *(a4 + 32);
    v68 = v32;
    v66 = *(a4 + 16);
    v69 = v67;
    v70 = *(a4 + 48);
    v71 = *(&v32 + 1);
    sub_1000BC094(a1, &v60);
    sub_1001AF70C(&v69, v65);
    sub_1000938D4(&v71, v65, &qword_100504EC8, &qword_10040C3B0);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    sub_100068FC4(&qword_1005054C8, &qword_10040CDF0);
    swift_dynamicCast();
    v33 = sub_1001AC450(&v58, &v66);
    if (v6)
    {
      sub_10018C454(&v69);
      sub_100075768(&v71, &qword_100504EC8, &qword_10040C3B0);
      sub_1000752F4(&v58);
      return a2;
    }

    v36 = v33;
    sub_10018C454(&v69);
    sub_100075768(&v71, &qword_100504EC8, &qword_10040C3B0);
    sub_1000752F4(&v58);
    v34 = v36;
    if ((a3 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (a5 | a4 || a6 != 192)
  {
    if (a4 == 1 && !a5 && a6 == 192)
    {
      sub_1000BC094(a1, &v60);
      sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
      swift_dynamicCast();
      v34 = sub_1001ADB18(v58);
      if ((a3 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (a4 != 2 || a5 || a6 != 192)
      {
        sub_1000BC094(a1, &v60);
        sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
        swift_dynamicCast();
        v42 = v58;
        v43 = v59;
        v44 = v59 >> 62;
        if ((v59 >> 62) > 1)
        {
          if (v44 != 2)
          {
            sub_10006A178(v58, v59);
            return 0;
          }

          v55 = *(v58 + 16);
          v54 = *(v58 + 24);
          v42 = sub_10006A178(v58, v59);
          v51 = __OFSUB__(v54, v55);
          a2 = v54 - v55;
          if (!v51)
          {
            return a2;
          }

          __break(1u);
        }

        else if (!v44)
        {
          sub_10006A178(v58, v59);
          return BYTE6(v59);
        }

        v56 = HIDWORD(v42);
        v57 = v42;
        sub_10006A178(v42, v43);
        if (__OFSUB__(v56, v57))
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        return v56 - v57;
      }

      v34 = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_60;
  }

  sub_1000BC094(a1, &v60);
  sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
  swift_dynamicCast();
  v35 = v59 >> 62;
  if ((v59 >> 62) <= 1)
  {
    if (v35)
    {
      sub_10006A178(v58, v59);
      if (__OFSUB__(HIDWORD(v58), v58))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v34 = HIDWORD(v58) - v58;
      goto LABEL_59;
    }

    sub_10006A178(v58, v59);
    v34 = BYTE6(v59);
    if ((a3 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_60:
    sub_10007FC0C();
    swift_allocError();
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *v45 = 5;
    *(v45 + 24) = 3;
    swift_willThrow();
    return a2;
  }

  if (v35 != 2)
  {
    sub_10006A178(v58, v59);
    v34 = 0;
    if (a3)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v38 = *(v58 + 16);
  v37 = *(v58 + 24);
  sub_10006A178(v58, v59);
  v34 = v37 - v38;
  if (__OFSUB__(v37, v38))
  {
    __break(1u);
LABEL_49:
    a2 = _swiftEmptyArrayStorage;
LABEL_50:

    if (*(a2 + 16))
    {
      v39 = *(a2 + 48);
      v60 = *(a2 + 32);
      v61 = v39;
      v40 = *(a2 + 80);
      v62 = *(a2 + 64);
      v63 = v40;
      sub_1000938D4(&v60, &v58, &qword_1005053F0, &unk_10040CDE0);

      a2 = sub_1001ADEA8(v65, v61, BYTE8(v61), v62, *(&v62 + 1), v63);
      sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
    }

    else
    {

      sub_10007FC0C();
      swift_allocError();
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *v41 = 2;
      *(v41 + 24) = 3;
      swift_willThrow();
    }

    sub_1000752F4(v65);
    return a2;
  }

LABEL_59:
  if (a3)
  {
    goto LABEL_60;
  }

LABEL_63:
  if (a2 < 255)
  {
    v46 = 1;
    v47 = 1;
    if (v34 < 127)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  if (a2 < 0xFFFF)
  {
    v47 = 2;
    if (v34 < 127)
    {
      v46 = 1;
LABEL_72:
      v51 = __OFADD__(v47, v46);
      v52 = v47 + v46;
      if (v51)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      a2 = v52 + v34;
      if (__OFADD__(v52, v34))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      return a2;
    }

LABEL_69:
    v48 = 1;
    v49 = v34;
    while (1)
    {
      v46 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      ++v48;
      v50 = v49 >= 0x100;
      v49 >>= 8;
      if (!v50)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_89:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001AE5BC(uint64_t a1)
{
  if (a1 > 254)
  {
    if (a1 > 0xFFFE)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v2 = bswap32(a1) >> 16;
      if (sub_1001AC6BC(&v2, &v3)[2])
      {
        Data._Representation.append(contentsOf:)();
      }
    }
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    return Data._Representation.append(contentsOf:)();
  }

  return result;
}

uint64_t sub_1001AE6D0(uint64_t a1, void *a2)
{
  if (a1 < 128)
  {
    if (a1 < 0)
    {
      goto LABEL_57;
    }

    if (a2[1] >> 62 == 2)
    {
      v7 = *(*a2 + 24);
    }

    v48 = sub_100068FC4(&qword_100502608, &qword_100409A28);
    v49 = sub_10007FBA8();
    LOBYTE(v41) = a1;
    LOBYTE(v40) = *sub_1000752B0(&v41, v48);
    Data._Representation.replaceSubrange(_:with:count:)();
    return sub_1000752F4(&v41);
  }

  v3 = 0;
  v4 = a1;
  do
  {
    ++v3;
    v5 = v4 >= 0x100;
    v4 >>= 8;
  }

  while (v5);
  if (v3 > 0xFF)
  {
    goto LABEL_56;
  }

  if (a2[1] >> 62 == 2)
  {
    v6 = *(*a2 + 24);
  }

  v8 = v3 | 0x80;
  v48 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v49 = sub_10007FBA8();
  LOBYTE(v41) = v8;
  LOBYTE(v40) = *sub_1000752B0(&v41, v48);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(&v41);
  if (a1 > 0xFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  v40 = bswap32(a1);
  v9 = sub_1001E0BBC(&v40, 4);
  v11 = v9;
  v12 = v10;
  v13 = 0;
  v14 = v10 >> 62;
  v39 = v9;
  if ((v10 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(v9 + 16);
    }
  }

  else if (v14)
  {
    v13 = v9;
  }

  v15 = v9 >> 32;
  v16 = BYTE6(v10);
  v37 = v9 >> 16;
  v38 = v9 >> 8;
  v35 = HIDWORD(v9);
  v36 = v9 >> 24;
  v33 = HIWORD(v9);
  v34 = v9 >> 40;
  v31 = v10 >> 8;
  v32 = HIBYTE(v9);
  v17 = v10 >> 16;
  v30 = v13;
  v18 = v10 >> 24;
  if (v14 > 1)
  {
    goto LABEL_21;
  }

LABEL_19:
  v19 = BYTE6(v12);
  if (v14)
  {
    v19 = v11 >> 32;
  }

  while (v13 != v19)
  {
    if (v14 == 2)
    {
      if (v13 < *(v11 + 16))
      {
        goto LABEL_51;
      }

      if (v13 >= *(v11 + 24))
      {
        goto LABEL_53;
      }

      v24 = __DataStorage._bytes.getter();
      if (!v24)
      {
        goto LABEL_62;
      }

      v21 = v24;
      v25 = __DataStorage._offset.getter();
      v23 = v13 - v25;
      if (__OFSUB__(v13, v25))
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    if (v14 == 1)
    {
      if (v13 < v39 || v13 >= v15)
      {
        goto LABEL_52;
      }

      v20 = __DataStorage._bytes.getter();
      if (!v20)
      {
        goto LABEL_61;
      }

      v21 = v20;
      v22 = __DataStorage._offset.getter();
      v23 = v13 - v22;
      if (__OFSUB__(v13, v22))
      {
        goto LABEL_54;
      }

LABEL_36:
      if (*(v21 + v23))
      {
        break;
      }

      goto LABEL_40;
    }

    if (v13 >= BYTE6(v12))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
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
      goto LABEL_60;
    }

    LOBYTE(v41) = v11;
    BYTE1(v41) = v38;
    BYTE2(v41) = v37;
    BYTE3(v41) = v36;
    BYTE4(v41) = v35;
    BYTE5(v41) = v34;
    BYTE6(v41) = v33;
    HIBYTE(v41) = v32;
    v42 = v12;
    v43 = v31;
    v44 = v17;
    v45 = v18;
    v46 = BYTE4(v12);
    v47 = BYTE5(v12);
    if (*(&v41 + v13))
    {
      break;
    }

LABEL_40:
    ++v13;
    if (v14 <= 1)
    {
      goto LABEL_19;
    }

LABEL_21:
    if (v14 != 2)
    {
      if (!v30)
      {
        goto LABEL_46;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    v19 = *(v11 + 24);
  }

  if (v14)
  {
    v16 = v11 >> 32;
    if (v14 == 2)
    {
      v16 = *(v11 + 24);
    }
  }

  if (v16 < v13)
  {
    goto LABEL_59;
  }

LABEL_46:
  v26 = Data._Representation.subscript.getter();
  v28 = v27;
  sub_10006A178(v11, v12);
  Data.append(_:)();
  return sub_10006A178(v26, v28);
}

uint64_t sub_1001AEB24(uint64_t a1, unint64_t a2, void *a3)
{
  sub_1001AE5BC(a1);
  v5 = sub_1001ADB18(a2);
  sub_1001AE6D0(v5, a3);
  if (a2)
  {
    v32 = a3;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v43 = bswap64(a2);
    v6 = sub_1001E0BBC(&v43, 8);
    v8 = v6;
    v9 = v7;
    v10 = 0;
    v11 = v7 >> 62;
    v41 = v6;
    if ((v7 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v10 = *(v6 + 16);
      }
    }

    else if (v11)
    {
      v10 = v6;
    }

    v12 = v6 >> 32;
    v13 = BYTE6(v7);
    v39 = v6 >> 16;
    v40 = v6 >> 8;
    v37 = HIDWORD(v6);
    v38 = v6 >> 24;
    v35 = HIWORD(v6);
    v36 = v6 >> 40;
    v33 = v7 >> 8;
    v34 = HIBYTE(v6);
    v14 = v7 >> 16;
    v31 = v10;
    v15 = v7 >> 24;
    if (v11 > 1)
    {
      goto LABEL_13;
    }

LABEL_11:
    v16 = BYTE6(v9);
    if (v11)
    {
      v16 = v8 >> 32;
    }

    while (1)
    {
      if (v10 == v16)
      {
LABEL_34:
        if (v11)
        {
          v13 = v8 >> 32;
          if (v11 == 2)
          {
            v13 = *(v8 + 24);
          }
        }

        if (v13 < v10)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_38:
        v23 = Data._Representation.subscript.getter();
        v25 = v24;
        sub_10006A178(v8, v9);
        v26 = sub_1000CA97C(v23, v25);
        if ((v26 & 0x100) == 0)
        {
          if ((v26 & 0x80) != 0)
          {
            if (v32[1] >> 62 == 2)
            {
              v28 = *(*v32 + 24);
            }

            v30 = sub_100068FC4(&qword_100502608, &qword_100409A28);
            v51 = v30;
            v52 = sub_10007FBA8();
            LOBYTE(v44) = 0;
            v42 = *sub_1000752B0(&v44, v30);
            Data._Representation.replaceSubrange(_:with:count:)();
            sub_1000752F4(&v44);
          }

          Data.append(_:)();
          return sub_10006A178(v23, v25);
        }

        __break(1u);
LABEL_60:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (v11 == 2)
      {
        break;
      }

      if (v11 == 1)
      {
        if (v10 < v41 || v10 >= v12)
        {
          goto LABEL_51;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_57;
        }

        v18 = v17;
        v19 = __DataStorage._offset.getter();
        v20 = v10 - v19;
        if (__OFSUB__(v10, v19))
        {
          goto LABEL_53;
        }

LABEL_28:
        if (*(v18 + v20))
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      if (v10 >= BYTE6(v9))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      LOBYTE(v44) = v8;
      BYTE1(v44) = v40;
      BYTE2(v44) = v39;
      BYTE3(v44) = v38;
      BYTE4(v44) = v37;
      BYTE5(v44) = v36;
      BYTE6(v44) = v35;
      HIBYTE(v44) = v34;
      v45 = v9;
      v46 = v33;
      v47 = v14;
      v48 = v15;
      v49 = BYTE4(v9);
      v50 = BYTE5(v9);
      if (*(&v44 + v10))
      {
        goto LABEL_34;
      }

LABEL_32:
      ++v10;
      if (v11 <= 1)
      {
        goto LABEL_11;
      }

LABEL_13:
      if (v11 != 2)
      {
        if (!v31)
        {
          goto LABEL_38;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      v16 = *(v8 + 24);
    }

    if (v10 < *(v8 + 16))
    {
      goto LABEL_50;
    }

    if (v10 >= *(v8 + 24))
    {
      goto LABEL_52;
    }

    v21 = __DataStorage._bytes.getter();
    if (!v21)
    {
      goto LABEL_58;
    }

    v18 = v21;
    v22 = __DataStorage._offset.getter();
    v20 = v10 - v22;
    if (__OFSUB__(v10, v22))
    {
      goto LABEL_54;
    }

    goto LABEL_28;
  }

  if (a3[1] >> 62 == 2)
  {
    v27 = *(*a3 + 24);
  }

  v51 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v52 = sub_10007FBA8();
  LOBYTE(v44) = 0;
  LOBYTE(v43) = *sub_1000752B0(&v44, v51);
  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_1000752F4(&v44);
}

uint64_t sub_1001AEFAC(uint64_t a1, int a2, void *a3)
{
  sub_1001AE5BC(a1);
  if (a3[1] >> 62 == 2)
  {
    v5 = *(*a3 + 24);
  }

  v6 = sub_100068FC4(&qword_100502608, &qword_100409A28);
  v13 = v6;
  v7 = sub_10007FBA8();
  v14 = v7;
  LOBYTE(v12[0]) = 1;
  v10 = *sub_1000752B0(v12, v6);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_1000752F4(v12);
  if (a3[1] >> 62 == 2)
  {
    v8 = *(*a3 + 24);
  }

  v13 = v6;
  v14 = v7;
  LOBYTE(v12[0]) = a2 << 31 >> 31;
  v11 = *sub_1000752B0(v12, v6);
  Data._Representation.replaceSubrange(_:with:count:)();
  return sub_1000752F4(v12);
}

uint64_t sub_1001AF128(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = type metadata accessor for Mirror();
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = sub_1000752B0(a1, v8);
  v50[3] = v8;
  v10 = sub_1000B9634(v50);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  v41 = v7;
  Mirror.init(reflecting:)();
  v11 = *(a2 + 16);
  if (!v11)
  {
    return (*(v38 + 8))(v41, v39);
  }

  v12 = (a2 + 48);
  v13 = &qword_100502420;
  while (1)
  {
    v14 = v13;
    v42 = v11;
    v15 = *(v12 - 1);
    v43 = *(v12 - 2);
    v16 = *(v12 + 8);
    v17 = *(v12 + 9);
    v19 = v12[2];
    v18 = v12[3];
    v20 = *(v12 + 32);
    v21 = v12[5];
    v52 = *v12;
    v53 = v16;
    v54 = v17;
    v55 = v19;
    v56 = v18;
    v57 = v20;
    v58 = v21;

    v44 = v19;
    v45 = v18;
    v46 = v20;
    sub_1001AF744(v19, v18, v20);
    v47 = v21;

    v22 = Mirror.children.getter();
    __chkstk_darwin(v22);
    *(&v37 - 2) = v43;
    *(&v37 - 1) = v15;
    v23 = v59;
    v24 = dispatch thunk of _AnySequenceBox._filter(_:)();
    v59 = v23;

    if (*(v24 + 16) != 1)
    {

      sub_10007FC0C();
      v29 = swift_allocError();
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      *v30 = 2;
      *(v30 + 24) = 3;
      v59 = v29;
      swift_willThrow();
      sub_1001AF6EC(v44, v45, v46);
      goto LABEL_13;
    }

    sub_1000938D4(v24 + 32, v50, &qword_1005054D8, &unk_10040CE00);

    v13 = v14;
    sub_100068FC4(v14, &qword_10040F310);
    swift_dynamicCast();
    if (!v49)
    {
      break;
    }

    sub_100075D50(&v48, v51);
    sub_1000754F0(v51, &v48);
    sub_100068FC4(&qword_1005053E8, &qword_10040CC80);
    swift_dynamicCast();
    v25 = v59;
    sub_1001AB134(v50, &v52, v40);
    v26 = v46;
    v27 = v45;
    v28 = v44;
    v59 = v25;
    if (v25)
    {
      sub_1001AF6EC(v44, v45, v46);

      sub_1000752F4(v51);
      (*(v38 + 8))(v41, v39);
      return sub_1000752F4(v50);
    }

    sub_1000752F4(v51);
    sub_1001AF6EC(v28, v27, v26);

    sub_1000752F4(v50);
LABEL_3:
    v12 += 8;
    v11 = v42 - 1;
    if (v42 == 1)
    {
      return (*(v38 + 8))(v41, v39);
    }
  }

  sub_100075768(&v48, v14, &qword_10040F310);
  if (v17)
  {
    sub_1001AF6EC(v44, v45, v46);

    goto LABEL_3;
  }

  v32 = v46;
  v33 = v45;
  v34 = v44;
  sub_10007FC0C();
  v35 = swift_allocError();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *v36 = 3;
  *(v36 + 24) = 3;
  v59 = v35;
  swift_willThrow();
  sub_1001AF6EC(v34, v33, v32);
LABEL_13:

  return (*(v38 + 8))(v41, v39);
}

uint64_t sub_1001AF63C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = xmmword_1004098D0;
  result = sub_1001AE5BC(a1);
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a3);
LABEL_11:
    sub_1001AE6D0(result, &v9);
    Data.append(_:)();
    return v9;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    result = HIDWORD(a2) - a2;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AF6EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
  }

  if (a3 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_1001AF744(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
  }

  if (a3 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_1001AF780(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (*a1 == *(v1 + 16) && v2 == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001AF7DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AF834()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001AF86C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001AF8BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001AF918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

__n128 initializeWithCopy for ASN1Error(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ASN1Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001AFA40(uint64_t a1)
{
  if (*(a1 + 24) <= 2u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1001AFA58(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1001AFA84(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001AFAA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AFAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10seserviced9ASN1ErrorOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for ASN1ItemSpec.Constraint(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ASN1ItemSpec.Constraint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ASN1ItemSpec.Constraint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1001AFBF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001AFC44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1001AFCA8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SERequest.ActionPostRequest(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SERequest.ActionPostRequest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SERequest.ActionPostRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1001AFD48(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AFD64(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1001AFD94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001AFDDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ASN1SequenceSpec.DecodeMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1SequenceSpec.DecodeMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001AFF00()
{
  result = qword_1005054E8;
  if (!qword_1005054E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005054E8);
  }

  return result;
}

unint64_t sub_1001AFF58()
{
  result = qword_1005054F0;
  if (!qword_1005054F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005054F0);
  }

  return result;
}

unint64_t sub_1001AFFB0()
{
  result = qword_1005054F8;
  if (!qword_1005054F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005054F8);
  }

  return result;
}

unint64_t sub_1001B0008()
{
  result = qword_100505500;
  if (!qword_100505500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505500);
  }

  return result;
}

unint64_t sub_1001B0060()
{
  result = qword_100505508;
  if (!qword_100505508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505508);
  }

  return result;
}