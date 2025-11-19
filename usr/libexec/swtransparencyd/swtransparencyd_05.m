uint64_t sub_10008728C()
{
  v1 = v0[29];
  v2 = *(v0[27] + 120);
  v3 = String._bridgeToObjectiveC()();
  v4 = _convertErrorToNSError(_:)();
  sub_100024248(&qword_100153DC8, &unk_100106BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001042A0;
  v0[25] = 112;
  v0[26] = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  v6 = v0[18];
  v7 = v0[19];
  sub_100026F6C(v0 + 15, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = [v8 currentEnvironment];

  v10 = sub_10002AAF4(v9);
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v10;
  sub_10007A4E0(inited);
  swift_setDeallocating();
  sub_10002533C(inited + 32, &qword_100153DD0, &unk_100106940);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 logResultForEvent:v3 hardFailure:1 result:v4 withAttributes:isa];

  sub_100024E14(v0 + 15);
  v12 = v0[1];

  return v12();
}

uint64_t sub_10008748C()
{
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  sub_10002533C(v0 + 144, &qword_100153F18, &qword_100106BB0);
  sub_10002533C(v0 + 184, &qword_100153F20, &qword_100106BD0);
  v2 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database));
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup, &qword_100153F28, &qword_100106BD8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008756C()
{
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  sub_10002533C(v0 + 144, &qword_100153F18, &qword_100106BB0);
  sub_10002533C(v0 + 184, &qword_100153F20, &qword_100106BD0);
  v2 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database));
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup, &qword_100153F28, &qword_100106BD8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10008765C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_1001540F8, &qword_100106E70);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100087904(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000435B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008765C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000435B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100087A80();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_100087A80()
{
  v1 = v0;
  sub_100024248(&qword_1001540F8, &qword_100106E70);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100087BF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100087C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SWTPublicKeyBag()
{
  result = qword_10015B160;
  if (!qword_10015B160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100087CA0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001CF5C;

  return sub_100080454(a1, v5, v6, v4);
}

uint64_t sub_100087D40(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_100080908(a1, v5, v6, v4);
}

unint64_t sub_100087DE0()
{
  result = qword_100153EF0;
  if (!qword_100153EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153EF0);
  }

  return result;
}

unint64_t sub_100087E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_1001540F8, &qword_100106E70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100087F38()
{
  result = qword_100153EF8;
  if (!qword_100153EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153EF8);
  }

  return result;
}

unint64_t sub_100087F8C()
{
  result = qword_100153F10;
  if (!qword_100153F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153F10);
  }

  return result;
}

uint64_t sub_100087FE4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100088000(uint64_t a1, unsigned int a2)
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

uint64_t sub_100088048(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10008808C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000880BC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10008819C()
{
  result = qword_1001540F0;
  if (!qword_1001540F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001540F0);
  }

  return result;
}

uint64_t sub_1000881F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088228(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001CF5C;

  return sub_1000796B0(a1, v5);
}

uint64_t sub_100088310@<X0>(uint64_t a1@<X8>)
{
  static TaskPriority.userInitiated.getter();
  v2 = type metadata accessor for TaskPriority();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1000883A8()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000883EC(char a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10008849C(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 1;
  *(v5 + 120) = sub_10008B5FC(&off_100135D20);
  v6 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_priority;
  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5 + v6, 0, 1, v7);
  *(v5 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch) = 0;
  sub_100037608(a1, v5 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps);
  return v5;
}

uint64_t sub_100088568(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 1;
  *(v1 + 120) = sub_10008B5FC(&off_100135D20);
  v3 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_priority;
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 0, 1, v4);
  *(v1 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_pendingFetch) = 0;
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps);
  return v1;
}

uint64_t sub_100088624(unsigned __int8 a1)
{
  v2[2] = v1;
  if (a1 <= 6u && ((1 << a1) & 0x45) != 0)
  {
    v3 = *(*v1 + 176);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v2[3] = v5;
    *v5 = v2;
    v5[1] = sub_10008878C;

    return v8();
  }

  else
  {
    v7 = v2[1];

    return v7(10);
  }
}

uint64_t sub_10008878C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000888A4, v3, 0);
}

uint64_t sub_1000888A4()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      sub_10008B670(v1);
      v2 = 10;
    }

    else if (v1 == 0x8000000000000000)
    {
      v2 = 4;
    }

    else
    {
      v2 = 10;
    }
  }

  else
  {
    sub_10008B670(v1);
    v2 = 11;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10008893C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 176);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100088A50;

  return v7();
}

uint64_t sub_100088A50(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100088B68, v3, 0);
}

uint64_t sub_100088B68()
{
  v1 = v0[5];
  if (!(v1 >> 62))
  {
    v2 = v0[2];
    sub_10008B670(v1);
    v3 = *(*v2 + 216);
    v13 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v6 = sub_100088E2C;
LABEL_10:
    v5[1] = v6;
    v11 = v0[2];

    return v13(0);
  }

  if (v1 >> 62 == 1)
  {
    sub_10008B670(v1);
LABEL_9:
    v9 = *(*v0[2] + 216);
    v13 = (v9 + *v9);
    v10 = v9[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v6 = sub_100088F24;
    goto LABEL_10;
  }

  if (v1 != 0x8000000000000000)
  {
    goto LABEL_9;
  }

  v7 = v0[2];
  v8 = (*v7 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
  v0[6] = *(*v7 + 192);
  v0[7] = v8;

  return _swift_task_switch(sub_100088DC0, v7, 0);
}

uint64_t sub_100088DC0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  (*(v0 + 48))(1);
  v3 = *(v0 + 8);

  return v3(4);
}

uint64_t sub_100088E2C()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0x8000000000000000);
}

uint64_t sub_100088F24()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0x8000000000000000);
}

uint64_t sub_10008901C()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000890DC, v0, 0);
}

uint64_t sub_1000890DC()
{
  if ((*(*v0[18] + 128))())
  {
    v1 = v0[21];

    v2 = v0[1];

    return v2(0x8000000000000008);
  }

  else
  {
    v4 = v0[18];
    v5 = *(*v4 + 136);
    v6 = (*v4 + 136) & 0xFFFFFFFFFFFFLL | 0x3DFD000000000000;
    v0[22] = v5;
    v0[23] = v6;
    v5(1);
    v7 = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps;
    v0[24] = OBJC_IVAR____TtC15swtransparencyd22InitialLoadConfigState_deps;
    v8 = (v4 + v7);
    v9 = *(v4 + v7 + 24);
    v10 = *(v4 + v7 + 32);
    sub_100026F6C((v4 + v7), v9);
    v0[25] = (*(v10 + 48))(v9, v10);
    v11 = v8[3];
    v12 = v8[4];
    sub_100026F6C(v8, v11);
    v13 = *(v12 + 96);
    v16 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_1000892F8;

    return v16(v11, v12);
  }
}

uint64_t sub_1000892F8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100089410, v3, 0);
}

uint64_t sub_100089410()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = (v0[18] + v0[24]);
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  [(*(v5 + 32))(v4 v5)];
  v7 = v6;
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[3] = sub_100089590;
  v8 = swift_continuation_init();
  v0[17] = sub_100024248(&unk_100154108, &unk_100106F60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10008992C;
  v0[13] = &unk_100135D48;
  v0[14] = v8;
  [v2 configureWithFetcher:v1 networkTimeout:v0 + 10 completionHandler:v7];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100089590()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_100089740;
  }

  else
  {
    v5 = sub_1000896B0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000896B0()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 144);

  swift_unknownObjectRelease();
  v3(0);
  v5 = *(v0 + 168);

  v6 = *(v0 + 8);

  return v6(0x8000000000000000);
}

uint64_t sub_100089740()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  swift_willThrow();

  swift_unknownObjectRelease();
  v5(0);
  Logger.init()();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "load config threw error: %@", v11, 0xCu);
    sub_10002533C(v12, &qword_100153450, &unk_100104140);
  }

  v14 = v0[28];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];

  (*(v16 + 8))(v15, v17);
  type metadata accessor for ReachabilityTracker(0);
  v18 = _convertErrorToNSError(_:)();
  sub_1000212AC(v18);
  v20 = v19;

  if (v20)
  {
    v21 = v14;
  }

  else
  {
    v21 = v14 | 0x4000000000000000;
  }

  v22 = v0[21];

  v23 = v0[1];

  return v23(v21);
}

uint64_t sub_10008992C(uint64_t a1, void *a2)
{
  v3 = sub_100026F6C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100024248(&qword_100152630, &qword_100103210);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100089A00(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_100089B20(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_100089C54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TaskPriority();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100089CE8(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 3;
  *(v5 + 120) = &_swiftEmptySetSingleton;
  v6 = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_priority;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_100037608(a1, v5 + OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps);
  return v5;
}

uint64_t sub_100089D9C(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 3;
  *(v1 + 120) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_priority;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps);
  return v1;
}

uint64_t sub_100089E58()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100089EF4, v0, 0);
}

uint64_t sub_100089EF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = os_transaction_create();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10008B818(&qword_100154118, type metadata accessor for LoadConfigState);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  v6[5] = v3;
  swift_retain_n();
  v7 = sub_10008A6AC(0, 0, v2, &unk_100106F90, v6);

  v8 = v0[1];

  return v8(v7 | 0x4000000000000000);
}

uint64_t sub_10008A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_10008A06C, a4, 0);
}

uint64_t sub_10008A06C()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps;
  v0[20] = OBJC_IVAR____TtC15swtransparencyd15LoadConfigState_deps;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v4);
  v0[21] = (*(v5 + 48))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v8 = *(v7 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_10008A1E0;

  return v12(v6, v7);
}

uint64_t sub_10008A1E0(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10008A2F8, v3, 0);
}

uint64_t sub_10008A2F8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = (v0[19] + v0[20]);
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  [(*(v5 + 32))(v4 v5)];
  v7 = v6;
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[3] = sub_10008A478;
  v8 = swift_continuation_init();
  v0[17] = sub_100024248(&unk_100154108, &unk_100106F60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10008992C;
  v0[13] = &unk_100135E98;
  v0[14] = v8;
  [v2 configureWithFetcher:v1 networkTimeout:v0 + 10 completionHandler:v7];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10008A478()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_10008A614;
  }

  else
  {
    v5 = sub_10008A598;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10008A598()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  swift_unknownObjectRelease();
  *v2 = 9;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008A614()
{
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = *(v0 + 184);
  v3 = *(v0 + 144);

  swift_unknownObjectRelease();
  *v3 = 9;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10008A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000398A4(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002533C(v11, &unk_100152620, &unk_1001031E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10008A954(void *a1, void *a2)
{
  v5 = *(v2 + 120);

  sub_10002533C(v2 + *a1, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v2 + *a2));
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_10008A9D0(void *a1, void *a2)
{
  v5 = *(v2 + 120);

  sub_10002533C(v2 + *a1, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v2 + *a2));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v2);
}

uint64_t sub_10008AA48(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008AB68;

  return v8(a1);
}

uint64_t sub_10008AB68(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10008AC64(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008AB68;

  return v8(a1);
}

uint64_t sub_10008AD84(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10008BBC8();
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10008BC1C();
    while (1)
    {
      v15 = *(*(v5 + 48) + v9);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10008B114(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10008AEBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&unk_100154370, &qword_100107190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_10008BBC8();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10008B114(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008AEBC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10008B294();
      goto LABEL_12;
    }

    sub_10008B3D4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_10008BBC8();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10008BC1C();
    do
    {
      v16 = *(*(v8 + 48) + a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10008B294()
{
  v1 = v0;
  sub_100024248(&unk_100154370, &qword_100107190);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10008B3D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&unk_100154370, &qword_100107190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_10008BBC8();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10008B5FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10008BBC8();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10008AD84(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10008B670(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_10008B6D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B720(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001CF5C;

  return sub_10008A04C(a1, v5, v6, v4);
}

uint64_t sub_10008B7C0(uint64_t a1)
{
  result = sub_10008B818(&qword_100154180, type metadata accessor for InitialLoadConfigState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B818(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008B880(uint64_t a1)
{
  result = sub_10008B818(&qword_100154118, type metadata accessor for LoadConfigState);
  *(a1 + 8) = result;
  return result;
}

void sub_10008B8E0()
{
  sub_10008B9A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10008B9A8()
{
  if (!qword_1001541B0)
  {
    type metadata accessor for TaskPriority();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001541B0);
    }
  }
}

unint64_t sub_10008BA00(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10008BA1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008BA78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10008BAC8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_10008BB0C()
{
  sub_10008B9A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10008BBC8()
{
  result = qword_100154360;
  if (!qword_100154360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154360);
  }

  return result;
}

unint64_t sub_10008BC1C()
{
  result = qword_100154368;
  if (!qword_100154368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154368);
  }

  return result;
}

uint64_t sub_10008BC84()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_1000241FC();
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10009B71C(&qword_1001525E8, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100024248(&qword_1001525F0, &qword_100103160);
  sub_1000A1E5C(&qword_1001525F8, &qword_1001525F0, &qword_100103160);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015D2F0 = result;
  return result;
}

uint64_t *sub_10008BEEC()
{
  if (qword_10015B390 != -1)
  {
    swift_once();
  }

  return &qword_10015D2F0;
}

id sub_10008BF3C()
{
  if (qword_10015B390 != -1)
  {
    swift_once();
  }

  v1 = qword_10015D2F0;

  return v1;
}

uint64_t sub_10008BFD8(uint64_t a1)
{
  v3 = sub_100024248(&qword_100152B58, &qword_100103560);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  if (qword_10015B390 != -1)
  {
    swift_once();
  }

  v8 = qword_10015D2F0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10008C53C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100024570;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D1C0;
  aBlock[3] = &unk_1001361C0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008C234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152B60, &qword_100103568);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state;
  v10 = *(a1 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state);
  if (v10 <= 1)
  {
    if (*(a1 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state))
    {
      sub_100024248(&qword_100152B58, &qword_100103560);
      result = CheckedContinuation.resume(returning:)();
      v14 = 5;
    }

    else
    {
      v11 = sub_100024248(&qword_100152B58, &qword_100103560);
      v12 = *(v11 - 8);
      (*(v12 + 16))(v8, a2, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v13 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
      swift_beginAccess();
      sub_10002A0E4(v8, a1 + v13);
      result = swift_endAccess();
      v14 = 2;
    }

    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state) <= 3u)
  {
    if (v10 == 2)
    {
      __break(1u);
    }

    __break(1u);
  }

  else if (v10 == 4)
  {
    type metadata accessor for CancellationError();
    sub_10009B71C(&qword_1001548F0, 255, &type metadata accessor for CancellationError);
    v15 = swift_allocError();
    CancellationError.init()();
    v16[1] = v15;
    sub_100024248(&qword_100152B58, &qword_100103560);
    result = CheckedContinuation.resume(throwing:)();
    v14 = 3;
LABEL_8:
    *(a1 + v9) = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008C46C()
{
  v1 = sub_100024248(&qword_100152B58, &qword_100103560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008C53C()
{
  v1 = *(sub_100024248(&qword_100152B58, &qword_100103560) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10008C234(v2, v3);
}

uint64_t sub_10008C5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C5C4()
{
  if (qword_10015B390 != -1)
  {
    swift_once();
  }

  v1 = qword_10015D2F0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10008C9BC;
  *(v2 + 24) = v0;
  v5[4] = sub_1000258CC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001D1C0;
  v5[3] = &unk_100136210;
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

uint64_t sub_10008C72C(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152B58, &qword_100103560);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19[-v5];
  v7 = sub_100024248(&qword_100152B60, &qword_100103568);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v9);
  v14 = &v19[-v13];
  v15 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state;
  v16 = *(a1 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state);
  if (v16 > 2)
  {
    if (v16 - 3 < 2)
    {
      return result;
    }

    __break(1u);
  }

  else if (*(a1 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state))
  {
    if (v16 != 2)
    {
      __break(1u);
      return result;
    }

    v17 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
    swift_beginAccess();
    sub_100025834(a1 + v17, v14, &qword_100152B60, &qword_100103568);
    if ((*(v3 + 48))(v14, 1, v2))
    {
      sub_10002533C(v14, &qword_100152B60, &qword_100103568);
    }

    else
    {
      (*(v3 + 16))(v6, v14, v2);
      sub_10002533C(v14, &qword_100152B60, &qword_100103568);
      CheckedContinuation.resume(returning:)();
      (*(v3 + 8))(v6, v2);
    }

    (*(v3 + 56))(v11, 1, 1, v2);
    swift_beginAccess();
    sub_10002A0E4(v11, a1 + v17);
    result = swift_endAccess();
    v18 = 5;
    goto LABEL_11;
  }

  v18 = 1;
LABEL_11:
  *(a1 + v15) = v18;
  return result;
}

uint64_t sub_10008C9C4()
{
  if (qword_10015B390 != -1)
  {
    swift_once();
  }

  v1 = qword_10015D2F0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10008CE20;
  *(v2 + 24) = v0;
  v5[4] = sub_1000258CC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001D1C0;
  v5[3] = &unk_100136260;
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

uint64_t sub_10008CB2C(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152B58, &qword_100103560);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - v5;
  v7 = sub_100024248(&qword_100152B60, &qword_100103568);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = v20 - v13;
  v15 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state;
  v16 = *(a1 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
      swift_beginAccess();
      sub_100025834(a1 + v18, v14, &qword_100152B60, &qword_100103568);
      if ((*(v3 + 48))(v14, 1, v2))
      {
        sub_10002533C(v14, &qword_100152B60, &qword_100103568);
      }

      else
      {
        (*(v3 + 16))(v6, v14, v2);
        sub_10002533C(v14, &qword_100152B60, &qword_100103568);
        type metadata accessor for CancellationError();
        sub_10009B71C(&qword_1001548F0, 255, &type metadata accessor for CancellationError);
        v19 = swift_allocError();
        CancellationError.init()();
        v20[0] = v19;
        CheckedContinuation.resume(throwing:)();
        (*(v3 + 8))(v6, v2);
      }

      (*(v3 + 56))(v11, 1, 1, v2);
      swift_beginAccess();
      sub_10002A0E4(v11, a1 + v18);
      result = swift_endAccess();
      v17 = 3;
      goto LABEL_11;
    }

    if (v16 == 5)
    {
      return result;
    }

    __break(1u);
  }

  if (v16)
  {
    return result;
  }

  v17 = 4;
LABEL_11:
  *(a1 + v15) = v17;
  return result;
}

uint64_t sub_10008CE38()
{
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation, &qword_100152B60, &qword_100103568);
  v1 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10008CEB8()
{
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation, &qword_100152B60, &qword_100103568);
  v1 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_10008CF74()
{
  Hasher.init(_seed:)();
  (*(*v0 + 152))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10008CFD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
  v5 = sub_100024248(&qword_100152B58, &qword_100103560);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state) = 0;
  return v3;
}

uint64_t sub_10008D078()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
  v2 = sub_100024248(&qword_100152B58, &qword_100103560);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state) = 0;
  return v0;
}

Swift::Int sub_10008D190()
{
  Hasher.init(_seed:)();
  (*(**v0 + 152))(v2);
  return Hasher._finalize()();
}

uint64_t sub_10008D1F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_10008D20C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_10008D230, v2, 0);
}

uint64_t sub_10008D230()
{
  v17 = v0;
  v1 = v0[7];
  if (*(v1 + 112))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = type metadata accessor for ContinuationStore(0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    v0[8] = v7;
    v8 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
    v9 = sub_100024248(&qword_100152B58, &qword_100103560);
    (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
    UUID.init()();
    *(v7 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state) = 0;
    swift_beginAccess();

    sub_10009B3BC(&v16, v7);
    swift_endAccess();

    v11 = sub_10009B71C(&qword_100154380, v10, type metadata accessor for SMCondition);
    v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_10008D438;
    v14 = v0[5];
    v15 = v0[6];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v1, v11, v14, v15, sub_1000A1ED0, v7, &type metadata for () + 8);
  }
}

uint64_t sub_10008D438()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = sub_1000A1ED4;
  }

  else
  {
    v6 = sub_10008D570;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008D570()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10008D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_10008D618, v4, 0);
}

uint64_t sub_10008D618()
{
  v19 = v0;
  v1 = v0[9];
  if (*(v1 + 112))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = type metadata accessor for ContinuationStore(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v0[10] = v11;
    v12 = OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_continuation;
    v13 = sub_100024248(&qword_100152B58, &qword_100103560);
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    UUID.init()();
    *(v11 + OBJC_IVAR____TtC15swtransparencyd17ContinuationStore_state) = 0;
    swift_beginAccess();

    sub_10009B3BC(&v18, v11);
    swift_endAccess();

    sub_10009B71C(&qword_100154380, v14, type metadata accessor for SMCondition);
    v15 = swift_task_alloc();
    v0[11] = v15;
    v15[2] = v5;
    v15[3] = v4;
    v15[4] = v11;
    v15[5] = v7;
    v15[6] = v6;
    v15[7] = v1;
    v16 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_10008D878;
    v21 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }
}

uint64_t sub_10008D878()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_10008DA04;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 72);

    v5 = sub_10008D9A0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10008D9A0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10008DA04()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_10008DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  v10 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008DB1C, a8, 0);
}

uint64_t sub_10008DB1C()
{
  v1 = v0[12];
  v18 = v0[10];
  v19 = v0[11];
  v17 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v2;

  sub_10008E238(v1, &unk_1001079C8, v8);
  sub_10002533C(v1, &unk_100152620, &unk_1001031E0);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v17;
  v9[5] = v18;
  v9[6] = v2;

  sub_10008E238(v1, &unk_1001079D8, v9);
  sub_10002533C(v1, &unk_100152620, &unk_1001031E0);
  v11 = sub_10009B71C(&qword_100154380, v10, type metadata accessor for SMCondition);
  v12 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v13 = swift_task_alloc();
  v0[13] = v13;
  v14 = sub_100024248(&qword_1001548E8, &unk_1001079E0);
  *v13 = v0;
  v13[1] = sub_10008DD7C;
  v15 = v0[5];

  return ThrowingTaskGroup.next(isolation:)(v0 + 15, v19, v11, v14);
}

uint64_t sub_10008DD7C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_10008DF4C;
  }

  else
  {
    v6 = sub_10008DEA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008DEA8()
{
  v1 = *(v0 + 96);
  v2 = **(v0 + 40);
  sub_100024248(&qword_100152630, &qword_100103210);
  ThrowingTaskGroup.cancelAll()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10008DF4C()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  swift_beginAccess();
  sub_10009D5B4(v4);
  swift_endAccess();

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_10008E004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_10008E028, 0, 0);
}

uint64_t sub_10008E028()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10008E0EC;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, v6, v3, sub_1000A1E58, v4, &type metadata for () + 8);
}

uint64_t sub_10008E0EC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008E220, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10008E238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_100025834(a1, v20 - v9, &unk_100152620, &unk_1001031E0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002533C(v10, &unk_100152620, &unk_1001031E0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_10008E428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10008E4EC, 0, 0);
}

uint64_t sub_10008E4EC()
{
  v1 = v0[7];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10008E5AC;
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100029BA0(v5, v4, 0, 0, 1);
}

uint64_t sub_10008E5AC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10008E818;
  }

  else
  {
    v6 = sub_10008E71C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10008E71C()
{
  (*(**(v0 + 32) + 176))();
  type metadata accessor for CancellationError();
  sub_10009B71C(&qword_1001548F0, 255, &type metadata accessor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10008E818()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008E89C()
{
  v1 = v0[12];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = 1;
    swift_beginAccess();
    v2 = *(v1 + 120);
    if ((v2 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ContinuationStore(0);
      sub_10009B71C(&qword_100154388, 255, type metadata accessor for ContinuationStore);
      Set.Iterator.init(_cocoa:)();
      v4 = v0[2];
      v3 = v0[3];
      v6 = v0[4];
      v5 = v0[5];
      v7 = v0[6];
    }

    else
    {
      v8 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v6 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(v2 + 56);
      v4 = *(v1 + 120);
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v11 = (v6 + 64) >> 6;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v12 = __CocoaSet.Iterator.next()();
      if (!v12)
      {
        break;
      }

      v0[11] = v12;
      type metadata accessor for ContinuationStore(0);
      v13 = swift_dynamicCast();
      v14 = v0[10];
      v15 = v5;
      v16 = v7;
      if (!v14)
      {
        break;
      }

      while (1)
      {
        (*(*v14 + 168))(v13);

        v5 = v15;
        v7 = v16;
        if (v4 < 0)
        {
          break;
        }

LABEL_12:
        v17 = v5;
        v18 = v7;
        v15 = v5;
        if (!v7)
        {
          while (1)
          {
            v15 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v15 >= v11)
            {
              goto LABEL_19;
            }

            v18 = *(v3 + 8 * v15);
            ++v17;
            if (v18)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_26;
        }

LABEL_16:
        v16 = (v18 - 1) & v18;
        v14 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v18)))));

        if (!v14)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_19:
    sub_10009B764();

    if (&_swiftEmptyArrayStorage >> 62)
    {
LABEL_26:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v19 = sub_1000A05E0(&_swiftEmptyArrayStorage);
        goto LABEL_21;
      }
    }

    v19 = &_swiftEmptySetSingleton;
LABEL_21:
    v20 = *(v1 + 120);
    *(v1 + 120) = v19;
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10008EB70()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008EB98()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10008EBD0()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_10008EC18()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_10008EC4C(unsigned __int8 a1)
{
  v1 = 0x6F4364616F6C6572;
  v2 = 0x7571655272657375;
  if (a1 != 6)
  {
    v2 = 0x6E776F6474756873;
  }

  v3 = 0xD000000000000011;
  if (a1 != 4)
  {
    v3 = 0x7053746365746564;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1 != 2)
  {
    v1 = 0x50737365636F7270;
  }

  v4 = 0xD000000000000010;
  if (a1)
  {
    v4 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10008ED80(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x676E696E6E7572;
    }

    else
    {
      v3 = 0x646570706F7473;
    }

    v2 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE800000000000000;
    v3 = 0x656C6449696D6573;
  }

  else if (a1 == 3)
  {
    v2 = 0xE400000000000000;
    v3 = 1701602409;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6E776F6474756873;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x676E696E6E7572;
    }

    else
    {
      v8 = 0x646570706F7473;
    }

    v7 = 0xE700000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1701602409;
    if (a2 != 3)
    {
      v5 = 0x6E776F6474756873;
      v4 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x656C6449696D6573;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_10008EEFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006769666ELL;
  v3 = 0x6F4364616F6C6572;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x7571655272657375;
    v12 = 0xEB00000000747365;
    if (a1 != 6)
    {
      v11 = 0x6E776F6474756873;
      v12 = 0xE800000000000000;
    }

    v13 = 0x800000010010CA80;
    v14 = 0xD000000000000011;
    if (a1 != 4)
    {
      v14 = 0x7053746365746564;
      v13 = 0xEF7765695674696CLL;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x50737365636F7270;
    v6 = 0xEA00000000005441;
    if (a1 == 2)
    {
      v5 = 0x6F4364616F6C6572;
      v6 = 0xEC0000006769666ELL;
    }

    v7 = 0xD000000000000010;
    v8 = 0x800000010010CA30;
    if (a1)
    {
      v7 = 0xD000000000000012;
      v8 = 0x800000010010CA50;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEB00000000747365;
        if (v9 != 0x7571655272657375)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x6E776F6474756873)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v2 = 0x800000010010CA80;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v3 = 0x7053746365746564;
    v2 = 0xEF7765695674696CLL;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x800000010010CA50;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x800000010010CA30;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    if (a2 != 2)
    {
      v2 = 0xEA00000000005441;
      if (v9 != 0x50737365636F7270)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }
  }

  if (v9 != v3)
  {
LABEL_44:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_10008F1CC()
{
  String.hash(into:)();
}

Swift::Int sub_10008F330()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008F4A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0834(*a1);
  *a2 = result;
  return result;
}

void sub_10008F4D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006769666ELL;
  v4 = 0x6F4364616F6C6572;
  v5 = 0xEB00000000747365;
  v6 = 0x7571655272657375;
  if (v2 != 6)
  {
    v6 = 0x6E776F6474756873;
    v5 = 0xE800000000000000;
  }

  v7 = 0x800000010010CA80;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0x7053746365746564;
    v7 = 0xEF7765695674696CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 2)
  {
    v4 = 0x50737365636F7270;
    v3 = 0xEA00000000005441;
  }

  v9 = 0xD000000000000010;
  v10 = 0x800000010010CA30;
  if (*v1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x800000010010CA50;
  }

  if (*v1 <= 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_10008F5FC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_10008F634(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_10008F6E4(uint64_t a1)
{
  v3 = (*(*v1 + 128))(v6);
  sub_10008AD84(&v7, a1);
  v3(v6, 0);
  v4 = (*(*v1 + 152))(v6);
  sub_10008F7C8(0, a1);
  return v4(v6, 0);
}

unint64_t sub_10008F7C8(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_10009F924(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_10009E710(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_10009FBBC();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_10009F654(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_10008F888(unsigned __int8 a1)
{
  v3 = (*(*v1 + 128))(v6);
  sub_10009D78C(a1);
  v3(v6, 0);
  v4 = (*(*v1 + 152))(v6);
  sub_10008F7C8(0, a1);
  return v4(v6, 0);
}

uint64_t sub_10008F968(unsigned __int8 a1)
{
  v3 = (*(*v1 + 112))();
  v4 = sub_10008F9CC(a1, v3);

  return v4 & 1;
}

uint64_t sub_10008F9CC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = sub_10008F330(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v23 = ~v6;
    while (1)
    {
      v8 = *(*(a2 + 48) + v7);
      if (v8 > 3)
      {
        if (*(*(a2 + 48) + v7) > 5u)
        {
          if (v8 == 6)
          {
            v9 = 0x7571655272657375;
            v10 = 0xEB00000000747365;
          }

          else
          {
            v10 = 0xE800000000000000;
            v9 = 0x6E776F6474756873;
          }
        }

        else
        {
          v9 = v8 == 4 ? 0xD000000000000011 : 0x7053746365746564;
          v10 = v8 == 4 ? 0x800000010010CA80 : 0xEF7765695674696CLL;
        }
      }

      else if (*(*(a2 + 48) + v7) > 1u)
      {
        v9 = 0x6F4364616F6C6572;
        v10 = 0xEC0000006769666ELL;
        if (v8 != 2)
        {
          v9 = 0x50737365636F7270;
          v10 = 0xEA00000000005441;
        }
      }

      else
      {
        v9 = *(*(a2 + 48) + v7) ? 0xD000000000000012 : 0xD000000000000010;
        v10 = *(*(a2 + 48) + v7) ? 0x800000010010CA50 : 0x800000010010CA30;
      }

      v11 = 0x7571655272657375;
      if (a1 != 6)
      {
        v11 = 0x6E776F6474756873;
      }

      v12 = 0xEB00000000747365;
      if (a1 != 6)
      {
        v12 = 0xE800000000000000;
      }

      v13 = 0x7053746365746564;
      if (a1 == 4)
      {
        v13 = 0xD000000000000011;
      }

      v14 = 0xEF7765695674696CLL;
      if (a1 == 4)
      {
        v14 = 0x800000010010CA80;
      }

      if (a1 <= 5u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x6F4364616F6C6572;
      if (a1 != 2)
      {
        v15 = 0x50737365636F7270;
      }

      v16 = 0xEC0000006769666ELL;
      if (a1 != 2)
      {
        v16 = 0xEA00000000005441;
      }

      v17 = 0xD000000000000012;
      if (a1)
      {
        v18 = 0x800000010010CA50;
      }

      else
      {
        v17 = 0xD000000000000010;
        v18 = 0x800000010010CA30;
      }

      if (a1 <= 1u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = a1 <= 3u ? v15 : v11;
      v20 = a1 <= 3u ? v16 : v12;
      if (v9 == v19 && v10 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v7 = (v7 + 1) & v23;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v21 & 1;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_10008FCF8(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 56) = a1;
  return _swift_task_switch(sub_10008FD1C, v1, 0);
}

uint64_t sub_10008FD1C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = (*(*v1 + 128))(v0 + 16);
  sub_10009D78C(v2);
  v4 = v3(v0 + 16, 0);
  v5 = (*(*v1 + 136))(v4);
  if (*(v5 + 16) && (v6 = sub_10009E710(*(v0 + 56)), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v9 = *(v0 + 48);
  v10 = *(v0 + 56);

  sub_10009B76C();
  v11 = (*(*v9 + 152))(v0 + 16);
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v13;
  *v13 = 0x8000000000000000;
  sub_10009F924(v8, v10, isUniquelyReferenced_nonNull_native);
  *v13 = v18;
  v11(v0 + 16, 0);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10008FEE0()
{
  v1 = (*(*v0 + 136))();
  v2 = v1;
  v18 = &_swiftEmptySetSingleton;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(v2 + 56) + 8 * v12);
    if (*(v13 + 16))
    {
      v14 = *(*(v2 + 48) + v12);
      v15 = *(v13 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v16 = result & ~(-1 << *(v13 + 32));
      if ((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16))
      {
        result = sub_10008AD84(v17, v14);
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v18;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100090050()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100090088()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1000900D0()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[14] = &_swiftEmptySetSingleton;
  v0[15] = sub_1000A0880(&_swiftEmptyArrayStorage);
  v0[16] = sub_1000A09F8(&_swiftEmptyArrayStorage);
  return v0;
}

void *sub_100090134()
{
  swift_defaultActor_initialize();
  v0[14] = &_swiftEmptySetSingleton;
  v0[15] = sub_1000A0880(&_swiftEmptyArrayStorage);
  v0[16] = sub_1000A09F8(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_10009018C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x7053746365746564;
    if (a1 != 8)
    {
      v6 = 0x7964616572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0x69736E6F43746170;
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
    v1 = 0x696C616974696E69;
    v2 = 0x4E726F4674696177;
    v3 = 0x666E6F4364616F6CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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

uint64_t sub_100090304(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10009018C(*a1);
  v5 = v4;
  if (v3 == sub_10009018C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10009038C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10009018C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000903F0()
{
  sub_10009018C(*v0);
  String.hash(into:)();
}

Swift::Int sub_100090444()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10009018C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000904A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0AE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000904D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009018C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100090500()
{
  type metadata accessor for StateMachineEvents();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[14] = &_swiftEmptySetSingleton;
  v0[15] = sub_1000A0880(&_swiftEmptyArrayStorage);
  v0[16] = sub_1000A09F8(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_100090570()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_1000905AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_100090628(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_1000906B8()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000906FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000907A0()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_1000907D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_1000908A4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t sub_100090934()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t sub_10009096C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

uint64_t sub_100090A04()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t sub_100090A3C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t sub_100090B08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100090BB8()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_watchers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100090C00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_watchers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100090CBC(unsigned __int8 a1)
{
  v1 = 0x646570706F7473;
  v2 = 0x656C6449696D6573;
  v3 = 1701602409;
  if (a1 != 3)
  {
    v3 = 0x6E776F6474756873;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x676E696E6E7572;
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

Swift::Int sub_100090D5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100090E38()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100090F00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100090FD8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0B54(*a1);
  *a2 = result;
  return result;
}

void sub_100091008(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x646570706F7473;
  v5 = 0xE800000000000000;
  v6 = 0x656C6449696D6573;
  v7 = 0xE400000000000000;
  v8 = 1701602409;
  if (v2 != 3)
  {
    v8 = 0x6E776F6474756873;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E696E6E7572;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000910A0(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_100091108(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_100091108(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  type metadata accessor for StateMachineEvents();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v9[14] = &_swiftEmptySetSingleton;
  v9[15] = sub_1000A0880(&_swiftEmptyArrayStorage);
  v9[16] = sub_1000A09F8(&_swiftEmptyArrayStorage);
  *(v5 + 112) = v9;
  *(v5 + 160) = 0;
  Logger.init(subsystem:category:)();
  *(v5 + OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_watchers) = &_swiftEmptySetSingleton;
  v60 = a2;
  *(v5 + 136) = a2;
  sub_100025834(a4, v5 + OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_networkMonitor, &qword_100154390, &qword_1001071E0);
  v63 = *(a1 + 16);
  if (v63)
  {
    v58 = a4;
    v59 = v5;
    v10 = 0;
    v11 = a1 + 32;
    v62 = a1;
    while (v10 < *(a1 + 16))
    {
      v64 = *(v11 + 16 * v10);
      ObjectType = swift_getObjectType();
      v15 = *(*(&v64 + 1) + 16);
      swift_unknownObjectRetain();
      v16 = v15(ObjectType, *(&v64 + 1));
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_10002A058(v16);
      v20 = _swiftEmptyDictionarySingleton[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_36;
      }

      v24 = v19;
      if (_swiftEmptyDictionarySingleton[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v18;
          sub_10009FE74();
          v18 = v28;
        }
      }

      else
      {
        sub_10009F234(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_10002A058(v16);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_41;
        }
      }

      a1 = v62;
      if (v24)
      {
        v12 = _swiftEmptyDictionarySingleton[7];
        v13 = *(v12 + 16 * v18);
        *(v12 + 16 * v18) = v64;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v18 >> 6) + 8] |= 1 << v18;
        *(_swiftEmptyDictionarySingleton[6] + v18) = v16;
        *(_swiftEmptyDictionarySingleton[7] + 16 * v18) = v64;
        swift_unknownObjectRelease();
        v26 = _swiftEmptyDictionarySingleton[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_39;
        }

        _swiftEmptyDictionarySingleton[2] = v27;
      }

      if (v63 == ++v10)
      {
        v29 = 0;
        *(v59 + 120) = _swiftEmptyDictionarySingleton;
        v30 = (v62 + 40);
        while (1)
        {
          if (v29 >= *(a1 + 16))
          {
            goto LABEL_37;
          }

          v34 = *(v30 - 1);
          v33 = *v30;
          v35 = swift_getObjectType();
          v36 = *(v33 + 16);
          swift_unknownObjectRetain();
          v37 = v36(v35, v33);
          type metadata accessor for SMCondition();
          v38 = swift_allocObject();
          swift_defaultActor_initialize();
          *(v38 + 112) = 0;
          *(v38 + 120) = &_swiftEmptySetSingleton;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v41 = sub_10002A058(v37);
          v42 = _swiftEmptyDictionarySingleton[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_38;
          }

          v45 = v40;
          if (_swiftEmptyDictionarySingleton[3] >= v44)
          {
            if (v39)
            {
              if ((v40 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              sub_10009FD18();
              if ((v45 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            sub_10009EE10(v44, v39);
            v46 = sub_10002A058(v37);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_41;
            }

            v41 = v46;
            if ((v45 & 1) == 0)
            {
LABEL_26:
              _swiftEmptyDictionarySingleton[(v41 >> 6) + 8] |= 1 << v41;
              *(_swiftEmptyDictionarySingleton[6] + v41) = v37;
              *(_swiftEmptyDictionarySingleton[7] + 8 * v41) = v38;
              swift_unknownObjectRelease();
              v48 = _swiftEmptyDictionarySingleton[2];
              v22 = __OFADD__(v48, 1);
              v49 = v48 + 1;
              if (v22)
              {
                goto LABEL_40;
              }

              _swiftEmptyDictionarySingleton[2] = v49;
              goto LABEL_17;
            }
          }

          v31 = _swiftEmptyDictionarySingleton[7];
          v32 = *(v31 + 8 * v41);
          *(v31 + 8 * v41) = v38;
          swift_unknownObjectRelease();

LABEL_17:
          ++v29;
          v30 += 2;
          a1 = v62;
          if (v63 == v29)
          {
            a4 = v58;
            v5 = v59;
            v50 = *(v59 + 120);
            goto LABEL_32;
          }
        }
      }
    }

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
LABEL_41:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v50 = _swiftEmptyDictionarySingleton;
    *(v5 + 120) = _swiftEmptyDictionarySingleton;
LABEL_32:
    *(v5 + 128) = _swiftEmptyDictionarySingleton;
    if (!v50[2])
    {
      goto LABEL_43;
    }

    v51 = sub_10002A058(v60);
    if (v52)
    {
      v53 = v51;

      v65 = *(v50[7] + 16 * v53);
      swift_unknownObjectRetain();

      *(v5 + 144) = v65;
      swift_beginAccess();
      v54 = *(v5 + 160);
      *(v5 + 160) = 0;
      swift_unknownObjectRetain();

      *(v5 + 168) = 0;
      *(v5 + 192) = a3;
      type metadata accessor for SMCondition();
      v55 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v55 + 112) = 0;
      *(v55 + 120) = &_swiftEmptySetSingleton;
      *(v5 + 176) = v55;
      v56 = swift_allocObject();
      swift_defaultActor_initialize();
      swift_unknownObjectRelease();
      sub_10002533C(a4, &qword_100154390, &qword_1001071E0);
      *(v56 + 112) = 0;
      *(v56 + 120) = &_swiftEmptySetSingleton;
      *(v5 + 184) = v56;
      return v5;
    }
  }

LABEL_43:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100091728()
{
  v1 = v0[8];
  swift_beginAccess();
  if (*(v1 + 168) <= 1u)
  {
    if (!*(v1 + 168))
    {

LABEL_6:
      v3 = v0[8];
      type metadata accessor for SMCondition();
      v4 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v4 + 112) = 0;
      *(v4 + 120) = &_swiftEmptySetSingleton;
      swift_beginAccess();
      v5 = *(v3 + 176);
      *(v3 + 176) = v4;

      v6 = swift_task_alloc();
      v0[9] = v6;
      *v6 = v0;
      v6[1] = sub_1000918F8;
      v7 = v0[8];

      return sub_100091A68();
    }
  }

  else
  {
    *(v1 + 168);
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_6;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000918F8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100091A08, v2, 0);
}

uint64_t sub_100091A08()
{
  v1 = *(v0 + 64);
  sub_100091DE4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100091A88()
{
  sub_100025834(*(v0 + 96) + OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_networkMonitor, v0 + 56, &qword_100154390, &qword_1001071E0);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_100039A18((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_100026F6C((v0 + 16), v2);
    v4 = *(v3 + 32);

    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_100091C6C;
    v7 = *(v0 + 96);

    return v10(&unk_100107200, v7, v2, v3);
  }

  else
  {
    sub_10002533C(v0 + 56, &qword_100154390, &qword_1001071E0);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100091C6C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100091D84, v2, 0);
}

uint64_t sub_100091D84()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100091DE4()
{
  v1 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  if (*(v0 + 168) != 3)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_7;
    }

    if (*(v0 + 168) > 1u || *(v0 + 168))
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  *(v0 + 168) = 1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  sub_10009A588(0, 0, v4, &unk_100107218, v9);

  return sub_10002533C(v4, &unk_100152620, &unk_1001031E0);
}

uint64_t sub_100092084(char a1, uint64_t a2)
{
  type metadata accessor for TransitionWatcher();

  v4 = sub_100027F90(a1, a2);
  swift_beginAccess();

  sub_10009B820(&v6, v4);
  swift_endAccess();

  return v4;
}

uint64_t sub_10009212C(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 240) = a1;
  return _swift_task_switch(sub_100092150, v1, 0);
}

uint64_t sub_100092150()
{
  v0[18] = &_swiftEmptySetSingleton;
  v48 = v0 + 15;
  v1 = v0[20];
  v2 = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_watchers;
  v0[21] = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_watchers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v47 = v0 + 18;
  if ((v3 & 0xC000000000000001) == 0)
  {
    v15 = -1;
    v16 = -1 << *(v3 + 32);
    v9 = v3 + 56;
    v17 = *(v3 + 56);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v0[24] = ~v16;
    v12 = v0 + 24;
    v0[23] = v9;
    v13 = v0 + 23;
    v10 = v15 & v17;
    v0[22] = v3;
    v7 = v0 + 22;
    v14 = 63 - v16;

    v11 = 0;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for TransitionWatcher();
  sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
  Set.Iterator.init(_cocoa:)();
  v6 = v0[7];
  v0[22] = v6;
  v7 = v0 + 22;
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[10];
  v10 = v0[11];
  v0[24] = v8;
  v12 = v0 + 24;
  v0[23] = v9;
  v13 = v0 + 23;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = v8 + 64;
LABEL_7:
    v18 = v10;
    v19 = v11;
    if (!v10)
    {
      v20 = v11;
      do
      {
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_40;
        }

        if (v19 >= (v14 >> 6))
        {
          goto LABEL_19;
        }

        v18 = *(v9 + 8 * v19);
        ++v20;
      }

      while (!v18);
    }

    v21 = (v18 - 1) & v18;
    v22 = *(*(v6 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    goto LABEL_13;
  }

  v24 = __CocoaSet.Iterator.next()();
  if (v24)
  {
    v0[19] = v24;
    swift_dynamicCast();
    v22 = *v48;
    v19 = v11;
    v21 = v10;
LABEL_13:
    v0[26] = v19;
    v0[27] = v21;
    v0[25] = v22;
    if (v22)
    {
      v23 = (*v22 + 232) & 0xFFFFFFFFFFFFLL | 0xFD04000000000000;
      v0[28] = *(*v22 + 232);
      v0[29] = v23;
      v6 = sub_100092644;
      v4 = v22;
      v5 = 0;

      return _swift_task_switch(v6, v4, v5);
    }
  }

LABEL_19:
  v25 = *v12;
  v26 = *v13;
  v27 = *v7;
  sub_10009B764();
  v28 = *v47;
  if ((*v47 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TransitionWatcher();
    sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
    v6 = Set.Iterator.init(_cocoa:)();
    v28 = v0[2];
    v29 = v0[3];
    v31 = v0[4];
    v30 = v0[5];
    v32 = v0[6];
  }

  else
  {
    v33 = -1 << *(v28 + 32);
    v29 = v28 + 56;
    v31 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v28 + 56);

    v30 = 0;
  }

  v36 = (v31 + 64) >> 6;
  if (v28 < 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v37 = v30;
    v38 = v32;
    v39 = v30;
    if (!v32)
    {
      break;
    }

LABEL_30:
    v40 = (v38 - 1) & v38;
    v41 = *(*(v28 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));

    if (!v41)
    {
LABEL_36:
      sub_10009B764();

      v45 = v0[1];

      return v45();
    }

    while (1)
    {
      v43 = v0[20];
      v44 = v0[21];
      swift_beginAccess();
      sub_10009DAC8();
      swift_endAccess();

      v30 = v39;
      v32 = v40;
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_32:
      v42 = __CocoaSet.Iterator.next()();
      if (v42)
      {
        v0[19] = v42;
        type metadata accessor for TransitionWatcher();
        swift_dynamicCast();
        v39 = v30;
        v40 = v32;
        if (*v48)
        {
          continue;
        }
      }

      goto LABEL_36;
    }
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      goto LABEL_36;
    }

    v38 = *(v29 + 8 * v39);
    ++v37;
    if (v38)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100092644()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  *(v0 + 241) = (*(v0 + 224))(*(v0 + 240)) & 1;

  return _swift_task_switch(sub_1000926C0, v3, 0);
}

uint64_t sub_1000926C0()
{
  v38 = v0;
  if (*(v0 + 241))
  {
    sub_10009B820(&v37, *(v0 + 200));
  }

  else
  {
    v1 = *(v0 + 200);
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 176);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 208);
    if (!v6)
    {
      v10 = *(v0 + 208);
      do
      {
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_38;
        }

        if (v9 >= ((*(v0 + 192) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v8 = *(*(v0 + 184) + 8 * v9);
        ++v10;
      }

      while (!v8);
    }

    v11 = (v8 - 1) & v8;
    v12 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));

    goto LABEL_13;
  }

  v13 = __CocoaSet.Iterator.next()();
  if (v13)
  {
    *(v0 + 152) = v13;
    type metadata accessor for TransitionWatcher();
    swift_dynamicCast();
    v12 = *(v0 + 120);
    v9 = v5;
    v11 = v6;
LABEL_13:
    *(v0 + 208) = v9;
    *(v0 + 216) = v11;
    *(v0 + 200) = v12;
    if (v12)
    {
      v14 = (*v12 + 232) & 0xFFFFFFFFFFFFLL | 0xFD04000000000000;
      *(v0 + 224) = *(*v12 + 232);
      *(v0 + 232) = v14;
      v2 = sub_100092644;
      v3 = v12;
      v4 = 0;

      return _swift_task_switch(v2, v3, v4);
    }
  }

LABEL_17:
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 176);
  sub_10009B764();
  v18 = *(v0 + 144);
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TransitionWatcher();
    sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
    v2 = Set.Iterator.init(_cocoa:)();
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v18 + 56);

    v21 = 0;
  }

  v26 = (v20 + 64) >> 6;
  if (v18 < 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v27 = v21;
    v28 = v22;
    v29 = v21;
    if (!v22)
    {
      break;
    }

LABEL_28:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v18 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

    if (!v31)
    {
LABEL_34:
      sub_10009B764();

      v35 = *(v0 + 8);

      return v35();
    }

    while (1)
    {
      v33 = *(v0 + 160);
      v34 = *(v0 + 168);
      swift_beginAccess();
      sub_10009DAC8();
      swift_endAccess();

      v21 = v29;
      v22 = v30;
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_30:
      v32 = __CocoaSet.Iterator.next()();
      if (v32)
      {
        *(v0 + 152) = v32;
        type metadata accessor for TransitionWatcher();
        swift_dynamicCast();
        v29 = v21;
        v30 = v22;
        if (*(v0 + 120))
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      goto LABEL_34;
    }

    v28 = *(v19 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100092A94(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 128) = a1;
  v5 = *(*(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100092B5C, a3, 0);
}

uint64_t sub_100092B5C()
{
  if (*(v0 + 128) == 1)
  {
    v1 = *(*(v0 + 32) + 112);
    *(v0 + 72) = v1;
    v2 = (*v1 + 224) & 0xFFFFFFFFFFFFLL | 0x45EE000000000000;
    *(v0 + 80) = *(*v1 + 224);
    *(v0 + 88) = v2;

    return _swift_task_switch(sub_100092CC4, v1, 0);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no network", v5, 2u);
    }

    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100092CC4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  *(v0 + 96) = (*(v0 + 80))();

  return _swift_task_switch(sub_100092D38, v3, 0);
}

uint64_t sub_100092D38()
{
  v59 = v0;
  v1 = *(v0 + 32);
  if (!*(*(v0 + 96) + 16))
  {
    v14 = *(v0 + 48);
    v15 = *(v0 + 24);
    v16 = *(v0 + 96);

    sub_100025834(v15, v14, &qword_100152F00, &qword_1001042C0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 48);
    if (v19)
    {
      v21 = *(v0 + 40);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v58[0] = v23;
      *v22 = 136315138;
      sub_100025834(v20, v21, &qword_100152F00, &qword_1001042C0);
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 48))(v21, 1, v24);
      v27 = *(v0 + 40);
      if (v26 == 1)
      {
        sub_10002533C(*(v0 + 40), &qword_100152F00, &qword_1001042C0);
        v28 = 0xE100000000000000;
        v29 = 45;
      }

      else
      {
        v50 = *(v0 + 40);
        v29 = URL.description.getter();
        v28 = v51;
        (*(v25 + 8))(v27, v24);
      }

      sub_10002533C(*(v0 + 48), &qword_100152F00, &qword_1001042C0);
      v52 = sub_100021D24(v29, v28, v58);

      *(v22 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v17, v18, "have network %s, no waiters", v22, 0xCu);
      sub_100024E14(v23);
    }

    else
    {

      sub_10002533C(v20, &qword_100152F00, &qword_1001042C0);
    }

LABEL_25:
    v54 = *(v0 + 56);
    v53 = *(v0 + 64);
    v56 = *(v0 + 40);
    v55 = *(v0 + 48);

    v57 = *(v0 + 8);

    return v57();
  }

  sub_100025834(*(v0 + 24), *(v0 + 64), &qword_100152F00, &qword_1001042C0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v7 = 136315394;
    sub_100025834(v5, v6, &qword_100152F00, &qword_1001042C0);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v6, 1, v8);
    v11 = *(v0 + 56);
    if (v10 == 1)
    {
      sub_10002533C(*(v0 + 56), &qword_100152F00, &qword_1001042C0);
      v12 = 0xE100000000000000;
      v13 = 45;
    }

    else
    {
      v30 = *(v0 + 56);
      v13 = URL.description.getter();
      v12 = v31;
      (*(v9 + 8))(v11, v8);
    }

    v32 = *(v0 + 96);
    sub_10002533C(*(v0 + 64), &qword_100152F00, &qword_1001042C0);
    v33 = sub_100021D24(v13, v12, v58);

    *(v7 + 4) = v33;
    *(v7 + 12) = 2082;
    *(v0 + 16) = sub_100093618(v32);
    sub_100024248(&qword_100153E08, qword_1001069A0);
    sub_1000A1E5C(&qword_1001548B0, &qword_100153E08, qword_1001069A0);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    v37 = sub_100021D24(v34, v36, v58);

    *(v7 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v2, v3, "have network %s, waking up: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002533C(v5, &qword_100152F00, &qword_1001042C0);
  }

  v38 = *(v0 + 96);
  v39 = *(v38 + 32);
  *(v0 + 129) = v39;
  v40 = -1;
  v41 = -1 << v39;
  if (-(-1 << v39) < 64)
  {
    v40 = ~(-1 << -(-1 << v39));
  }

  v42 = v40 & *(v38 + 56);
  if (!v42)
  {
    v44 = 0;
    v45 = ((63 - v41) >> 6) - 1;
    while (v45 != v44)
    {
      v43 = v44 + 1;
      v42 = *(v38 + 8 * v44++ + 64);
      if (v42)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_25;
  }

  v43 = 0;
LABEL_19:
  *(v0 + 104) = v42;
  *(v0 + 112) = v43;
  v46 = *(*(v38 + 48) + (__clz(__rbit64(v42)) | (v43 << 6)));
  v47 = swift_task_alloc();
  *(v0 + 120) = v47;
  *v47 = v0;
  v47[1] = sub_1000933A4;
  v48 = *(v0 + 32);

  return sub_100093974(v46);
}

uint64_t sub_1000933A4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000934B4, v2, 0);
}

void sub_1000934B4()
{
  v1 = *(v0 + 112);
  v2 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v2)
  {
    v3 = *(v0 + 96);
LABEL_7:
    *(v0 + 104) = v2;
    *(v0 + 112) = v1;
    v5 = *(*(v3 + 48) + (__clz(__rbit64(v2)) | (v1 << 6)));
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_1000933A4;
    v7 = *(v0 + 32);

    sub_100093974(v5);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 96);
      if (v4 >= (((1 << *(v0 + 129)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);

    v12 = *(v0 + 8);

    v12();
  }
}

uint64_t sub_100093618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v27 = *(a1 + 16);
  sub_10007DDF0(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_36;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 > 3)
    {
      if (*(*(a1 + 48) + result) > 5u)
      {
        if (v11 == 6)
        {
          v12 = 0x7571655272657375;
          v13 = 0xEB00000000747365;
        }

        else
        {
          v13 = 0xE800000000000000;
          v12 = 0x6E776F6474756873;
        }
      }

      else if (v11 == 4)
      {
        v12 = 0xD000000000000011;
        v13 = 0x800000010010CA80;
      }

      else
      {
        v12 = 0x7053746365746564;
        v13 = 0xEF7765695674696CLL;
      }
    }

    else if (*(*(a1 + 48) + result) > 1u)
    {
      if (v11 == 2)
      {
        v12 = 0x6F4364616F6C6572;
        v13 = 0xEC0000006769666ELL;
      }

      else
      {
        v13 = 0xEA00000000005441;
        v12 = 0x50737365636F7270;
      }
    }

    else if (*(*(a1 + 48) + result))
    {
      v12 = 0xD000000000000012;
      v13 = 0x800000010010CA50;
    }

    else
    {
      v12 = 0xD000000000000010;
      v13 = 0x800000010010CA30;
    }

    v14 = *(a1 + 36);
    v16 = *(&_swiftEmptyArrayStorage + 2);
    v15 = *(&_swiftEmptyArrayStorage + 3);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_10007DDF0((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(&_swiftEmptyArrayStorage + 2) = v16 + 1;
    v17 = &_swiftEmptyArrayStorage + 2 * v16;
    v17[4] = v12;
    v17[5] = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_37;
    }

    v3 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_38;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_39;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_100024A68(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_100024A68(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_100093974(char a1)
{
  *(v2 + 192) = v1;
  *(v2 + 154) = a1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  *(v2 + 200) = v3;
  v4 = *(v3 - 8);
  *(v2 + 208) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v2 + 232) = v6;
  v7 = *(v6 - 8);
  *(v2 + 240) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100093AA0, v1, 0);
}

uint64_t sub_100093AA0()
{
  v60 = v0;
  v1 = *(v0 + 192);
  *(v0 + 256) = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v5 = 136446722;
    swift_beginAccess();
    v6 = *(v4 + 168);
    if (v6 <= 1)
    {
      v7 = 0xE700000000000000;
      if (v6)
      {
        v8 = 0x676E696E6E7572;
      }

      else
      {
        v8 = 0x646570706F7473;
      }
    }

    else if (v6 == 2)
    {
      v7 = 0xE800000000000000;
      v8 = 0x656C6449696D6573;
    }

    else if (v6 == 3)
    {
      v7 = 0xE400000000000000;
      v8 = 1701602409;
    }

    else
    {
      v7 = 0xE800000000000000;
      v8 = 0x6E776F6474756873;
    }

    v9 = *(v0 + 192);
    v10 = *(v0 + 154);
    v11 = sub_100021D24(v8, v7, &v59);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2082;
    swift_beginAccess();
    v12 = *(v9 + 144);
    v13 = *(v9 + 152);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v11) = v15(ObjectType, v13);
    swift_unknownObjectRelease();
    v16 = sub_10009018C(v11);
    v18 = sub_100021D24(v16, v17, &v59);

    v19 = 0xEC0000006769666ELL;
    v20 = 0x6F4364616F6C6572;
    *(v5 + 14) = v18;
    v21 = 0xEB00000000747365;
    *(v5 + 22) = 2082;
    v22 = 0x7571655272657375;
    if (v10 != 6)
    {
      v22 = 0x6E776F6474756873;
      v21 = 0xE800000000000000;
    }

    v23 = 0x800000010010CA80;
    v24 = 0xD000000000000011;
    if (v10 != 4)
    {
      v24 = 0x7053746365746564;
      v23 = 0xEF7765695674696CLL;
    }

    if (v10 <= 5)
    {
      v22 = v24;
      v21 = v23;
    }

    if (v10 != 2)
    {
      v20 = 0x50737365636F7270;
      v19 = 0xEA00000000005441;
    }

    v25 = 0xD000000000000010;
    v26 = 0x800000010010CA30;
    if (v10)
    {
      v25 = 0xD000000000000012;
      v26 = 0x800000010010CA50;
    }

    if (v10 <= 1)
    {
      v20 = v25;
      v19 = v26;
    }

    if (v10 <= 3)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    if (v10 <= 3)
    {
      v28 = v19;
    }

    else
    {
      v28 = v21;
    }

    v29 = sub_100021D24(v27, v28, &v59);

    *(v5 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v2, v3, "SM: %{public}s state %{public}s recved %{public}s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v30 = *(v0 + 192);
  swift_beginAccess();
  v31 = *(v30 + 168);
  if (v31 >= 4)
  {
    goto LABEL_35;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
LABEL_37:
    v34 = *(v0 + 248);
    v35 = *(v0 + 216);
    v36 = *(v0 + 224);

    v37 = *(v0 + 8);

    return v37();
  }

  if (*(v30 + 168) <= 1u && !*(v30 + 168))
  {
LABEL_35:

    goto LABEL_37;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_37;
  }

  if (*(*(v0 + 192) + 168) == 2)
  {

LABEL_43:
    v40 = *(v0 + 248);
    static Clock<>.continuous.getter();
    *(v0 + 176) = xmmword_1001071A0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    *(v0 + 152) = 1;
    v41 = sub_100094354;
    v42 = 0;
LABEL_52:

    return _swift_task_switch(v41, v42, 0);
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_43;
  }

  if (*(*(v0 + 192) + 168) == 3)
  {
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
LABEL_51:
      v42 = *(*(v0 + 192) + 112);
      *(v0 + 376) = v42;
      v57 = (*v42 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
      *(v0 + 384) = *(*v42 + 184);
      *(v0 + 392) = v57;
      v41 = sub_10009550C;
      goto LABEL_52;
    }
  }

  v44 = *(v0 + 192);
  v45 = *(v0 + 154);
  swift_beginAccess();
  v46 = *(v44 + 144);
  v47 = *(v44 + 152);
  v48 = swift_getObjectType();
  v49 = *(v47 + 24);
  swift_unknownObjectRetain();
  v50 = v49(v48, v47);
  swift_unknownObjectRelease();
  LOBYTE(v46) = sub_10008F9CC(v45, v50);

  if ((v46 & 1) == 0)
  {
    goto LABEL_51;
  }

  *(v0 + 288) = *(v44 + 144);
  v51 = *(v44 + 152);
  v52 = swift_getObjectType();
  v53 = *(v51 + 40);
  swift_unknownObjectRetain();
  v58 = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  *(v0 + 296) = v55;
  *v55 = v0;
  v55[1] = sub_100094A88;
  v56 = *(v0 + 154);

  return v58(v56, v52, v51);
}

uint64_t sub_100094354()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = sub_10009B71C(&qword_100152CC8, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10009B71C(&qword_100152CD0, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[33] = v8;
  v0[34] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = sub_1000944E0;
  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 17, v12, v7);
}

uint64_t sub_1000944E0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v19 = *v1;

  if (v0)
  {
    v5 = v2[33];
    v4 = v2[34];
    v6 = v2[28];
    v7 = v2[25];

    v5(v6, v7);
    v8 = sub_100094A0C;
    v9 = 0;
  }

  else
  {
    v11 = v2[33];
    v10 = v2[34];
    v13 = v2[30];
    v12 = v2[31];
    v14 = v2[28];
    v15 = v2[29];
    v17 = v2 + 24;
    v16 = v2[24];
    v11(v14, v17[1]);
    (*(v13 + 8))(v12, v15);
    v8 = sub_100094654;
    v9 = v16;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100094654()
{
  if (*(*(v0 + 192) + 168) == 2)
  {

LABEL_4:
    v2 = *(v0 + 248);
    static Clock<>.continuous.getter();
    *(v0 + 176) = xmmword_1001071A0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    *(v0 + 152) = 1;
    v3 = sub_100094354;
    v4 = 0;
LABEL_13:

    return _swift_task_switch(v3, v4, 0);
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(v0 + 192) + 168) == 3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
LABEL_12:
      v4 = *(*(v0 + 192) + 112);
      *(v0 + 376) = v4;
      v20 = (*v4 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
      *(v0 + 384) = *(*v4 + 184);
      *(v0 + 392) = v20;
      v3 = sub_10009550C;
      goto LABEL_13;
    }
  }

  v6 = *(v0 + 192);
  v7 = *(v0 + 154);
  swift_beginAccess();
  v8 = *(v6 + 144);
  v9 = *(v6 + 152);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 24);
  swift_unknownObjectRetain();
  v12 = v11(ObjectType, v9);
  swift_unknownObjectRelease();
  LOBYTE(v8) = sub_10008F9CC(v7, v12);

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  *(v0 + 288) = *(v6 + 144);
  v13 = *(v6 + 152);
  v14 = swift_getObjectType();
  v15 = *(v13 + 40);
  swift_unknownObjectRetain();
  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  *v17 = v0;
  v17[1] = sub_100094A88;
  v18 = *(v0 + 154);

  return v21(v18, v14, v13);
}

uint64_t sub_100094A0C()
{
  v1 = v0[24];
  (*(v0[30] + 8))(v0[31], v0[29]);

  return _swift_task_switch(sub_1000A1EB0, v1, 0);
}

uint64_t sub_100094A88(char a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 155) = a1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100094BBC, v4, 0);
}

uint64_t sub_100094BBC()
{
  v41 = v0;
  v1 = *(v0 + 155);
  if (v1 == 10)
  {
    v7 = *(*(v0 + 192) + 112);
    *(v0 + 352) = v7;
    v8 = (*v7 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 360) = *(*v7 + 184);
    *(v0 + 368) = v8;
    v9 = sub_100095488;
  }

  else
  {
    if (v1 == 11)
    {
      v2 = *(v0 + 248);
      v3 = *(v0 + 216);
      v4 = *(v0 + 224);

      v5 = *(v0 + 8);

      return v5();
    }

    v10 = *(v0 + 256);
    v11 = *(v0 + 192);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 192);
      v15 = *(v0 + 154);
      v16 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v16 = 136446722;
      v17 = *(v14 + 144);
      v18 = *(v14 + 152);
      ObjectType = swift_getObjectType();
      v20 = *(v18 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v18) = v20(ObjectType, v18);
      swift_unknownObjectRelease();
      v21 = sub_10009018C(v18);
      v23 = sub_100021D24(v21, v22, &v40);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2082;
      if (v15 > 3)
      {
        v30 = 0xE800000000000000;
        v31 = 0x6E776F6474756873;
        if (v15 == 6)
        {
          v31 = 0x7571655272657375;
          v30 = 0xEB00000000747365;
        }

        v32 = 0x800000010010CA80;
        v33 = 0xD000000000000011;
        if (v15 != 4)
        {
          v33 = 0x7053746365746564;
          v32 = 0xEF7765695674696CLL;
        }

        if (v15 <= 5)
        {
          v28 = v33;
        }

        else
        {
          v28 = v31;
        }

        if (v15 <= 5)
        {
          v29 = v32;
        }

        else
        {
          v29 = v30;
        }
      }

      else
      {
        v24 = 0xEC0000006769666ELL;
        v25 = 0x6F4364616F6C6572;
        if (v15 != 2)
        {
          v25 = 0x50737365636F7270;
          v24 = 0xEA00000000005441;
        }

        v26 = 0xD000000000000010;
        v27 = 0x800000010010CA30;
        if (v15)
        {
          v26 = 0xD000000000000012;
          v27 = 0x800000010010CA50;
        }

        if (v15 <= 1)
        {
          v28 = v26;
        }

        else
        {
          v28 = v25;
        }

        if (v15 <= 1)
        {
          v29 = v27;
        }

        else
        {
          v29 = v24;
        }
      }

      v34 = *(v0 + 155);
      v35 = sub_100021D24(v28, v29, &v40);

      *(v16 + 14) = v35;
      *(v16 + 22) = 2082;
      v36 = sub_10009018C(v34);
      v38 = sub_100021D24(v36, v37, &v40);

      *(v16 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v12, v13, "SM: %{public}s recved %{public}s and transitioned to %{public}s", v16, 0x20u);
      swift_arrayDestroy();
    }

    v7 = *(*(v0 + 192) + 112);
    *(v0 + 304) = v7;
    v39 = (*v7 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
    *(v0 + 312) = *(*v7 + 192);
    *(v0 + 320) = v39;
    v9 = sub_100094FB4;
  }

  return _swift_task_switch(v9, v7, 0);
}

uint64_t sub_100094FB4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  (*(v0 + 312))(*(v0 + 154));

  return _swift_task_switch(sub_100095028, v3, 0);
}

uint64_t sub_100095028()
{
  v1 = *(*(v0 + 192) + 120);
  if (!*(v1 + 16) || (v2 = sub_10002A058(*(v0 + 155)), (v3 & 1) == 0))
  {
    v6 = *(v0 + 155);
    _StringGuts.grow(_:)(28);
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    v7._object = 0x800000010010CBF0;
    v7._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v7);
    *(v0 + 153) = v6;
    _print_unlocked<A, B>(_:_:)();
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = *(v0 + 192);
  v5 = (*(v1 + 56) + 16 * v2);
  *(v0 + 328) = *v5;
  *(v0 + 336) = v5[1];
  if (*(v4 + 168) == 3)
  {
    swift_unknownObjectRetain();

LABEL_7:
    v12 = *(v0 + 192);
    type metadata accessor for SMCondition();
    v13 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v13 + 112) = 0;
    *(v13 + 120) = &_swiftEmptySetSingleton;
    swift_beginAccess();
    v14 = *(v12 + 184);
    *(v12 + 184) = v13;

    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRetain();

  if (v11)
  {
    goto LABEL_7;
  }

LABEL_8:
  v15 = swift_task_alloc();
  *(v0 + 344) = v15;
  *v15 = v0;
  v15[1] = sub_1000952C8;
  v16 = *(v0 + 192);
  v17 = *(v0 + 155);

  return sub_10009212C(v17);
}

uint64_t sub_1000952C8()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1000953D8, v2, 0);
}

uint64_t sub_1000953D8()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 144);
  *(v1 + 144) = *(v0 + 328);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_100091DE4();
  swift_unknownObjectRelease();
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100095488()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  (*(v0 + 360))(*(v0 + 154));
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10009550C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  (*(v0 + 384))(*(v0 + 154));
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100095590(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 105) = a1;
  return _swift_task_switch(sub_1000955B4, v1, 0);
}

uint64_t sub_1000955B4()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16) && (v3 = sub_10002A058(*(v0 + 105)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 88) = v5;
    swift_endAccess();
    v6 = *(*v5 + 152);

    v14 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_1000957F8;

    return v14(0x746E652874696177, 0xEC000000293A7265);
  }

  else
  {
    v10 = *(v0 + 105);
    swift_endAccess();
    _StringGuts.grow(_:)(29);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v11._object = 0x800000010010CC10;
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v11);
    *(v0 + 104) = v10;
    _print_unlocked<A, B>(_:_:)();
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1000957F8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_100095908, v2, 0);
}

uint64_t sub_100095908()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 105);
  type metadata accessor for SMCondition();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v5 = *(v2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 128);
  *(v2 + 128) = 0x8000000000000000;
  sub_10009FA70(v4, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 128) = v9;
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000959F8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 129) = a1;
  return _swift_task_switch(sub_100095A20, v3, 0);
}

uint64_t sub_100095A20()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16) && (v3 = sub_10002A058(*(v0 + 129)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 104) = v5;
    swift_endAccess();
    v6 = *(*v5 + 160);

    v16 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100095C68;
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);

    return v16(v10, v9, 0xD000000000000014, 0x800000010010CC30);
  }

  else
  {
    v12 = *(v0 + 129);
    swift_endAccess();
    _StringGuts.grow(_:)(29);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD00000000000001BLL;
    v13._object = 0x800000010010CC10;
    String.append(_:)(v13);
    *(v0 + 128) = v12;
    _print_unlocked<A, B>(_:_:)();
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100095C68()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_100095E88;
  }

  else
  {
    v6 = sub_100095D94;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100095D94()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 129);
  type metadata accessor for SMCondition();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v5 = *(v2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 128);
  *(v2 + 128) = 0x8000000000000000;
  sub_10009FA70(v4, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 128) = v9;
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100095E88()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_100095EEC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 72) = a1;
  return _swift_task_switch(sub_100095F14, v3, 0);
}

uint64_t sub_100095F14()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v4) = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  v7 = sub_10009018C(v4);
  v9 = v8;
  if (v7 == sub_10009018C(v2) && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v13 = swift_task_alloc();
      *(v0 + 64) = v13;
      *v13 = v0;
      v13[1] = sub_1000960C0;
      v14 = *(v0 + 48);
      v15 = *(v0 + 56);
      v16 = *(v0 + 40);
      v17 = *(v0 + 72);

      return sub_1000959F8(v17, v16, v14);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000960C0()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000961B4(char a1)
{
  *(v2 + 104) = v1;
  *(v2 + 144) = a1;
  return _swift_task_switch(sub_1000961D8, v1, 0);
}

uint64_t sub_1000961D8()
{
  v1 = v0[13];
  swift_beginAccess();
  if (*(v1 + 168) == 3)
  {
    goto LABEL_9;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_10;
  }

  if (*(v1 + 168) <= 1u && *(v1 + 168))
  {
LABEL_9:

    goto LABEL_10;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    v4 = v0[1];

    return v4();
  }

LABEL_10:
  v6 = v0[13];
  *(v1 + 168) = 4;
  v7 = *(v6 + 192);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_10009642C;
  v9 = v0[13];

  return sub_100093974(v7);
}

uint64_t sub_10009642C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_10009653C, v2, 0);
}

uint64_t sub_10009653C()
{
  sub_100025834(*(v0 + 104) + OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_networkMonitor, v0 + 16, &qword_100154390, &qword_1001071E0);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_100026F6C((v0 + 16), *(v0 + 40));
    v3 = *(v2 + 40);
    v17 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_100096818;
    v6 = v1;
    v7 = v2;
    v8 = v17;

    return v8(v6, v7);
  }

  sub_10002533C(v0 + 16, &qword_100154390, &qword_1001071E0);
  if (*(v0 + 144))
  {
    v10 = *(v0 + 104);
    swift_beginAccess();
    v11 = *(v10 + 176);
    *(v0 + 128) = v11;
    v12 = *(*v11 + 152);

    v16 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_100096AD0;
    v7 = 0xEB00000000293A74;
    v6 = 0x69617728706F7473;
    v8 = v16;

    return v8(v6, v7);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100096818()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100096928, v2, 0);
}

uint64_t sub_100096928()
{
  sub_100024E14((v0 + 16));
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 104);
    swift_beginAccess();
    v2 = *(v1 + 176);
    *(v0 + 128) = v2;
    v3 = *(*v2 + 152);

    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_100096AD0;

    return v8(0x69617728706F7473, 0xEB00000000293A74);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100096AD0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100096BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001CF5C;

  return sub_100096C70();
}

uint64_t sub_100096C70()
{
  *(v1 + 280) = v0;
  v2 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  *(v1 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_100096D0C, v0, 0);
}

uint64_t sub_100096D0C()
{
  v52 = v0;
  v1 = *(v0 + 280);
  v2 = sub_10009B71C(&qword_1001548A8, 255, type metadata accessor for SWTStateMachine);
  v3 = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_logger;
  *(v0 + 296) = v2;
  *(v0 + 304) = v3;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 312) = 0;
  v4 = *(v0 + 280);
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  *(v0 + 184) = *(v0 + 200);
  *(v0 + 192) = *(v0 + 208);
  v5._countAndFlagsBits = 0x63614D6574617453;
  v5._object = 0xEE00203A656E6968;
  String.append(_:)(v5);
  v6 = v4[18];
  v7 = v4[19];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v7) = v9(ObjectType, v7);
  swift_unknownObjectRelease();
  *(v0 + 552) = v7;
  _print_unlocked<A, B>(_:_:)();
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  String.utf8CString.getter();

  *(v0 + 320) = os_transaction_create();

  v12 = v4[18];
  v13 = v4[19];
  v14 = swift_getObjectType();
  v15 = *(v13 + 16);
  swift_unknownObjectRetain();
  v16 = v15(v14, v13);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v17 = v4[16];
  if (*(v17 + 16) && (v18 = sub_10002A058(v16), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    *(v0 + 328) = v20;
    swift_endAccess();
    v21 = *(*v20 + 168);

    v50 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 336) = v23;
    *v23 = v0;
    v23[1] = sub_1000972AC;

    return v50();
  }

  else
  {
    swift_endAccess();
    v25 = *(v0 + 304);
    v26 = *(v0 + 280);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 280);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51 = v31;
      *v30 = 136446210;
      v32 = *(v29 + 144);
      v33 = *(v29 + 152);
      v34 = swift_getObjectType();
      v35 = *(v33 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v33) = v35(v34, v33);
      swift_unknownObjectRelease();
      v36 = sub_10009018C(v33);
      v38 = sub_100021D24(v36, v37, &v51);

      *(v30 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "SM: activating state %{public}s", v30, 0xCu);
      sub_100024E14(v31);
    }

    v39 = *(v0 + 288);
    v40 = *(v0 + 296);
    v41 = *(v0 + 280);
    v42 = *(v41 + 144);
    v43 = *(v41 + 152);
    v44 = swift_getObjectType();
    v45 = *(v43 + 32);
    swift_unknownObjectRetain();
    v45(v44, v43);
    swift_unknownObjectRelease();
    v46 = swift_allocObject();
    v46[2] = v41;
    v46[3] = v40;
    v46[4] = v41;
    swift_retain_n();
    v47 = sub_10009AAC4(0, 0, v39, &unk_100107968, v46);
    *(v0 + 344) = v47;
    v48 = async function pointer to Task<>.value.getter[1];
    v49 = swift_task_alloc();
    *(v0 + 352) = v49;
    *v49 = v0;
    v49[1] = sub_100097664;

    return Task<>.value.getter(v0 + 264, v47, &type metadata for SWTStateMachine.SMTransition);
  }
}

uint64_t sub_1000972AC()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 280);
  v5 = *v0;

  return _swift_task_switch(sub_1000973D8, v3, 0);
}

uint64_t sub_1000973D8()
{
  v28 = v0;
  v1 = v0[38];
  v2 = v0[35];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    v8 = *(v5 + 144);
    v9 = *(v5 + 152);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v9) = v11(ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = sub_10009018C(v9);
    v14 = sub_100021D24(v12, v13, &v27);

    *(v6 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "SM: activating state %{public}s", v6, 0xCu);
    sub_100024E14(v7);
  }

  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[35];
  v18 = *(v17 + 144);
  v19 = *(v17 + 152);
  v20 = swift_getObjectType();
  v21 = *(v19 + 32);
  swift_unknownObjectRetain();
  v21(v20, v19);
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = v16;
  v22[4] = v17;
  swift_retain_n();
  v23 = sub_10009AAC4(0, 0, v15, &unk_100107968, v22);
  v0[43] = v23;
  v24 = async function pointer to Task<>.value.getter[1];
  v25 = swift_task_alloc();
  v0[44] = v25;
  *v25 = v0;
  v25[1] = sub_100097664;

  return Task<>.value.getter(v0 + 33, v23, &type metadata for SWTStateMachine.SMTransition);
}

uint64_t sub_100097664()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_100097774, v2, 0);
}

uint64_t sub_100097774()
{
  v66 = v0;
  v1 = *(v0 + 264);
  *(v0 + 360) = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = *(v0 + 320);
      v3 = *(v0 + 280);
      swift_unknownObjectRelease();
      v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v5 = *(v3 + 160);
      *(v3 + 160) = v4;

      v6 = async function pointer to Task.value.getter[1];
      v7 = swift_task_alloc();
      *(v0 + 368) = v7;
      v8 = sub_100024248(&qword_100152630, &qword_100103210);
      *v7 = v0;
      v7[1] = sub_100097F48;

      return Task.value.getter(v0 + 554, v4, &type metadata for SMState, v8, &protocol self-conformance witness table for Error);
    }

    v50 = *(*(v0 + 280) + 168);
    if (v50 >= 4)
    {
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        v55 = *(v0 + 280);
        *(v55 + 168) = 2;
        v56 = *(v55 + 112);
        *(v0 + 400) = v56;
        v57 = (*v56 + 208) & 0xFFFFFFFFFFFFLL | 0xD1C2000000000000;
        *(v0 + 408) = *(*v56 + 208);
        *(v0 + 416) = v57;

        return _swift_task_switch(sub_1000987C0, v56, 0);
      }
    }

    v58 = *(v0 + 280);
    *(v58 + 168) = 0;
    swift_beginAccess();
    v59 = *(v58 + 176);
    *(v0 + 384) = v59;
    v60 = *(*v59 + 168);

    v64 = (v60 + *v60);
    v61 = v60[1];
    v62 = swift_task_alloc();
    *(v0 + 392) = v62;
    *v62 = v0;
    v62[1] = sub_10009861C;

    return v64();
  }

  else
  {
    *(v0 + 512) = *(v0 + 312);
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 280);
      v14 = swift_slowAlloc();
      *(v0 + 272) = swift_slowAlloc();
      *v14 = 136446722;
      v15 = *(v13 + 168);
      v16 = 0xE800000000000000;
      v17 = 0x656C6449696D6573;
      v18 = 0xE400000000000000;
      v19 = 1701602409;
      if (v15 != 3)
      {
        v19 = 0x6E776F6474756873;
        v18 = 0xE800000000000000;
      }

      if (v15 != 2)
      {
        v17 = v19;
        v16 = v18;
      }

      v20 = 0x676E696E6E7572;
      if (!*(v13 + 168))
      {
        v20 = 0x646570706F7473;
      }

      if (*(v13 + 168) <= 1u)
      {
        v21 = v20;
      }

      else
      {
        v21 = v17;
      }

      if (*(v13 + 168) <= 1u)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = v16;
      }

      v23 = *(v0 + 280);
      v24 = sub_100021D24(v21, v22, (v0 + 272));

      *(v14 + 4) = v24;
      *(v14 + 12) = 2082;
      v25 = *(v23 + 144);
      v26 = *(v23 + 152);
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v24) = v28(ObjectType, v26);
      swift_unknownObjectRelease();
      v29 = sub_10009018C(v24);
      v31 = sub_100021D24(v29, v30, (v0 + 272));

      *(v14 + 14) = v31;
      *(v14 + 22) = 2082;
      v32 = sub_10009018C(v1);
      v34 = sub_100021D24(v32, v33, (v0 + 272));

      *(v14 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v11, v12, "SM: %{public}s transition from %{public}s to %{public}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    v35 = *(*(v0 + 280) + 120);
    if (*(v35 + 16) && (v36 = sub_10002A058(v1), (v37 & 1) != 0))
    {
      v38 = *(v0 + 304);
      v39 = *(v0 + 280);
      v40 = (*(v35 + 56) + 16 * v36);
      *(v0 + 528) = *v40;
      *(v0 + 536) = v40[1];
      swift_unknownObjectRetain();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v65[0] = v44;
        *v43 = 136446210;
        v45 = sub_10009018C(v1);
        v47 = sub_100021D24(v45, v46, v65);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "next state: %{public}s", v43, 0xCu);
        sub_100024E14(v44);
      }

      v48 = swift_task_alloc();
      *(v0 + 544) = v48;
      *v48 = v0;
      v48[1] = sub_1000997EC;
      v49 = *(v0 + 280);

      return sub_10009212C(v1);
    }

    else
    {
      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      *(v0 + 216) = 0;
      *(v0 + 224) = 0xE000000000000000;
      v51._object = 0x800000010010CBF0;
      v51._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v51);
      *(v0 + 553) = v1;
      _print_unlocked<A, B>(_:_:)();
      v52 = *(v0 + 216);
      v53 = *(v0 + 224);
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }
}

uint64_t sub_100097F48()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_100099E44;
  }

  else
  {
    v6 = sub_100098074;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100098074()
{
  v63 = v0;
  v1 = *(v0 + 554);
  v2 = *(v0 + 376);
  v3 = *(v0 + 280);
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v4 = *(v0 + 256);
  *(v0 + 232) = *(v0 + 248);
  *(v0 + 240) = v4;
  v5._object = 0x800000010010CDE0;
  v5._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v5);
  v6 = v3[18];
  v7 = v3[19];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v7) = v9(ObjectType, v7);
  swift_unknownObjectRelease();
  *(v0 + 555) = v7;
  _print_unlocked<A, B>(_:_:)();
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  String.utf8CString.getter();

  v12 = os_transaction_create();

  v13 = v3[20];
  v3[20] = 0;

  *(v0 + 512) = v2;
  *(v0 + 520) = v12;
  v14 = *(v0 + 304);
  v15 = *(v0 + 280);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v61 = v1;
    v18 = *(v0 + 280);
    v19 = swift_slowAlloc();
    *(v0 + 272) = swift_slowAlloc();
    *v19 = 136446722;
    v20 = 0x646570706F7473;
    v21 = *(v18 + 168);
    v22 = 0xE800000000000000;
    v23 = 0x656C6449696D6573;
    v24 = 0xE400000000000000;
    v25 = 1701602409;
    if (v21 != 3)
    {
      v25 = 0x6E776F6474756873;
      v24 = 0xE800000000000000;
    }

    if (v21 != 2)
    {
      v23 = v25;
      v22 = v24;
    }

    if (*(v18 + 168))
    {
      v20 = 0x676E696E6E7572;
    }

    if (*(v18 + 168) <= 1u)
    {
      v26 = v20;
    }

    else
    {
      v26 = v23;
    }

    if (*(v18 + 168) <= 1u)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = v22;
    }

    v28 = *(v0 + 280);
    v29 = sub_100021D24(v26, v27, (v0 + 272));

    *(v19 + 4) = v29;
    *(v19 + 12) = 2082;
    v31 = *(v28 + 144);
    v30 = *(v28 + 152);
    v32 = swift_getObjectType();
    v33 = *(v30 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v29) = v33(v32, v30);
    swift_unknownObjectRelease();
    v34 = sub_10009018C(v29);
    v36 = sub_100021D24(v34, v35, (v0 + 272));

    *(v19 + 14) = v36;
    *(v19 + 22) = 2082;
    v1 = v61;
    v37 = sub_10009018C(v61);
    v39 = sub_100021D24(v37, v38, (v0 + 272));

    *(v19 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v16, v17, "SM: %{public}s transition from %{public}s to %{public}s", v19, 0x20u);
    swift_arrayDestroy();
  }

  v40 = *(*(v0 + 280) + 120);
  if (*(v40 + 16) && (v41 = sub_10002A058(v1), (v42 & 1) != 0))
  {
    v43 = v1;
    v44 = *(v0 + 304);
    v45 = *(v0 + 280);
    v46 = (*(v40 + 56) + 16 * v41);
    *(v0 + 528) = *v46;
    *(v0 + 536) = v46[1];
    swift_unknownObjectRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62[0] = v50;
      *v49 = 136446210;
      v51 = v43;
      v52 = sub_10009018C(v43);
      v54 = sub_100021D24(v52, v53, v62);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "next state: %{public}s", v49, 0xCu);
      sub_100024E14(v50);
    }

    else
    {

      v51 = v43;
    }

    v59 = swift_task_alloc();
    *(v0 + 544) = v59;
    *v59 = v0;
    v59[1] = sub_1000997EC;
    v60 = *(v0 + 280);

    return sub_10009212C(v51);
  }

  else
  {
    v62[0] = 0;
    v62[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    *(v0 + 216) = 0;
    *(v0 + 224) = 0xE000000000000000;
    v55._countAndFlagsBits = 0xD00000000000001ALL;
    v55._object = 0x800000010010CBF0;
    String.append(_:)(v55);
    *(v0 + 553) = v1;
    _print_unlocked<A, B>(_:_:)();
    v56 = *(v0 + 216);
    v57 = *(v0 + 224);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_10009861C()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 280);
  v5 = *v0;

  return _swift_task_switch(sub_100098748, v3, 0);
}

uint64_t sub_100098748()
{
  v1 = v0[43];
  v2 = v0[40];
  swift_unknownObjectRelease();

  v3 = v0[36];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000987C0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  *(v0 + 424) = (*(v0 + 408))();

  return _swift_task_switch(sub_100098834, v3, 0);
}

uint64_t sub_100098834()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  swift_unknownObjectRelease();
  v9 = sub_1000A190C(v8, v1);
  *(v0 + 432) = v9;
  *(v0 + 440) = v2;

  v10 = *(v9 + 32);
  *(v0 + 556) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 56);
  if (v13)
  {
    v14 = 0;
    v15 = *(v0 + 432);
LABEL_8:
    *(v0 + 448) = v13;
    *(v0 + 456) = v14;
    v18 = *(v0 + 280);
    v19 = *(*(v15 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    *(v0 + 557) = v19;
    *(v0 + 464) = *(v18 + 144);
    v20 = *(v18 + 152);
    v21 = swift_getObjectType();
    v22 = *(v20 + 40);
    swift_unknownObjectRetain();
    v37 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 472) = v24;
    *v24 = v0;
    v24[1] = sub_100098C1C;

    return v37(v19, v21, v20);
  }

  else
  {
    v16 = 0;
    v17 = ((63 - v12) >> 6) - 1;
    v15 = *(v0 + 432);
    while (v17 != v16)
    {
      v14 = v16 + 1;
      v13 = *(v15 + 8 * v16++ + 64);
      if (v13)
      {
        goto LABEL_8;
      }
    }

    v26 = *(v0 + 304);
    v27 = *(v0 + 280);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "SM: enter idle", v30, 2u);
    }

    v31 = *(v0 + 320);
    v32 = *(v0 + 280);
    swift_unknownObjectRelease();

    *(v32 + 168) = 3;
    swift_beginAccess();
    v33 = *(v32 + 184);
    *(v0 + 480) = v33;
    v34 = *(*v33 + 168);

    v38 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 488) = v36;
    *v36 = v0;
    v36[1] = sub_100099118;

    return v38();
  }
}

uint64_t sub_100098C1C(char a1)
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 558) = a1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100098D50, v4, 0);
}

uint64_t sub_100098D50(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 558) & 0xFE) == 0xA)
  {
    v4 = *(v3 + 456);
    v5 = (*(v3 + 448) - 1) & *(v3 + 448);
    if (v5)
    {
      a1 = *(v3 + 432);
LABEL_11:
      *(v3 + 448) = v5;
      *(v3 + 456) = v4;
      v8 = *(v3 + 280);
      v9 = *(*(a1 + 6) + (__clz(__rbit64(v5)) | (v4 << 6)));
      *(v3 + 557) = v9;
      *(v3 + 464) = *(v8 + 144);
      v10 = *(v8 + 152);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      swift_unknownObjectRetain();
      v27 = (v12 + *v12);
      v13 = v12[1];
      v14 = swift_task_alloc();
      *(v3 + 472) = v14;
      *v14 = v3;
      v14[1] = sub_100098C1C;

      return v27(v9, ObjectType, v10);
    }

    else
    {
      while (1)
      {
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          return _swift_task_switch(a1, a2, a3);
        }

        a1 = *(v3 + 432);
        if (v7 >= (((1 << *(v3 + 556)) + 63) >> 6))
        {
          break;
        }

        v5 = *(a1 + v7 + 7);
        ++v4;
        if (v5)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v16 = *(v3 + 304);
      v17 = *(v3 + 280);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "SM: enter idle", v20, 2u);
      }

      v21 = *(v3 + 320);
      v22 = *(v3 + 280);
      swift_unknownObjectRelease();

      *(v22 + 168) = 3;
      swift_beginAccess();
      v23 = *(v22 + 184);
      *(v3 + 480) = v23;
      v24 = *(*v23 + 168);

      v28 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v3 + 488) = v26;
      *v26 = v3;
      v26[1] = sub_100099118;

      return v28();
    }
  }

  else
  {
    a2 = *(v3 + 400);
    v6 = (*a2 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
    *(v3 + 496) = *(*a2 + 192);
    *(v3 + 504) = v6;
    a1 = sub_1000992BC;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }
}

uint64_t sub_100099118()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 280);
  v5 = *v0;

  return _swift_task_switch(sub_100099244, v3, 0);
}

uint64_t sub_100099244()
{
  v1 = v0[45];
  v2 = v0[43];

  sub_1000A1B6C(v1);
  v3 = v0[36];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000992BC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 400);
  v3 = *(v0 + 280);
  (*(v0 + 496))(*(v0 + 557));

  return _swift_task_switch(sub_100099330, v3, 0);
}

uint64_t sub_100099330()
{
  v52 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 280);

  *(v2 + 168) = 1;
  v3 = *(v0 + 558);
  v4 = *(v0 + 440);
  *(v0 + 520) = *(v0 + 320);
  *(v0 + 512) = v4;
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v50 = v3;
    v9 = *(v0 + 280);
    v10 = swift_slowAlloc();
    *(v0 + 272) = swift_slowAlloc();
    *v10 = 136446722;
    v11 = 0x646570706F7473;
    v12 = *(v9 + 168);
    v13 = 0xE800000000000000;
    v14 = 0x656C6449696D6573;
    v15 = 0xE400000000000000;
    v16 = 1701602409;
    if (v12 != 3)
    {
      v16 = 0x6E776F6474756873;
      v15 = 0xE800000000000000;
    }

    if (v12 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (*(v9 + 168))
    {
      v11 = 0x676E696E6E7572;
    }

    if (*(v9 + 168) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (*(v9 + 168) <= 1u)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = v13;
    }

    v19 = *(v0 + 280);
    v20 = sub_100021D24(v17, v18, (v0 + 272));

    *(v10 + 4) = v20;
    *(v10 + 12) = 2082;
    v22 = *(v19 + 144);
    v21 = *(v19 + 152);
    ObjectType = swift_getObjectType();
    v24 = *(v21 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v20) = v24(ObjectType, v21);
    swift_unknownObjectRelease();
    v25 = sub_10009018C(v20);
    v27 = sub_100021D24(v25, v26, (v0 + 272));

    *(v10 + 14) = v27;
    *(v10 + 22) = 2082;
    v3 = v50;
    v28 = sub_10009018C(v50);
    v30 = sub_100021D24(v28, v29, (v0 + 272));

    *(v10 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v7, v8, "SM: %{public}s transition from %{public}s to %{public}s", v10, 0x20u);
    swift_arrayDestroy();
  }

  v31 = *(*(v0 + 280) + 120);
  if (*(v31 + 16) && (v32 = sub_10002A058(v3), (v33 & 1) != 0))
  {
    v34 = *(v0 + 304);
    v35 = *(v0 + 280);
    v36 = (*(v31 + 56) + 16 * v32);
    *(v0 + 528) = *v36;
    *(v0 + 536) = v36[1];
    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51[0] = v40;
      *v39 = 136446210;
      v41 = sub_10009018C(v3);
      v43 = sub_100021D24(v41, v42, v51);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "next state: %{public}s", v39, 0xCu);
      sub_100024E14(v40);
    }

    v44 = swift_task_alloc();
    *(v0 + 544) = v44;
    *v44 = v0;
    v44[1] = sub_1000997EC;
    v45 = *(v0 + 280);

    return sub_10009212C(v3);
  }

  else
  {
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    *(v0 + 216) = 0;
    *(v0 + 224) = 0xE000000000000000;
    v47._object = 0x800000010010CBF0;
    v47._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v47);
    *(v0 + 553) = v3;
    _print_unlocked<A, B>(_:_:)();
    v48 = *(v0 + 216);
    v49 = *(v0 + 224);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1000997EC()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_1000998FC, v2, 0);
}

uint64_t sub_1000998FC()
{
  v55 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);
  v53 = *(v0 + 528);

  sub_1000A1B6C(v1);
  v4 = *(v3 + 144);
  *(v3 + 144) = v53;
  swift_unknownObjectRelease();
  v5 = *(v0 + 520);
  *(v0 + 312) = *(v0 + 512);
  v6 = *(v0 + 280);
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  *(v0 + 184) = *(v0 + 200);
  *(v0 + 192) = *(v0 + 208);
  v7._countAndFlagsBits = 0x63614D6574617453;
  v7._object = 0xEE00203A656E6968;
  String.append(_:)(v7);
  v8 = v6[18];
  v9 = v6[19];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v9) = v11(ObjectType, v9);
  swift_unknownObjectRelease();
  *(v0 + 552) = v9;
  _print_unlocked<A, B>(_:_:)();
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  String.utf8CString.getter();

  *(v0 + 320) = os_transaction_create();
  swift_unknownObjectRelease();

  v14 = v6[18];
  v15 = v6[19];
  v16 = swift_getObjectType();
  v17 = *(v15 + 16);
  swift_unknownObjectRetain();
  v18 = v17(v16, v15);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v19 = v6[16];
  if (*(v19 + 16) && (v20 = sub_10002A058(v18), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    *(v0 + 328) = v22;
    swift_endAccess();
    v23 = *(*v22 + 168);

    v52 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    *(v0 + 336) = v25;
    *v25 = v0;
    v25[1] = sub_1000972AC;

    return v52();
  }

  else
  {
    swift_endAccess();
    v27 = *(v0 + 304);
    v28 = *(v0 + 280);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 280);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 136446210;
      v34 = *(v31 + 144);
      v35 = *(v31 + 152);
      v36 = swift_getObjectType();
      v37 = *(v35 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v35) = v37(v36, v35);
      swift_unknownObjectRelease();
      v38 = sub_10009018C(v35);
      v40 = sub_100021D24(v38, v39, &v54);

      *(v32 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "SM: activating state %{public}s", v32, 0xCu);
      sub_100024E14(v33);
    }

    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v43 = *(v0 + 280);
    v44 = *(v43 + 144);
    v45 = *(v43 + 152);
    v46 = swift_getObjectType();
    v47 = *(v45 + 32);
    swift_unknownObjectRetain();
    v47(v46, v45);
    swift_unknownObjectRelease();
    v48 = swift_allocObject();
    v48[2] = v43;
    v48[3] = v42;
    v48[4] = v43;
    swift_retain_n();
    v49 = sub_10009AAC4(0, 0, v41, &unk_100107968, v48);
    *(v0 + 344) = v49;
    v50 = async function pointer to Task<>.value.getter[1];
    v51 = swift_task_alloc();
    *(v0 + 352) = v51;
    *v51 = v0;
    v51[1] = sub_100097664;

    return Task<>.value.getter(v0 + 264, v49, &type metadata for SWTStateMachine.SMTransition);
  }
}

uint64_t sub_100099E44()
{
  v81 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 376);
  if (v6)
  {
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v79 = v77;
    *v9 = 136446466;
    v10 = *(v8 + 144);
    v11 = *(v8 + 152);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v8) = v13(ObjectType, v11);
    swift_unknownObjectRelease();
    v14 = sub_10009018C(v8);
    v16 = sub_100021D24(v14, v15, &v79);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v76 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "SM: state %{public}s threw exception: %{public}@", v9, 0x16u);
    sub_10002533C(v76, &qword_100153450, &unk_100104140);

    sub_100024E14(v77);
  }

  else
  {
  }

  v18 = *(v0 + 280);
  v19 = *(v18 + 136);
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v20 = *(v0 + 256);
  *(v0 + 232) = *(v0 + 248);
  *(v0 + 240) = v20;
  v21._object = 0x800000010010CDE0;
  v21._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v21);
  v22 = *(v18 + 144);
  v23 = *(v18 + 152);
  v24 = swift_getObjectType();
  v25 = *(v23 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v23) = v25(v24, v23);
  swift_unknownObjectRelease();
  *(v0 + 555) = v23;
  _print_unlocked<A, B>(_:_:)();
  v26 = *(v0 + 232);
  v27 = *(v0 + 240);
  String.utf8CString.getter();

  v28 = os_transaction_create();

  v29 = *(v18 + 160);
  *(v18 + 160) = 0;

  *(v0 + 520) = v28;
  *(v0 + 512) = 0;
  v30 = *(v0 + 304);
  v31 = *(v0 + 280);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v78 = v19;
    v34 = *(v0 + 280);
    v35 = swift_slowAlloc();
    *(v0 + 272) = swift_slowAlloc();
    *v35 = 136446722;
    v36 = 0x646570706F7473;
    v37 = *(v34 + 168);
    v38 = 0xE800000000000000;
    v39 = 0x656C6449696D6573;
    v40 = 0xE400000000000000;
    v41 = 1701602409;
    if (v37 != 3)
    {
      v41 = 0x6E776F6474756873;
      v40 = 0xE800000000000000;
    }

    if (v37 != 2)
    {
      v39 = v41;
      v38 = v40;
    }

    if (*(v34 + 168))
    {
      v36 = 0x676E696E6E7572;
    }

    if (*(v34 + 168) <= 1u)
    {
      v42 = v36;
    }

    else
    {
      v42 = v39;
    }

    if (*(v34 + 168) <= 1u)
    {
      v43 = 0xE700000000000000;
    }

    else
    {
      v43 = v38;
    }

    v44 = *(v0 + 280);
    v45 = sub_100021D24(v42, v43, (v0 + 272));

    *(v35 + 4) = v45;
    *(v35 + 12) = 2082;
    v47 = *(v44 + 144);
    v46 = *(v44 + 152);
    v48 = swift_getObjectType();
    v49 = *(v46 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v45) = v49(v48, v46);
    swift_unknownObjectRelease();
    v50 = sub_10009018C(v45);
    v52 = sub_100021D24(v50, v51, (v0 + 272));

    *(v35 + 14) = v52;
    *(v35 + 22) = 2082;
    v19 = v78;
    v53 = sub_10009018C(v78);
    v55 = sub_100021D24(v53, v54, (v0 + 272));

    *(v35 + 24) = v55;
    _os_log_impl(&_mh_execute_header, v32, v33, "SM: %{public}s transition from %{public}s to %{public}s", v35, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v56 = *(*(v0 + 280) + 120);
  if (*(v56 + 16) && (v57 = sub_10002A058(v19), (v58 & 1) != 0))
  {
    v59 = *(v0 + 304);
    v60 = *(v0 + 280);
    v61 = (*(v56 + 56) + 16 * v57);
    *(v0 + 528) = *v61;
    *(v0 + 536) = v61[1];
    swift_unknownObjectRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v79 = v65;
      *v64 = 136446210;
      v66 = sub_10009018C(v19);
      v68 = sub_100021D24(v66, v67, &v79);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "next state: %{public}s", v64, 0xCu);
      sub_100024E14(v65);
    }

    v69 = swift_task_alloc();
    *(v0 + 544) = v69;
    *v69 = v0;
    v69[1] = sub_1000997EC;
    v70 = *(v0 + 280);

    return sub_10009212C(v19);
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v72 = v80;
    *(v0 + 216) = v79;
    *(v0 + 224) = v72;
    v73._countAndFlagsBits = 0xD00000000000001ALL;
    v73._object = 0x800000010010CBF0;
    String.append(_:)(v73);
    *(v0 + 553) = v19;
    _print_unlocked<A, B>(_:_:)();
    v74 = *(v0 + 216);
    v75 = *(v0 + 224);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_10009A588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100025834(a3, v24 - v10, &unk_100152620, &unk_1001031E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002533C(v11, &unk_100152620, &unk_1001031E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10009A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10009A814, a4, 0);
}

uint64_t sub_10009A814()
{
  v1 = v0[6];
  swift_beginAccess();
  v0[7] = v1[18];
  v2 = v1[19];
  ObjectType = swift_getObjectType();
  v4 = v1[14];
  v5 = *(v2 + 48);
  swift_unknownObjectRetain();
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10009A970;

  return v9(v4, ObjectType, v2);
}

uint64_t sub_10009A970(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 72) = a1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10009AAA4, v4, 0);
}

uint64_t sub_10009AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100025834(a3, v27 - v11, &unk_100152620, &unk_1001031E0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002533C(v12, &unk_100152620, &unk_1001031E0);
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

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

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

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
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

uint64_t sub_10009ADBC()
{
  result = swift_beginAccess();
  if (*(v0 + 160))
  {
    v2 = *(v0 + 160);

    sub_100024248(&qword_100152630, &qword_100103210);
    Task.cancel()();
  }

  return result;
}

uint64_t sub_10009AE5C()
{
  v1 = *(v0[2] + 112);
  v0[3] = v1;
  v2 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0xD1C2000000000000;
  v0[4] = *(*v1 + 208);
  v0[5] = v2;
  return _swift_task_switch(sub_10009AE9C, v1, 0);
}

uint64_t sub_10009AE9C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 32))();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10009AF20()
{
  v1 = *(v0[2] + 112);
  v0[3] = v1;
  v2 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xDCF0000000000000;
  v0[4] = *(*v1 + 136);
  v0[5] = v2;
  return _swift_task_switch(sub_10009AF60, v1, 0);
}

uint64_t sub_10009AF60()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 48) = (*(v0 + 32))();

  return _swift_task_switch(sub_10009AFD0, v2, 0);
}

uint64_t sub_10009AFD0()
{
  v1 = sub_10009B030(*(v0 + 48));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10009B030(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10008BBC8();
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v12 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_10008AD84(&v11, *(*(a1 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_10009B128()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = *(v0 + 18);
  swift_unknownObjectRelease();
  v5 = *(v0 + 20);

  v6 = *(v0 + 22);

  v7 = *(v0 + 23);

  v8 = OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  sub_10002533C(&v0[OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_networkMonitor], &qword_100154390, &qword_1001071E0);
  v10 = *&v0[OBJC_IVAR____TtC15swtransparencyd15SWTStateMachine_watchers];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10009B1F8()
{
  sub_10009B128();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10009B224()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10009B71C(&qword_100152CC8, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10009B71C(&qword_100152CD0, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100029E30;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10009B3BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v24[9] = v8;
      type metadata accessor for ContinuationStore(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v24[0];
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_10009BAC8(v7, result + 1);
        v24[0] = v20;
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_10009BF20(v21 + 1);
          v20 = v24[0];
        }

        sub_10009C640(v22, v20);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    (*(*a2 + 152))(v24);
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = static UUID.== infix(_:_:)();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = *v3;

      sub_10009C7F0(v19, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v24[0];
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10009B64C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001CF5C;

  return sub_10008DA70(v11, a2, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_10009B71C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_10009B76C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v3 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v4 = (1 << v3) & *(v1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v4)
  {
    v5 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v0;
    sub_10009C9B0(v3, isUniquelyReferenced_nonNull_native);
    *v0 = v8;
  }

  return v4 == 0;
}

uint64_t sub_10009B820(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for TransitionWatcher();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10009BCE8(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_10009C3A8(v19 + 1);
    }

    sub_10009C704(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for TransitionWatcher();
  v10 = *(v6 + 40);
  sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_10009CAC0(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_10009B71C(&qword_100152B78, 255, type metadata accessor for TransitionWatcher);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

Swift::Int sub_10009BAC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100024248(&qword_1001548E0, &qword_1001079B8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ContinuationStore(0);
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_10009BF20(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        Hasher.init(_seed:)();
        (*(*v6 + 152))(v19);
        result = Hasher._finalize()();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10009BCE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100024248(&qword_1001548A0, &qword_100107950);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for TransitionWatcher();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_10009C3A8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10009BF20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&qword_1001548E0, &qword_1001079B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      (*(*v18 + 152))(v29);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10009C190(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&qword_1001548D0, &qword_1001079A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
LABEL_15:
      v16 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v17 = -1 << *(v6 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v13 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v13 + 8 * v19);
          if (v23 != -1)
          {
            v14 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_9;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v18) & ~*(v13 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v11 &= v11 - 1;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++*(v6 + 16);
    }

    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = v8[v15];
      ++v7;
      if (v11)
      {
        v7 = v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10009C3A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&qword_1001548A0, &qword_100107950);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for TransitionWatcher();
      sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10009C640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v7);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10009C704(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for TransitionWatcher();
  sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10009C7F0(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10009BF20(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10009CDCC(&qword_1001548E0, &qword_1001079B8);
      goto LABEL_12;
    }

    sub_10009CF0C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  (*(*v5 + 152))(v18);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ContinuationStore(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);

      v13 = static UUID.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10009C9B0(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_10009C190(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_10009D15C(v3 + 1);
LABEL_8:
      v6 = *v2;
      v7 = *(*v2 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_10009CCC0();
    result = v5;
  }

LABEL_9:
  v8 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10009CAC0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10009C3A8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10009CDCC(&qword_1001548A0, &qword_100107950);
      goto LABEL_12;
    }

    sub_10009D338(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for TransitionWatcher();
  sub_10009B71C(&qword_100154398, 255, type metadata accessor for TransitionWatcher);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10009B71C(&qword_100152B78, 255, type metadata accessor for TransitionWatcher);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10009CCC0()
{
  v1 = v0;
  sub_100024248(&qword_1001548D0, &qword_1001079A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_10009CDCC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100024248(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_10009CF0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024248(&qword_1001548E0, &qword_1001079B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*v18 + 152);

      v20(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}