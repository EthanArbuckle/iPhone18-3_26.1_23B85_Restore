uint64_t sub_1000436E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000435B4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100043FF0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for EventValue();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100043BD4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for EventValue();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100043854(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for EventValue();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100024248(&qword_100153488, &qword_100104688);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_100043BD4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for EventValue() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100043DC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000435B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100043FF0();
      goto LABEL_7;
    }

    sub_100043854(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1000435B4(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for EventValue();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100043F40(v12, a2, a3, a1, v18);
}

uint64_t sub_100043F40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for EventValue();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_100043FF0()
{
  v1 = v0;
  v36 = type metadata accessor for EventValue();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024248(&qword_100153488, &qword_100104688);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_100044270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_1001534A8, &qword_1001046A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000435B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004436C()
{
  result = qword_100152F28;
  if (!qword_100152F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152F28);
  }

  return result;
}

uint64_t sub_1000443C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100044480(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100133F18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000444CC(uint64_t *a1)
{
  v3 = sub_100024248(&qword_1001534C8, &qword_100104748);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_10004642C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[30] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100024248(&qword_1001534B8, &qword_100104740);
    v10[29] = 2;
    sub_100046480(&unk_1001534D0, sub_1000464F8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100024E14(a1);
  return v8;
}

uint64_t sub_100044734(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v25[1] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v26 = sub_10003C07C(a1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for JSONEncoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100024248(&qword_100152F50, &qword_100104318);
  v17 = *(v6 + 72);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001042A0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v27 = v19;
  sub_10004617C(&qword_100152F58, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100024248(&qword_100152F60, &unk_100104320);
  sub_100045F80(&qword_100152F68, &qword_100152F60, &unk_100104320);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v27 = v26;
  v28 = v9;
  v29 = v11;
  v30 = v13;
  sub_100046340();
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v22 = v21;

  static String.Encoding.utf8.getter();
  v23 = String.init(data:encoding:)();
  sub_100026FB0(v20, v22);

  return v23;
}

uint64_t sub_100044A18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_100024248(&unk_100153470, &qword_100104668);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  if (a3)
  {
    v36 = a3;

    swift_errorRetain();
    sub_100024248(&qword_100152630, &qword_100103210);
    sub_100033178(0, &qword_100153480, NSError_ptr);
    if (swift_dynamicCast())
    {
      v17 = v37;
      sub_100044734(v37);
      if (v18)
      {
        EventValue.init(stringLiteral:)();
        v19 = type metadata accessor for EventValue();
        (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
        sub_10003C8CC(v15, 0x726F727265, 0xE500000000000000);
      }
    }
  }

  else
  {
  }

  if (qword_100157678 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100025AE0(v20, qword_100157680);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v23 = 136315394;
    *(v23 + 4) = sub_100021D24(a1, a2, &v37);
    *(v23 + 12) = 2080;
    swift_beginAccess();
    v24 = *(v16 + 16);

    type metadata accessor for EventValue();
    v25 = Dictionary.description.getter();
    v26 = v11;
    v27 = a1;
    v29 = v28;

    v30 = sub_100021D24(v25, v29, &v37);
    a1 = v27;
    v11 = v26;

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  static TaskPriority.background.getter();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a1;
  v32[5] = a2;
  v32[6] = v16;

  sub_10003CEA4(0, 0, v11, &unk_100104678, v32);
}

uint64_t sub_100044E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTDeps(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTDeps(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100045004(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10004506C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_10003EBC4(v3, v4, v5, v2);
}

uint64_t sub_100045100()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_10003FA34(v3, v4, v5, v2);
}

uint64_t sub_100045194()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000451DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_100040968(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100045284()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001CF5C;

  return sub_1000412B4(v3, v4, v5, v2);
}

uint64_t sub_100045320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045338(uint64_t a1)
{
  v2 = type metadata accessor for SWTDeps(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100045394()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000453CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000258C8;

  return sub_100042A18();
}

unint64_t sub_100045458()
{
  result = qword_100152FE8;
  if (!qword_100152FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152FE8);
  }

  return result;
}

unint64_t sub_1000454B0()
{
  result = qword_100152FF0;
  if (!qword_100152FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152FF0);
  }

  return result;
}

unint64_t sub_100045508()
{
  result = qword_100152FF8;
  if (!qword_100152FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152FF8);
  }

  return result;
}

uint64_t sub_100045570(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10004569C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100024248(&qword_100152F00, &qword_1001042C0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1000457B0()
{
  type metadata accessor for Application(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_100045BD8(319, &qword_100153058, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_100045A40(319, &qword_100153060);
        if (v3 <= 0x3F)
        {
          sub_1000459E0(319, &qword_100153068, &protocolRef_TransparencyConfigBagFetcher);
          if (v4 <= 0x3F)
          {
            sub_1000459E0(319, &qword_1001530D0, &protocolRef_SWTSettingsProtocol);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SWTFollowUp();
              if (v6 <= 0x3F)
              {
                sub_100033178(319, &qword_1001530D8, off_1001312F8);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for SWTPublicKeyBag();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for KTSWDB();
                    if (v9 <= 0x3F)
                    {
                      sub_100033178(319, &qword_1001530E0, TransparencyAnalytics_ptr);
                      if (v10 <= 0x3F)
                      {
                        sub_100045A40(319, &qword_1001530E8);
                        if (v11 <= 0x3F)
                        {
                          sub_100045A40(319, &qword_1001530F0);
                          if (v12 <= 0x3F)
                          {
                            sub_100045A9C();
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000459E0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100045A40(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100045A9C()
{
  if (!qword_1001530F8)
  {
    sub_1000242F4(&qword_100152F40, qword_1001042E8);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1001530F8);
    }
  }
}

void sub_100045B18()
{
  sub_100045BD8(319, &unk_100153218, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100045BD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100045C34()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SWTDeps(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100045D3C(uint64_t a1)
{
  if ([objc_opt_self() isAvailable])
  {
    v3 = *(*v1 + 192);

    v3(a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Software transparency unavailable, skipping milestone-refresh job", v5, 2u);
    }
  }
}

void sub_100045E4C(uint64_t a1)
{
  if ([objc_opt_self() isAvailable])
  {
    v3 = *(*v1 + 208);

    v3(a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Software transparency unavailable, skipping background 24h job", v5, 2u);
    }
  }
}

uint64_t sub_100045F80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100045FD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046014()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_1000417C4(v3, v4, v5, v2);
}

uint64_t sub_1000460A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000460E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000258C8;

  return sub_10003F750(a1, v1);
}

uint64_t sub_10004617C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000461C4()
{
  result = qword_100153468;
  if (!qword_100153468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153468);
  }

  return result;
}

uint64_t sub_100046218()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046250()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100046298()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001CF5C;

  return sub_10003CAA4(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_100046340()
{
  result = qword_1001578D0[0];
  if (!qword_1001578D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001578D0);
  }

  return result;
}

uint64_t sub_100046394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000463DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004642C()
{
  result = qword_1001579E0;
  if (!qword_1001579E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001579E0);
  }

  return result;
}

uint64_t sub_100046480(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(&qword_1001534B8, &qword_100104740);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000464F8()
{
  result = qword_1001579E8[0];
  if (!qword_1001579E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001579E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000466A0()
{
  result = qword_100157B70[0];
  if (!qword_100157B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100157B70);
  }

  return result;
}

unint64_t sub_1000466F8()
{
  result = qword_100157C80;
  if (!qword_100157C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157C80);
  }

  return result;
}

unint64_t sub_100046750()
{
  result = qword_100157C88[0];
  if (!qword_100157C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100157C88);
  }

  return result;
}

id sub_1000467E0()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

void sub_100046824(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_10004686C()
{
  v0 = swift_allocObject();
  sub_1000468A4();
  return v0;
}

uint64_t sub_1000468A4()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() defaultSessionConfiguration];
  [v1 setDiscretionary:0];
  [v1 setHTTPCookieStorage:0];
  [v1 setURLCache:0];
  [v1 set_alternativeServicesStorage:0];
  v2 = [objc_opt_self() sessionWithConfiguration:v1];

  *(v0 + 112) = v2;
  return v0;
}

uint64_t SWTURLSession.URLSessionMaker.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000469D4()
{
  type metadata accessor for SWTURLSession.URLSessionMaker();
  v0 = swift_allocObject();
  result = sub_1000468A4();
  static SWTURLSession.shared = v0;
  return result;
}

uint64_t *SWTURLSession.shared.unsafeMutableAddressor()
{
  if (qword_100157D10 != -1)
  {
    swift_once();
  }

  return &static SWTURLSession.shared;
}

uint64_t static SWTURLSession.shared.getter()
{
  if (qword_100157D10 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100046AC0()
{
  result = qword_1001534E0;
  if (!qword_1001534E0)
  {
    type metadata accessor for SWTURLSession.URLSessionMaker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001534E0);
  }

  return result;
}

unint64_t sub_100046B74(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      _StringGuts.grow(_:)(32);

      v5 = 0xD00000000000001ELL;
LABEL_8:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      return v5;
    }

    _StringGuts.grow(_:)(22);

    v2 = 0xD000000000000014;
LABEL_7:
    v5 = v2;
    goto LABEL_8;
  }

  if (a2 == 2)
  {
    _StringGuts.grow(_:)(19);

    v2 = 0xD000000000000011;
    goto LABEL_7;
  }

  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100046CEC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      return 5;
    }

    else if (a1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (a2)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100046D2C(uint64_t a1)
{
  v2 = sub_10004C4C4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100046D68(uint64_t a1)
{
  v2 = sub_10004C4C4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100046DB0()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return 5;
    }

    else if (*v0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (*(v0 + 8))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100046E14()
{
  v1 = SWTURLSession.shared.unsafeMutableAddressor();
  v2 = *v1;
  v0[3] = *v1;
  v3 = (*v2 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[4] = *(*v2 + 96);
  v0[5] = v3;

  return _swift_task_switch(sub_100046EA8, v2, 0);
}

uint64_t sub_100046EA8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 48) = (*(v0 + 32))();

  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100046F64;
  v5 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v5, 0);
}

uint64_t sub_100046F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 56);
  v10 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1000470D8, 0, 0);
  }

  else
  {

    v11 = *(v10 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_1000470D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_10004715C()
{
  v1 = SWTURLSession.shared.unsafeMutableAddressor();
  v2 = *v1;
  v0[3] = *v1;
  v3 = (*v2 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[4] = *(*v2 + 96);
  v0[5] = v3;

  return _swift_task_switch(sub_1000471F0, v2, 0);
}

uint64_t sub_1000471F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 48) = (*(v0 + 32))();

  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000472AC;
  v5 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v5, 0);
}

uint64_t sub_1000472AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 56);
  v10 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_10004C864, 0, 0);
  }

  else
  {

    v11 = *(v10 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_100047420()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D200);
  sub_100025AE0(v0, qword_10015D200);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000474A4()
{
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D200);
}

uint64_t sub_100047508@<X0>(uint64_t a1@<X8>)
{
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100047608()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_100047650(int a1)
{
  strcpy(v3, "SWTFetchCnst-");
  v1._countAndFlagsBits = Application.description.getter(a1);
  String.append(_:)(v1);

  return v3[0];
}

uint64_t sub_1000476B4()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1000476E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_100037608(a4, a9 + 24);
  *(a9 + 104) = a5;
  sub_100037608(a6, a9 + 64);
  *(a9 + 112) = a7;

  return sub_100037608(a8, a9 + 120);
}

uint64_t sub_100047768(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v42 = sub_10004CE5C(a1);
  if (!v13)
  {
    sub_10004C0D0();
    swift_allocError();
    *v19 = a1;
    *(v19 + 8) = 1;
    return swift_willThrow();
  }

  v14 = v13;
  v39 = v10;
  v40 = v6;
  v15 = v3[2];
  v41 = v5;
  if (a1)
  {
    result = [v15 patLogBeginningMs];
    if ((result & 0x8000000000000000) == 0)
    {
      v17 = result;
      v18 = 2;
      goto LABEL_8;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = [v15 tltLogBeginningMs];
  if (result < 0)
  {
    goto LABEL_15;
  }

  v17 = result;
  v18 = 3;
LABEL_8:
  v21 = v3[6];
  v20 = v3[7];
  sub_100026F6C(v3 + 3, v21);
  v22 = (*(v20 + 136))(v42, v14, v17, v18, 1, 1, 1, v21, v20);
  if (v2)
  {
  }

  v23 = *(v22 + 16);
  v38 = v18;
  if (v23)
  {
    v24 = *(v22 + 8 * v23 + 24);
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 == 0;

  Date.init(timeIntervalSinceNow:)();
  v26 = v3[6];
  v27 = v3[7];
  sub_100026F6C(v3 + 3, v26);
  v35 = v24;
  v28 = v42;
  (*(v27 + 88))(v42, v14, v17, v38, v12, 1, 1, 1, v35, v25, v26, v27);
  v37 = v12;
  v29 = v39;
  Date.init(timeIntervalSinceNow:)();
  v31 = v3[6];
  v30 = v3[7];
  sub_100026F6C(v3 + 3, v31);
  v32 = v29;
  (*(v30 + 96))(v28, v14, v17, v38, v29, v31, v30);

  v33 = v41;
  v34 = *(v40 + 8);
  v34(v32, v41);
  return (v34)(v37, v33);
}

uint64_t sub_100047AC0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 1);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 urlForKey:v8];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = objc_allocWithZone(NSMutableURLRequest);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    v14 = [v10 initWithURL:v12];

    v15 = *v1;
    sub_1000B738C(1);
    if (sub_10002AAF4([v7 currentEnvironment]))
    {
      [v14 _setPrivacyProxyFailClosed:1];
      if (qword_100157E20 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100025AE0(v16, qword_10015D200);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Enforcing privacy proxy", v19, 2u);
      }
    }

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_10004C0D0();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_100047D80()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_10004CE5C(v4);
  if (!v6)
  {
    sub_10004C0D0();
    swift_allocError();
    *v15 = v4;
    *(v15 + 8) = 1;
    swift_willThrow();
    return v2;
  }

  v7 = v5;
  v8 = v6;
  v73 = v4;
  v10 = v3[6];
  v9 = v3[7];
  sub_100026F6C(v3 + 3, v10);
  v11 = v3[2];
  v12 = [v11 patLogBeginningMs];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v14 = (*(v9 + 136))(v7, v8, v12, v13, 2, 1, 1, v10, v9);
  if (!v1)
  {
    v71 = v13;
    v74 = v14;

    sub_10004B31C(&v74);

    v17 = *(v74 + 2);
    if (!v17)
    {

      if (qword_100157E20 == -1)
      {
LABEL_14:
        v22 = type metadata accessor for Logger();
        sub_100025AE0(v22, qword_10015D200);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v23, v24))
        {
LABEL_17:

          return 0;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "No pending PAT revisions";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

        goto LABEL_17;
      }

LABEL_62:
      swift_once();
      goto LABEL_14;
    }

    v66 = v74;
    v19 = v3[6];
    v18 = v3[7];
    sub_100026F6C(v3 + 3, v19);
    v20 = [v11 patLogBeginningMs];
    if ((v20 & 0x8000000000000000) != 0)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v13 = v13;
    v21 = (*(v18 + 136))(v7, v8, v20, v13, 1, 1, 1, v19, v18);
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = *(v21 + 8 * v27 + 24);
    }

    else
    {

      if (v17 == 1)
      {

        if (qword_100157E20 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100025AE0(v29, qword_10015D200);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_17;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "No verified revision and only one pending PAT revision";
        goto LABEL_16;
      }

      v28 = 0;
    }

    v30 = v27 == 0;
    v31 = v3[1];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 uintegerForKey:v32];

    v34 = sub_10004BD78(v66, v33, v28, v30);
    if (qword_100157E20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100025AE0(v35, qword_10015D200);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    v70 = v34;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74 = v39;
      *v38 = 136315138;
      sub_100024248(&qword_1001535B0, &qword_100104D60);
      v40 = Array.description.getter();
      v42 = sub_100021D24(v40, v41, &v74);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Generating requests for %s", v38, 0xCu);
      sub_100024E14(v39);
    }

    v43 = v73;
    v69 = v34[2];
    if (!v69)
    {

      v2 = _swiftEmptyArrayStorage;
LABEL_54:

      return v2;
    }

    v44 = 0;
    v68 = v34 + 4;
    v72 = _swiftEmptyArrayStorage;
    v67 = kTransparencyProtocolVersion;
    while (v44 < v34[2])
    {
      v45 = v68[v44];
      v46 = objc_allocWithZone(ConsistencyProofRequest);

      v47 = [v46 init];
      [v47 setVersion:v67];
      [v47 setLogType:v13];
      if (v43)
      {
        [v47 setApplication:v43];
      }

      v48 = *(v45 + 16);
      if (v48)
      {
        v49 = (v45 + 40);
        v50 = 5;
        while (1)
        {
          if (v50 - 5 >= v48)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v50 - 5 >= v48 - 1)
          {
            goto LABEL_46;
          }

          v51 = *(v49 - 1);
          v52 = [objc_allocWithZone(ConsistencyProofRequest_LogConsistencyRequest) init];
          if (v51 < 0)
          {
            goto LABEL_56;
          }

          v53 = v52;
          v54 = v50 - 4;
          [v52 setStartRevision:v51];
          if ((v50 - 4) >= *(v45 + 16))
          {
            goto LABEL_57;
          }

          if ((*v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          [v53 setEndRevision:?];
          v55 = [v47 requestsArray];
          if (!v55)
          {
            break;
          }

          v56 = v55;
          [v55 addObject:v53];

          v48 = *(v45 + 16);
          ++v50;
          ++v49;
          if (v54 == v48)
          {
            goto LABEL_46;
          }
        }

        __break(1u);

        __break(1u);
        return result;
      }

LABEL_46:

      v57 = [v47 data];
      if (v57)
      {
        v58 = v57;
        v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_10004B124(0, *(v72 + 2) + 1, 1, v72);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        v72 = v62;
        v13 = v71;
        if (v64 >= v63 >> 1)
        {
          v72 = sub_10004B124((v63 > 1), v64 + 1, 1, v72);
        }

        *(v72 + 2) = v64 + 1;
        v65 = &v72[16 * v64];
        *(v65 + 4) = v59;
        *(v65 + 5) = v61;
      }

      else
      {

        v13 = v71;
      }

      ++v44;
      v34 = v70;
      v43 = v73;
      if (v44 == v69)
      {

        v2 = v72;
        goto LABEL_54;
      }
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  return v2;
}

uint64_t sub_10004858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 400) = a4;
  *(v6 + 408) = v5;
  *(v6 + 520) = a5;
  *(v6 + 384) = a2;
  *(v6 + 392) = a3;
  *(v6 + 376) = a1;
  v7 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  *(v6 + 416) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 424) = v8;
  v9 = *(v8 - 8);
  *(v6 + 432) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v6 + 448) = v11;
  v12 = *(v11 - 8);
  *(v6 + 456) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_1000486EC, 0, 0);
}

uint64_t sub_1000486EC()
{
  v24 = v0;
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = type metadata accessor for Logger();
  *(v0 + 472) = sub_100025AE0(v2, qword_10015D200);
  sub_10004C124(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 376);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315394;
    v8 = Application.description.getter(*(v0 + 16));
    v10 = v9;
    sub_10004C15C(v0 + 16);
    v11 = sub_100021D24(v8, v10, &v23);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting %s consistency chunk %ld", v6, 0x16u);
    sub_100024E14(v7);
  }

  else
  {

    sub_10004C15C(v0 + 16);
  }

  v12 = *(v0 + 464);
  v13 = *(v0 + 408);
  sub_100047AC0();
  v14 = *(v0 + 408);
  sub_100027004(*(v0 + 384), *(v0 + 392));
  URLRequest.httpBody.setter();
  v15 = v14[11];
  v16 = v14[12];
  sub_100026F6C(v14 + 8, v15);
  v17 = *(v16 + 8);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 480) = v19;
  *v19 = v0;
  v19[1] = sub_100048A18;
  v20 = *(v0 + 464);

  return v22(v20, v15, v16);
}

uint64_t sub_100048A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 480);
  v9 = *v4;
  v5[61] = a1;
  v5[62] = a2;
  v5[63] = a3;
  v5[64] = v3;

  if (v3)
  {
    v7 = sub_100049188;
  }

  else
  {
    v7 = sub_100048B30;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100048B30()
{
  v88 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);
  static Date.now.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = *(v0 + 504);
  if (!v3)
  {
    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
    v14 = *(v0 + 456);
    v15 = *(v0 + 440);
    v79 = *(v0 + 448);
    v83 = *(v0 + 464);
    v17 = *(v0 + 424);
    v16 = *(v0 + 432);
    sub_10004C0D0();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 3;
    swift_willThrow();
    sub_100026FB0(v12, v13);

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v83, v79);
LABEL_13:
    v54 = *(v0 + 464);
    v55 = *(v0 + 440);
    v56 = *(v0 + 416);

    v57 = *(v0 + 8);

    return v57();
  }

  v5 = v3;
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 valueForHTTPHeaderField:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x3E4853206F6E3CLL;
  }

  v19 = *(v0 + 504);
  v20 = *(v0 + 472);
  sub_10004C124(*(v0 + 408), v0 + 176);
  v21 = v19;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 504);
  v26 = &stru_10014B000;
  if (v24)
  {
    v84 = *(v0 + 376);
    v27 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v27 = 134218754;
    *(v27 + 4) = [v5 statusCode];

    *(v27 + 12) = 2080;
    v28 = Application.description.getter(*(v0 + 176));
    v29 = v9;
    v31 = v30;
    sub_10004C15C(v0 + 176);
    v32 = sub_100021D24(v28, v31, v87);
    v9 = v29;
    v26 = &stru_10014B000;

    *(v27 + 14) = v32;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v84;
    *(v27 + 32) = 2080;
    *(v27 + 34) = sub_100021D24(v9, v11, v87);
    _os_log_impl(&_mh_execute_header, v22, v23, "Received %ld response for %s consistency chunk %ld with %s", v27, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10004C15C(v0 + 176);
  }

  if ([v5 v26[38].name] != 200)
  {
    v45 = v26;
    v47 = *(v0 + 496);
    v46 = *(v0 + 504);
    v48 = *(v0 + 488);
    v49 = *(v0 + 456);
    v81 = *(v0 + 448);
    v86 = *(v0 + 464);
    v77 = *(v0 + 440);
    v51 = *(v0 + 424);
    v50 = *(v0 + 432);

    v52 = [v5 v45[38].name];
    sub_10004C0D0();
    swift_allocError();
    *v53 = v52;
    *(v53 + 8) = 0;
    swift_willThrow();
    sub_100026FB0(v48, v47);

    (*(v50 + 8))(v77, v51);
    (*(v49 + 8))(v86, v81);
    goto LABEL_13;
  }

  v85 = v11;
  v33 = *(v0 + 512);
  v35 = *(v0 + 488);
  v34 = *(v0 + 496);
  objc_allocWithZone(ConsistencyProofResponse);
  sub_100027004(v35, v34);
  v36 = sub_1000330B8();
  if (v33)
  {
    v38 = *(v0 + 496);
    v37 = *(v0 + 504);
    v39 = *(v0 + 488);
    v40 = *(v0 + 456);
    v80 = *(v0 + 464);
    v42 = *(v0 + 440);
    v41 = *(v0 + 448);
    v44 = *(v0 + 424);
    v43 = *(v0 + 432);
    sub_100026FB0(v39, v38);
    sub_100026FB0(v39, v38);

    (*(v43 + 8))(v42, v44);
    (*(v40 + 8))(v80, v41);
    goto LABEL_13;
  }

  v59 = v36;
  v74 = *(v0 + 496);
  v75 = *(v0 + 504);
  v60 = *(v0 + 456);
  v76 = *(v0 + 448);
  v78 = *(v0 + 464);
  v72 = *(v0 + 440);
  v73 = *(v0 + 488);
  v82 = v9;
  v61 = *(v0 + 424);
  v62 = *(v0 + 432);
  v64 = *(v0 + 408);
  v63 = *(v0 + 416);
  v65 = *(v0 + 520);
  v66 = *(v0 + 400);
  sub_100026FB0(v73, v74);
  v67 = *v64;
  LOBYTE(v87[0]) = 0;
  ConsistencyProofResponse.expectedApplication.setter(v67);
  v68 = 2;
  if (!v67)
  {
    v68 = 3;
  }

  LOBYTE(v87[0]) = 0;
  ConsistencyProofResponse.expectedLogType.setter(v68);
  ConsistencyProofResponse.startRevision.setter(v66, v65 & 1);
  v69 = *(v64 + 2);
  v70 = v69;
  ConsistencyProofResponse.keyBag.setter(v69);
  sub_1000331C0((v64 + 6), v0 + 336);
  sub_10002F0C0(v0 + 336);
  (*(v62 + 16))(v63, v72, v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  ConsistencyProofResponse.receiptTime.setter(v63);
  sub_100026FB0(v73, v74);

  (*(v62 + 8))(v72, v61);
  (*(v60 + 8))(v78, v76);

  v71 = *(v0 + 8);

  return v71(v59, v82, v85);
}

uint64_t sub_100049188()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  v1 = v0[64];
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[52];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100049244()
{
  v1 = v0[2];
  v2 = sub_100047D80();
  v0[3] = v2;
  if (v2)
  {
    v6 = v0[2];
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = swift_task_alloc();
    v0[4] = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    *(v10 + 32) = v9 & 1;
    *(v10 + 40) = v6;
    v11 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    v12[1] = sub_1000493B8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v12);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000493B8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1000494F4;
  }

  else
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);

    v4 = sub_1000494DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000494F4()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100049560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 401) = a5;
  *(v6 + 432) = a4;
  *(v6 + 440) = a6;
  *(v6 + 416) = a2;
  *(v6 + 424) = a3;
  v7 = sub_100024248(&qword_1001535C0, &unk_100104BC8);
  *(v6 + 448) = v7;
  v8 = *(v7 - 8);
  *(v6 + 456) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 464) = swift_task_alloc();
  v10 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100049678, 0, 0);
}

uint64_t sub_100049678()
{
  v1 = *(v0 + 424);
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = type metadata accessor for TaskPriority();
    v3 = 0;
    v4 = *(v2 - 8);
    v39 = *(v4 + 56);
    v38 = (v4 + 48);
    v37 = (v4 + 8);
    v5 = (v1 + 40);
    do
    {
      v8 = *(v0 + 472);
      v9 = *(v0 + 480);
      v10 = v3;
      v45 = *(v0 + 401);
      v11 = *(v0 + 440);
      v41 = *(v0 + 424);
      v42 = *(v0 + 432);
      v43 = v5;
      v13 = *(v5 - 1);
      v12 = *v5;
      v39(v9, 1, 1, v2);
      sub_10004C124(v11, v0 + 16);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 128);
      *(v14 + 128) = *(v0 + 112);
      *(v14 + 144) = v16;
      v17 = *(v0 + 160);
      *(v14 + 160) = *(v0 + 144);
      *(v14 + 176) = v17;
      v18 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v18;
      v19 = *(v0 + 96);
      *(v14 + 96) = *(v0 + 80);
      *(v14 + 112) = v19;
      v20 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v20;
      v44 = v10;
      *(v14 + 192) = v10;
      *(v14 + 200) = v13;
      *(v14 + 208) = v12;
      *(v14 + 216) = v41;
      *(v14 + 224) = v42;
      *(v14 + 232) = v45 & 1;
      sub_100025834(v9, v8, &unk_100152620, &unk_1001031E0);
      LODWORD(v8) = (*v38)(v8, 1, v2);
      sub_100027004(v13, v12);
      v46 = v13;
      v21 = v13;
      v22 = v12;
      sub_100027004(v21, v12);

      v23 = *(v0 + 472);
      if (v8 == 1)
      {
        sub_10002533C(*(v0 + 472), &unk_100152620, &unk_1001031E0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v37)(v23, v2);
      }

      if (*v15)
      {
        v24 = *(v14 + 24);
        v25 = *v15;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = **(v0 + 416);

      if (v28 | v26)
      {
        v6 = v0 + 336;
        *(v0 + 336) = 0;
        *(v0 + 344) = 0;
        *(v0 + 352) = v26;
        *(v0 + 360) = v28;
      }

      else
      {
        v6 = 0;
      }

      v3 = v44 + 1;
      v7 = *(v0 + 480);
      v5 = v43 + 2;
      *(v0 + 368) = 1;
      *(v0 + 376) = v6;
      *(v0 + 384) = v29;
      swift_task_create();

      sub_100026FB0(v46, v22);
      sub_10002533C(v7, &unk_100152620, &unk_1001031E0);
    }

    while (v40 != v44 + 1);
  }

  v30 = *(v0 + 464);
  v31 = **(v0 + 416);
  sub_100024248(&qword_100152630, &qword_100103210);
  ThrowingTaskGroup.makeAsyncIterator()();
  v32 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v33 = swift_task_alloc();
  *(v0 + 488) = v33;
  *v33 = v0;
  v33[1] = sub_100049A60;
  v34 = *(v0 + 464);
  v35 = *(v0 + 448);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 392, 0, 0, v35, v0 + 408);
}

uint64_t sub_100049A60()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_10004A094;
  }

  else
  {
    v3 = sub_100049B74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100049B74()
{
  v31 = v0;
  if (*(v0 + 400))
  {
    v1 = *(v0 + 496);
    v2 = *(v0 + 440);
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
    sub_100047768(*v2);
    if (v1)
    {
      if (qword_100157E20 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100025AE0(v3, qword_10015D200);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v4, v5, "PAT garbage collection failed: %@", v6, 0xCu);
        sub_10002533C(v7, &qword_100153450, &unk_100104140);
      }

      else
      {
      }
    }

    v24 = *(v0 + 440);
    sub_100047768(0);
    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    v27 = *(v0 + 464);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v9 = *(v0 + 392);
    if (qword_100157E20 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 440);
    v11 = type metadata accessor for Logger();
    sub_100025AE0(v11, qword_10015D200);
    sub_10004C124(v10, v0 + 176);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136446466;
      v16 = Application.description.getter(*(v0 + 176));
      v18 = v17;
      sub_10004C15C(v0 + 176);
      v19 = sub_100021D24(v16, v18, &v30);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v12, v13, "Verified %{public}s consistency proof chunk %ld", v14, 0x16u);
      sub_100024E14(v15);
    }

    else
    {

      sub_10004C15C(v0 + 176);
    }

    v20 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v21 = swift_task_alloc();
    *(v0 + 488) = v21;
    *v21 = v0;
    v21[1] = sub_100049A60;
    v22 = *(v0 + 464);
    v23 = *(v0 + 448);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 392, 0, 0, v23, v0 + 408);
  }
}

uint64_t sub_10004A094()
{
  v1 = v0[59];
  v2 = v0[60];
  (*(v0[57] + 8))(v0[58], v0[56]);
  v3 = v0[51];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 472) = v10;
  *(v7 + 368) = a7;
  *(v7 + 376) = v9;
  *(v7 + 352) = a5;
  *(v7 + 360) = a6;
  *(v7 + 336) = a1;
  *(v7 + 344) = a4;
  return _swift_task_switch(sub_10004A168, 0, 0);
}

uint64_t sub_10004A168()
{
  v1 = *(v0 + 472);
  *(v0 + 384) = static MachTime.current.getter();
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_10004A214;
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 344);

  return sub_10004858C(v6, v5, v3, v4, v1 & 1);
}

uint64_t sub_10004A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 392);
  v6 = *v4;
  v6[50] = a1;
  v6[51] = a2;
  v6[52] = a3;
  v6[53] = v3;

  if (v3)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_10004A34C, 0, 0);
  }
}

uint64_t sub_10004A34C()
{
  v94 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  MachTime.seconds.getter(*(v0 + 384));
  v3 = ConsistencyProofResponse.isNewEpoch()();
  if (v4)
  {
  }

  else if (v3)
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 400);

    v7 = ConsistencyProofResponse.keyBag.getter();
    if (v7)
    {
      v8 = v7;
      sub_10007F3F0();
    }

    v9 = *(*(v0 + 344) + 104);
    *(v0 + 432) = v9;
    if (!v9)
    {

      goto LABEL_28;
    }

    v10 = (*v9 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 440) = *(*v9 + 184);
    *(v0 + 448) = v10;
    v11 = sub_10004AD80;
    v12 = 0;

    return _swift_task_switch(v11, v9, v12);
  }

  v13 = *(v0 + 400);
  ConsistencyProofResponse.verify()();
  if (!v14)
  {
    if (qword_100157E20 == -1)
    {
LABEL_16:
      v31 = *(v0 + 416);
      v32 = *(v0 + 344);
      v33 = type metadata accessor for Logger();
      sub_100025AE0(v33, qword_10015D200);
      sub_10004C124(v32, v0 + 176);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 416);
      if (v36)
      {
        v38 = *(v0 + 408);
        v39 = *(v0 + 352);
        v40 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v40 = 136315650;
        v41 = Application.description.getter(*(v0 + 176));
        v43 = v42;
        sub_10004C15C(v0 + 176);
        v44 = sub_100021D24(v41, v43, v93);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v39;
        *(v40 + 22) = 2080;
        v45 = sub_100021D24(v38, v37, v93);

        *(v40 + 24) = v45;
        _os_log_impl(&_mh_execute_header, v34, v35, "%s consistency chunk %ld with %s verified", v40, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v67 = *(v0 + 416);

        sub_10004C15C(v0 + 176);
      }

      v68 = *(v0 + 344);
      v69 = *(v68 + 14);
      if (v69)
      {
        v70 = *v68;
        strcpy(v93, "SWTFetchCnst-");
        HIWORD(v93[1]) = -4864;
        v71._countAndFlagsBits = Application.description.getter(v70);
        String.append(_:)(v71);

        v72 = String._bridgeToObjectiveC()();

        [v69 logResultForEvent:v72 hardFailure:0 result:0];

        v68 = *(v0 + 344);
      }

      v74 = *(v68 + 18);
      v73 = *(v68 + 19);
      sub_100026F6C(v68 + 15, v74);
      sub_100024248(&qword_1001535C8, &qword_100104BE8);
      v75 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
      v76 = *(*(v75 - 8) + 72);
      v77 = (*(*(v75 - 8) + 80) + 32) & ~*(*(v75 - 8) + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_100104980;
      v79 = (v78 + v77);
      v80 = *(v75 + 48);
      *v79 = 7368801;
      v79[1] = 0xE300000000000000;
      v81 = *v68;
      EventValue.init(integerLiteral:)();
      v82 = (v79 + v76);
      v83 = *(v75 + 48);
      *v82 = 0x6D69546863746566;
      v82[1] = 0xE900000000000065;
      EventValue.init(floatLiteral:)();
      v84 = (v79 + 2 * v76);
      v85 = *(v75 + 48);
      *v84 = 7761509;
      v84[1] = 0xE300000000000000;
      v11 = [*(v68 + 1) currentEnvironment];
      if ((v11 & 0x8000000000000000) == 0)
      {
        v90 = *(v0 + 400);
        EventValue.init(integerLiteral:)();
        v86 = sub_10004C674(v78);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        (*(v73 + 8))(0x6863746566747753, 0xEC00000074736E63, 0, v86, v74, v73);

LABEL_28:
        **(v0 + 336) = *(v0 + 352);
        v66 = *(v0 + 8);
        goto LABEL_29;
      }

      __break(1u);
      return _swift_task_switch(v11, v9, v12);
    }

LABEL_34:
    swift_once();
    goto LABEL_16;
  }

  v15 = v14;
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 416);
  v17 = *(v0 + 344);
  v18 = type metadata accessor for Logger();
  sub_100025AE0(v18, qword_10015D200);
  sub_10004C124(v17, v0 + 16);

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 416);
  if (v21)
  {
    v88 = *(v0 + 352);
    v91 = *(v0 + 408);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v23 = 136315906;
    v25 = Application.description.getter(*(v0 + 16));
    v27 = v26;
    sub_10004C15C(v0 + 16);
    v28 = sub_100021D24(v25, v27, v93);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v88;
    *(v23 + 22) = 2080;
    v29 = sub_100021D24(v91, v22, v93);

    *(v23 + 24) = v29;
    *(v23 + 32) = 2112;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 34) = v30;
    *v24 = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s consistency chunk %ld with %s failed verification %@", v23, 0x2Au);
    sub_10002533C(v24, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v46 = *(v0 + 416);

    sub_10004C15C(v0 + 16);
  }

  v47 = *(v0 + 344);
  v48 = *(v47 + 14);
  if (v48)
  {
    v49 = *v47;
    strcpy(v93, "SWTFetchCnst-");
    HIWORD(v93[1]) = -4864;
    v50._countAndFlagsBits = Application.description.getter(v49);
    String.append(_:)(v50);

    v51 = String._bridgeToObjectiveC()();

    v52 = _convertErrorToNSError(_:)();
    [v48 logResultForEvent:v51 hardFailure:1 result:v52];

    v47 = *(v0 + 344);
  }

  v89 = *(v47 + 19);
  v92 = *(v47 + 18);
  sub_100026F6C(v47 + 15, v92);
  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v53 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v54 = *(*(v53 - 8) + 72);
  v55 = (*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100104980;
  v57 = (v56 + v55);
  v58 = *(v53 + 48);
  *v57 = 7368801;
  v57[1] = 0xE300000000000000;
  v59 = *v47;
  swift_errorRetain();
  EventValue.init(integerLiteral:)();
  v60 = (v57 + v54);
  v61 = *(v53 + 48);
  *v60 = 0x6D69546863746566;
  v60[1] = 0xE900000000000065;
  EventValue.init(floatLiteral:)();
  v62 = (v57 + 2 * v54);
  v63 = *(v53 + 48);
  *v62 = 7761509;
  v62[1] = 0xE300000000000000;
  if (([*(v47 + 1) currentEnvironment] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v64 = *(v0 + 400);
  EventValue.init(integerLiteral:)();
  v65 = sub_10004C674(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v89 + 8))(0x6863746566747753, 0xEC00000074736E63, v15, v65, v92);

  swift_willThrow();

  v66 = *(v0 + 8);
LABEL_29:

  return v66();
}

uint64_t sub_10004AD80()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  (*(v0 + 440))(1);
  v3 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
  *(v0 + 456) = *(*v2 + 184);
  *(v0 + 464) = v3;
  v4 = *(v0 + 432);

  return _swift_task_switch(sub_10004AE0C, v4, 0);
}

uint64_t sub_10004AE0C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  (*(v0 + 456))(3);

  return _swift_task_switch(sub_10004AE7C, 0, 0);
}

uint64_t sub_10004AE7C()
{
  **(v0 + 336) = *(v0 + 352);
  v1 = *(v0 + 8);

  return v1();
}

void *sub_10004AEEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_1001535E8, &qword_100104C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100024248(&qword_1001535B0, &qword_100104D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004B020(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_1001535E0, &qword_100105610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004B124(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_1001535D8, &unk_100106AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10004B230(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10004B020(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_10004B31C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10004BC60(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10004B520(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_10004B450(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_100024248(&qword_1001535E0, &qword_100105610);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10004B520(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10002D4E4(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10004BA6C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002C95C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_10002C95C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_10004BA6C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10004BA6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_10004BC74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_1001535E0, &qword_100105610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10004BD78(char *a1, int64_t a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    sub_100024248(&qword_1001535E8, &qword_100104C00);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_1001042A0;
    if (a4)
    {
      v27 = a1;

      sub_10004B31C(&v27);
    }

    else
    {
      sub_100024248(&qword_1001535E0, &qword_100105610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001042A0;
      *(inited + 32) = a3;
      v27 = a1;

      sub_10004B230(inited);

      sub_10004B31C(&v27);
    }

    v10[4] = v27;
    return v10;
  }

  v27 = a1;

  sub_10004B31C(&v27);
  v7 = v27;
  v8 = *(v27 + 2);
  if ((a4 & 1) == 0)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
LABEL_34:

    return &_swiftEmptyArrayStorage;
  }

  a3 = *(v27 + 4);
LABEL_8:
  if (a2 < 0)
  {
    goto LABEL_39;
  }

  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v8 <= a2)
    {
      v12 = (v7 + 16);

      v14 = v7;
      v13 = v8;
      goto LABEL_14;
    }

    sub_10004B450(v7, (v7 + 32), 0, (2 * a2) | 1);
    v12 = (v11 + 16);
    v8 = *(v11 + 16);
    v13 = *(v7 + 2);
    if (v13 < v8)
    {
      break;
    }

    v14 = v11;
LABEL_14:
    v15 = v13 - v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v7 + 3) >> 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v17 = *(v7 + 2) - v8;
      memmove(v7 + 32, &v7[8 * v8 + 32], 8 * v17);
      *(v7 + 2) = v17;
      goto LABEL_18;
    }

    if (v13 <= v15)
    {
      v24 = v13 - v8;
    }

    else
    {
      v24 = v13;
    }

    v7 = sub_10004B020(isUniquelyReferenced_nonNull_native, v24, 1, v7);
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_18:
    v18 = *v12;
    v19 = 32;
    while (v18)
    {
      v20 = *&v14[v19];
      v19 += 8;
      --v18;
      if (v20 == a3)
      {
        goto LABEL_23;
      }
    }

    sub_100024248(&qword_1001535E0, &qword_100105610);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1001042A0;
    *(v21 + 32) = a3;
    v27 = v14;
    sub_10004B230(v21);

    sub_10004B31C(&v27);

    v14 = v27;
LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10004AEEC(0, v10[2] + 1, 1, v10);
    }

    v23 = v10[2];
    v22 = v10[3];
    if (v23 >= v22 >> 1)
    {
      v10 = sub_10004AEEC((v22 > 1), v23 + 1, 1, v10);
    }

    v10[2] = v23 + 1;
    v10[v23 + 4] = v14;
    v8 = *(v7 + 2);
    if (!v8)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_10004C0D0()
{
  result = qword_1001535A8;
  if (!qword_1001535A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535A8);
  }

  return result;
}

uint64_t sub_10004C18C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000258C8;

  return sub_100049560(v9, a2, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for ConsistencyDownloadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ConsistencyDownloadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10004C2DC(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10004C2F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 sub_10004C32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10004C358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10004C3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ATLeafDataError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004C42C(uint64_t *a1, int a2)
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

uint64_t sub_10004C474(uint64_t result, int a2, int a3)
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

unint64_t sub_10004C4C4()
{
  result = qword_1001535B8;
  if (!qword_1001535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535B8);
  }

  return result;
}

uint64_t sub_10004C518()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100024E14((v0 + 56));
  sub_100024E14((v0 + 96));
  v2 = *(v0 + 136);

  sub_100024E14((v0 + 152));
  sub_100026FB0(*(v0 + 200), *(v0 + 208));
  v3 = *(v0 + 216);

  return _swift_deallocObject(v0, 233, 7);
}

uint64_t sub_10004C598(uint64_t a1)
{
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 224);
  v8 = *(v1 + 232);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001CF5C;

  return sub_10004A130(a1, v9, v10, v1 + 32, v4, v5, v6);
}

unint64_t sub_10004C674(uint64_t a1)
{
  v2 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100024248(&qword_100153488, &qword_100104688);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100025834(v10, v6, &qword_1001535D0, &unk_100104BF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1000435B4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for EventValue();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10004C8A4(uint64_t a1)
{
  v2 = sub_10004CE04();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004C8E0(uint64_t a1)
{
  v2 = sub_10004CE04();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004C930(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = static SerializationVersion.allCases.getter();
  v8 = *v3;
  v9 = sub_10004CCAC(*v3, v7, sub_10002D804);

  if (v9)
  {
    v10 = static ATLeafType.allCases.getter();
    v11 = v3[1];
    v12 = sub_10004CCAC(v11, v10, sub_10002D8E0);

    if (!v12)
    {
      sub_10004CC58();
      swift_allocError();
      *v18 = v11;
      *(v18 + 8) = 0;
      v19 = 1;
LABEL_52:
      *(v18 + 16) = v19;
      return swift_willThrow();
    }

    result = *(v3 + 3);
    v14 = *(v3 + 4);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_15;
      }

      v21 = *(result + 16);
      v20 = *(result + 24);
      v22 = __OFSUB__(v20, v21);
      v16 = v20 - v21;
      if (!v22)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(v14);
      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_56;
    }

    v16 = HIDWORD(result) - result;
LABEL_15:
    v23 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v23)
      {
        if (v16 != BYTE6(a2))
        {
          goto LABEL_29;
        }

LABEL_22:
        result = sub_100027800(result, v14, a1, a2);
        if (result)
        {
          v27 = *(v3 + 5);
          if (v27 > a3)
          {
            return result;
          }

          sub_10004CC58();
          swift_allocError();
          *v18 = v27;
          *(v18 + 8) = a3;
          v19 = 3;
        }

        else
        {
LABEL_40:
          sub_10004CC58();
          swift_allocError();
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = 4;
        }

        goto LABEL_52;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (v16 != HIDWORD(a1) - a1)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v23 != 2)
    {
      if (!v16)
      {
        goto LABEL_22;
      }

LABEL_29:
      if (v15 > 1)
      {
        goto LABEL_36;
      }

      if (!v15)
      {
        v28 = BYTE6(v14);
        if (v23 > 1)
        {
          while (v23 == 2)
          {
            v23 = *(a1 + 16);
            v15 = *(a1 + 24);
            a2 = v15 - v23;
            if (!__OFSUB__(v15, v23))
            {
              goto LABEL_51;
            }

            __break(1u);
LABEL_36:
            if (v15 == 2)
            {
              v30 = *(result + 16);
              v29 = *(result + 24);
              v28 = v29 - v30;
              if (__OFSUB__(v29, v30))
              {
                __break(1u);
                goto LABEL_40;
              }

LABEL_43:
              if (v23 <= 1)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v28 = 0;
              if (v23 <= 1)
              {
                goto LABEL_44;
              }
            }
          }

          a2 = 0;
          goto LABEL_51;
        }

LABEL_44:
        if (!v23)
        {
          a2 = BYTE6(a2);
LABEL_51:
          sub_10004CC58();
          swift_allocError();
          *v18 = v28;
          *(v18 + 8) = a2;
          v19 = 2;
          goto LABEL_52;
        }

        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          a2 = HIDWORD(a1) - a1;
          goto LABEL_51;
        }

LABEL_59:
        __break(1u);
        return result;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        v28 = HIDWORD(result) - result;
        goto LABEL_43;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v22 = __OFSUB__(v24, v25);
    v26 = v24 - v25;
    if (!v22)
    {
      if (v16 == v26)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_10004CC58();
  swift_allocError();
  *v17 = v8;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_10004CC58()
{
  result = qword_1001535F0;
  if (!qword_1001535F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535F0);
  }

  return result;
}

BOOL sub_10004CCAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = *v5++;
    a3();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v6 != 0;
}

uint64_t getEnumTagSinglePayload for ATLeafDataError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ATLeafDataError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_10004CDC4(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10004CDDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10004CE04()
{
  result = qword_1001535F8;
  if (!qword_1001535F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535F8);
  }

  return result;
}

uint64_t sub_10004CE5C(uint64_t a1)
{
  v2 = Application_EnumDescriptor();
  v3 = [v2 textFormatNameForValue:a1];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10004CEE0(uint64_t a1)
{
  v2 = sub_100056148();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004CF1C(uint64_t a1)
{
  v2 = sub_100056148();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004D1E4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10004D22C()
{
  v1 = *(v0 + 40);
  sub_100027004(v1, *(v0 + 48));
  return v1;
}

uint64_t KTSWDB.STHKey.description.getter()
{
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v8 = *(v0 + 24);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v9 = *(v0 + 16);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v10 = *(v0 + 32);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  return 776492115;
}

uint64_t sub_10004D384()
{
  v1 = *v0;
  v2 = 0x746163696C707061;
  v3 = 0x65707954676F6CLL;
  v4 = 0x6E6F697369766572;
  if (v1 != 3)
  {
    v4 = 0x4864616548676F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69676542676F6CLL;
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

uint64_t sub_10004D434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100053B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004D468(uint64_t a1)
{
  v2 = sub_100053DA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D4A4(uint64_t a1)
{
  v2 = sub_100053DA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KTSWDB.STHKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100024248(&qword_100153600, &qword_100104D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_100053DA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v18) = *(v3 + 6);
    v17[0] = 2;
    type metadata accessor for LogType(0);
    sub_1000547B0(&qword_100153608, 255, type metadata accessor for LogType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 5);
    v19 = v18;
    v17[23] = 4;
    sub_100053DF8(&v19, v17);
    sub_100053E54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026FB0(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t KTSWDB.STHKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v0[4]);
  v3 = v0[5];
  v4 = v0[6];

  return Data.hash(into:)();
}

Swift::Int KTSWDB.STHKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v0[4]);
  v3 = v0[5];
  v4 = v0[6];
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004D84C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double KTSWDB.STHKey.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100053EA8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_10004D8CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004D974()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);

  return Data.hash(into:)();
}

Swift::Int sub_10004D9FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004DAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s15swtransparencyd6KTSWDBC6STHKeyV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t sub_10004DB78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTSWDB.SignedLogHead() + 40);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10004DBF4(uint64_t a1)
{
  v3 = *(type metadata accessor for KTSWDB.SignedLogHead() + 40);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10004DCB8()
{
  v1 = (v0 + *(type metadata accessor for KTSWDB.SignedLogHead() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10004DCF8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KTSWDB.SignedLogHead() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10004DD88()
{
  v1 = v0 + *(type metadata accessor for KTSWDB.SignedLogHead() + 48);
  v2 = *v1;
  sub_100027004(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10004DDCC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for KTSWDB.SignedLogHead() + 48);
  result = sub_100026FB0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_10004DE5C()
{
  v1 = v0 + *(type metadata accessor for KTSWDB.SignedLogHead() + 52);
  v2 = *v1;
  sub_100027004(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10004DEA0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for KTSWDB.SignedLogHead() + 52);
  result = sub_100026FB0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_10004DF54(uint64_t a1)
{
  result = type metadata accessor for KTSWDB.SignedLogHead();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_10004DFF0(char a1)
{
  result = type metadata accessor for KTSWDB.SignedLogHead();
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_10004E068(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 6845555;
    v6 = 0x644965657274;
    if (a1 != 10)
    {
      v6 = 0x7473656C694D7369;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x5474706965636572;
    v8 = 0x746163696C707061;
    if (a1 != 7)
    {
      v8 = 0x4864616548676F6CLL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x6E69676542676F6CLL;
    v2 = 0x65707954676F6CLL;
    v3 = 0x6E6F697369766572;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000011;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
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

uint64_t sub_10004E218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000541FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004E24C(uint64_t a1)
{
  v2 = sub_100054748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004E288(uint64_t a1)
{
  v2 = sub_100054748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E2C8(void *a1)
{
  v3 = v1;
  v5 = sub_100024248(&qword_100153618, &qword_100104D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_100054748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = *v3;
  v28 = 0;
  type metadata accessor for KTResult(0);
  sub_1000547B0(&qword_100153620, 255, type metadata accessor for KTResult);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v26 = *(v3 + 8);
    v28 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 16);
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v26) = *(v3 + 24);
    v28 = 3;
    type metadata accessor for LogType(0);
    sub_1000547B0(&qword_100153608, 255, type metadata accessor for LogType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 32);
    LOBYTE(v26) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 40);
    v28 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = type metadata accessor for KTSWDB.SignedLogHead();
    v14 = v13[10];
    LOBYTE(v26) = 6;
    type metadata accessor for Date();
    sub_1000547B0(&qword_100153628, 255, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[11]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v26) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v13[12]);
    v19 = v18[1];
    v26 = *v18;
    v27 = v19;
    v28 = 8;
    sub_100027004(v26, v19);
    sub_100053E54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026FB0(v26, v27);
    v20 = (v3 + v13[13]);
    v21 = v20[1];
    v26 = *v20;
    v27 = v21;
    v28 = 9;
    sub_100027004(v26, v21);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026FB0(v26, v27);
    v22 = *(v3 + v13[14]);
    LOBYTE(v26) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + v13[15]);
    LOBYTE(v26) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10004E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v19 = type metadata accessor for KTSWDB.SignedLogHead();
  v20 = v19[10];
  v21 = type metadata accessor for Date();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a7, v21);
  v23 = (a9 + v19[11]);
  *v23 = a8;
  v23[1] = a10;
  v24 = (a9 + v19[12]);
  *v24 = a11;
  v24[1] = a12;
  v25 = (a9 + v19[13]);
  *v25 = a13;
  v25[1] = a14;
  *(a9 + v19[14]) = a15;
  *(a9 + v19[15]) = a16;
  return result;
}

uint64_t sub_10004E854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for Date();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024248(&qword_100153630, &qword_100104D40);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for KTSWDB.SignedLogHead();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v36 = a1;
  sub_100026F6C(a1, v17);
  sub_100054748();
  v35 = v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100024E14(v36);
  }

  v29 = v13;
  v30 = v16;
  v19 = v4;
  type metadata accessor for KTResult(0);
  v38 = 0;
  sub_1000547B0(&qword_100153638, 255, type metadata accessor for KTResult);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v30;
  *v30 = v37;
  v38 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20[1] = v37;
  LOBYTE(v37) = 2;
  v20[2] = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for LogType(0);
  v38 = 3;
  sub_1000547B0(&qword_100153640, 255, type metadata accessor for LogType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + 6) = v37;
  LOBYTE(v37) = 4;
  v20[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20[5] = v37;
  LOBYTE(v37) = 6;
  sub_1000547B0(&qword_100153648, 255, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 32))(v20 + v29[10], v7, v19);
  LOBYTE(v37) = 7;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = (v20 + v29[11]);
  *v22 = v21;
  v22[1] = v23;
  v38 = 8;
  sub_1000547F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + v29[12]) = v37;
  v38 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v30 + v29[13]) = v37;
  LOBYTE(v37) = 10;
  *(v30 + v29[14]) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37) = 11;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v34 + 8))(v35, v33);
  v25 = v24 & 1;
  v27 = v30;
  v26 = v31;
  *(v30 + v29[15]) = v25;
  sub_10005484C(v27, v26);
  sub_100024E14(v36);
  return sub_10002763C(v27);
}

uint64_t sub_10004EF7C()
{
  v2 = *(v0 + 24);
  sub_100056D98();
  if (!v1)
  {
    v4 = (*(*v3 + 160))();
    if (v4 && (v5 = (*(*v4 + 112))(0), (v6 & 1) == 0) && (v2 = v5) != 0)
    {
    }

    else
    {
      sub_100056D98();
      v9 = (*(*v7 + 160))(v7);

      if (v9)
      {

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

void sub_10004F148()
{
  v2 = *(v0 + 24);
  sub_100056D0C();
  if (!v1)
  {
    sub_10004F194();
  }
}

void sub_10004F194()
{
  v2 = *(v0 + 24);
  sub_100056D0C();
  if (!v1)
  {
    _StringGuts.grow(_:)(24);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    sub_100056D0C();
  }
}

uint64_t KTSWDB.__allocating_init(db:)(uint64_t a1)
{
  v2 = swift_allocObject();
  KTSWDB.init(db:)(a1);
  return v2;
}

uint64_t KTSWDB.init(db:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  v5 = __chkstk_darwin(v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v38 = &v37 - v8;
  __chkstk_darwin(v7);
  v37 = &v37 - v9;
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v44);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v42 = v1;
  *(v1 + 16) = 2;
  *(v1 + 24) = a1;
  v43 = sub_1000548B0();
  v46 = a1;

  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  sub_1000547B0(&qword_100153660, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100024248(&qword_100153668, &qword_100104D48);
  sub_1000548FC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v44);
  v18 = v42;
  *(v18 + 32) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v45;
  v20 = sub_10004EF7C();
  if (v19)
  {

    return v18;
  }

  v23 = v39;
  v22 = v40;
  v24 = v41;
  if (v20 == 1)
  {
    v29 = v38;
    Logger.init()();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = 2;

      _os_log_impl(&_mh_execute_header, v30, v31, "Opening existing swt database with schema version 1. Dropping table and replacing with schema version %{public}ld.", v32, 0xCu);
    }

    else
    {
    }

    (*(v22 + 8))(v29, v24);
    v36 = *(v18 + 24);
    sub_100056D0C();
    goto LABEL_16;
  }

  if (!v20)
  {
    v25 = v37;
    Logger.init()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = 2;

      _os_log_impl(&_mh_execute_header, v26, v27, "Creating new swt database with schema version %{public}ld.", v28, 0xCu);
    }

    else
    {
    }

    (*(v22 + 8))(v25, v24);
LABEL_16:
    sub_10004F194();

    return v18;
  }

  Logger.init()();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134349056;
    *(v35 + 4) = 2;

    _os_log_impl(&_mh_execute_header, v33, v34, "Opening existing swt database with schema version %{public}ld", v35, 0xCu);
  }

  else
  {
  }

  (*(v22 + 8))(v23, v24);
  return v18;
}

uint64_t sub_10004F8E8()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100054960;
  *(v2 + 24) = v0;
  v5[4] = sub_100024570;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001D1C0;
  v5[3] = &unk_100134748;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_10004FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 24);
  sub_100056D98();
  if (!v6)
  {
    v14 = v13;
    v15 = *(*v13 + 120);
    v15(0, *(a2 + 16));
    (*(*v14 + 112))(1, *(a2 + 24));
    v15(2, *(a2 + 32));
    (*(*v14 + 104))(3, *a2, *(a2 + 8));
    v16 = *(a2 + 40);
    v17 = *(a2 + 48);
    v18 = *(*v14 + 144);
    v18(4, v16, v17);
    (*(*v14 + 128))(5, a3);
    v18(6, a4, a5);
    v19 = v15(7, a6);
    if ((*(*v14 + 160))(v19))
    {

      sub_1000553EC();
      swift_allocError();
      *v20 = xmmword_100104D20;
      *(v20 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      (*(*v14 + 96))();
    }
  }
}

void sub_10004FD2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  sub_100056D98();
  if (!v3)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v8 = v7;
      v9 = *(*v7 + 112);
      v9(0, a2);
      (*(*v8 + 104))(1, *a3, *(a3 + 8));
      v10 = *(*v8 + 120);
      v10(2, *(a3 + 16));
      v9(3, *(a3 + 24));
      v10(4, *(a3 + 32));
      v11 = (*(*v8 + 144))(5, *(a3 + 40), *(a3 + 48));
      if ((*(*v8 + 160))(v11))
      {

        sub_1000553EC();
        swift_allocError();
        *v12 = xmmword_100104D20;
        *(v12 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v8 + 96))();
      }
    }
  }
}

void sub_10004FF48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  sub_100056D98();
  if (!v3)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v8 = v7;
      v9 = *(*v7 + 112);
      v9(0, a2);
      (*(*v8 + 104))(1, *a3, *(a3 + 8));
      v10 = *(*v8 + 120);
      v10(2, *(a3 + 16));
      v9(3, *(a3 + 24));
      v10(4, *(a3 + 32));
      v11 = (*(*v8 + 144))(5, *(a3 + 40), *(a3 + 48));
      if ((*(*v8 + 160))(v11))
      {

        sub_1000553EC();
        swift_allocError();
        *v12 = xmmword_100104D20;
        *(v12 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v8 + 96))();
      }
    }
  }
}

void sub_1000501B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  sub_100056D98();
  if (!v3)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v8 = v7;
      v9 = *(*v7 + 112);
      v9(0, a2);
      (*(*v8 + 104))(1, *a3, *(a3 + 8));
      v10 = *(*v8 + 120);
      v10(2, *(a3 + 16));
      v9(3, *(a3 + 24));
      v10(4, *(a3 + 32));
      v11 = (*(*v8 + 144))(5, *(a3 + 40), *(a3 + 48));
      if ((*(*v8 + 160))(v11))
      {

        sub_1000553EC();
        swift_allocError();
        *v12 = xmmword_100104D20;
        *(v12 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v8 + 96))();
      }
    }
  }
}

void sub_1000503FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  sub_100056D98();
  if (!v2)
  {
    v6 = v5;
    v7 = *(*v5 + 112);
    v7(0, 1);
    (*(*v6 + 104))(1, *a2, *(a2 + 8));
    v8 = *(*v6 + 120);
    v8(2, *(a2 + 16));
    v7(3, *(a2 + 24));
    v8(4, *(a2 + 32));
    v9 = (*(*v6 + 144))(5, *(a2 + 40), *(a2 + 48));
    if ((*(*v6 + 160))(v9))
    {

      sub_1000553EC();
      swift_allocError();
      *v10 = xmmword_100104D20;
      *(v10 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      (*(*v6 + 96))();
    }
  }
}

uint64_t sub_1000505DC()
{
  v1 = *(v0 + 32);
  type metadata accessor for KTSWDB.SignedLogHead();
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_10005064C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100024248(&qword_100152D90, &qword_100105620);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v62 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 24);
  sub_100056D98();
  if (!v3)
  {
    v18 = v17;
    v75 = a3;
    v76 = v12;
    v19 = *(*v17 + 120);
    v19(0, *(a2 + 16));
    (*(*v18 + 112))(1, *(a2 + 24));
    v19(2, *(a2 + 32));
    (*(*v18 + 104))(3, *a2, *(a2 + 8));
    v20 = (*(*v18 + 144))(4, *(a2 + 40), *(a2 + 48));
    v21 = (*(*v18 + 160))(v20);
    v22 = v21;
    if (!v21)
    {
      sub_1000553EC();
      swift_allocError();
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0;
      swift_willThrow();
LABEL_28:

      return;
    }

    v74 = 0;
    v23 = *(*v21 + 104);

    v24 = v23(0);
    if ((v24 & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    v25 = v24;
    v73 = v23(1);
    if (v73 & 0x100000000) != 0 || (v26 = *(*v22 + 112), v71 = *v22 + 112, v72 = v26, v70 = v26(2), (v27) || (v69 = v23(3), (v69 & 0x100000000) != 0) || (v68 = v72(4), (v28) || (v29 = v23(5), (v29 & 0x100000000) != 0))
    {
LABEL_27:
      sub_1000553EC();
      swift_allocError();
      *v61 = 0;
      *(v61 + 8) = 0;
      *(v61 + 16) = 0;
      swift_willThrow();

      goto LABEL_28;
    }

    v67 = v29;
    (*(*v22 + 120))(6);
    v30 = v76;
    if ((*(v76 + 48))(v10, 1, v11) == 1)
    {
      sub_10005649C(v10);
      goto LABEL_27;
    }

    (*(v30 + 32))(v15, v10, v11);
    v32 = (*(*v22 + 96))(7);
    if (!v33)
    {
      (*(v76 + 8))(v15, v11);
      goto LABEL_27;
    }

    v64 = v32;
    v66 = v33;
    v65 = *(*v22 + 128);
    v34 = v65(8);
    if (v35 >> 60 == 15)
    {
      (*(v76 + 8))(v15, v11);
LABEL_26:

      goto LABEL_27;
    }

    v62 = v34;
    v63 = v35;
    v65 = v65(9);
    if (v36 >> 60 == 15)
    {
      (*(v76 + 8))(v15, v11);
LABEL_25:
      sub_10002BEE0(v62, v63);
      goto LABEL_26;
    }

    v37 = v36;
    v72 = v72(10);
    if (v38)
    {
      (*(v76 + 8))(v15, v11);
      v39 = v65;
      v40 = v37;
LABEL_24:
      sub_10002BEE0(v39, v40);
      goto LABEL_25;
    }

    v71 = v37;
    v41 = v23(11);
    if ((v41 & 0x100000000) != 0)
    {
      (*(v76 + 8))(v15, v11);
      v39 = v65;
      v40 = v71;
      goto LABEL_24;
    }

    if (((v73 | v25 | v67) & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v42 = v41;
      v73 = v73;
      v43 = v25;
      v44 = v67;
      v45 = type metadata accessor for KTSWDB.SignedLogHead();
      v46 = v75;
      (*(v76 + 16))(v75 + v45[10], v15, v11);
      v47 = v73;
      *v46 = v43;
      *(v46 + 8) = v47;
      LODWORD(v47) = v69;
      *(v46 + 16) = v70;
      *(v46 + 24) = v47;
      *(v46 + 32) = v68;
      *(v46 + 40) = v44;
      v48 = (v46 + v45[11]);
      v49 = v65;
      v50 = v66;
      *v48 = v64;
      v48[1] = v50;
      v51 = (v46 + v45[12]);
      v52 = v62;
      *v51 = v62;
      v53 = v52;
      v54 = v63;
      v51[1] = v63;
      v55 = v54;
      v56 = (v46 + v45[13]);
      v58 = v71;
      v57 = v72;
      *v56 = v49;
      v56[1] = v58;
      *(v46 + v45[14]) = v57;
      *(v46 + v45[15]) = v42 != 0;
      v59 = *(*v18 + 96);
      sub_100037620(v53, v55);
      v60 = sub_100037620(v49, v58);
      v59(v60);

      sub_10002BEE0(v49, v58);
      sub_10002BEE0(v62, v63);
      (*(v76 + 8))(v15, v11);
    }
  }
}

void sub_100050DF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  sub_100056D98();
  if (!v2)
  {
    v6 = v5;
    v7 = *(*v5 + 120);
    v7(0, *(a2 + 16));
    (*(*v6 + 112))(1, *(a2 + 24));
    v7(2, *(a2 + 32));
    (*(*v6 + 104))(3, *a2, *(a2 + 8));
    (*(*v6 + 144))(4, *(a2 + 40), *(a2 + 48));
    (*(*v6 + 152))(sub_10002AB0C, 0);
  }
}

void sub_100050FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 24);
  sub_100056D98();
  if (!v5)
  {
    v12 = v11;
    (*(*v11 + 104))(0, a2, a3);
    (*(*v12 + 120))(1, a4);
    (*(*v12 + 112))(2, a5);
    (*(*v12 + 152))(sub_10002AB0C, 0);
  }
}

void sub_100051184(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10)
{
  v16 = *(a3 + 24);
  if ((a2 & 1) == 0)
  {
    sub_100056D98();
    if (v10)
    {
      return;
    }

    v18 = v22;
    v23 = *(*v22 + 104);

    v23(0, a4, a5);
    v24 = *(*v18 + 112);
    v24(1, a6);

    (*(*v18 + 128))(2, a7);
    if (a1 >= 0xFFFFFFFF80000000)
    {
      if (a1 <= 0x7FFFFFFF)
      {
        v24(3, a1);
        if (!(a8 >> 31))
        {
          v24(4, a8);
          if (!(a9 >> 31))
          {
            v24(5, a9);
            if (!(a10 >> 31))
            {

              v24(6, a10);
              goto LABEL_14;
            }

LABEL_23:
            __break(1u);
            return;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_100056D98();
  if (v10)
  {
    return;
  }

  v18 = v17;
  v19 = *(*v17 + 104);

  v19(0, a4, a5);
  v20 = *(*v18 + 112);
  v20(1, a6);
  (*(*v18 + 128))(2, a7);
  if (a8 >> 31)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20(3, a8);
  if (a9 >> 31)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20(4, a9);
  if (a10 >> 31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20(5, a10);
LABEL_14:
  (*(*v18 + 152))(sub_10002AB0C, 0);
}

void sub_100051530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 24);
  sub_100056D98();
  if (!v5)
  {
    v12 = v11;
    (*(*v11 + 104))(0, a2, a3);
    v13 = *(*v12 + 112);
    v13(1, a4);
    (*(*v12 + 128))(2, a5);
    v13(3, 1);
    v13(4, 1);
    v13(5, 1);
    (*(*v12 + 152))(sub_10002AB0C, 0);
  }
}

uint64_t sub_1000516B4()
{
  _StringGuts.grow(_:)(27);

  strcpy(v7, "Milestone(t=");
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 1030037548;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 1030889516;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

uint64_t sub_10005180C()
{
  v1 = 0x6E6F697369766572;
  if (*v0 != 1)
  {
    v1 = 0x6E69676542676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644965657274;
  }
}

uint64_t sub_100051868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100051890(uint64_t a1)
{
  v2 = sub_100054B50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000518CC(uint64_t a1)
{
  v2 = sub_100054B50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100051908(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v13[1] = a3;
  v6 = sub_100024248(&qword_100153678, &qword_100104D50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_100054B50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v16 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100051AC4(uint64_t *a1)
{
  result = sub_100054CC0(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t sub_100051B0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100054CC0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100051B70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  return sub_1000516B4();
}

uint64_t sub_100051B88()
{
  v2 = *(v0 + 32);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100051C04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v34 = a5;
  v33 = a1;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + 32);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = *(v5 + 24);
    if (a4)
    {
      sub_100056D98();
      if (!v6)
      {
        v20 = v19;
        v21 = *(*v19 + 104);

        v21(0, v33, a2);
        v22 = (*(*v20 + 112))(1, v34);
        goto LABEL_7;
      }
    }

    else
    {
      sub_100056D98();
      if (!v6)
      {
        v20 = v23;
        v24 = *(*v23 + 104);

        v24(0, v33, a2);
        (*(*v20 + 120))(1, a3);
        v22 = (*(*v20 + 112))(2, v34);
LABEL_7:
        v25 = (*(*v20 + 160))(v22);

        if (!v25 || (v26 = *(*v25 + 112), a3 = v26(0), v28 = v27, v26(1), v30 = v29, , (v28 & 1) != 0) || (v30 & 1) != 0)
        {
          sub_1000553EC();
          swift_allocError();
          *v31 = v33;
          *(v31 + 8) = a2;
          *(v31 + 16) = v34;
          swift_willThrow();
        }
      }
    }

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100051F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 112);
  v4 = v3(0);
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v3(1);
  if (v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = v3(2);
  if (v11)
  {
    return 0;
  }

  v14 = v10;
  v12 = 1;
  swift_beginAccess();
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  return v12;
}

void sub_100052094(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a6;
  v47 = a4;
  v45 = a1;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = a3;
  v19 = *(a3 + 24);
  v48 = a2;
  if (a2)
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v21 = v20;
    v42 = 0;
    v43 = a8;
    v22 = *(*v20 + 104);

    v44 = a5;
    v22(0, v47, a5);
    v23 = *(*v21 + 112);
    v23(1, v49);
    if (a7 >> 31)
    {
      goto LABEL_16;
    }

    v24 = 2;
  }

  else
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v21 = v25;
    v42 = 0;
    v43 = a8;
    v26 = *(*v25 + 104);

    v44 = a5;
    v26(0, v47, a5);
    (*(*v21 + 120))(1, v45);
    v23 = *(*v21 + 112);
    v23(2, v49);
    if (a7 >> 31)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v24 = 3;
  }

  v23(v24, a7);
  v27 = *(v46 + 32);
  *v18 = v27;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  v29 = v43;
  v30 = v44;
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 1;
  v32 = *(*v21 + 152);

  v33 = v42;
  v32(sub_1000565B8, v31);
  if (v33)
  {
  }

  else
  {
    v44 = v30;

    swift_beginAccess();
    v34 = *(v31 + 24);
    v46 = *(v31 + 16);
    v35 = *(v31 + 32);
    v36 = *(v31 + 40);
    v37 = *(v31 + 48);

    if (v37)
    {
      v46 = sub_100051C04(v47, v44, v45, v48 & 1, v49);
      v34 = v38;
      LOBYTE(v35) = v39;
      v36 = v40;
    }

    *v29 = v46;
    *(v29 + 8) = v34;
    *(v29 + 16) = v35 & 1;
    *(v29 + 24) = v36;
  }
}

uint64_t sub_1000524EC()
{
  v2 = *(v0 + 32);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_100052560(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a6;
  v47 = a4;
  v45 = a1;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = a3;
  v19 = *(a3 + 24);
  v48 = a2;
  if (a2)
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v21 = v20;
    v42 = 0;
    v43 = a8;
    v22 = *(*v20 + 104);

    v44 = a5;
    v22(0, v47, a5);
    v23 = *(*v21 + 112);
    v23(1, v49);
    if (a7 >> 31)
    {
      goto LABEL_16;
    }

    v24 = 2;
  }

  else
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v21 = v25;
    v42 = 0;
    v43 = a8;
    v26 = *(*v25 + 104);

    v44 = a5;
    v26(0, v47, a5);
    (*(*v21 + 120))(1, v45);
    v23 = *(*v21 + 112);
    v23(2, v49);
    if (a7 >> 31)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v24 = 3;
  }

  v23(v24, a7);
  v27 = *(v46 + 32);
  *v18 = v27;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  v29 = v43;
  v30 = v44;
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 1;
  v32 = *(*v21 + 152);

  v33 = v42;
  v32(sub_100056494, v31);
  if (v33)
  {
  }

  else
  {
    v44 = v30;

    swift_beginAccess();
    v34 = *(v31 + 24);
    v46 = *(v31 + 16);
    v35 = *(v31 + 32);
    v36 = *(v31 + 40);
    v37 = *(v31 + 48);

    if (v37)
    {
      v46 = sub_100051C04(v47, v44, v45, v48 & 1, v49);
      v34 = v38;
      LOBYTE(v35) = v39;
      v36 = v40;
    }

    *v29 = v46;
    *(v29 + 8) = v34;
    *(v29 + 16) = v35 & 1;
    *(v29 + 24) = v36;
  }
}

uint64_t sub_10005298C()
{
  v2 = *(v0 + 32);
  sub_100024248(&qword_100153680, &qword_100104D58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_100052A18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a1 + 24);
  sub_100056D98();
  if (!v7)
  {
    v16 = v15;
    (*(*v15 + 104))(0, a2, a3);
    v17 = *(*v16 + 120);
    v17(1, a4);
    (*(*v16 + 112))(2, a5);
    v17(3, a6);
    v18 = swift_allocObject();
    *(v18 + 16) = &_swiftEmptyArrayStorage;
    v19 = *(*v16 + 152);

    v19(sub_1000565B4, v18);

    swift_beginAccess();
    *a7 = *(v18 + 16);
  }
}

uint64_t sub_100052BFC()
{
  v2 = *(v0 + 32);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_100052C68(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + 24);
  sub_100056D98();
  if (!v6)
  {
    v14 = v13;
    v19 = a6;
    (*(*v13 + 104))(0, *a2, *(a2 + 8));
    v15 = *(*v14 + 120);
    v15(1, *(a2 + 16));
    v16 = *(*v14 + 112);
    v16(2, *(a2 + 24));
    v15(3, *(a2 + 32));
    (*(*v14 + 144))(4, *(a2 + 40), *(a2 + 48));
    if (a3 >> 31)
    {
      __break(1u);
    }

    else
    {
      v16(5, a3);
      if (!(a4 >> 31))
      {
        v16(6, a4);
        if (!(a5 >> 31))
        {
          v16(7, a5);
          v17 = swift_allocObject();
          *(v17 + 16) = 0;
          v18 = *(*v14 + 152);

          v18(sub_1000562E4, v17);

          swift_beginAccess();
          *v19 = *(v17 + 16);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100052ED4()
{
  v2 = *(v0 + 32);
  sub_100024248(&qword_1001535B0, &qword_100104D60);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_100052F64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = *(a1 + 24);
  sub_100056D98();
  if (!v9)
  {
    v20 = v19;
    (*(*v19 + 104))(0, a2, a3);
    (*(*v20 + 120))(1, a4);
    v21 = *(*v20 + 112);
    v21(2, a5);
    if (a6 >> 31)
    {
      __break(1u);
    }

    else
    {
      v21(3, a6);
      if (!(a7 >> 31))
      {
        v21(4, a7);
        if (!(a8 >> 31))
        {
          v21(5, a8);
          v22 = swift_allocObject();
          *(v22 + 16) = &_swiftEmptyArrayStorage;
          v23 = *(*v20 + 152);

          v23(sub_1000561D8, v22);

          swift_beginAccess();
          *a9 = *(v22 + 16);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1000531A4()
{
  v2 = *(v0 + 32);
  sub_100024248(&qword_100153680, &qword_100104D58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t KTSWDB.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t KTSWDB.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100053300()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000565A8;
  *(v3 + 24) = v1;
  v6[4] = sub_1000258CC;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001D1C0;
  v6[3] = &unk_100134BA0;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000535C0()
{
  v1 = *(*v0 + 32);
  type metadata accessor for KTSWDB.SignedLogHead();
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100053830()
{
  v2 = *(*v0 + 32);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000538A8()
{
  v2 = *(*v0 + 32);
  sub_100024248(&qword_100153680, &qword_100104D58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100053930()
{
  v2 = *(*v0 + 32);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10005399C()
{
  v2 = *(*v0 + 32);
  sub_100024248(&qword_1001535B0, &qword_100104D60);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_100053A28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for KTSwiftDB();
  return static KTSwiftDB.== infix(_:_:)(*(v2 + 24), *(v3 + 24)) & 1;
}

void *sub_100053A70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100053A8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100053B00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100053B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69676542676F6CLL && a2 == 0xEA0000000000734DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65707954676F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4864616548676F6CLL && a2 == 0xEB00000000687361)
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

uint64_t _s15swtransparencyd6KTSWDBC6STHKeyV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);

  return sub_100027800(v5, v6, v7, v8);
}

unint64_t sub_100053DA4()
{
  result = qword_100158230;
  if (!qword_100158230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158230);
  }

  return result;
}

unint64_t sub_100053E54()
{
  result = qword_100153610;
  if (!qword_100153610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153610);
  }

  return result;
}

uint64_t sub_100053EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024248(&qword_100153828, &qword_100105628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_100053DA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100024E14(a1);
  }

  LOBYTE(v20) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v20) = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for LogType(0);
  v23 = 2;
  sub_1000547B0(&qword_100153640, 255, type metadata accessor for LogType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v20;
  LOBYTE(v20) = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 4;
  sub_1000547F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;

  sub_100027004(v15, v16);
  sub_100024E14(a1);

  result = sub_100026FB0(v15, v16);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v22;
  *(a2 + 32) = v18;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t type metadata accessor for KTSWDB.SignedLogHead()
{
  result = qword_100158BD0;
  if (!qword_100158BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000541FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000010010AF10 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69676542676F6CLL && a2 == 0xEA0000000000734DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65707954676F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5474706965636572 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4864616548676F6CLL && a2 == 0xEB00000000687361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 6845555 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x644965657274 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7473656C694D7369 && a2 == 0xEB00000000656E6FLL)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000545E0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = type metadata accessor for KTSWDB.SignedLogHead();
  v5 = v4[10];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v4[11];
  v7 = a1;
  v8 = *(a1 + v6);
  v9 = *(a1 + v6 + 8);
  v10 = a2;
  v11 = (a2 + v6);
  v12 = v8 == *v11 && v9 == v11[1];
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = a2, v7 = a1, (v13)) && (sub_100027800(*(v7 + v4[12]), *(v7 + v4[12] + 8), *(v10 + v4[12]), *(v10 + v4[12] + 8)) & 1) != 0 && (sub_100027800(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && *(a1 + v4[14]) == *(a2 + v4[14]))
  {
    v14 = *(a1 + v4[15]) ^ *(a2 + v4[15]) ^ 1;
  }

  else
  {
LABEL_18:
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_100054748()
{
  result = qword_100158238;
  if (!qword_100158238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158238);
  }

  return result;
}

uint64_t sub_1000547B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000547F8()
{
  result = qword_100153650;
  if (!qword_100153650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153650);
  }

  return result;
}

uint64_t sub_10005484C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTSWDB.SignedLogHead();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000548B0()
{
  result = qword_100153658;
  if (!qword_100153658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100153658);
  }

  return result;
}

unint64_t sub_1000548FC()
{
  result = qword_100153670;
  if (!qword_100153670)
  {
    sub_1000242F4(&qword_100153668, &qword_100104D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153670);
  }

  return result;
}

uint64_t sub_100054994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000549AC()
{
  v2 = *(v0 + 24);
  sub_100056D98();
  if (!v1)
  {
    (*(*v3 + 152))(sub_10002AB0C, 0);
  }
}

unint64_t sub_100054B50()
{
  result = qword_100158240[0];
  if (!qword_100158240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100158240);
  }

  return result;
}

uint64_t sub_100054BA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965657274 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69676542676F6CLL && a2 == 0xEA0000000000734DLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100054CC0(uint64_t *a1)
{
  v2 = sub_100024248(&qword_100153820, &qword_100105618);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  v7 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_100054B50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11[3] = v10;
  v12 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100024E14(a1);
  return v8;
}

uint64_t sub_100054E9C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = *(v1 + 16);
  result = sub_100051C04(v4, v5, v6, v7, v8);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12 & 1;
    *(a1 + 24) = v13;
  }

  return result;
}

void sub_100054F88(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(*(v1 + 16) + 24);
  sub_100056D98();
  if (!v2)
  {
    v11 = v10;
    (*(*v10 + 104))(0, v4, v6);
    (*(*v11 + 120))(1, v5);
    v12 = *(*v11 + 112);
    v12(2, v7);
    (*(*v11 + 128))(3, v8);
    v12(4, 1);
    v12(5, 1);
    v12(6, 0);
    v13 = swift_allocObject();
    *(v13 + 16) = _swiftEmptyArrayStorage;
    v14 = *(*v11 + 152);

    v14(sub_1000561D4, v13);

    swift_beginAccess();
    *a1 = *(v13 + 16);
  }
}

void sub_1000551B8()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(*(v0 + 16) + 24);
  sub_100056D98();
  if (!v1)
  {
    if (v2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v10 = v9;
      v11 = *(*v9 + 112);
      v11(0, v2);
      (*(*v10 + 104))(1, v3, v4);
      (*(*v10 + 120))(2, v5);
      v11(3, v6);
      (*(*v10 + 128))(4, v7);
      v11(5, 1);
      v11(6, 1);
      v12 = (v11)(7, 0);
      if ((*(*v10 + 160))(v12))
      {

        sub_1000553EC();
        swift_allocError();
        *v13 = xmmword_100104D20;
        *(v13 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v10 + 96))();
      }
    }
  }
}

unint64_t sub_1000553EC()
{
  result = qword_100153688;
  if (!qword_100153688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153688);
  }

  return result;
}

unint64_t sub_100055444()
{
  result = qword_100153690;
  if (!qword_100153690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153690);
  }

  return result;
}

uint64_t sub_100055498(uint64_t a1, uint64_t a2)
{
  result = sub_1000547B0(&qword_100153698, a2, type metadata accessor for KTSWDB);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100055514(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10005552C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100055540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 20))
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

uint64_t sub_100055594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000555F4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

__n128 sub_100055628(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100055644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10005568C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000556FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000557D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100055894()
{
  type metadata accessor for KTResult(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LogType(319);
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

uint64_t sub_100055978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KTSWDB.SignedLogHead.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KTSWDB.SignedLogHead.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SWTStateMachine.SMRunningState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SWTStateMachine.SMRunningState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100055C88()
{
  result = qword_100158CE0[0];
  if (!qword_100158CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100158CE0);
  }

  return result;
}

unint64_t sub_100055D2C()
{
  result = qword_100159070[0];
  if (!qword_100159070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159070);
  }

  return result;
}

unint64_t sub_100055D84()
{
  result = qword_100159300[0];
  if (!qword_100159300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159300);
  }

  return result;
}

unint64_t sub_100055DDC()
{
  result = qword_100159410;
  if (!qword_100159410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159410);
  }

  return result;
}

unint64_t sub_100055E34()
{
  result = qword_100159418[0];
  if (!qword_100159418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159418);
  }

  return result;
}

unint64_t sub_100055E8C()
{
  result = qword_1001594A0;
  if (!qword_1001594A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001594A0);
  }

  return result;
}

unint64_t sub_100055EE4()
{
  result = qword_1001594A8[0];
  if (!qword_1001594A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001594A8);
  }

  return result;
}

unint64_t sub_100055F3C()
{
  result = qword_100159530;
  if (!qword_100159530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159530);
  }

  return result;
}

unint64_t sub_100055F94()
{
  result = qword_100159538[0];
  if (!qword_100159538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159538);
  }

  return result;
}

unint64_t sub_100056148()
{
  result = qword_100153818;
  if (!qword_100153818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153818);
  }

  return result;
}

uint64_t sub_10005619C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000561D8(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 112))(0);
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    swift_beginAccess();
    v6 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10004B020(0, *(v6 + 2) + 1, 1, v6);
      *(v2 + 16) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10004B020((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    *&v6[8 * v9 + 32] = v5;
    *(v2 + 16) = v6;
  }

  return 1;
}

uint64_t sub_1000562E4(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 104))(0);
  if ((v3 & 0x100000000) == 0)
  {
    v4 = v3;
    swift_beginAccess();
    *(v2 + 16) = v4;
  }

  return 1;
}

uint64_t sub_10005635C(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 128))(0);
  if (v4 >> 60 != 15)
  {
    v5 = v3;
    v6 = v4;
    swift_beginAccess();
    v7 = *(v2 + 16);
    sub_100027004(v5, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_10004B124(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10004B124((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v6;
    *(v2 + 16) = v7;
    swift_endAccess();
    sub_10002BEE0(v5, v6);
  }

  return 1;
}

uint64_t sub_10005649C(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152D90, &qword_100105620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *sub_1000566B0(unsigned __int8 a1)
{
  v1 = "ATMilestoneDownload";
  v2 = "SWTStateMachine";
  v3 = "SWTFailProofVerification";
  if (a1 != 3)
  {
    v3 = "SWTSplitViewCFU";
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = "ATPatConsistency";
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

unint64_t sub_10005672C()
{
  result = qword_100153830;
  if (!qword_100153830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153830);
  }

  return result;
}

const char *sub_100056780()
{
  v1 = *v0;
  v2 = "ATMilestoneDownload";
  v3 = "SWTStateMachine";
  v4 = "SWTFailProofVerification";
  if (v1 != 3)
  {
    v4 = "SWTSplitViewCFU";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "ATPatConsistency";
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

Swift::Int sub_100056874()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000568B8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000568F8(uint64_t a1)
{
  v2 = sub_100058564();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100056934(uint64_t a1)
{
  v2 = sub_100058564();

  return Error<>._code.getter(a1, v2);
}

id static KTSwiftDB.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 && (swift_beginAccess(), *(a2 + 16)))
  {
    return [v4 isEqual:?];
  }

  else
  {
    return 0;
  }
}

void *sub_1000569EC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_100056A30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t KTSwiftDB.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  *(v2 + 16) = 0;
  sub_100056C4C(a1, &v16 - v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v13 = [objc_allocWithZone(KTSDBObjc) initDatabaseWithURL:v11];

  sub_10002533C(a1, &qword_100152F00, &qword_1001042C0);
  if (v13)
  {
    swift_beginAccess();
    v14 = *(v2 + 16);
    *(v2 + 16) = v13;
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_100056C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100056CBC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 close];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

void sub_100056D0C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 executeSQLStmt:v3];
  }
}

void sub_100056D98()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    v7 = 0;
    v4 = [v2 prepareStatement:v3 error:&v7];

    if (v4)
    {
      v5 = v7;

      type metadata accessor for KTSwiftDB.SQLStatement();
      *(swift_allocObject() + 16) = v4;
    }

    else
    {
      v6 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_100056ED8();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_100056ED8()
{
  result = qword_100153838;
  if (!qword_100153838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153838);
  }

  return result;
}

uint64_t sub_100056F2C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_100056FF0(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v3 bindDate:isa column:a1];
}

void sub_100057090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v8 = *(v5 + 16);
  v9 = a4(a2, a3);
  [v8 *a5];
}

id sub_100057104(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  aBlock[4] = sub_100057290;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000572F8;
  aBlock[3] = &unk_100134D30;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(a2) = [v5 steps:v7 error:aBlock];
  _Block_release(v7);
  if (a2)
  {
    return aBlock[0];
  }

  v9 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100057258()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057290(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for KTSwiftDB.SQLRow();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  swift_unknownObjectRetain();
  LOBYTE(a1) = v4(v5);

  return a1 & 1;
}

uint64_t sub_1000572F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_100057354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005736C()
{
  v1 = *(v0 + 16);
  v13 = 0;
  v2 = [v1 stepWithError:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = v2;
    type metadata accessor for KTSwiftDB.SQLRow();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v3;
  }

  else
  {
    v7 = v13;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v8;
    swift_errorRetain();
    sub_100024248(&qword_100152630, &qword_100103210);
    type metadata accessor for KTSDBObjcError(0);
    v5 = v9;
    if (swift_dynamicCast() && (sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError), _BridgedStoredNSError.code.getter(), v12, v11 == 2))
    {

      return 0;
    }

    else
    {

      swift_willThrow();
    }
  }

  return v5;
}

uint64_t KTSwiftDB.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100057588(uint64_t a1)
{
  v2 = [*(v1 + 16) textAtColumn:a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100057650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + 16) dateAtColumn:a1];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_1000576E8(uint64_t a1)
{
  v2 = [*(v1 + 16) blobAtColumn:a1];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100057774()
{
  v1 = [*(v0 + 16) allObjectsByColumnName];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1000577EC(v2);

  return v3;
}

unint64_t sub_1000577EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153B10, &qword_100105B40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_100025058(*(a1 + 56) + 32 * v13, v33);
        *&v32 = v15;
        *(&v32 + 1) = v16;
        v30 = v32;
        v31[0] = v33[0];
        v31[1] = v33[1];
        v17 = v32;
        sub_100032F28(v31, v28);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        v28[3] = v25;
        v28[4] = v26;
        v29 = v27;
        result = sub_1000435B4(v17, *(&v17 + 1));
        if (v18)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v17;
          v11 = result;

          result = sub_1000585B8(&v25, v2[7] + 40 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          v19 = v2[7] + 40 * result;
          v20 = v25;
          v21 = v26;
          *(v19 + 32) = v27;
          *v19 = v20;
          *(v19 + 16) = v21;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_24;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_10002533C(&v25, &qword_100153B18, qword_100105B48);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100057AA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100057AC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_100057AF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 && (swift_beginAccess(), *(v3 + 16)))
  {
    return [v4 isEqual:?];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100057BAC()
{
  result = qword_100153850;
  if (!qword_100153850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineEvents.WaitType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for StateMachineEvents.WaitType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}