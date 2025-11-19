uint64_t sub_1000AA480(uint64_t a1)
{
  v48 = type metadata accessor for CharacterSet();
  v2 = *(*(v48 - 8) + 64);
  __chkstk_darwin();
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v44 = &_swiftEmptyDictionarySingleton;
  v52 = &_swiftEmptyDictionarySingleton;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v46 = (v3 + 8);
  v49 = a1;

  v12 = 0;
  v45 = a1 + 64;
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v12 = v13;
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (v12 << 10) | (16 * v14);
      v16 = (*(v49 + 48) + v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*(v49 + 56) + v15);
      v20 = v19[1];
      v50 = *v19;
      v51 = v20;

      v21 = v47;
      static CharacterSet.urlQueryAllowed.getter();
      sub_10005E2E4();
      v22 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v24 = v23;
      (*v46)(v21, v48);

      if (v24)
      {
        break;
      }

      v13 = v12;
      v6 = v45;
      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v12 >= v10)
          {

            return v44;
          }

          v9 = *(v6 + 8 * v12);
          ++v13;
          if (v9)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v43 = v22;
    v25 = v44[2];
    if (v44[3] <= v25)
    {
      sub_10018F794(v25 + 1, 1);
    }

    v26 = v52;
    v27 = v52[5];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v28 = v26 + 8;
    v44 = v26;
    v29 = -1 << *(v26 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~v26[(v30 >> 6) + 8]) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~v26[(v30 >> 6) + 8])) | v30 & 0x7FFFFFFFFFFFFFC0;
    v33 = v43;
LABEL_25:
    *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v38 = v44;
    v6 = v45;
    v39 = 16 * v32;
    v40 = (v44[6] + v39);
    *v40 = v17;
    v40[1] = v18;
    v41 = (v38[7] + v39);
    *v41 = v33;
    v41[1] = v24;
    ++v38[2];
  }

  v34 = 0;
  v35 = (63 - v29) >> 6;
  v33 = v43;
  while (++v31 != v35 || (v34 & 1) == 0)
  {
    v36 = v31 == v35;
    if (v31 == v35)
    {
      v31 = 0;
    }

    v34 |= v36;
    v37 = v28[v31];
    if (v37 != -1)
    {
      v32 = __clz(__rbit64(~v37)) + (v31 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1000AA7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_100002320(a4, a5, &v17);
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create tap to radar %s because %@", v9, 0x16u);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v11);
    }

    else
    {
    }
  }

  else
  {

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100002320(a4, a5, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Created tap to radar: %s", v14, 0xCu);
      sub_100002A00(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_1000AAA78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t AppleDevice.EventSource.init(driver:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  (*(a4 + 56))(v22, a3, a4);
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v18 = a5;
  v13 = (*(a5 + 40))(a3, a5);
  v15 = v14;
  *(a7 + 8) = v13;
  *(a7 + 16) = v14;
  v22[5] = swift_unknownObjectUnownedLoadStrong();
  v19 = *(a6 + 40);
  swift_getAssociatedTypeWitness();

  v19(v13, v15, a2);

  (*(*(a3 - 8) + 8))(a1, a3);
  if (!v21)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = v18;
  v22[3] = a6;
  v16 = type metadata accessor for AppleDevice.EventSource();
  return (*(*(v16 - 8) + 8))(a7, v16);
}

Swift::Void __swiftcall AppleDevice.EventSource.stop()()
{
  v2 = v0;
  v3 = *(v0 - 1);
  (*(v3 + 16))(v11);
  swift_unknownObjectUnownedLoadStrong();
  (*(v3 + 8))(v11, v2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v2[5];
  v7 = *(v6 + 48);
  v9 = v2[2];
  v8 = v2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7(v4, v5, AssociatedTypeWitness, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1000AAE94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DriverEventSource.customMirror.getter(a1, WitnessTable);
}

uint64_t sub_1000AB1E8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for NANAttribute(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a1 + 16);
    v15 = v14 + 28;
    if (__OFADD__(v14, 28))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a1 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a1 + 16);
    }

    else
    {
      v16 = a1;
    }

    v51 = v6;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a1 + 28;
    if (v15 >= a1 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) < 0x1C000000000001)
  {
    goto LABEL_66;
  }

  v51 = v6;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A8114(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v56 = 0;
  *v57 = v53;
  *&v57[16] = v54;
  *&v57[24] = v55;
  if (!v12)
  {
    if (v13 >= BYTE6(a2))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a1);
    v13 += a1;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a1 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v20 = *(a1 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a1 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
    }

    else
    {
      v23 = a1;
      v22 = a1 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a2);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a3 = *v57;
            *(a3 + 12) = *&v57[12];
            *(a3 + 32) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C(v41 > 1, v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000AB7CC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for NANAttribute(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a1 + 16);
    v15 = v14 + 18;
    if (__OFADD__(v14, 18))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a1 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a1 + 16);
    }

    else
    {
      v16 = a1;
    }

    v51 = v6;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a1 + 18;
    if (v15 >= a1 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) < 0x12000000000001)
  {
    goto LABEL_66;
  }

  v51 = v6;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A91B4(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v55 = 0;
  v56 = v53;
  v57 = v54;
  if (!v12)
  {
    if (v13 >= BYTE6(a2))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a1);
    v13 += a1;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a1 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v20 = *(a1 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a1 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
    }

    else
    {
      v23 = a1;
      v22 = a1 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a2);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a3 = v56;
            *(a3 + 16) = v57;
            *(a3 + 24) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C(v41 > 1, v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000ABD74@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for NANAttribute(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a1 + 16);
    v15 = v14 + 22;
    if (__OFADD__(v14, 22))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a1 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a1 + 16);
    }

    else
    {
      v16 = a1;
    }

    v51 = v6;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a1 + 22;
    if (v15 >= a1 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) < 0x16000000000001)
  {
    goto LABEL_66;
  }

  v51 = v6;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A8F4C(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v56 = 0;
  *v57 = v53;
  *&v57[20] = v55;
  *&v57[16] = v54;
  if (!v12)
  {
    if (v13 >= BYTE6(a2))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a1);
    v13 += a1;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a1 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v20 = *(a1 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a1 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
    }

    else
    {
      v23 = a1;
      v22 = a1 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a2);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a3 = *v57;
            *(a3 + 14) = *&v57[14];
            *(a3 + 24) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C(v41 > 1, v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000AC324@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for NANAttribute(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v11)
  {
    goto LABEL_66;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_66;
    }

    v14 = *(a1 + 16);
    v15 = v14 + 16;
    if (__OFADD__(v14, 16))
    {
      goto LABEL_68;
    }

    if (v15 >= *(a1 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v12 == 2)
    {
      v16 = *(a1 + 16);
    }

    else
    {
      v16 = a1;
    }

    v51 = v6;
    v13 = result;
    if (v15 >= v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v12)
  {
    v15 = a1 + 16;
    if (v15 >= a1 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) < 0x10000000000001)
  {
    goto LABEL_66;
  }

  v51 = v6;
  v13 = result;
LABEL_15:
  v17 = Data._Representation.subscript.getter();
  v19 = v18;
  sub_1002A5C4C(v17, v18, &v53);
  result = sub_1000124C8(v17, v19);
  v54 = 0;
  v55 = v53;
  if (!v12)
  {
    if (v13 >= BYTE6(a2))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v21 = __OFADD__(v13, a1);
    v13 += a1;
    if (v21)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v13 < a1 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v20 = *(a1 + 16);
  v21 = __OFADD__(v20, v13);
  v13 += v20;
  if (v21)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 >= *(a1 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v12)
  {
    if (v12 == 2)
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
    }

    else
    {
      v23 = a1;
      v22 = a1 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a2);
  }

  if (v22 < v13 || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v50 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a3 = v55;
            a3[2] = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C(v41 > 1, v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v9, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v50;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000AC8BC@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, void (*a3)(__int128 *__return_ptr)@<X4>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for NANAttribute(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v13)
  {
    goto LABEL_66;
  }

  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_66;
    }

    v15 = *(a1 + 16);
    v16 = v15 + 28;
    if (__OFADD__(v15, 28))
    {
      goto LABEL_68;
    }

    if (v16 >= *(a1 + 24))
    {
      goto LABEL_66;
    }

LABEL_11:
    if (v14 == 2)
    {
      v17 = *(a1 + 16);
    }

    else
    {
      v17 = a1;
    }

    v50 = v8;
    v51 = result;
    if (v16 >= v17)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v14)
  {
    v16 = a1 + 28;
    if (v16 >= a1 >> 32)
    {
      goto LABEL_66;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) < 0x1C000000000001)
  {
    goto LABEL_66;
  }

  v50 = v8;
  v51 = result;
LABEL_15:
  v18 = Data._Representation.subscript.getter();
  v20 = v19;
  a3(&v53);
  sub_1000124C8(v18, v20);
  v56 = 0;
  *v57 = v53;
  *&v57[16] = v54;
  *&v57[24] = v55;
  if (!v14)
  {
    result = v51;
    if (v51 >= BYTE6(a2))
    {
      goto LABEL_66;
    }

    goto LABEL_24;
  }

  if (v14 != 2)
  {
    result = v51 + a1;
    if (__OFADD__(v51, a1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (result < a1 >> 32)
    {
      goto LABEL_24;
    }

LABEL_66:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v21 = *(a1 + 16);
  result = v21 + v51;
  if (__OFADD__(v21, v51))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (result >= *(a1 + 24))
  {
    goto LABEL_66;
  }

LABEL_24:
  if (v14)
  {
    if (v14 == 2)
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
    }

    else
    {
      v23 = a1;
      v22 = a1 >> 32;
    }
  }

  else
  {
    v23 = 0;
    v22 = BYTE6(a2);
  }

  if (v22 < result || v22 < v23)
  {
    goto LABEL_69;
  }

  result = Data._Representation.subscript.getter();
  v25 = result;
  v26 = v24;
  v27 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v27 != 2)
    {
      LOWORD(v28) = 0;
      goto LABEL_44;
    }

    v30 = *(result + 16);
    v29 = *(result + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_40:
      if ((v28 & 0x8000000000000000) != 0 || v28 >= 0x10000)
      {
LABEL_65:
        result = sub_1000124C8(v25, v26);
        goto LABEL_66;
      }

LABEL_44:
      swift_getAtKeyPath();
      if (LOWORD(v52[0]) == v28)
      {
        v31 = sub_100033AA8(_swiftEmptyArrayStorage);
        v32 = type metadata accessor for BinaryDecoder();
        v33 = swift_allocObject();
        v34 = 0;
        v33[5] = &_swiftEmptyDictionarySingleton;
        v33[2] = v25;
        v33[3] = v26;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v34 = *(v25 + 16);
          }
        }

        else if (v27)
        {
          v34 = v25;
        }

        v33[4] = v34;
        swift_beginAccess();
        v33[5] = v31;
        v36 = v33[2];
        v35 = v33[3];
        sub_10000AB0C(v25, v26);
        v37 = v35 >> 62;
        v48 = v36;
        v51 = v36 >> 32;
        v49 = _swiftEmptyArrayStorage;
        v38 = BYTE6(v35);
        while (1)
        {
          v39 = v33[4];
          if (v37 <= 1)
          {
            break;
          }

          if (v37 == 2)
          {
            v40 = *(v48 + 24);
            goto LABEL_56;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_64:
            sub_1000124C8(v25, v26);

            *a4 = *v57;
            *(a4 + 12) = *&v57[12];
            *(a4 + 32) = v49;
            return result;
          }

LABEL_59:
          v52[3] = v32;
          v52[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
          v52[0] = v33;

          NANAttribute.init(from:)(v52, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10011640C(0, v49[2] + 1, 1, v49);
          }

          v42 = v49[2];
          v41 = v49[3];
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v47 = v42 + 1;
            v45 = sub_10011640C(v41 > 1, v42 + 1, 1, v49);
            v43 = v47;
            v49 = v45;
          }

          v44 = v49;
          v49[2] = v43;
          sub_100016DFC(v11, v44 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42, type metadata accessor for NANAttribute);
        }

        v40 = v38;
        if (v37)
        {
          v40 = v51;
        }

LABEL_56:
        if (v39 >= v40)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v27)
  {
    LOWORD(v28) = BYTE6(v24);
    goto LABEL_44;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v28 = HIDWORD(result) - result;
    goto LABEL_40;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000ACEA4@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v7)
  {
    goto LABEL_16;
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v10 = *(a1 + 16);
    v11 = v10 + 32;
    if (__OFADD__(v10, 32))
    {
      goto LABEL_55;
    }

    if (v11 >= *(a1 + 24))
    {
      goto LABEL_16;
    }

LABEL_11:
    if (v8 == 2)
    {
      v12 = *(a1 + 16);
    }

    else
    {
      v12 = a1;
    }

    v9 = result;
    if (v11 >= v12)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v8)
  {
    v11 = a1 + 32;
    if (v11 >= a1 >> 32)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ((a2 & 0xFF000000000000) < 0x20000000000001)
  {
    goto LABEL_16;
  }

  v9 = result;
LABEL_15:
  v13 = Data._Representation.subscript.getter();
  v15 = v14;
  sub_1002A8778(v13, v14, v36);
  sub_1000124C8(v13, v15);
  v37 = v36[0];
  v38 = v36[1];
  if (v8)
  {
    if (v8 == 2)
    {
      v16 = *(a1 + 16);
      result = v16 + v9;
      if (__OFADD__(v16, v9))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v17 = *(a1 + 24);
    }

    else
    {
      result = v9 + a1;
      if (__OFADD__(v9, a1))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v17 = a1 >> 32;
    }
  }

  else
  {
    v17 = BYTE6(a2);
    result = v9;
  }

  if (result >= v17)
  {
LABEL_16:
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 88) = -4;
    return result;
  }

  if (v8)
  {
    if (v8 == 2)
    {
      v19 = *(a1 + 16);
      v18 = *(a1 + 24);
    }

    else
    {
      v19 = a1;
      v18 = a1 >> 32;
    }
  }

  else
  {
    v19 = 0;
    v18 = BYTE6(a2);
  }

  if (v18 < result || v18 < v19)
  {
    goto LABEL_56;
  }

  result = Data._Representation.subscript.getter();
  v21 = result;
  v22 = v20;
  v23 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v23)
    {
      LOWORD(v24) = BYTE6(v20);
      goto LABEL_46;
    }

LABEL_40:
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v24 = HIDWORD(result) - result;
      goto LABEL_42;
    }

LABEL_59:
    __break(1u);
    return result;
  }

  if (v23 != 2)
  {
    LOWORD(v24) = 0;
    goto LABEL_46;
  }

  v26 = *(result + 16);
  v25 = *(result + 24);
  v24 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
    __break(1u);
    goto LABEL_40;
  }

LABEL_42:
  if ((v24 & 0x8000000000000000) != 0 || v24 >= 0x10000)
  {
    goto LABEL_50;
  }

LABEL_46:
  swift_getAtKeyPath();
  if (LOWORD(v39[0]) != v24)
  {
LABEL_50:
    result = sub_1000124C8(v21, v22);
    goto LABEL_16;
  }

  v27 = sub_100033AA8(_swiftEmptyArrayStorage);
  v28 = type metadata accessor for BinaryDecoder();
  v29 = swift_allocObject();
  v30 = 0;
  v29[5] = &_swiftEmptyDictionarySingleton;
  v29[2] = v21;
  v29[3] = v22;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v30 = *(v21 + 16);
    }
  }

  else if (v23)
  {
    v30 = v21;
  }

  v29[4] = v30;
  swift_beginAccess();
  v29[5] = v27;
  v35[3] = v28;
  v35[4] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v35[0] = v29;
  sub_10000AB0C(v21, v22);

  sub_1001F507C(v35, v39);

  result = sub_1000124C8(v21, v22);
  v31 = v38;
  v32 = v39[0];
  *a3 = v37;
  *(a3 + 16) = v31;
  v33 = v39[1];
  v34 = v40[0];
  *(a3 + 32) = v32;
  *(a3 + 48) = v33;
  *(a3 + 64) = v34;
  *(a3 + 73) = *(v40 + 9);
  return result;
}

unint64_t sub_1000AD250(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 12)
      {
        return 0;
      }

      return sub_1002A941C(result, a2);
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 12)
      {
        return 0;
      }

      return sub_1002A941C(result, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 12)
      {
        return sub_1002A941C(result, a2);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AD30C@<X0>(void *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B25BC(__src);
    return memcpy(a3, __src, 0x821uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 2080)
  {
    goto LABEL_9;
  }

  sub_1002A8C78(result, a2, a3);

  return sub_1000B25EC(a3);
}

int64_t sub_1000AD3DC@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 24) = 0;
      *(a3 + 16) = 0;
      *(a3 + 28) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A8114(result, a2, a3);
      *(a3 + 28) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_1000AD4B0@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 20)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 20) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 20)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A89F8(result, a2, a3);
      *(a3 + 20) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000AD57C(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 10)
      {
        return 0;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 10)
      {
        return 0;
      }

LABEL_11:
      v7 = sub_1002A856C(result, a2);
      return v7 & 0xFFFFFFFFFFFFLL | (HIWORD(v7) << 48);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 10)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AD640@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B25F4(__src);
    return memcpy(a3, __src, 0x3E6uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 997)
  {
    goto LABEL_9;
  }

  sub_1002A8394(result, a2, a3);

  return sub_1000B2624(a3);
}

int64_t sub_1000AD710@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 72)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_100030E20(result, a2, a3);
      *(a3 + 72) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 72)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AD7F4@<X0>(void *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B262C(__src);
    return memcpy(a3, __src, 0xF20uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 3872)
  {
    goto LABEL_9;
  }

  sub_1002A7E40(result, a2, a3);

  return NANBitmap.Channel.operatingClass.getter(a3);
}

void *sub_1000AD8C4@<X0>(void *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B263C(__src);
    return memcpy(a3, __src, 0x658uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 1624)
  {
    goto LABEL_9;
  }

  sub_1002A7B6C(result, a2, a3);

  return NANBitmap.Channel.operatingClass.getter(a3);
}

void sub_1000AD994(int64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_12:
      sub_1000B2650(v15);
      v9 = v15[11];
      a3[10] = v15[10];
      a3[11] = v9;
      a3[12] = v15[12];
      v10 = v15[7];
      a3[6] = v15[6];
      a3[7] = v10;
      v11 = v15[9];
      a3[8] = v15[8];
      a3[9] = v11;
      v12 = v15[3];
      a3[2] = v15[2];
      a3[3] = v12;
      v13 = v15[5];
      a3[4] = v15[4];
      a3[5] = v13;
      v14 = v15[1];
      *a3 = v15[0];
      a3[1] = v14;
      return;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 208)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (!v4)
  {
    if (BYTE6(a2) != 208)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_17;
  }

  if (HIDWORD(a1) - a1 != 208)
  {
    goto LABEL_12;
  }

LABEL_11:
  sub_1002A7864(a1, a2, a3);

  NANBitmap.Channel.operatingClass.getter(a3);
}

int64_t sub_1000ADAA8@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 74)
      {
        goto LABEL_12;
      }

      return sub_1002A75CC(result, a2, a3);
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 74)
      {
        goto LABEL_12;
      }

      return sub_1002A75CC(result, a2, a3);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 74)
      {
        return sub_1002A75CC(result, a2, a3);
      }

LABEL_12:
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 56) = xmmword_100481870;
      *(a3 + 72) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000ADB70(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 16)
      {
        return 0;
      }

      return sub_1002A739C(result, a2);
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 16)
      {
        return 0;
      }

      return sub_1002A739C(result, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        return sub_1002A739C(result, a2);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000ADC20@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B267C(__src);
    return memcpy(a3, __src, 0x109uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 264)
  {
    goto LABEL_9;
  }

  sub_1002A7118(result, a2, a3);

  return sub_1000B26B0(a3);
}

int64_t sub_1000ADCF0@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 40)
      {
        goto LABEL_8;
      }

LABEL_11:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 40)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A6E98(result, a2, a3);
      *(a3 + 40) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 40)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1000ADDC4(int64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_12:
      sub_1000B26B8(v16);
      v9 = v16[13];
      a3[12] = v16[12];
      a3[13] = v9;
      a3[14] = v17[0];
      *(a3 + 233) = *(v17 + 9);
      v10 = v16[9];
      a3[8] = v16[8];
      a3[9] = v10;
      v11 = v16[11];
      a3[10] = v16[10];
      a3[11] = v11;
      v12 = v16[5];
      a3[4] = v16[4];
      a3[5] = v12;
      v13 = v16[7];
      a3[6] = v16[6];
      a3[7] = v13;
      v14 = v16[1];
      *a3 = v16[0];
      a3[1] = v14;
      v15 = v16[3];
      a3[2] = v16[2];
      a3[3] = v15;
      return;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 248)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (!v4)
  {
    if (BYTE6(a2) != 248)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_17;
  }

  if (HIDWORD(a1) - a1 != 248)
  {
    goto LABEL_12;
  }

LABEL_11:
  sub_1002A6B74(a1, a2, a3);

  sub_1000B26EC(a3);
}

unint64_t sub_1000ADEE8(unint64_t result, unint64_t a2, uint64_t (*a3)(void))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 4)
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = a3();
      v9 = 0;
      return v8 | (v9 << 32);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_11;
      }

LABEL_12:
      v8 = 0;
      v9 = 1;
      return v8 | (v9 << 32);
    }
  }

  __break(1u);
  return result;
}

void *sub_1000ADFA4@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B26F4(__src);
    return memcpy(a3, __src, 0x1D5uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 468)
  {
    goto LABEL_9;
  }

  sub_1002A6790(result, a2, a3);

  return sub_1000B2744(a3);
}

int64_t sub_1000AE074@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 24)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 24)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A6510(result, a2, a3);
      *(a3 + 24) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 24)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_1000AE140@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 104)
      {
        goto LABEL_8;
      }

LABEL_11:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0;
      *(a3 + 104) = 1;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 104)
      {
        goto LABEL_11;
      }

LABEL_8:
      result = sub_1002A6260(result, a2, a3);
      *(a3 + 104) = 0;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 104)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE22C(uint64_t result, unint64_t a2, uint64_t (*a3)(void))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 8)
      {
        return 0;
      }

      return a3();
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 8)
      {
        return 0;
      }

      return a3();
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 8)
      {
        return a3();
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AE2D8(uint64_t result, unint64_t a2, uint64_t (*a3)(void))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 12)
      {
        return 0;
      }

      return a3();
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 12)
      {
        return 0;
      }

      return a3();
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 12)
      {
        return a3();
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AE398@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      LODWORD(v5) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v5 = v5;
        goto LABEL_7;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_1000B277C(__src);
    return memcpy(a3, __src, 0x301uLL);
  }

  if (v4 != 2)
  {
    goto LABEL_9;
  }

  v7 = result[2];
  v6 = result[3];
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v5 != 768)
  {
    goto LABEL_9;
  }

  sub_1002A6088(result, a2, a3);

  return sub_1000B27AC(a3);
}

uint64_t sub_1000AE678()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v4 = 2;

  sub_1000AFBC4(v1, v2, 0x12u, &v4, sub_1000A140C);

  return v4;
}

unint64_t sub_1000AE6F8()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v5 = 0;
  v4 = 0;
  v6 = 1;

  sub_1000AFD68(v1, v2, 0x12u, &v4, sub_1000B2990);

  return v4 | (v5 << 32) | (v6 << 48);
}

unint64_t sub_1000AE798()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v4 = 0;
  v5 = 1;

  sub_1000AFF1C(v1, v2, 2u, &v4, sub_1000A1FBC);

  return v4 | (v5 << 32);
}

char *sub_1000AE85C()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);
  v5 = _swiftEmptyArrayStorage;
  swift_bridgeObjectRetain_n();
  sub_1000AF9A4(v3, v2, 0x1Eu, sub_1000A23B8, 0, &v5);

  return v5;
}

uint64_t sub_1000AE928()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  AppleDevice.neighborDiscoveryTableClear(on:)(v5);
}

uint64_t sub_1000AE9C4()
{
  v1 = *(*v0 + 40);
  if (*(v1 + 128))
  {
    v2 = *(v1 + 128);

    sub_1000A0B5C();
  }

  return result;
}

void sub_1000AEAEC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000AEAFC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1000B182C(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_1000AEC50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_1000AEC94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for SCNetworkService(0);
  sub_10001F8F4(&qword_10058C788, type metadata accessor for SCNetworkService);
  return static _CFObject.== infix(_:_:)() & 1;
}

void sub_1000AED2C()
{
  v1 = *(*(type metadata accessor for Logger() - 8) + 80);
  v2 = *(v0 + 16);

  sub_100091FF8(v2);
}

void *sub_1000AEDD0(void *result)
{
  if (result)
  {
  }

  return result;
}

size_t sub_1000AEE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  v5 = a5;
  if ((a2 & 0x2000000000000000) != 0)
  {
    *__source = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v11, __source, v5);
    v10(v13, 0);
    return v5;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v6)
    {
      return v16;
    }
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
    v8 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v9, (v7 + 32), v5);
    v8(v13, 0);
  }

  return v5;
}

uint64_t sub_1000AF470()
{
  if (*(v0 + 16))
  {
    return sub_10008D540();
  }

  return result;
}

uint64_t sub_1000AF4C0(const __SCPreferences *a1, void *a2)
{
  SCPreferencesLock(a1, 1u);
  SCPreferencesSynchronize(a1);
  if (a2)
  {
    v4 = a2[24];
    v5 = a2[25];
    v6 = a2[26];
    v7 = *(v4 + 16);

    v8 = v6;
    os_unfair_lock_lock(v7);
    swift_beginAccess();
    v9 = *(v5 + 16);
    *(v5 + 16) = &_swiftEmptyDictionarySingleton;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  return SCPreferencesUnlock(a1);
}

void sub_1000AF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v12 = *(v6 + 24);
  os_unfair_lock_lock(*(v12 + 16));
  swift_beginAccess();
  v13 = *(v6 + 32);
  if (*(v13 + 16) && (v14 = sub_1000102E8(a4, a5), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v17 = *(v16 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex);
  }

  else
  {
    swift_endAccess();
    v17 = sub_100097170(a4, a5);
  }

  swift_beginAccess();
  sub_10004F87C(a1 & 0xFFFFFFFFFFFFLL, a2, a3, v17, a6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v12 + 16));
}

void sub_1000AF9A4(uint64_t a1, uint64_t a2, unsigned __int8 a3, void (*a4)(void *__return_ptr, void), uint64_t a5, char **a6)
{
  v37 = 0;
  if (!getifaddrs(&v37))
  {
    v12 = v37;
    if (v37)
    {
      v32 = a3;
      v30 = a6;
      v29 = a4;
      while (1)
      {
        ifa_flags = v12->ifa_flags;
        v14 = *&v12->ifa_addr;
        v15 = *&v12->ifa_dstaddr;
        v17 = v12;
        v12 = v12->ifa_next;
        ifa_name = v17->ifa_name;
        v38[0] = v12;
        v38[1] = ifa_name;
        v39 = ifa_flags;
        v33 = v14;
        v40 = v14;
        v41 = v15;
        if (!ifa_name)
        {
          __break(1u);
LABEL_26:
          __break(1u);
        }

        v19 = String.init(cString:)() == a1 && v18 == a2;
        if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_26;
        }

        if (*(v33 + 1) != v32)
        {
          goto LABEL_5;
        }

        a4(v35, v38);
        if (v6)
        {
          goto LABEL_21;
        }

        v20 = v36;
        if (v36 == 1)
        {
LABEL_5:
          if (!v12)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v21 = v35[2];
          v22 = v35[0];
          v31 = v35[1];
          v23 = *a6;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a6 = v23;
          v34 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_100116970(0, *(v23 + 2) + 1, 1, v23);
            *a6 = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_100116970((v25 > 1), v26 + 1, 1, v23);
            *v30 = v23;
          }

          *(v23 + 2) = v26 + 1;
          v27 = &v23[32 * v26];
          a6 = v30;
          *(v27 + 4) = v34;
          *(v27 + 5) = v31;
          *(v27 + 6) = v21;
          *(v27 + 7) = v20;
          a4 = v29;
          if (!v12)
          {
LABEL_21:
            v28 = v37;
            goto LABEL_23;
          }
        }
      }

      goto LABEL_5;
    }

    v28 = 0;
LABEL_23:
    freeifaddrs(v28);
  }
}

void sub_1000AFBC4(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, void (*a5)(unsigned __int8 *__return_ptr, ifaddrs **))
{
  v26 = 0;
  if (!getifaddrs(&v26))
  {
    if (v26)
    {
      v24 = a4;
      ifa_flags = v26->ifa_flags;
      ifa_next = v26->ifa_next;
      ifa_name = v26->ifa_name;
      v27 = v26->ifa_next;
      v28 = ifa_name;
      v29 = ifa_flags;
      v14 = *&v26->ifa_addr;
      v30 = v14;
      v31 = *&v26->ifa_dstaddr;
      if (!ifa_name)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = v14;
      while (String.init(cString:)() == a1 && v21 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        if (*(v15 + 1) != a3)
        {
          goto LABEL_6;
        }

        a5(&v25, &v27);
        if (v5 || (v22 = v25, *v24 = v25, v22 != 2) || !ifa_next)
        {
LABEL_16:
          v23 = v26;
          goto LABEL_18;
        }

LABEL_7:
        v16 = ifa_next->ifa_flags;
        v17 = *&ifa_next->ifa_addr;
        v18 = *&ifa_next->ifa_dstaddr;
        v20 = ifa_next;
        ifa_next = ifa_next->ifa_next;
        v19 = v20->ifa_name;
        v27 = ifa_next;
        v28 = v19;
        v29 = v16;
        v30 = v17;
        v31 = v18;
        v15 = v17;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      if (!ifa_next)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v23 = 0;
LABEL_18:
    freeifaddrs(v23);
  }
}

void sub_1000AFD68(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, ifaddrs **))
{
  v27 = 0;
  if (!getifaddrs(&v27))
  {
    if (v27)
    {
      v25 = a5;
      ifa_flags = v27->ifa_flags;
      ifa_next = v27->ifa_next;
      ifa_name = v27->ifa_name;
      v28 = v27->ifa_next;
      v29 = ifa_name;
      v30 = ifa_flags;
      v14 = *&v27->ifa_addr;
      v31 = v14;
      v32 = *&v27->ifa_dstaddr;
      if (!ifa_name)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = v14;
      while (String.init(cString:)() == a1 && v21 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        if (*(v15 + 1) != a3)
        {
          goto LABEL_6;
        }

        v25(&v26, &v28);
        if (v5 || (v22 = v26, v23 = BYTE6(v26), *(a4 + 4) = WORD2(v26), *a4 = v22, *(a4 + 6) = v23, v23 != 1) || !ifa_next)
        {
LABEL_16:
          v24 = v27;
          goto LABEL_18;
        }

LABEL_7:
        v16 = ifa_next->ifa_flags;
        v17 = *&ifa_next->ifa_addr;
        v18 = *&ifa_next->ifa_dstaddr;
        v20 = ifa_next;
        ifa_next = ifa_next->ifa_next;
        v19 = v20->ifa_name;
        v28 = ifa_next;
        v29 = v19;
        v30 = v16;
        v31 = v17;
        v32 = v18;
        v15 = v17;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      if (!ifa_next)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v24 = 0;
LABEL_18:
    freeifaddrs(v24);
  }
}

void sub_1000AFF1C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, ifaddrs **))
{
  v26 = 0;
  if (!getifaddrs(&v26))
  {
    if (v26)
    {
      v24 = a5;
      ifa_flags = v26->ifa_flags;
      ifa_next = v26->ifa_next;
      ifa_name = v26->ifa_name;
      v27 = v26->ifa_next;
      v28 = ifa_name;
      v29 = ifa_flags;
      v14 = *&v26->ifa_addr;
      v30 = v14;
      v31 = *&v26->ifa_dstaddr;
      if (!ifa_name)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = v14;
      while (String.init(cString:)() == a1 && v21 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        if (*(v15 + 1) != a3)
        {
          goto LABEL_6;
        }

        v24(&v25, &v27);
        if (v5 || (v22 = BYTE4(v25), *a4 = v25, *(a4 + 4) = v22, v22 != 1) || !ifa_next)
        {
LABEL_16:
          v23 = v26;
          goto LABEL_18;
        }

LABEL_7:
        v16 = ifa_next->ifa_flags;
        v17 = *&ifa_next->ifa_addr;
        v18 = *&ifa_next->ifa_dstaddr;
        v20 = ifa_next;
        ifa_next = ifa_next->ifa_next;
        v19 = v20->ifa_name;
        v27 = ifa_next;
        v28 = v19;
        v29 = v16;
        v30 = v17;
        v31 = v18;
        v15 = v17;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      if (!ifa_next)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v23 = 0;
LABEL_18:
    freeifaddrs(v23);
  }
}

uint64_t sub_1000B00C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v13[4] = sub_1000B2C08;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000991C0;
  v13[3] = &unk_10055FD20;
  v9 = _Block_copy(v13);
  swift_unknownObjectRetain_n();
  v10 = a2;

  nw_path_evaluator_set_update_handler();
  _Block_release(v9);
  swift_unknownObjectRelease();

  v11 = *(v4 + 16);
  nw_path_evaluator_start();
  return v4;
}

void sub_1000B025C()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for DispatchTimeInterval() - 8) + 64);
  v3 = __chkstk_darwin();
  v6 = v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
  if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state + 16) == 2 && *v6 == 0)
  {
    v47 = v3;
    v48 = (v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state);
    v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v5;
    v13 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    v14 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface + 8);

    v15 = sub_1000AF710(v13, v14, 1);
    v17 = v16;

    v19 = v17;
    if (v17)
    {
      v20 = 0;
      *&v18 = 136315394;
      v49 = v18;
      v21 = v15;
      do
      {
        sub_100050988(v21, v19, 1);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v50 = v25;
          *v24 = v49;
          *(v24 + 4) = sub_100002320(v13, v14, &v50);
          *(v24 + 12) = 2048;
          *(v24 + 14) = v20 + 1;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to start DHCP on %s, retry %ld", v24, 0x16u);
          sub_100002A00(v25);
        }

        v26 = sub_1000AF710(v13, v14, 1);
        v28 = v27;

        v19 = v28;
        v29 = v28 != 0;
        if (v28)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }

        if (v20 > 3)
        {
          break;
        }

        ++v20;
      }

      while (v28);
    }

    else
    {
      v21 = 0;
      v29 = 0;
    }

    v34 = v48;
    v35 = *v48;
    v36 = v48[1];
    *v48 = v21;
    v34[1] = v19;
    v37 = *(v34 + 16);
    *(v34 + 16) = v29;
    sub_10009C958(v35, v36, v37);
    sub_100050988(v35, v36, v37);
    if (!*(v34 + 16))
    {
      v39 = v45;
      v38 = v46;
      *v45 = 15;
      (*(v38 + 104))(v39, enum case for DispatchTimeInterval.seconds(_:), v47);
      if (qword_10058AA28 != -1)
      {
        swift_once();
      }

      v40 = static OS_dispatch_queue.nan;
      v41 = swift_allocObject();
      swift_weakInit();

      _s7CoreP2P0B6PTimerC5async5after2on7executey8Dispatch0H12TimeIntervalO_So17OS_dispatch_queueCyyctFZ_0(v39, v40, sub_1000B1DD4, v41);

      (*(v38 + 8))(v39, v47);

      v42 = *(v1 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor);
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = *(v42 + 48);
      *(v42 + 40) = sub_1000B1DDC;
      *(v42 + 48) = v43;

      sub_10009B7BC(v13, v14);
    }
  }

  else
  {

    *&v49 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v52 = v9;
      *v8 = 136315138;
      if (*(v6 + 16))
      {
        if (*(v6 + 16) == 1)
        {
          v10 = 0xEB0000000064656CLL;
          v11 = 0x6961462050434844;
        }

        else
        {
          if (*v6 == 0)
          {
            v11 = 0x72756769666E6F43;
          }

          else
          {
            v11 = 0x74616E696D726554;
          }

          if (*v6 == 0)
          {
            v10 = 0xEB00000000676E69;
          }

          else
          {
            v10 = 0xEA00000000006465;
          }
        }
      }

      else
      {
        v30 = 0x6673697461736E55;
        if (*v6)
        {
          v30 = 0x6569667369746153;
          v31 = 0xE900000000000064;
        }

        else
        {
          v31 = 0xEB00000000646569;
        }

        v50 = v30;
        v51 = v31;

        v32._countAndFlagsBits = 0x7473657571655220;
        v32._object = 0xEA00000000007265;
        String.append(_:)(v32);

        v11 = v50;
        v10 = v51;
      }

      v33 = sub_100002320(v11, v10, &v52);

      *(v8 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v49, v7, "Unable to start internet sharing requester because in %s", v8, 0xCu);
      sub_100002A00(v9);
    }

    else
    {
      v12 = v49;
    }
  }
}

uint64_t sub_1000B0858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor;
  *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_monitor) = 0;
  RoutingSocket.init()(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket);
  v11 = v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayIPAddress;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = -1;
  v12 = v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayAddress;
  *(v12 + 4) = 0;
  *v12 = 0;
  *(v12 + 6) = 1;
  v13 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_lastGatewayUpdate;
  v14 = type metadata accessor for DispatchTime();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = nw_parameters_create();
  v38 = a1;
  v39 = a3;
  v16 = (*(*(a3 + 16) + 40))(a2);
  v18 = sub_1000972AC(v16, v17);

  v40 = v15;
  nw_parameters_require_interface(v15, v18);
  swift_unknownObjectRelease();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Start monitoring network path for gateway address updates", v21, 2u);
  }

  result = nw_path_create_evaluator_for_endpoint();
  if (result)
  {
    v23 = result;
    v36 = v10;
    if (qword_10058AA38 != -1)
    {
      swift_once();
    }

    v24 = static OS_dispatch_queue.p2p;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v37;
    (*(v8 + 16))(v37, v38, a2);
    v27 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v28 = swift_allocObject();
    v29 = v39;
    *(v28 + 2) = a2;
    *(v28 + 3) = v29;
    *(v28 + 4) = v25;
    (*(v8 + 32))(&v28[v27], v26, a2);
    type metadata accessor for AppleDevice.NetworkPathMonitor();
    v30 = swift_allocObject();
    *(v30 + 16) = v23;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1000B1E2C;
    *(v31 + 24) = v28;
    aBlock[4] = sub_1000B2C08;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000991C0;
    aBlock[3] = &unk_10055FC58;
    v32 = _Block_copy(aBlock);
    v33 = v24;
    swift_unknownObjectRetain_n();
    v34 = v33;

    nw_path_evaluator_set_update_handler();
    _Block_release(v32);
    swift_unknownObjectRelease();

    nw_path_evaluator_start();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v35 = *(v4 + v36);
    *(v4 + v36) = v30;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B0E08(uint64_t a1)
{
  result = sub_10001F8F4(&qword_10058BE00, type metadata accessor for AppleDevice);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B0E78(uint64_t a1)
{
  result = sub_10001F8F4(&qword_10058BE70, type metadata accessor for AppleDevice);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B0ED8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B0F1C()
{
  result = type metadata accessor for RoutingSocket();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000B10A8()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000B118C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000B1260()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000B1328()
{
  result = type metadata accessor for Logger();
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

void sub_1000B13F4()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000B154C(319, qword_10058C5E0, type metadata accessor for RoutingSocket);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000B154C(319, qword_100596670, &type metadata accessor for DispatchTime);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000B154C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1000B15A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for NANDataTerminationEvent(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B1600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B1648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B169C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000B16B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B16D8(uint64_t a1, int a2)
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

uint64_t sub_1000B1720(uint64_t result, int a2, int a3)
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

unint64_t sub_1000B1784()
{
  result = qword_10058C710;
  if (!qword_10058C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058C710);
  }

  return result;
}

uint64_t sub_1000B17D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B17F0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1000B17F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1000B182C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1000AEC50(v8, v14, a4) & 1;
}

uint64_t sub_1000B18D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(v9 + 40);
  swift_beginAccess();
  sub_100012400(v15 + 72, v32, &qword_10058BA80, &qword_1004818C0);
  v16 = v33;
  sub_100016290(v32, &qword_10058BA80, &qword_1004818C0);
  if (v16)
  {
    sub_10000B02C();
    swift_allocError();
    *v17 = xmmword_100481830;
    *(v17 + 16) = 0;
    a4();
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a6;
    v19[5] = a7;
    v20 = type metadata accessor for AppleDevice.InternetSharingRequesterSession(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();

    Logger.init(subsystem:category:)();
    v24 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_networkConnectivityMonitor;
    v25 = type metadata accessor for AppleDevice.InternetSharingRequesterSession.NetworkConnectivityMonitor(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v23 + v24) = sub_10009B3DC();
    v28 = v23 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_state;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 2;
    v29 = (v23 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_interface);
    *v29 = a1;
    v29[1] = a2;
    v30 = (v23 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A31InternetSharingRequesterSession_stateUpdatedHandler);
    *v30 = a9;
    v30[1] = v19;
    v33 = v20;
    v32[0] = v23;
    swift_beginAccess();

    sub_1000B1B78(v32, v15 + 72, &qword_10058BA80, &qword_1004818C0);
    swift_endAccess();

    sub_1000B025C();
  }
}

uint64_t sub_1000B1B4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1000B1B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1000B1BF0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B1C58()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1000B1CF8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1000AA7CC(a1, a2, v2 + v6, v8, v9);
}

id sub_1000B1DC4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

char *sub_1000B1DF0(char *__source)
{
  result = *(v1 + 16);
  if (result)
  {
    return strlcpy(result, __source, 0x10uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B1E6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_1000B1F68(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

void sub_1000B1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, unsigned __int8 a47)
{
  if (a47 <= 0xCu)
  {
    if (a47 <= 4u)
    {
      if (a47 != 2 && a47 != 3)
      {
        return;
      }
    }

    else if (a47 != 5 && a47 != 6 && a47 != 7)
    {
      return;
    }
  }

  else if (a47 > 0x12u)
  {
    if (a47 == 19)
    {
    }

    else if (a47 != 20 && a47 != 22)
    {
      return;
    }
  }

  else if (a47 != 13)
  {
    if (a47 == 16)
    {

      sub_1000B21BC(a3, a4, a5, a6, a7);
    }

    else if (a47 == 18)
    {

      sub_1000B2244(a4, a5, a6, a7, a8);
    }

    return;
  }
}

uint64_t sub_1000B21BC(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  switch(a5)
  {
    case 2:
      return sub_100048C4C(a2);
    case 1:
      return sub_1000B21F4(result, a2, a3, a4);
    case 0:
  }

  return result;
}

uint64_t sub_1000B21F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = (((a3 & 0x1000000000000000) != 0) | (2 * a4));
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
  }

  if (v4 == 3)
  {
    return sub_1000B2238(result, a2, a3 & 0xEFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_1000B2244(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5 <= 0xFCu)
  {
    return sub_1000B21BC(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1000B2258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_1000B2318(uint64_t a1)
{
  if (*(a1 + 768))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2340(uint64_t a1)
{
  if (*(a1 + 468))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B235C(uint64_t a1)
{
  if (*(a1 + 248))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2378(uint64_t a1)
{
  if (*(a1 + 264))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000B2394()
{
  result = qword_10058C800;
  if (!qword_10058C800)
  {
    sub_10005DD04(&qword_10058C7F8, &unk_100482000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058C800);
  }

  return result;
}

uint64_t sub_1000B2410(uint64_t a1)
{
  v1 = *(a1 + 62);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B242C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2448(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2494(uint64_t a1)
{
  if (*(a1 + 997))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B251C(uint64_t a1)
{
  if (*(a1 + 2080))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B2594(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1000B25A8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000B25A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

double sub_1000B2650(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x2000000000000;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return result;
}

double sub_1000B267C(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 264) = 1;
  return result;
}

double sub_1000B26B8(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 248) = 1;
  return result;
}

double sub_1000B26F4(uint64_t a1)
{
  *(a1 + 464) = 0;
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 468) = 1;
  return result;
}

uint64_t sub_1000B27EC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[2];
  return sub_10008D678(v1, v2);
}

void sub_1000B2818()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *v5;
  v8 = v5[1];

  sub_100092798(v0 + 16, v0 + v2, v7, v8, v6);
}

uint64_t IDPool.availableID()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v2 = *(a1 + 16);
  v80 = *(*(a1 + 24) + 8);
  v3 = *(v80 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for ClosedRange<>.Index();
  v73 = *(v84 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin();
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v64 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v82 = *(TupleTypeMetadata2 - 8);
  v83 = TupleTypeMetadata2;
  v9 = *(v82 + 8);
  __chkstk_darwin();
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v64 - v11;
  v71 = *(v2 - 8);
  v12 = *(v71 + 64);
  __chkstk_darwin();
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v64 - v15;
  __chkstk_darwin();
  v17 = &v64 - v16;
  __chkstk_darwin();
  v19 = &v64 - v18;
  v20 = *(v3 + 8);
  v21 = type metadata accessor for ClosedRange();
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  __chkstk_darwin();
  v75 = &v64 - v23;
  v90 = AssociatedConformanceWitness;
  v91 = v3;
  v92 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v69 = v21;
  v70 = type metadata accessor for IndexingIterator();
  v24 = *(v70 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v64 - v26;
  dispatch thunk of static FixedWidthInteger.min.getter();
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v67 = v24;
    v76 = v14;
    v29 = v71;
    v30 = v71 + 32;
    v31 = *(v71 + 32);
    v85 = v27;
    v32 = v88;
    v65 = v19;
    v31(v88, v19, v2);
    v33 = v83;
    v34 = &v32[*(v83 + 48)];
    v66 = v17;
    v31(v34, v17, v2);
    v35 = v82;
    v36 = v78;
    (*(v82 + 2))(v78, v32, v33);
    v74 = *(v33 + 48);
    v37 = v75;
    v31(v75, v36, v2);
    v38 = *(v29 + 8);
    v38(v74 + v36, v2);
    (*(v35 + 4))(v36, v88, v33);
    v39 = *(v33 + 48);
    v40 = v69;
    v41 = &v37[*(v69 + 36)];
    v82 = v31;
    v83 = v30;
    v31(v41, &v36[v39], v2);
    v74 = v38;
    v38(v36, v2);
    v42 = v77;
    v43 = v85;
    (*(v77 + 16))(v85, v37, v40);
    v44 = *(v70 + 36);
    ClosedRange<>.startIndex.getter();
    (*(v42 + 8))(v37, v40);
    v87 = v3;
    v88 = (v73 + 8);
    v75 = (v29 + 8);
    v77 = v29 + 48;
    v78 = (v73 + 16);
    v72 = v44;
    v73 += 32;
    v45 = v43;
    while (1)
    {
      v47 = v89;
      ClosedRange<>.endIndex.getter();
      v48 = static ClosedRange<>.Index.== infix(_:_:)();
      v49 = *v88;
      v50 = v84;
      (*v88)(v47, v84);
      if (v48)
      {
        (*(v67 + 8))(v45, v70);
        v60 = 1;
        v61 = v68;
        v62 = v71;
        return (*(v62 + 56))(v61, v60, 1, v2);
      }

      v51 = v81;
      (*v78)(v81, &v45[v44], v50);
      result = (*v77)(v51, 1, v2);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v52 = v79;
      v53 = v82;
      v82(v79, v51, v2);
      v54 = &v45[v44];
      v55 = v2;
      v56 = v89;
      (*v73)(v89, v54, v50);
      ClosedRange<>.index(after:)();
      v49(v56, v50);
      v57 = v76;
      v53(v76, v52, v55);
      v58 = *(v80 + 16);
      v2 = v55;
      if (!v86[1] || (v59 = *(v80 + 16), (Set.contains(_:)() & 1) == 0))
      {
        v46 = *v86;
        if ((Set.contains(_:)() & 1) == 0)
        {
          break;
        }
      }

      v74(v57, v55);
      v45 = v85;
      v44 = v72;
    }

    v62 = v71;
    (*(v71 + 16))(v66, v57, v55);
    type metadata accessor for Set();
    v63 = v65;
    Set.insert(_:)();
    v74(v63, v55);
    (*(v67 + 8))(v85, v70);
    v61 = v68;
    v82(v68, v57, v55);
    v60 = 0;
    return (*(v62 + 56))(v61, v60, 1, v2);
  }

  else
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t IDPool.giveBack(id:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(*(*(a2 + 24) + 8) + 16);
  type metadata accessor for Set();
  Set.remove(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t IDPool.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin();
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v43 - v10;
  v12 = *(a3 - 8);
  v13 = v12[8];
  __chkstk_darwin();
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v43 - v16;
  v53 = a4;
  v18 = *(a4 + 8);
  v46 = *(v18 + 32);
  v19 = *(v46 + 8);
  v20 = type metadata accessor for ClosedRange();
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = *(v48 + 64);
  __chkstk_darwin();
  v52 = &v43 - v22;
  v50 = v18;
  if (a2)
  {
    v23 = *(v18 + 16);
    v24 = Set.count.getter();
  }

  else
  {
    v24 = 0;
  }

  dispatch thunk of static FixedWidthInteger.min.getter();
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v44 = v24;
  v26 = v12[4];
  v26(v11, v17, a3);
  v27 = TupleTypeMetadata2;
  v26(&v11[*(TupleTypeMetadata2 + 48)], v15, a3);
  v28 = v47;
  (*(v47 + 16))(v9, v11, v27);
  v29 = *(v27 + 48);
  v26(v52, v9, a3);
  v30 = v12[1];
  v30(&v9[v29], a3);
  (*(v28 + 32))(v9, v11, v27);
  v31 = v49;
  v32 = v52;
  v26(&v52[*(v49 + 36)], &v9[*(v27 + 48)], a3);
  v30(v9, a3);
  v33 = v46;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v33;
  v58 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v35 = Collection.count.getter();
  (*(v48 + 8))(v32, v31);
  v36 = *(v50 + 16);
  result = Set.count.getter();
  v37 = v35 - result;
  if (__OFSUB__(v35, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v38 = v37 - v44;
  if (!__OFSUB__(v37, v44))
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v54 = v38;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;

    v55 = v39;
    v56 = v41;
    v42._countAndFlagsBits = 0x62616C6961766120;
    v42._object = 0xEE0073444920656CLL;
    String.append(_:)(v42);
    return v55;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t IDPool.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22[0] = a4;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v14 = v22 - v13;
  v25 = a1;
  v26 = a2;
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100480F40;
  *(v15 + 32) = 1684370293;
  *(v15 + 40) = 0xE400000000000000;
  v16 = *(*(a3 + 8) + 16);
  swift_bridgeObjectRetain_n();

  if (Set.count.getter() <= 10)
  {
    v19 = type metadata accessor for Set();
  }

  else
  {

    v22[1] = Set.count.getter();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v17;
    v18._countAndFlagsBits = 0x657375206E6920;
    v18._object = 0xE700000000000000;
    String.append(_:)(v18);
    a1 = v23;
    *(v15 + 56) = v24;
    v19 = &type metadata for String;
  }

  *(v15 + 72) = v19;
  *(v15 + 48) = a1;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  type metadata accessor for IDPool();
  (*(v8 + 104))(v11, enum case for Mirror.AncestorRepresentation.generated(_:), v7);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1000B3DD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000B3E14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000B3E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LongTermPairingKeyStore.__allocating_init(keychain:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LongTermPairingKeyStore.init(keychain:)(a1);
  return v5;
}

uint64_t *LongTermPairingKeyStore.init(keychain:)(uint64_t a1)
{
  v3 = *v1;
  Logger.init(subsystem:category:)();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_1000B3FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001B9684(v3 + *(*v3 + 104), a2, a3, *(*v3 + 80), *(*v3 + 88));

  v7 = Logger.logObject.getter();
  if (v6)
  {
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315138;
      v19 = v10;
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 39;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = sub_100002320(39, 0xE100000000000000, &v19);

      *(v9 + 4) = v13;
      v14 = "Installed new pairing keys for %s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v14, v9, 0xCu);
      sub_100002A00(v10);
    }
  }

  else
  {
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315138;
      v19 = v10;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 39;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = sub_100002320(39, 0xE100000000000000, &v19);

      *(v9 + 4) = v17;
      v14 = "Failed to install new pairing keys for %s";
      goto LABEL_6;
    }
  }

  return v6 & 1;
}

Swift::Void __swiftcall LongTermPairingKeyStore.installNewKeysToKeychainIfNecessary(for:)(CoreP2P::NANServiceName a1)
{
  object = a1.string._object;
  countAndFlagsBits = a1.string._countAndFlagsBits;
  v3 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v5 = &v6 - v4;
  LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(countAndFlagsBits, object, 1, &v6 - v4);
  sub_1000B5248(v5);
}

uint64_t LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t, uint64_t, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a2;
  v7 = *v4;
  v8 = type metadata accessor for SymmetricKeySize();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin();
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v11 = *(*(v38 - 8) + 64);
  __chkstk_darwin();
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LongTermPairingKeys(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v42 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v7[10];
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v38 - v20;
  v22 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v24 = &v38 - v23;
  (*(v18 + 16))(v21, &v4[v7[13]], v17);
  v25 = v45;
  v26 = v7[11];

  sub_1001B98B0(v21, a1, v25, v17, v26, v24);
  if ((*(v14 + 48))(v24, 1, v13) == 1)
  {
    sub_1000B5248(v24);
    if (v44)
    {
      v27 = v43;
      UUID.init()();
      v28 = a4;
      if (qword_10058A9E0 != -1)
      {
        swift_once();
      }

      v29 = v41;
      v30 = sub_100037644(v41, qword_10058FDC8);
      (*(v40 + 16))(v39, v30, v29);
      v31 = v27 + *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
      SymmetricKey.init(size:)();
      v32 = v27 + *(v38 + 20);
      P256.Signing.PrivateKey.init(compactRepresentable:)();
      v33 = v42;
      Logger.init(subsystem:category:)();
      sub_1000B52B0(v27, v33 + *(v13 + 20));
      type metadata accessor for LongTermPairingKeys.PairedDevices();
      v34 = swift_allocObject();
      *(v34 + 16) = &_swiftEmptyDictionarySingleton;
      *(v34 + 88) = 1;
      *(v34 + 72) = 0;
      *(v34 + 80) = 0;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0u;
      *(v34 + 56) = 0u;
      *(v34 + 96) = 0;
      *(v34 + 104) = 0;
      sub_1000B5314(v27, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
      *(v33 + *(v13 + 24)) = v34;
      LOBYTE(v34) = sub_1000B3FB8(v33, a1, v25);
      sub_1000B5314(v33, type metadata accessor for LongTermPairingKeys);
      if (v34)
      {
        return LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(a1, v25, 0);
      }

      v36 = *(v14 + 56);
      v37 = v28;
    }

    else
    {
      v36 = *(v14 + 56);
      v37 = a4;
    }

    return v36(v37, 1, 1, v13);
  }

  else
  {
    sub_1000B5374(v24, a4);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t LongTermPairingKeyStore.findIdentityKey()()
{
  v1 = *(*(*v0 + 88) + 16);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  return v1(v2);
}

uint64_t LongTermPairingKeyStore.installIdentityKey()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*(type metadata accessor for SymmetricKeySize() - 8) + 64);
  __chkstk_darwin();
  static SymmetricKeySize.bits128.getter();
  SymmetricKey.init(size:)();
  v5 = *(*v1 + 104);
  return (*(*(v3 + 88) + 8))(a1, *(v3 + 80));
}

Swift::Void __swiftcall LongTermPairingKeyStore.removeIdentityKey()()
{
  v1 = *(*(*v0 + 88) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  v1(v2);
}

uint64_t LongTermPairingKeyStore.installPairedPeer(with:)(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 32);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 104);
  return v2(a1, v3);
}

uint64_t LongTermPairingKeyStore.uninstallPairedPeer(with:)(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 40);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 104);
  return v2(a1, v3);
}

Swift::Void __swiftcall LongTermPairingKeyStore.uninstallAllPairedPeers()()
{
  v1 = *(*(*v0 + 88) + 48);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  v1(v2);
}

Swift::Void __swiftcall LongTermPairingKeyStore.uninstallAllIdentities()()
{
  v1 = *(*(*v0 + 88) + 56);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  v1(v2);
}

uint64_t LongTermPairingKeyStore.findPairedPeers()()
{
  v1 = *(*(*v0 + 88) + 64);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  return v1(v2);
}

uint64_t LongTermPairingKeyStore.loadPairedPeersWithIDs()()
{
  v1 = *(*(*v0 + 88) + 72);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  return v1(v2);
}

uint64_t LongTermPairingKeyStore.getPairedPeersWithIDs()()
{
  v1 = *(*(*v0 + 88) + 80);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 104);
  return v1(v2);
}

uint64_t LongTermPairingKeyStore.incrementUsageCount(for:)(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 88);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 104);
  return v2(a1, v3);
}

uint64_t LongTermPairingKeyStore.decrementUsageCount(for:)(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 96);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 104);
  return v2(a1, v3);
}

uint64_t LongTermPairingKeyStore.customMirror.getter()
{
  v1 = *v0;
  v2 = *(*(type metadata accessor for Mirror.AncestorRepresentation() - 8) + 64);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v11 = v0;
  v10 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B5408(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  sub_100167804(v4);

  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t *LongTermPairingKeyStore.deinit()
{
  v1 = *v0;
  v2 = qword_10059B2D8;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t LongTermPairingKeyStore.__deallocating_deinit()
{
  LongTermPairingKeyStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL LongTermPairingKeys.AuthenticationType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100556148, v2);

  return v3 != 0;
}

uint64_t sub_1000B50FC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100555038, *a1);

  *a2 = v3 != 0;
  return result;
}

Swift::Int sub_1000B517C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B51E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Optional<A>.attributeFilter.getter(char a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000B5248(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B52B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B5374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LongTermPairingKeys(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5408(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B5460()
{
  result = qword_10058C8F0[0];
  if (!qword_10058C8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10058C8F0);
  }

  return result;
}

uint64_t sub_1000B54B8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000B55C4()
{
  result = qword_10058C978;
  if (!qword_10058C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058C978);
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WiFiAwarePairedDevice()
{
  result = qword_10058CAC0;
  if (!qword_10058CAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WiFiAwarePairedDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v13, v14);
  type metadata accessor for UUID();
  sub_1000B6D08(&qword_10058CA20, &type metadata accessor for UUID);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    v5 = type metadata accessor for WiFiAwarePairedDevice();
    v6 = *(v1 + v5[5]);
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v7 = *(v3 + v5[6]);
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v8 = *(v3 + v5[7]);
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v9 = *(v3 + v5[8]);
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v10 = v5[9];
    sub_100031694(v13, v14);
    type metadata accessor for Date();
    sub_1000B6D08(&qword_10058CA28, &type metadata accessor for Date);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v11 = *(v3 + v5[10]);
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v13);
}

uint64_t WiFiAwarePairedDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for Date();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WiFiAwarePairedDevice();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100029B34(a1, a1[3]);
  v16 = v41;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v16)
  {
    return sub_100002A00(a1);
  }

  v41 = v6;
  v32 = v11;
  v33 = v14;
  v17 = v36;
  sub_100031694(v38, v39);
  sub_1000B6D08(&qword_10058CA30, &type metadata accessor for UUID);
  v18 = v37;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v19 = v33;
  (*(v17 + 32))(v33, v10, v18);
  sub_100031694(v38, v39);
  v20 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v21 = v19;
  v22 = v32;
  *&v21[v32[5]] = v20;
  sub_100031694(v38, v39);
  v23 = v3;
  v33[v22[6]] = dispatch thunk of UnkeyedDecodingContainer.decode(_:)() & 1;
  sub_100031694(v38, v39);
  v24 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v25 = v35;
  *&v33[v22[7]] = v24;
  sub_100031694(v38, v39);
  dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  *&v33[v32[8]] = v26;
  v31 = v40;
  sub_100031694(v38, v39);
  sub_1000B6D08(&qword_10058CA38, &type metadata accessor for Date);
  v27 = v41;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v25 + 32))(&v33[v32[9]], v27, v23);
  sub_100031694(v38, v39);
  v28 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v29 = v33;
  *&v33[v32[10]] = v28;
  sub_100002A00(v38);
  sub_1000B5F20(v29, v34);
  sub_100002A00(a1);
  return sub_1000B5F84(v29);
}

uint64_t sub_1000B5F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiAwarePairedDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5F84(uint64_t a1)
{
  v2 = type metadata accessor for WiFiAwarePairedDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WiFiAwarePairedDeviceMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WiFiAwarePairedDeviceMetadata.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WiFiAwarePairedDeviceMetadata.pairingName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WiFiAwarePairedDeviceMetadata.description.getter()
{
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v12 = v13;
  v1._object = 0x80000001004B84D0;
  v1._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v1);
  v13 = *v0;
  v11[1] = *v0;
  sub_1000B6D50(&v13, v11);
  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6E6972696150202CLL;
  v3._object = 0xEF203A656D614E67;
  String.append(_:)(v3);
  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 0x726F646E6556202CLL;
  v4._object = 0xEE00203A656D614ELL;
  String.append(_:)(v4);
  String.append(_:)(v0[2]);
  v5._countAndFlagsBits = 0x4E6C65646F4D202CLL;
  v5._object = 0xED0000203A656D61;
  String.append(_:)(v5);
  String.append(_:)(v0[3]);
  v6._countAndFlagsBits = 0x626972747441202CLL;
  v6._object = 0xEE00203A73657475;
  String.append(_:)(v6);
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v8._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v12._countAndFlagsBits;
}

uint64_t sub_1000B6668()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x614E726F646E6576;
  v4 = 0x6D614E6C65646F6DLL;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E676E6972696170;
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

uint64_t sub_1000B670C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B764C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B6734(uint64_t a1)
{
  v2 = sub_1000B6DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6770(uint64_t a1)
{
  v2 = sub_1000B6DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WiFiAwarePairedDeviceMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_10058CA48, &qword_100482538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000B6DC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v25 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v22 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[8];
    v20[15] = 4;
    sub_10005DC58(&qword_10058CA58, &qword_100482540);
    sub_1000B7814(&qword_10058CA60);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 WiFiAwarePairedDeviceMetadata.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000B6E14(a1, v6);
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

id WiFiAwarePairedDeviceInfo.init(device:metadata:)(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v4 = *a2;
    v5 = a2[1];

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = a2[2];
  v9 = a2[3];
  v10 = String._bridgeToObjectiveC()();
  v11 = a2[4];
  v12 = a2[5];
  v13 = String._bridgeToObjectiveC()();
  v14 = a2[6];
  v15 = a2[7];
  v16 = String._bridgeToObjectiveC()();
  v17 = a2[8];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_1000B7220(a2);
  v19 = [v7 initWithName:v6 pairingName:v10 vendorName:v13 modelName:v16 attributes:isa];

  [v19 setDeviceID:*(a1 + *(type metadata accessor for WiFiAwarePairedDevice() + 20))];
  sub_1000B5F84(a1);
  return v19;
}

void WiFiAwarePairedDeviceInfo.metadata.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 name];
  if (v3)
  {
    v4 = v3;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v21 = 0;
    v6 = 0;
  }

  v7 = [v1 pairingName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [v1 vendorName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v1 modelName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v1 attributes];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v21;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v18;
  a1[8] = v20;
}

uint64_t sub_1000B6D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B6D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100599FD0, &qword_100482530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B6DC0()
{
  result = qword_10058CA50;
  if (!qword_10058CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CA50);
  }

  return result;
}

uint64_t sub_1000B6E14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10005DC58(&qword_10058CB28, &qword_1004827D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000B6DC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002A00(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    LOBYTE(v40[0]) = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v16;
    LOBYTE(v40[0]) = 2;
    *&v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v15;
    v32 = v14;
    *(&v33 + 1) = v17;
    LOBYTE(v40[0]) = 3;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    v30 = v18;
    sub_10005DC58(&qword_10058CA58, &qword_100482540);
    v41 = 4;
    sub_1000B7814(&qword_10058CB30);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v29 = v42;
    v21 = v32;
    *&v35 = v32;
    *(&v35 + 1) = v13;
    v22 = v31;
    v24 = *(&v33 + 1);
    v23 = v34;
    *&v36 = v31;
    *(&v36 + 1) = v34;
    v37 = v33;
    *&v38 = v30;
    *(&v38 + 1) = v20;
    v39 = v42;
    sub_1000B7880(&v35, v40);
    sub_100002A00(a1);
    v40[0] = v21;
    v40[1] = v13;
    v40[2] = v22;
    v40[3] = v23;
    v40[4] = v33;
    v40[5] = v24;
    v40[6] = v30;
    v40[7] = v20;
    v40[8] = v29;
    result = sub_1000B7220(v40);
    v26 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v26;
    *(a2 + 64) = v39;
    v27 = v36;
    *a2 = v35;
    *(a2 + 16) = v27;
  }

  return result;
}

void sub_1000B7278()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WiFiAwarePairingStorageClass(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WiFiAwarePairingClient(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000B734C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B7394(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WiFiInterfaceRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WiFiInterfaceRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B7548()
{
  result = qword_10058CB10;
  if (!qword_10058CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB10);
  }

  return result;
}

unint64_t sub_1000B75A0()
{
  result = qword_10058CB18;
  if (!qword_10058CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB18);
  }

  return result;
}

unint64_t sub_1000B75F8()
{
  result = qword_10058CB20;
  if (!qword_10058CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB20);
  }

  return result;
}

uint64_t sub_1000B764C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E676E6972696170 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E726F646E6576 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_1000B7814(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_10058CA58, &qword_100482540);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B78BC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P13NANReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000B78E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B7930()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t NANReasonCode.description.getter(char a1)
{
  result = 0x6465767265736572;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E75;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000002CLL;
      break;
    case 5:
      result = 0x6D65766F6D206F6ELL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x7974697275636573;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s7CoreP2P13NANReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 0xEu)
  {
    return 14;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1000B7C24()
{
  result = qword_10058CB38;
  if (!qword_10058CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANReasonCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANReasonCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B7DC8()
{
  result = qword_10058CB40;
  if (!qword_10058CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB40);
  }

  return result;
}

uint64_t NANPMK.init(pmk:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_12:
    if (v3 == 32)
    {
      return result;
    }
  }

  sub_100017554(result, a2);
  return 0;
}

uint64_t NANPMK.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v5 = v8;
    sub_100031694(v7, v8);
    v4 = UnkeyedDecodingContainer.decodeData(with:)(32, v5);
    sub_100002A00(v7);
    sub_100002A00(a1);
  }

  return v4;
}

uint64_t static NANPMK.zero.getter()
{
  v0 = type metadata accessor for __DataStorage();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  __DataStorage.init(length:)();
  return 0x2000000000;
}

uint64_t NANPMK.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v7, v7[3]);
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(a2, a3);
  return sub_100002A00(v7);
}

unint64_t sub_1000B8088()
{
  result = qword_10058CB58;
  if (!qword_10058CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB58);
  }

  return result;
}

uint64_t sub_1000B80E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v6 = v12;
  sub_100031694(v11, v12);
  v7 = UnkeyedDecodingContainer.decodeData(with:)(32, v6);
  v9 = v8;
  sub_100002A00(v11);
  result = sub_100002A00(a1);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

uint64_t sub_1000B81D0()
{
  result = sub_10016FD40(0x204B4D50204E414ELL, 0xEC000000656D614ELL);
  qword_10058CB48 = result;
  unk_10058CB50 = v1;
  return result;
}

uint64_t NANPMK.pmkid(for:initiatorAddress:responderAddress:serviceName:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1 << a1;
  v8 = a2 & 0xFFFFFFFFFFFFLL;
  v9 = a3 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x55) != 0)
  {
    return sub_1000B8248(v8, v9, a4, a5, a6, a7);
  }

  else
  {
    return sub_1000B8944(v8, v9, a4, a5, a6, a7);
  }
}

uint64_t sub_1000B8248(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v67 = a5;
  *(&v67 + 1) = a6;
  v60 = a4;
  v59 = a3;
  v8 = type metadata accessor for SymmetricKey();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  __chkstk_darwin();
  v68 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SHA256Digest();
  v61 = *(v62 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin();
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SHA256();
  v57 = *(v64 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin();
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  __chkstk_darwin();
  v63 = &v49 - v17;
  if (qword_10058A760 != -1)
  {
    swift_once();
  }

  v55 = a2 >> 40;
  v54 = HIDWORD(a2);
  v53 = a2 >> 24;
  v52 = a2 >> 16;
  v51 = a2 >> 8;
  v50 = a2;
  v18 = qword_10058CB48;
  v19 = unk_10058CB50;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v20 = swift_allocObject();
  v49 = xmmword_1004817D0;
  *(v20 + 16) = xmmword_1004817D0;
  *(v20 + 32) = a1;
  *(v20 + 34) = BYTE2(a1);
  *(v20 + 35) = BYTE3(a1);
  *(v20 + 36) = BYTE4(a1);
  *(v20 + 37) = BYTE5(a1);
  v21 = sub_10002D874(v20);
  v23 = v22;

  *&v75 = v18;
  *(&v75 + 1) = v19;
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  *&v71 = v21;
  *(&v71 + 1) = v23;
  v24 = sub_100029B34(&v71, &type metadata for Data);
  v26 = *v24;
  v25 = v24[1];
  sub_10000AB0C(v18, v19);
  sub_10000AB0C(v21, v23);
  sub_100178A18(v26, v25);
  sub_1000124C8(v21, v23);
  sub_100002A00(&v71);
  v27 = v75;
  v28 = swift_allocObject();
  *(v28 + 16) = v49;
  *(v28 + 32) = v50;
  *(v28 + 33) = v51;
  *(v28 + 34) = v52;
  *(v28 + 35) = v53;
  *(v28 + 36) = v54;
  *(v28 + 37) = v55;
  v29 = sub_10002D874(v28);
  v31 = v30;

  v74 = v27;
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  *&v71 = v29;
  *(&v71 + 1) = v31;
  v32 = sub_100029B34(&v71, &type metadata for Data);
  v33 = *v32;
  v34 = v32[1];
  sub_10000AB0C(v27, *(&v27 + 1));
  sub_10000AB0C(v29, v31);
  sub_100178A18(v33, v34);
  sub_1000124C8(v29, v31);
  sub_1000124C8(v27, *(&v27 + 1));
  sub_100002A00(&v71);
  v37 = v74;
  v35 = v37 >> 64;
  v36 = v37;
  v38 = v56;
  SHA256.init()();
  v39 = String.lowercased()();

  sub_1001F93A4(v39._countAndFlagsBits, v39._object);

  v40 = v58;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v61 + 8))(v40, v62);
  v41 = v71;
  (*(v57 + 8))(v38, v64);
  v75 = __PAIR128__(v35, v36);
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  v71 = v41;
  v42 = sub_100029B34(&v71, &type metadata for Data);
  v43 = *v42;
  v44 = v42[1];
  sub_10000AB0C(v36, v35);
  sub_10000AB0C(v41, *(&v41 + 1));
  sub_100178A18(v43, v44);
  sub_1000124C8(v41, *(&v41 + 1));
  sub_1000124C8(v36, v35);
  sub_100002A00(&v71);
  v71 = v75;
  v74 = v67;
  sub_10000AB0C(v67, *(&v67 + 1));
  v45 = v68;
  SymmetricKey.init<A>(data:)();
  sub_1000BA0F8(&qword_10059AB90, &type metadata accessor for SHA256);
  sub_1000BA0A4();
  v46 = v63;
  static HMAC.authenticationCode<A>(for:using:)();
  (*(v69 + 8))(v45, v70);
  sub_1000124C8(v71, *(&v71 + 1));
  v47 = v66;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v65 + 8))(v46, v47);
  return v71;
}

uint64_t sub_1000B8944(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v67 = a5;
  *(&v67 + 1) = a6;
  v61 = a4;
  v60 = a3;
  v8 = type metadata accessor for SymmetricKey();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  __chkstk_darwin();
  v68 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SHA256Digest();
  v62 = *(v63 - 8);
  v11 = *(v62 + 64);
  __chkstk_darwin();
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SHA256();
  v57 = *(v59 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin();
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10005DC58(&qword_10058CBA8, &unk_100482C98);
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  __chkstk_darwin();
  v64 = &v49 - v17;
  if (qword_10058A760 != -1)
  {
    swift_once();
  }

  v55 = a2 >> 40;
  v54 = HIDWORD(a2);
  v53 = a2 >> 24;
  v52 = a2 >> 16;
  v51 = a2 >> 8;
  v50 = a2;
  v18 = qword_10058CB48;
  v19 = unk_10058CB50;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v20 = swift_allocObject();
  v49 = xmmword_1004817D0;
  *(v20 + 16) = xmmword_1004817D0;
  *(v20 + 32) = a1;
  *(v20 + 34) = BYTE2(a1);
  *(v20 + 35) = BYTE3(a1);
  *(v20 + 36) = BYTE4(a1);
  *(v20 + 37) = BYTE5(a1);
  v21 = sub_10002D874(v20);
  v23 = v22;

  *&v75 = v18;
  *(&v75 + 1) = v19;
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  *&v71 = v21;
  *(&v71 + 1) = v23;
  v24 = sub_100029B34(&v71, &type metadata for Data);
  v26 = *v24;
  v25 = v24[1];
  sub_10000AB0C(v18, v19);
  sub_10000AB0C(v21, v23);
  sub_100178A18(v26, v25);
  sub_1000124C8(v21, v23);
  sub_100002A00(&v71);
  v27 = v75;
  v28 = swift_allocObject();
  *(v28 + 16) = v49;
  *(v28 + 32) = v50;
  *(v28 + 33) = v51;
  *(v28 + 34) = v52;
  *(v28 + 35) = v53;
  *(v28 + 36) = v54;
  *(v28 + 37) = v55;
  v29 = sub_10002D874(v28);
  v31 = v30;

  v74 = v27;
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  *&v71 = v29;
  *(&v71 + 1) = v31;
  v32 = sub_100029B34(&v71, &type metadata for Data);
  v33 = *v32;
  v34 = v32[1];
  sub_10000AB0C(v27, *(&v27 + 1));
  sub_10000AB0C(v29, v31);
  sub_100178A18(v33, v34);
  sub_1000124C8(v29, v31);
  sub_1000124C8(v27, *(&v27 + 1));
  sub_100002A00(&v71);
  v37 = v74;
  v35 = v37 >> 64;
  v36 = v37;
  v38 = v56;
  SHA256.init()();
  v39 = String.lowercased()();

  sub_1001F93A4(v39._countAndFlagsBits, v39._object);

  v40 = v58;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v62 + 8))(v40, v63);
  v41 = v71;
  (*(v57 + 8))(v38, v59);
  v75 = __PAIR128__(v35, v36);
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  v71 = v41;
  v42 = sub_100029B34(&v71, &type metadata for Data);
  v43 = *v42;
  v44 = v42[1];
  sub_10000AB0C(v36, v35);
  sub_10000AB0C(v41, *(&v41 + 1));
  sub_100178A18(v43, v44);
  sub_1000124C8(v41, *(&v41 + 1));
  sub_1000124C8(v36, v35);
  sub_100002A00(&v71);
  v71 = v75;
  v74 = v67;
  sub_10000AB0C(v67, *(&v67 + 1));
  v45 = v68;
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA384();
  sub_1000BA0F8(&qword_10058CBB0, &type metadata accessor for SHA384);
  sub_1000BA0A4();
  v46 = v64;
  static HMAC.authenticationCode<A>(for:using:)();
  (*(v69 + 8))(v45, v70);
  sub_1000124C8(v71, *(&v71 + 1));
  v47 = v66;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v65 + 8))(v46, v47);
  return v71;
}

_BYTE *sub_1000B9048@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = sub_1002AAFAC(result, 16);
    result = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v3, v4);
    if (v5 >> 60 != 15)
    {
      *a2 = result;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NANPMK.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0x22203A4B4D50;
  v28 = 0xE600000000000000;
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_10000AB0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1000BA0F8(&qword_10058C7C0, &type metadata accessor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v26)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v22 = xmmword_100480F40;
    do
    {
      v11 = v25;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v12 = swift_allocObject();
      *(v12 + 16) = v22;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = String.init(format:_:)();
      v15 = v14;
      v23 = v9;
      v24 = v10;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      v9 = v23;
      v10 = v24;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v26 != 1);
  }

  (*(v21 + 8))(v7, v4);
  v17._countAndFlagsBits = v9;
  v17._object = v10;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 34;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v27;
}

uint64_t NANPMK.customMirror.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v14[2] = a1;
  v14[3] = a2;
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 104))(v8, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  sub_10000AB0C(a1, a2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1000B9510()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v13 - v7;
  v10 = *v0;
  v9 = v0[1];
  v13[2] = v10;
  v13[3] = v9;
  v13[1] = _swiftEmptyArrayStorage;
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10000AB0C(v10, v9);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

Swift::Int PairedDevicesStoreEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000B976C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000B97BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1000B9844(uint64_t a1)
{
  v2 = sub_1000B9DC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B9880(uint64_t a1)
{
  v2 = sub_1000B9DC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANPMK.ID.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10005DC58(&qword_10058CB60, &qword_100482920);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000B9DC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

Swift::Int InterfaceIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B9A7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B9AC8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B9B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B9B58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000B9B58(uint64_t *a1)
{
  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v10[0] = 0x1000000000;
  v10[1] = __DataStorage.init(length:)();
  sub_100061640(v10, 0);
  v6 = a1[4];
  v7 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
  }

  else
  {
    v8 = v11;
    sub_100031694(v10, v11);
    v7 = UnkeyedDecodingContainer.decodeData(with:)(16, v8);

    sub_100002A00(v10);
  }

  sub_100002A00(a1);
  return v7;
}

uint64_t _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for __DataStorage();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v13[0] = 0x1000000000;
  v13[1] = __DataStorage.init(length:)();
  sub_100061640(v13, 0);

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
LABEL_10:
      if (v9 == 16)
      {
        return a1;
      }

LABEL_11:
      sub_1000124C8(a1, a2);
      return 0;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v9) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v9 = v9;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000B9D64()
{
  result = qword_10058C7A8;
  if (!qword_10058C7A8)
  {
    sub_10005DD04(&qword_10058C7A0, &qword_100481FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058C7A8);
  }

  return result;
}

unint64_t sub_1000B9DC8()
{
  result = qword_10058CB68;
  if (!qword_10058CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB68);
  }

  return result;
}

unint64_t sub_1000B9E20()
{
  result = qword_10058CB70;
  if (!qword_10058CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB70);
  }

  return result;
}

unint64_t sub_1000B9E78()
{
  result = qword_10058CB78;
  if (!qword_10058CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB78);
  }

  return result;
}

uint64_t sub_1000B9EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t sub_1000B9F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1000B9FA0()
{
  result = qword_10058CB80;
  if (!qword_10058CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB80);
  }

  return result;
}

unint64_t sub_1000B9FF8()
{
  result = qword_10058CB88;
  if (!qword_10058CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB88);
  }

  return result;
}

unint64_t sub_1000BA050()
{
  result = qword_10058CB90;
  if (!qword_10058CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CB90);
  }

  return result;
}

unint64_t sub_1000BA0A4()
{
  result = qword_10058CBA0;
  if (!qword_10058CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CBA0);
  }

  return result;
}

uint64_t sub_1000BA0F8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000BA168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1000BA2B0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BA794(a1);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << v9[32];
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 8);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
LABEL_10:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v11 << 6);
      v20 = (*(v10 + 6) + 16 * v19);
      v21 = *(*(v10 + 7) + 8 * v19);
      v22 = *v20 == a2 && v20[1] == a3;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v21 + 16))
      {

        v23 = sub_1000102E8(a4, a5);
        if (v24)
        {
          sub_100002B30(*(v21 + 56) + 32 * v23, v31);

          sub_100018AB4(0, &qword_10058CBB8, NSDictionary_ptr);
          if (swift_dynamicCast())
          {

            return 1;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        return 0;
      }

      v15 = *&v12[8 * v17];
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else if (qword_10058AA08 == -1)
  {
    goto LABEL_22;
  }

  swift_once();
LABEL_22:
  v25 = type metadata accessor for Logger();
  sub_100037644(v25, qword_10059B5B8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error while getting bundle info for client", v28, 2u);
  }

  return 0;
}

uint64_t static LaunchServiceRecord.isExternalApi(for:)(uint64_t a1, uint64_t a2)
{
  sub_100018AB4(0, &qword_10058CBC0, LSBundleRecord_ptr);

  result = sub_1000BA6AC(a1, a2, 1);
  if (result)
  {
    v5 = result;
    v6 = [result entitlements];
    v7 = String._bridgeToObjectiveC()();
    sub_100018AB4(0, &qword_10058CBC8, NSArray_ptr);
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
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
      sub_10005DC58(&qword_10058CBD0, &qword_100482CA8);
      if (swift_dynamicCast())
      {

        return 1;
      }
    }

    else
    {
      sub_1000BA934(v11);
    }

    return 0;
  }

  return result;
}

id sub_1000BA6AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_1000BA794(int a1)
{
  sub_1001F8828(a1, v14);
  if (v15)
  {
    return 0;
  }

  v2 = v14[2];
  v1 = v14[3];
  v4 = v14[0];
  v3 = v14[1];
  sub_100018AB4(0, &qword_10058CBC0, LSBundleRecord_ptr);
  result = sub_1000BA168(v4, v3, v2, v1);
  if (result)
  {
    v6 = result;
    v7 = [result infoDictionary];
    v8 = String._bridgeToObjectiveC()();
    sub_100018AB4(0, &qword_10058CBB8, NSDictionary_ptr);
    v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_10005DC58(&qword_10058CBD8, &qword_100482CC8);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
      sub_1000BA934(v13);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000BA934(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BA9C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  sub_1000BAD00(v4);

  *a2 = v6;
  return result;
}

uint64_t sub_1000BAA40@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v8 = *v3;

  a2(v6);

  result = swift_bridgeObjectRelease_n();
  *a3 = v8;
  return result;
}

uint64_t sub_1000BAAC4(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_100237EE0(a1, *a2);

  return v2 & 1;
}

uint64_t sub_1000BAAFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BAB28(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BAB28(uint64_t a1)
{
  v3 = *v1;
  v10 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(a1 + 16);
  if (v4 <= v5)
  {
    swift_bridgeObjectRetain_n();
    v6 = v3;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100235DAC((v4 - v5));
    v6 = v10;
    v4 = *(v10 + 16);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  while (v5 != v7)
  {
    v8 = *(a1 + 32 + v7);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C28C4(v6);
      v6 = result;
    }

    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    *(v6 + v7++ + 32) &= v8;
    if (v4 == v7)
    {
      break;
    }
  }

LABEL_11:

  if (sub_1000BEAF0(v6, _swiftEmptyArrayStorage))
  {

    return 0;
  }

  else
  {
    sub_100238570(a1);
  }

  return v6;
}

uint64_t sub_1000BAC64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100238020(*a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000BACA8(void *a1)
{
  sub_10029F424(*a1);
}

uint64_t sub_1000BAD00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(a1 + 16);
  result = v4 - v5;
  if (v4 > v5)
  {
    result = sub_100235DAC(result);
    v3 = *v1;
    v4 = *(*v1 + 16);
  }

  if (v4)
  {
    v7 = 0;
    v8 = a1 + 32;
    while (v5 != v7)
    {
      v9 = *(v8 + v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000C28C4(v3);
        v3 = result;
      }

      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      *(v3 + v7 + 32) &= v9;
      *v1 = v3;
      if (v4 == ++v7)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000BADC4(void *a1)
{
  sub_100286C34(*a1);
}

uint64_t sub_1000BAE00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100286C38(*a1, *v2);

  *a2 = v4;
  return result;
}

uint64_t sub_1000BAE48(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v6 = *v1;

  sub_1000BAD00(v2);
  v4 = sub_1000BEAF0(v6, v3);

  return v4 & 1;
}

uint64_t sub_1000BAEC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = *a1;

  sub_1000BAD00(v3);
  LOBYTE(v2) = sub_1000BEAF0(v5, v2);

  return v2 & 1;
}

uint64_t sub_1000BAF8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100286BE0();

  *a1 = v2;
  return result;
}

uint64_t sub_1000BAFCC()
{
  result = sub_100286BD4(0);
  static WiFiDriverCapabilities.supportsNAN = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsNAN.unsafeMutableAddressor()
{
  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsNAN;
}

uint64_t sub_1000BB064()
{
  result = sub_100286BD4(1);
  static WiFiDriverCapabilities.supportsAWDL = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsAWDL.unsafeMutableAddressor()
{
  if (qword_10058A770 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsAWDL;
}

uint64_t sub_1000BB0FC()
{
  result = sub_100286BD4(2);
  static WiFiDriverCapabilities.supportsDualBand = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor()
{
  if (qword_10058A778 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDualBand;
}

uint64_t sub_1000BB194()
{
  result = sub_100286BD4(3);
  static WiFiDriverCapabilities.supportsSimultaneousDualBand = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor()
{
  if (qword_10058A780 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsSimultaneousDualBand;
}

uint64_t sub_1000BB22C()
{
  result = sub_100286BD4(4);
  static WiFiDriverCapabilities.supportsAWDLSoloMode = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsAWDLSoloMode.unsafeMutableAddressor()
{
  if (qword_10058A788 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsAWDLSoloMode;
}

uint64_t sub_1000BB2C4()
{
  result = sub_100286BD4(5);
  static WiFiDriverCapabilities.isClmRestricted = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.isClmRestricted.unsafeMutableAddressor()
{
  if (qword_10058A790 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.isClmRestricted;
}

uint64_t sub_1000BB35C()
{
  result = sub_100286BD4(6);
  static WiFiDriverCapabilities.peerCountryCodeLearningCapable = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.peerCountryCodeLearningCapable.unsafeMutableAddressor()
{
  if (qword_10058A798 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.peerCountryCodeLearningCapable;
}

uint64_t sub_1000BB3F4()
{
  result = sub_100286BD4(7);
  static WiFiDriverCapabilities.supportsDFSProxy = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDFSProxy.unsafeMutableAddressor()
{
  if (qword_10058A7A0 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDFSProxy;
}

uint64_t sub_1000BB48C()
{
  result = sub_100286BD4(8);
  static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDisableAWDLOnInactivity.unsafeMutableAddressor()
{
  if (qword_10058A7A8 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity;
}

uint64_t sub_1000BB524()
{
  result = sub_100286BD4(9);
  static WiFiDriverCapabilities.supportsDynamicSDB = result;
  return result;
}

uint64_t *WiFiDriverCapabilities.supportsDynamicSDB.unsafeMutableAddressor()
{
  if (qword_10058A7B0 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.supportsDynamicSDB;
}

uint64_t sub_1000BB5BC()
{
  if (qword_10058A768 != -1)
  {
LABEL_48:
    swift_once();
  }

  v27[0] = static WiFiDriverCapabilities.supportsNAN;
  v0 = qword_10058A770;

  if (v0 != -1)
  {
    swift_once();
  }

  v27[1] = static WiFiDriverCapabilities.supportsAWDL;
  v1 = qword_10058A778;

  if (v1 != -1)
  {
    swift_once();
  }

  v27[2] = static WiFiDriverCapabilities.supportsDualBand;
  v2 = qword_10058A780;

  if (v2 != -1)
  {
    swift_once();
  }

  v27[3] = static WiFiDriverCapabilities.supportsSimultaneousDualBand;
  v3 = qword_10058A788;

  if (v3 != -1)
  {
    swift_once();
  }

  v27[4] = static WiFiDriverCapabilities.supportsAWDLSoloMode;
  v4 = qword_10058A790;

  if (v4 != -1)
  {
    swift_once();
  }

  v27[5] = static WiFiDriverCapabilities.isClmRestricted;
  v5 = qword_10058A798;

  if (v5 != -1)
  {
    swift_once();
  }

  v27[6] = static WiFiDriverCapabilities.peerCountryCodeLearningCapable;
  v6 = qword_10058A7A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v27[7] = static WiFiDriverCapabilities.supportsDFSProxy;
  v7 = qword_10058A7A8;

  if (v7 != -1)
  {
    swift_once();
  }

  v27[8] = static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity;
  v8 = qword_10058A7B0;

  if (v8 != -1)
  {
    swift_once();
  }

  v27[9] = static WiFiDriverCapabilities.supportsDynamicSDB;
  v26 = _swiftEmptyArrayStorage;

  for (i = 0; i != 10; ++i)
  {
    v10 = v27[i];
    v11 = v26;
    v12 = *(v26 + 2);
    v13 = *(v10 + 16);
    if (v12 <= v13)
    {

      v14 = v26;
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    else
    {

      sub_100235DAC((v12 - v13));
      v14 = v26;
      v12 = *(v26 + 2);
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    v15 = 0;
    while (v13 != v15)
    {
      v16 = *(v10 + 32 + v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000C28C4(v14);
      }

      if (v15 >= *(v14 + 2))
      {
        __break(1u);
        goto LABEL_47;
      }

      v14[v15 + 32] &= v16;
      if (v12 == ++v15)
      {
        break;
      }
    }

LABEL_33:
    v17 = sub_1000BEAF0(v14, v10);

    if ((v17 & 1) == 0)
    {
      v18 = *(v26 + 2);
      v19 = *(v10 + 16);

      if (v18 && v19)
      {
        v20 = 0;
        v21 = v18 - 1;
        while (1)
        {
          v22 = *(v10 + 32 + v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1000C28C4(v11);
          }

          v18 = *(v11 + 2);
          if (v20 >= v18)
          {
            break;
          }

          v11[v20 + 32] |= v22;
          v26 = v11;
          if (v21 != v20 && v19 - 1 != v20++)
          {
            continue;
          }

          goto LABEL_43;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_43:
      if (v18 < v19)
      {

        sub_100234FC0(v24, v10 + 32, v18, (2 * v19) | 1);
      }
    }
  }

  result = swift_arrayDestroy();
  static WiFiDriverCapabilities.all = v26;
  return result;
}

uint64_t *WiFiDriverCapabilities.all.unsafeMutableAddressor()
{
  if (qword_10058A7B8 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.all;
}

uint64_t *WiFiDriverCapabilities.none.unsafeMutableAddressor()
{
  if (qword_10058A7C0 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.none;
}

uint64_t sub_1000BBB74(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1000BBBD4()
{
  sub_10005DC58(&qword_10058CD28, &qword_100483050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100482CD0;
  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = static WiFiDriverCapabilities.supportsNAN;
  *(v0 + 40) = 0x7374726F70707573;
  *(v0 + 48) = 0xEB000000004E414ELL;
  v1 = qword_10058A770;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = static WiFiDriverCapabilities.supportsAWDL;
  strcpy((v0 + 64), "supportsAWDL");
  *(v0 + 77) = 0;
  *(v0 + 78) = -5120;
  v2 = qword_10058A778;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = static WiFiDriverCapabilities.supportsDualBand;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000001004B8690;
  v3 = qword_10058A780;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = static WiFiDriverCapabilities.supportsSimultaneousDualBand;
  *(v0 + 112) = 0xD00000000000001CLL;
  *(v0 + 120) = 0x80000001004B86B0;
  v4 = qword_10058A788;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 128) = static WiFiDriverCapabilities.supportsAWDLSoloMode;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001004B86D0;
  v5 = qword_10058A790;

  if (v5 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = static WiFiDriverCapabilities.isClmRestricted;
  *(v0 + 160) = 0x7365526D6C437369;
  *(v0 + 168) = 0xEF64657463697274;
  v6 = qword_10058A798;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 176) = static WiFiDriverCapabilities.peerCountryCodeLearningCapable;
  *(v0 + 184) = 0xD00000000000001ELL;
  *(v0 + 192) = 0x80000001004B86F0;
  v7 = qword_10058A7A0;

  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + 200) = static WiFiDriverCapabilities.supportsDFSProxy;
  *(v0 + 208) = 0xD000000000000010;
  *(v0 + 216) = 0x80000001004B8710;
  v8 = qword_10058A7A8;

  if (v8 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity;
  *(v0 + 232) = 0xD00000000000001FLL;
  *(v0 + 240) = 0x80000001004B8730;
  v9 = qword_10058A7B0;

  if (v9 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = static WiFiDriverCapabilities.supportsDynamicSDB;
  *(v0 + 256) = 0xD000000000000012;
  *(v0 + 264) = 0x80000001004B8750;
  static WiFiDriverCapabilities.debugDescriptions = v0;
}

uint64_t *WiFiDriverCapabilities.debugDescriptions.unsafeMutableAddressor()
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  return &static WiFiDriverCapabilities.debugDescriptions;
}

uint64_t static WiFiDriverCapabilities.debugDescriptions.getter()
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static WiFiDriverCapabilities.debugDescriptions.setter(uint64_t a1)
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static WiFiDriverCapabilities.debugDescriptions = a1;
}

uint64_t (*static WiFiDriverCapabilities.debugDescriptions.modify())()
{
  if (qword_10058A7C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t WiFiDriverCapabilities.description.getter(uint64_t a1)
{
  if (qword_10058A7C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  swift_beginAccess();
  v1 = static WiFiDriverCapabilities.debugDescriptions;
  v2 = *(static WiFiDriverCapabilities.debugDescriptions + 16);

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    do
    {
      v27 = v3;
      while (1)
      {
        if (v4 >= *(v1 + 16))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v5 = (v1 + 32 + 24 * v4);
        v6 = *v5;
        v28 = v5[1];
        v7 = v5[2];
        v30 = *v5;
        v8 = *(*v5 + 16);
        v9 = *(a1 + 16);
        if (v8 <= v9)
        {
          swift_bridgeObjectRetain_n();

          v10 = v6;
          if (!v8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();

          sub_100235DAC((v8 - v9));
          v10 = v30;
          v8 = *(v30 + 16);
          if (!v8)
          {
            goto LABEL_16;
          }
        }

        v11 = 0;
        while (v9 != v11)
        {
          v12 = *(a1 + 32 + v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1000C28C4(v10);
          }

          if (v11 >= *(v10 + 2))
          {
            __break(1u);
            goto LABEL_31;
          }

          v10[v11 + 32] &= v12;
          if (v8 == ++v11)
          {
            break;
          }
        }

LABEL_16:
        ++v4;
        v13 = sub_1000BEAF0(v10, v6);

        if (v13)
        {
          break;
        }

        if (v4 == v2)
        {
          v3 = v27;
          goto LABEL_24;
        }
      }

      v14 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C0484(0, v27[2] + 1, 1);
        v14 = v27;
      }

      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000C0484((v15 > 1), v16 + 1, 1);
        v14 = v27;
      }

      v14[2] = v16 + 1;
      v17 = &v14[3 * v16];
      v17[4] = v6;
      v17[5] = v28;
      v17[6] = v7;
      v3 = v14;
    }

    while (v4 != v2);
  }

LABEL_24:

  v18 = v3[2];
  if (v18)
  {
    sub_1000C0464(0, v18, 0);
    v19 = v3 + 6;
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];

      if (v23 >= v22 >> 1)
      {
        sub_1000C0464((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      v19 += 3;
      --v18;
    }

    while (v18);
  }

  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_1000C28D8();
  v25 = BidirectionalCollection<>.joined(separator:)();

  return v25;
}

uint64_t sub_1000BC518(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      if (*(v4 - 24) != *(i - 24) || *(v4 - 8) != *(i - 8))
      {
        return 0;
      }

      v8 = *(v4 - 1);
      v7 = *v4;
      v10 = *(i - 1);
      v9 = *i;
      v11 = *v4 >> 62;
      v12 = *i >> 62;
      if (v11 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v8 + 16);
          v18 = *(v8 + 24);
          v16 = __OFSUB__(v18, v19);
          v13 = v18 - v19;
          if (v16)
          {
            goto LABEL_61;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_62;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_29:
          if (v12)
          {
            LODWORD(v17) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_60;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v9);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v7);
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
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
      }

LABEL_33:
      if (v13 != v17)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v30 = v3;
          v20 = *(v8 + 16);
          v29 = *(v8 + 24);
          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v21 = __DataStorage._bytes.getter();
          if (v21)
          {
            v22 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v22))
            {
              goto LABEL_65;
            }

            v21 += v20 - v22;
          }

          if (__OFSUB__(v29, v20))
          {
            goto LABEL_64;
          }

          __DataStorage._length.getter();
          v23 = v21;
          v24 = v10;
          v25 = v9;
          v3 = v30;
          goto LABEL_54;
        }

        memset(v32, 0, 14);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      else
      {
        if (v11)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_63;
          }

          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v27))
            {
              goto LABEL_66;
            }

            v26 += v8 - v27;
          }

          __DataStorage._length.getter();
          v23 = v26;
          v24 = v10;
          v25 = v9;
LABEL_54:
          sub_100031E04(v23, v24, v25, v32);
          sub_1000124C8(v10, v9);
          sub_1000124C8(v8, v7);
          if ((v32[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v32[0] = *(v4 - 1);
        LOWORD(v32[1]) = v7;
        BYTE2(v32[1]) = BYTE2(v7);
        BYTE3(v32[1]) = BYTE3(v7);
        BYTE4(v32[1]) = BYTE4(v7);
        BYTE5(v32[1]) = BYTE5(v7);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      sub_100031E04(v32, v10, v9, &v31);
      sub_1000124C8(v10, v9);
      sub_1000124C8(v8, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_6:
      v4 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v8 && v7 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v13 = 0;
      if (!v10 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_28:
    if (v12 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1000BC9A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    LODWORD(v5) = byte_100483072[v5];
    v8 = byte_100483072[v7];
    result = v5 == v8;
    if (v5 != v8 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BCA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 10)
    {
      v5 = a1 + i;
      v6 = a2 + i;
      v7 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 34) == *(a2 + i + 34);
      if (!v7 || *(a1 + i + 36) != *(a2 + i + 36))
      {
        break;
      }

      if (*(v5 + 40))
      {
        if (!*(v6 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v5 + 38) == *(v6 + 38))
        {
          v4 = *(v6 + 40);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000BCAE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 38);
    v4 = (a2 + 38);
    do
    {
      if (*(v3 - 6) != *(v4 - 6) || (0x801004u >> (8 * *(v3 - 2))) != (0x801004u >> (8 * *(v4 - 2))))
      {
        return 0;
      }

      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          result = 0;
          if (v6 != 2)
          {
            return result;
          }
        }

        else
        {
          if (v5 != 3)
          {
LABEL_23:
            if ((v6 - 2) < 5)
            {
              return 0;
            }

            result = 0;
            if ((v6 ^ v5))
            {
              return result;
            }

            goto LABEL_25;
          }

          result = 0;
          if (v6 != 3)
          {
            return result;
          }
        }
      }

      else
      {
        switch(v5)
        {
          case 4u:
            result = 0;
            if (v6 != 4)
            {
              return result;
            }

            break;
          case 5u:
            result = 0;
            if (v6 != 5)
            {
              return result;
            }

            break;
          case 6u:
            result = 0;
            if (v6 != 6)
            {
              return result;
            }

            break;
          default:
            goto LABEL_23;
        }
      }

LABEL_25:
      if (*v3 != *v4)
      {
        return result;
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL _s7CoreP2P15AWDLActionFrameV12SyncTreePathV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 37;
  v4 = a2 + 37;
  do
  {
    if (!v2)
    {
      __break(1u);
    }

    v5 = *(v3 - 5) ^ *(v4 - 5) | *(v3 - 1) ^ *(v4 - 1);
    result = v5 == 0;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 == 1;
    }

    --v2;
    v3 += 6;
    v4 += 6;
  }

  while (!v7);
  return result;
}