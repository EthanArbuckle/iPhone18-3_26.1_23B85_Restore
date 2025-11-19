uint64_t sub_1010EFD68()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {
    v4 = v3[22];

    return _swift_task_switch(sub_1010F01C4, v4, 0);
  }

  else
  {
    v5 = v3[26];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v3[29] = v7;
    *v7 = v3;
    v7[1] = sub_1010EFEDC;

    return daemon.getter();
  }
}

uint64_t sub_1010EFEDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = *v1;
  v3[30] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[31] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1010FBFB0(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v7 = v5;
  v7[1] = sub_1010F0090;
  v10 = v3[21];
  v11 = v3[20];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1010F0090(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v5 = *(*v2 + 240);
  v8 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v6 = sub_1010F0DAC;
  }

  else
  {
    v6 = sub_1010F056C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1010F01C4()
{
  v1 = *(v0 + 208);

  return _swift_task_switch(sub_1010F022C, 0, 0);
}

uint64_t sub_1010F022C()
{
  v33 = v0;
  v1 = v0[22];

  v2 = v0[28];
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AD20);
  (*(v5 + 16))(v3, v6, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v19;
    *v30 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v14, 0x16u);
    sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v31);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[5];
  v21 = v0[3];
  (*(v0[7] + 56))(v20, 1, 1, v0[6]);
  v21(v20);

  sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[14];
  v25 = v0[12];
  v26 = v0[8];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1010F056C()
{
  v25 = v0;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching encrypted serial number for %{public}s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[34] = v19;
  *v19 = v0;
  v19[1] = sub_1010F07DC;
  v20 = v0[32];
  v21 = v0[16];
  v22 = v0[8];

  return sub_1012226E0(v22, v21);
}

uint64_t sub_1010F07DC()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1010F110C;
  }

  else
  {
    v3 = sub_1010F08F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010F08F0()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[16];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  (*(v5 + 16))(v7, v4, v6);
  (*(v5 + 56))(v7, 0, 1, v6);
  v9(v7);

  sub_10000B3A8(v7, &unk_101696AC0, &qword_101390A60);
  (*(v5 + 8))(v4, v6);
  sub_1010FC804(v3, type metadata accessor for WildModeAssociationRecord);
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[5];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1010F0A6C()
{
  v33 = v0;
  v1 = v0[18];

  v2 = v0[23];
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AD20);
  (*(v5 + 16))(v3, v6, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v19;
    *v30 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v14, 0x16u);
    sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v31);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[5];
  v21 = v0[3];
  (*(v0[7] + 56))(v20, 1, 1, v0[6]);
  v21(v20);

  sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[14];
  v25 = v0[12];
  v26 = v0[8];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1010F0DAC()
{
  v34 = v0;
  v1 = v0[22];
  v2 = v0[16];

  sub_1010FC804(v2, type metadata accessor for WildModeAssociationRecord);
  v3 = v0[33];
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[2];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AD20);
  (*(v6 + 16))(v4, v7, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v15 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v31 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v15, 0x16u);
    sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v32);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[5];
  v22 = v0[3];
  (*(v0[7] + 56))(v21, 1, 1, v0[6]);
  v22(v21);

  sub_10000B3A8(v21, &unk_101696AC0, &qword_101390A60);
  v23 = v0[16];
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[8];
  v28 = v0[5];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1010F110C()
{
  v35 = v0;
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[16];

  sub_1010FC804(v3, type metadata accessor for WildModeAssociationRecord);
  v4 = v0[35];
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177AD20);
  (*(v7 + 16))(v5, v8, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v16 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000136BC(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v32 = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v16, 0x16u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v33);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = v0[5];
  v23 = v0[3];
  (*(v0[7] + 56))(v22, 1, 1, v0[6]);
  v23(v22);

  sub_10000B3A8(v22, &unk_101696AC0, &qword_101390A60);
  v24 = v0[16];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[12];
  v28 = v0[8];
  v29 = v0[5];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1010F1494(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC138, &unk_101406270);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DF32B8(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F16CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C7C70, &unk_1014060A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF4690(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t sub_1010F18BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC1B0, &qword_1013E9ED8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DF4924(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F1AF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBED0, &qword_1013E9DD8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF4E28(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

Swift::Int sub_1010F1CE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C7F40, &unk_101406220);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF58A4(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

Swift::Int sub_1010F1ED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBFF0, &unk_1013B35C0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF6368(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t sub_1010F20C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC118, &qword_1013E9EB0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DF7418(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F22FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C7F50, &unk_1013B3590);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF76BC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t sub_1010F24EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC190, &unk_101406290);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100DF8424(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable);
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

Swift::Int sub_1010F2720(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC160, &unk_101406280);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF86B8(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

Swift::Int sub_1010F2910(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC150, &qword_1013E9EC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016C7F70, SPBeaconGroup_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF86CC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t sub_1010F2B00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC0E8, &unk_101406260);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DF8954(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F2D38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC170, &qword_1013D6BD8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF8E14(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

Swift::Int sub_1010F2F28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBE60, &qword_1013E9DB8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF9904(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

Swift::Int sub_1010F3118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC0C0, &qword_101406240);
    v2 = static _SetStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Service();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_100DF9B40(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        v4 = *(v16 + 32);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
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

Swift::Int sub_1010F3324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC0B8, &qword_1013E9E98);
    v2 = static _SetStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Characteristic();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_100DF9D9C(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        v4 = *(v16 + 40);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
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

uint64_t sub_1010F3530(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC068, &unk_101406230);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DF9FF8(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F3768(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BBEF0, &qword_1014060B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DFA598(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F39A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBFE0, &unk_101406210);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DFAC18(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F3BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBFB0, &qword_1013E9E30);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DFAEBC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t sub_1010F3DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BBE08, &qword_1013E9D90);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100DFB0F0(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_1010F4038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(a2 + 40);
  sub_1000BC4D4(a3, a4);
  sub_1000041A4(a5, a3, a4);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1010F4144(double *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *a1;
  if (*a1 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = a1[1];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = a1[2];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = type metadata accessor for WildModeTrackingLocation(0);
  v9 = *(v8 + 28);
  type metadata accessor for Date();
  sub_1010FBFB0(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v10 = -1 << *(a2 + 32);
  v11 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
  result = sub_1010FC734(a1, *(a2 + 48) + *(*(v8 - 8) + 72) * v11, type metadata accessor for WildModeTrackingLocation);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F42CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for AnyCancellable();
  sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F43D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 32);
  NSObject.hash(into:)();

  Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F4480(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 40);
  NSObject.hash(into:)();

  Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F4584(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1010F4624(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for WildModeTrackingLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1010F49B4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1010F4750(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1010F4750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for WildModeTrackingLocation(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1010FC79C(v24, v18, type metadata accessor for WildModeTrackingLocation);
      sub_1010FC79C(v21, v14, type metadata accessor for WildModeTrackingLocation);
      v25 = *(v8 + 28);
      v26 = static Date.< infix(_:_:)();
      sub_1010FC804(v14, type metadata accessor for WildModeTrackingLocation);
      result = sub_1010FC804(v18, type metadata accessor for WildModeTrackingLocation);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1010FC734(v24, v37, type metadata accessor for WildModeTrackingLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1010FC734(v27, v21, type metadata accessor for WildModeTrackingLocation);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010F49B4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for WildModeTrackingLocation(0);
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1010F5318(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1010FC79C(v114 + v25 * v24, v19, type metadata accessor for WildModeTrackingLocation);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1010FC79C(v27, v120, type metadata accessor for WildModeTrackingLocation);
      v30 = *(v9 + 28);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_1010FC804(v29, type metadata accessor for WildModeTrackingLocation);
      result = sub_1010FC804(v19, type metadata accessor for WildModeTrackingLocation);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1010FC79C(v32, v19, type metadata accessor for WildModeTrackingLocation);
        v33 = v120;
        sub_1010FC79C(v5, v120, type metadata accessor for WildModeTrackingLocation);
        v34 = *(v121 + 28);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_1010FC804(v33, type metadata accessor for WildModeTrackingLocation);
        result = sub_1010FC804(v19, type metadata accessor for WildModeTrackingLocation);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1010FC734(v42 + v41, v111, type metadata accessor for WildModeTrackingLocation);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1010FC734(v111, v42 + v36, type metadata accessor for WildModeTrackingLocation);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1010FC79C(v5, v19, type metadata accessor for WildModeTrackingLocation);
    v96 = v120;
    sub_1010FC79C(v93, v120, type metadata accessor for WildModeTrackingLocation);
    v97 = *(v9 + 28);
    a4 = static Date.< infix(_:_:)();
    sub_1010FC804(v96, type metadata accessor for WildModeTrackingLocation);
    result = sub_1010FC804(v19, type metadata accessor for WildModeTrackingLocation);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1010F5318(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for WildModeTrackingLocation;
    v98 = v119;
    sub_1010FC734(v5, v119, type metadata accessor for WildModeTrackingLocation);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1010FC734(v98, v93, type metadata accessor for WildModeTrackingLocation);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1010F5318(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for WildModeTrackingLocation(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
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
  v52 = a1;
  v51 = a4;
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

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1010FC79C(v33, v47, type metadata accessor for WildModeTrackingLocation);
          v35 = v48;
          sub_1010FC79C(v29, v48, type metadata accessor for WildModeTrackingLocation);
          v36 = *(v31 + 28);
          v37 = static Date.< infix(_:_:)();
          sub_1010FC804(v35, type metadata accessor for WildModeTrackingLocation);
          sub_1010FC804(v34, type metadata accessor for WildModeTrackingLocation);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
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

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1010FC79C(a2, v47, type metadata accessor for WildModeTrackingLocation);
        v22 = v48;
        sub_1010FC79C(a4, v48, type metadata accessor for WildModeTrackingLocation);
        v23 = *(v49 + 28);
        v24 = static Date.< infix(_:_:)();
        sub_1010FC804(v22, type metadata accessor for WildModeTrackingLocation);
        sub_1010FC804(v21, type metadata accessor for WildModeTrackingLocation);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB8C(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1010F5848()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F8C78();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  v7 = *(v1 + 40);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04668();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F5A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1011D8230();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1010FC79C(*(v10 + 48) + v16 * v14, v9, type metadata accessor for SharedBeaconRecord);
      v17 = sub_1011DB3D8(v9, a1);
      sub_1010FC804(v9, type metadata accessor for SharedBeaconRecord);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v27 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E04934();
      v22 = v27;
    }

    a2 = v26;
    sub_1010FC734(*(v22 + 48) + v16 * v14, v26, type metadata accessor for SharedBeaconRecord);
    sub_1010F9F28(v14);
    v18 = 0;
    *v19 = v27;
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_1010F5CB0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = v13 + 24 * v11;
    v15 = *(v14 + 16);
    v16 = *v14 == a1 && *(v14 + 8) == a2;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v15 ^ a3) & 1) == 0)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  v25 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04B8C();
    v20 = v25;
  }

  v21 = *(v20 + 48) + 24 * v11;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  sub_1010FA1B8(v11);
  result = v22;
  *v3 = v25;
  return result;
}

uint64_t sub_1010F5E2C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F8E68();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  v7 = *(v1 + 40);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04CF4();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  result = v15;
  *v0 = v17;
  return result;
}

double sub_1010F6048@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_64:
    result = 0.0;
    *a3 = xmmword_10138BBF0;
    return result;
  }

  v12 = ~v10;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v47 = v14;
  v15 = a2 >> 62;
  v16 = __OFSUB__(HIDWORD(a1), a1);
  v44 = v16;
  v42 = a2;
  v43 = HIDWORD(a1) - a1;
  v45 = v12;
  v46 = BYTE6(a2);
  v41 = a1;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      break;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_67;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_68;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v46;
        if (v15)
        {
          v28 = v43;
          if (v44)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
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
      goto LABEL_73;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_62;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v49 = v19;
        *&v49[8] = v18;
        v49[10] = BYTE2(v18);
        v49[11] = BYTE3(v18);
        v49[12] = BYTE4(v18);
        v49[13] = BYTE5(v18);
        sub_100017D5C(v19, v18);
        v12 = v45;
        goto LABEL_61;
      }

      a2 = (v19 >> 32) - v19;
      if (v19 >> 32 < v19)
      {
        goto LABEL_69;
      }

      sub_100017D5C(v19, v18);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v34))
        {
          goto LABEL_72;
        }

        v32 += v19 - v34;
      }

LABEL_58:
      __DataStorage._length.getter();
      a1 = v41;
      a2 = v42;
      sub_100771A28(v32, v41, v42, v49);
      sub_100016590(v19, v18);
      v9 = v6 + 56;
      v12 = v45;
      if (v49[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v20 == 2)
    {
      a2 = *(v19 + 16);
      v31 = *(v19 + 24);
      sub_100017D5C(v19, v18);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v33))
        {
          goto LABEL_71;
        }

        v32 += a2 - v33;
      }

      v27 = __OFSUB__(v31, a2);
      a2 = v31 - a2;
      if (v27)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v49[6] = 0;
    *v49 = 0;
    sub_100017D5C(v19, v18);
LABEL_61:
    sub_100771A28(v49, a1, a2, &v48);
    sub_100016590(v19, v18);
    if (v48)
    {
      goto LABEL_62;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 == 0xC000000000000000;
  }

  v23 = !v21 || v15 < 3;
  if ((v23 | v47))
  {
LABEL_36:
    v24 = 0;
    if (v15 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v39;
  v35 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v39;
  *v49 = *v39;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_100E04D08();
  v37 = *v49;
LABEL_63:
  *a3 = *(*(v37 + 48) + 16 * v11);
  sub_1010FA5A0(v11);
  *a2 = *v49;
  return result;
}

uint64_t sub_1010F6494(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = static Hasher._hash(seed:_:)();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04FCC();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_1010FA774(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1010F6584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1010FBFB0(&qword_1016967B0, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1010FBFB0(&qword_1016984A0, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E04640();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1010FAF94(v16, &type metadata accessor for UUID, &qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1010F6870(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 40);
  Hasher.init(_seed:)();
  sub_1012C5AB0(a1);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 24;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    switch(*(*(v4 + 48) + v8))
    {
      case 1:
        v11 = 0xD000000000000015;
        v10 = 0x8000000101347FF0;
        break;
      case 2:
        v11 = 0xD000000000000016;
        v10 = 0x8000000101348010;
        break;
      case 3:
        v10 = 0xE600000000000000;
        v11 = 0x657461636F6CLL;
        break;
      case 4:
        v10 = 0xEC000000676E6972;
        v11 = 0x6168537472617473;
        break;
      case 5:
        v11 = 0x72616853706F7473;
        goto LABEL_18;
      case 6:
        v13 = 2036427888;
        goto LABEL_22;
      case 7:
        v13 = 1886352499;
LABEL_22:
        v11 = v13 | 0x6E756F5300000000;
        v10 = 0xE900000000000064;
        break;
      case 8:
        v11 = 0x61654C6E69676562;
        v10 = 0xED0000676E696873;
        break;
      case 9:
        v11 = 0x687361654C646E65;
LABEL_18:
        v10 = 0xEB00000000676E69;
        break;
      case 0xA:
        v11 = 0x4654426E69676562;
        v10 = 0xEE00676E69646E69;
        break;
      case 0xB:
        v11 = 0x6E69465442646E65;
        v12 = 1735289188;
        goto LABEL_29;
      case 0xC:
        v10 = 0xEC000000676E6967;
        v11 = 0x6E61526E69676562;
        break;
      case 0xD:
        v11 = 0x69676E6152646E65;
        v10 = 0xEA0000000000676ELL;
        break;
      case 0xE:
        v11 = 0x6F4C656C62616E65;
        v10 = 0xEE0065646F4D7473;
        break;
      case 0xF:
        v11 = 0x4C656C6261736964;
        v10 = 0xEF65646F4D74736FLL;
        break;
      case 0x10:
        v10 = 0xE600000000000000;
        v11 = 0x656D616E6572;
        break;
      case 0x11:
        v11 = 0x7463656E6E6F63;
        break;
      case 0x12:
        v10 = 0xEA00000000007463;
        v11 = 0x656E6E6F63736964;
        break;
      case 0x13:
        v11 = 0xD000000000000017;
        v10 = 0x80000001013480F0;
        break;
      case 0x14:
        v10 = 0xE600000000000000;
        v11 = 0x726961706E75;
        break;
      case 0x15:
        v11 = 0x65746167656C6564;
        v10 = 0xEE00657261685364;
        break;
      case 0x16:
        v11 = 0xD000000000000013;
        v10 = 0x8000000101348120;
        break;
      case 0x17:
        v11 = 0x6F69736963657270;
        v12 = 1481004654;
LABEL_29:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v14 = 0x8000000101347FF0;
        if (v11 == 0xD000000000000015)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      case 2:
        v14 = 0x8000000101348010;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 3:
        v14 = 0xE600000000000000;
        if (v11 != 0x657461636F6CLL)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 4:
        v14 = 0xEC000000676E6972;
        if (v11 != 0x6168537472617473)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 5:
        v20 = 0x72616853706F7473;
        goto LABEL_54;
      case 6:
        v21 = 2036427888;
        goto LABEL_60;
      case 7:
        v21 = 1886352499;
LABEL_60:
        v14 = 0xE900000000000064;
        if (v11 != (v21 | 0x6E756F5300000000))
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 8:
        v14 = 0xED0000676E696873;
        if (v11 != 0x61654C6E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 9:
        v20 = 0x687361654C646E65;
LABEL_54:
        v14 = 0xEB00000000676E69;
        if (v11 != v20)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 10:
        v16 = 0x4654426E69676562;
        v17 = 0x676E69646E69;
        goto LABEL_65;
      case 11:
        v18 = 0x6E69465442646E65;
        v19 = 1735289188;
        goto LABEL_78;
      case 12:
        v14 = 0xEC000000676E6967;
        if (v11 != 0x6E61526E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 13:
        v14 = 0xEA0000000000676ELL;
        if (v11 != 0x69676E6152646E65)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 14:
        v16 = 0x6F4C656C62616E65;
        v17 = 0x65646F4D7473;
        goto LABEL_65;
      case 15:
        v14 = 0xEF65646F4D74736FLL;
        if (v11 != 0x4C656C6261736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 16:
        v14 = 0xE600000000000000;
        if (v11 != 0x656D616E6572)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 17:
        if (v11 != 0x7463656E6E6F63)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 18:
        v14 = 0xEA00000000007463;
        if (v11 != 0x656E6E6F63736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 19:
        v15 = 0xD000000000000017;
        v14 = 0x80000001013480F0;
        goto LABEL_72;
      case 20:
        v14 = 0xE600000000000000;
        if (v11 != 0x726961706E75)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 21:
        v16 = 0x65746167656C6564;
        v17 = 0x657261685364;
LABEL_65:
        v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v16)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 22:
        v14 = 0x8000000101348120;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 23:
        v18 = 0x6F69736963657270;
        v19 = 1481004654;
LABEL_78:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v18)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      default:
LABEL_72:
        if (v11 != v15)
        {
          goto LABEL_74;
        }

LABEL_73:
        if (v10 != v14)
        {
LABEL_74:
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_82;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 24;
          }

          continue;
        }

LABEL_82:
        v24 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *v2;
        v28 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100E0501C();
          v26 = v28;
        }

        v23 = *(*(v26 + 48) + v8);
        sub_1010FA8F8(v8);
        *v2 = v28;
        return v23;
    }
  }
}

uint64_t sub_1010F701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1010FBFB0(&unk_1016BC080, &type metadata accessor for MACAddress);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1010FBFB0(&unk_1016C7F60, &type metadata accessor for MACAddress);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E051A8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1010FAF94(v16, &type metadata accessor for MACAddress, &unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1010F7308()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F9054();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  v7 = *(v1 + 40);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E05488();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F7524(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = v10 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(v8 + 48);
  while (1)
  {
    v16 = (v15 + 24 * v13);
    if (*v16 == a1)
    {
      v17 = *(v16 + 1) == a2 && *(v16 + 2) == a3;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v4;
  v26 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04E64();
    v20 = v26;
  }

  v21 = (*(v20 + 48) + 24 * v13);
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 2);
  sub_1010FAD8C(v13);
  result = v22;
  *v4 = v26;
  return result;
}

uint64_t sub_1010F76A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CorrelationIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1010FBFB0(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1010FBFB0(&qword_1016A5A48, &type metadata accessor for CorrelationIdentifier);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E05628();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1010FAF94(v16, &type metadata accessor for CorrelationIdentifier, &unk_1016C7F30, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1010F798C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F9240();

      return v5;
    }

    return 0;
  }

  type metadata accessor for AnyCancellable();
  v7 = *(v1 + 40);
  sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1010FBFB0(&qword_1016BC188, &type metadata accessor for AnyCancellable);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E05888();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FB290(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F7BA4(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v9);
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_11;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  v19 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v4;
  v23 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v21 = v23;
  }

  v18 = *(*(v21 + 48) + 8 * v9);
  sub_1010FB47C(v9);
  *v4 = v23;
  return v18;
}

uint64_t sub_1010F7D3C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F941C();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
  v7 = *(v1 + 40);
  sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC0E0, &unk_1016BC0D0, qword_1013EA6A0);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E059F0();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F7F58@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for BeaconIdentifier();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  v6 = *v1;
  v7 = *(*v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1010FBFB0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v27 = v2;
  v8 = *(v2 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return (*(v26 + 56))(v25, 1, 1, v27);
  }

  v12 = ~v10;
  v13 = *(v26 + 72);
  while (1)
  {
    sub_1010FC79C(*(v6 + 48) + v13 * v11, v5, type metadata accessor for BeaconIdentifier);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    sub_1010FC804(v5, type metadata accessor for BeaconIdentifier);
LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return (*(v26 + 56))(v25, 1, 1, v27);
    }
  }

  v14 = *(v27 + 20);
  v15 = static UUID.== infix(_:_:)();
  sub_1010FC804(v5, type metadata accessor for BeaconIdentifier);
  if ((v15 & 1) == 0)
  {
    goto LABEL_4;
  }

  v16 = v24;
  v17 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v16;
  v28 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E05B34();
    v19 = v28;
  }

  v20 = *(v19 + 48) + v13 * v11;
  v21 = v25;
  sub_1010FC734(v20, v25, type metadata accessor for BeaconIdentifier);
  sub_1010FB65C(v11);
  *v16 = v28;
  return (*(v26 + 56))(v21, 0, 1, v27);
}

uint64_t sub_1010F8224()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F9608();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  v7 = *(v1 + 40);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E06074();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F8440()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F97F4();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  v7 = *(v1 + 40);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E06210();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F865C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F99E0();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  v7 = *(v1 + 40);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E063C0();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F88B4(void *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = __CocoaSet.contains(_:)();

    if (v14)
    {
      v15 = sub_1010F9BCC(v11, v13, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v18 = v5;
  sub_100008BB8(0, a2, a3);
  v19 = NSObject._rawHashValue(seed:)(*(v7 + 40));
  v20 = -1 << *(v7 + 32);
  v21 = v19 & ~v20;
  if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = *(*(v7 + 48) + 8 * v21);
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v27 = v29;
  }

  v28 = *(*(v27 + 48) + 8 * v21);
  sub_1010FB9A0(v21);
  result = v28;
  *v18 = v29;
  return result;
}

uint64_t sub_1010F8A5C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1010F9D3C();

      return v5;
    }

    return 0;
  }

  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  v7 = *(v1 + 40);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E063E8();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1010F8C78()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F1494(v4, v3);
  v14 = v5;
  v6 = *(v5 + 40);

  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0);
    while (1)
    {
      v13 = *(*(v5 + 48) + 8 * v9);
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
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v5 + 48) + 8 * v9);
  sub_1010FA3B4(v9, &qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F8E68()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F18BC(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9054()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F20C4(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9240()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F24EC(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for AnyCancellable();
  sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1010FBFB0(&qword_1016BC188, &type metadata accessor for AnyCancellable);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FB290(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F941C()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F2B00(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
  sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016BC0E0, &unk_1016BC0D0, qword_1013EA6A0);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9608()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F3530(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F97F4()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F3768(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F99E0()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F39A0(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = NSObject._rawHashValue(seed:)(v14);
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_100008BB8(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_1010FB9A0(v17);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9D3C()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1010F3DC8(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);

  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9F28(unint64_t a1)
{
  v25 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v25);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = (v14 + 1) & v12;
      v16 = *(v3 + 72);
      while (1)
      {
        v17 = v16 * v11;
        sub_1010FC79C(*(v8 + 48) + v16 * v11, v7, type metadata accessor for SharedBeaconRecord);
        v18 = *(v8 + 40);
        Hasher.init(_seed:)();
        sub_1011D8230();
        v19 = Hasher._finalize()();
        sub_1010FC804(v7, type metadata accessor for SharedBeaconRecord);
        v20 = v19 & v12;
        if (a1 >= v15)
        {
          break;
        }

        if (v20 < v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v21 = v16 * a1;
        if ((v16 * a1) < v17 || *(v8 + 48) + v16 * a1 >= *(v8 + 48) + v17 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v21 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v20 < v15)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v20)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v8 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v24;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1010FA1B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = 24 * v6;
        v13 = *(v3 + 40);
        v14 = *(v3 + 48) + 24 * v6;
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._combine(_:)(v17);
        v18 = Hasher._finalize()();

        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = v20 + 24 * v2;
          v22 = (v20 + v12);
          if (24 * v2 < v12 || v21 >= v22 + 24 || v2 != v6)
          {
            v11 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FA3B4(unint64_t result, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = *v4;
  v7 = *v4 + 56;
  v8 = -1 << *(*v4 + 32);
  v9 = (result + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v12 = ~v8;
    v13 = *v4;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v15 = (v14 + 1) & v12;
      sub_1000041A4(a2, a3, a4);
      do
      {
        v16 = *(v6 + 40);
        v27 = *(*(v6 + 48) + 8 * v9);
        sub_1000BC4D4(a3, a4);
        v17 = dispatch thunk of Hashable._rawHashValue(seed:)() & v12;
        if (v5 >= v15)
        {
          if (v17 >= v15 && v5 >= v17)
          {
LABEL_16:
            v20 = *(v6 + 48);
            v21 = (v20 + 8 * v5);
            v22 = (v20 + 8 * v9);
            if (v5 != v9 || v21 >= v22 + 1)
            {
              *v21 = *v22;
              v5 = v9;
            }
          }
        }

        else if (v17 >= v15 || v5 >= v17)
        {
          goto LABEL_16;
        }

        v9 = (v9 + 1) & v12;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  }

  else
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v6 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v25;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1010FA5A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();
        sub_100017D5C(v13, v14);
        Data.hash(into:)();
        v15 = Hasher._finalize()();
        sub_100016590(v13, v14);
        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FA774(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FA8F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        String.hash(into:)();

        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FAD8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = v4;
        v13 = *(v3 + 40);
        v14 = (*(v3 + 48) + 24 * v6);
        v15 = *v14;
        v16 = *(v14 + 1);
        v17 = *(v14 + 2);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);

        String.hash(into:)();
        v18 = Hasher._finalize()();

        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            v4 = v12;
          }

          else
          {
            v4 = v12;
            if (v2 >= v19)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v12;
          if (v19 >= v10 || v2 >= v19)
          {
LABEL_12:
            v20 = *(v3 + 48);
            v21 = v20 + 24 * v2;
            v22 = (v20 + 24 * v6);
            if (v2 != v6 || v21 >= v22 + 24)
            {
              v11 = *v22;
              *(v21 + 16) = *(v22 + 2);
              *v21 = v11;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1010FAF94(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = _HashTable.previousHole(before:)();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_1010FBFB0(v44, v45);
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

unint64_t sub_1010FB290(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for AnyCancellable();
      sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FB47C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v13 = v12;
        String.hash(into:)();
        v14 = Hasher._finalize()();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1010FB65C(unint64_t a1)
{
  v33 = type metadata accessor for BeaconIdentifier();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = a1;
    v14 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v15 = (v14 + 1) & v11;
      v16 = *(v3 + 72);
      v30 = v16;
      v31 = v8;
      v17 = v32;
      do
      {
        v18 = v16 * v10;
        sub_1010FC79C(*(v7 + 48) + v16 * v10, v17, type metadata accessor for BeaconIdentifier);
        v19 = v7;
        v20 = *(v7 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1010FBFB0(&qword_1016967B0, &type metadata accessor for UUID);
        v21 = v15;
        dispatch thunk of Hashable.hash(into:)();
        v22 = v17 + *(v33 + 20);
        dispatch thunk of Hashable.hash(into:)();
        v23 = Hasher._finalize()();
        sub_1010FC804(v17, type metadata accessor for BeaconIdentifier);
        v24 = v23 & v11;
        v15 = v21;
        if (v13 >= v21)
        {
          if (v24 < v21)
          {
            v7 = v19;
            v16 = v30;
            goto LABEL_5;
          }

          v7 = v19;
          v16 = v30;
          if (v13 < v24)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v7 = v19;
          v16 = v30;
          if (v24 < v15 && v13 < v24)
          {
            goto LABEL_5;
          }
        }

        v25 = v16 * v13;
        if (v16 * v13 < v18 || *(v7 + 48) + v16 * v13 >= (*(v7 + 48) + v18 + v16))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v13 = v10;
        if (v25 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v13 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v11;
        v8 = v31;
      }

      while (((*(v31 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v13) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v7 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v28;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1010FB9A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1010FBB40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v31 = a1;
  v26 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v30);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v27 = "yd23UnknownDiscoverySession";
  v29 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v28 = *(v9 + 104);
  v28(v12);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  v25[1] = sub_1010FBFB0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v25[0] = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v28)(v12, v29, v30);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[5] = &_swiftEmptySetSingleton;
  v4[6] = _swiftEmptyDictionarySingleton;
  v4[7] = 0;
  v4[8] = &_swiftEmptySetSingleton;
  v13 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v4[12] = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AD20);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "UnknownDiscoverySession.init()", v17, 2u);
  }

  v18 = v32;
  v5[4] = v31;
  v20 = v33;
  v19 = v34;
  v5[10] = v18;
  v5[11] = v20;
  v5[9] = v19;
  v21 = v5[12];
  swift_unownedRetain();
  v22 = v18;

  v23 = v21;
  CurrentLocationMonitor.requestLocation()();

  return v5;
}

uint64_t sub_1010FBFB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1010FC00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010FC070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010FC0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010FC144(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1010E844C(a1, a2, v9, (v2 + v6), v10);
}

void sub_1010FC238(void **a1)
{
  v3 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1010E9E24(a1, v4, v5, v6);
}

uint64_t sub_1010FC2AC()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 16);

  v8 = v0 + v2;
  v9 = *(v8 + 16);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v8 + 8), v9);
  }

  v10 = v1[7];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = v1[8];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  sub_10001E524(*(v8 + v1[9]), *(v8 + v1[9] + 8));
  sub_100016590(*(v8 + v1[14]), *(v8 + v1[14] + 8));
  v14 = v0 + v5;
  v15 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v15 - 1) + 48))(v0 + v5, 1, v15))
  {
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v0 + v5, v16);
    sub_100016590(*(v14 + v15[5]), *(v14 + v15[5] + 8));
    v17 = *(v14 + v15[6] + 8);

    v18 = *(v14 + v15[7] + 8);

    v19 = v15[9];
    v20 = type metadata accessor for AirTagVersionNumber();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v14 + v19, 1, v20))
    {
      (*(v21 + 8))(v14 + v19, v20);
    }

    v22 = *(v14 + v15[16] + 8);
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_1010FC5BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8);
  v9 = *(v2 + 16);
  return sub_1010E9CB4(a1, (v2 + v6), v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1010FC6A4()
{
  v1 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1010E9AE0(v2, v3);
}

uint64_t sub_1010FC734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010FC79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010FC804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010FC864()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 16);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v5 + 8), v6);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  sub_10001E524(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1010FC9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v3 + 16);

  return a3(a1, a2, v9, v3 + v7, v8);
}

uint64_t sub_1010FCAAC()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 16);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v4 + 8), v5);
  }

  v6 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  sub_10001E524(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[14]), *(v4 + v1[14] + 8));
  v11 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1010FCC1C(uint64_t a1)
{
  v3 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1010E78A8(a1, v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_1010FCCB0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1010E4930(a1, a2, v6);
}

uint64_t sub_1010FCD30(uint64_t a1)
{
  v4 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1010E4B20(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1010FCE68@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1010E3D48(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1010FCE90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148);
  result = sub_1010E8050(a1, a1 + *(v4 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_1010FCF60@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 40);
}

uint64_t sub_1010FCFCC(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v48 = &v40[-v7];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v47 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v40[-v14];
  v46 = v16;
  __chkstk_darwin(v13);
  v18 = &v40[-v17];
  v19 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177AD20);
  v21 = *(v9 + 16);
  v21(v15, v18, v8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = v18;
    v25 = v24;
    v42 = swift_slowAlloc();
    v50 = v42;
    *v25 = 136315394;
    *(v25 + 4) = sub_1000136BC(0xD000000000000026, 0x800000010137B520, &v50);
    *(v25 + 12) = 2082;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID);
    v41 = v23;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v21;
    v27 = a3;
    v29 = v28;
    v45 = *(v9 + 8);
    v45(v15, v8);
    v30 = sub_1000136BC(v26, v29, &v50);
    a3 = v27;
    v21 = v43;

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v41, "%s %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    v18 = v44;
  }

  else
  {

    v45 = *(v9 + 8);
    v45(v15, v8);
  }

  v31 = type metadata accessor for TaskPriority();
  v32 = v48;
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  v33 = v47;
  v21(v47, v18, v8);
  v34 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v35 = v18;
  v36 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  (*(v9 + 32))(v37 + v34, v33, v8);
  v38 = (v37 + v36);
  *v38 = v49;
  v38[1] = a3;

  sub_10025EDD4(0, 0, v32, &unk_101406250, v37);

  return (v45)(v35, v8);
}

uint64_t sub_1010FD488(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1010EF708(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1010FD664()
{
  result = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1010FD6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1010FD754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1010FD800()
{
  sub_101101098(319, &qword_1016B64C8, &type metadata for HashedAdvertisement, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_101101098(319, &qword_1016B6880, &type metadata for FetchedLocation, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100395648();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1010FD900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1010FD9CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1010FDA98(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016C83E0, &qword_101406B58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011016C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2 & 1;
  v16 = 0;
  sub_10110194C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_1000BC4D4(&qword_1016C83A0, &qword_101406B40);
    sub_1011019A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1010FDD04(uint64_t a1)
{
  v2 = sub_1011016C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FDD40(uint64_t a1)
{
  v2 = sub_1011016C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FDDC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xEC0000006F666E49;
  }

  if (*a2)
  {
    v6 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xEC0000006F666E49;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1010FDE6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1010FDEEC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1010FDF58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1010FDFE0(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006F666E49;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1010FE028(uint64_t a1)
{
  v2 = sub_101101D74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FE064(uint64_t a1)
{
  v2 = sub_101101D74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FE0A0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016C8468, &qword_101406F70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101101D74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_100017D5C(a2, a3);
  sub_10049EBA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v17, v18);
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    sub_1000BC4D4(&qword_1016C8450, &qword_101406F68);
    sub_101101DC8(&qword_1016C8470, &qword_1016C8478);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1010FE2A0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8260, &qword_1014064A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100D94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_100017D5C(v15, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo(0) + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for Date();
    sub_101100C10(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010FE47C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for Date();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016C8250, &qword_101406498);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100D94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = v10;
  v16 = v26;
  v15 = v27;
  v17 = v13;
  v30 = 0;
  sub_1000E307C();
  v18 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v17;
  *v17 = v29;
  LOBYTE(v29) = 1;
  sub_101100C10(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v18);
  v19 = v22;
  (*(v24 + 32))(&v22[*(v23 + 20)], v6, v15);
  sub_101100D2C(v19, v25, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
  sub_100007BAC(a1);
  return sub_101100C78(v19, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
}

uint64_t sub_1010FE7C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_1000BC4D4(&qword_1016C8240, &unk_101406480);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for KeyDropFetchResponse.RawLocationPayload(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100CD8();
  v16 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(a1);
  }

  v22 = v6;
  v26 = a1;
  v28 = 0;
  sub_1000E307C();
  v17 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *v14 = v27;
  v28 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + 1) = v27;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v28 = 2;
  sub_1006476FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v26;
  v21 = 0;
  *(v14 + 4) = v27;
  type metadata accessor for UUID();
  LOBYTE(v27) = 3;
  sub_101100C10(&qword_101698300, &type metadata accessor for UUID);
  v19 = v22;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v19, &v14[*(v11 + 28)]);
  sub_1000BC4D4(&qword_1016B6918, &qword_101406490);
  v28 = 4;
  sub_100B7804C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  MEMORY[8](v10, v17);
  *&v14[*(v11 + 32)] = v27;
  sub_101100D2C(v14, v23, type metadata accessor for KeyDropFetchResponse.RawLocationPayload);
  sub_100007BAC(v18);
  return sub_101100C78(v14, type metadata accessor for KeyDropFetchResponse.RawLocationPayload);
}

void *sub_1010FECB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10110020C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1010FED00(uint64_t a1)
{
  v2 = sub_101100D94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FED3C(uint64_t a1)
{
  v2 = sub_101100D94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150)
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

uint64_t sub_1010FEE94(uint64_t a1)
{
  v2 = sub_101101844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FEED0(uint64_t a1)
{
  v2 = sub_101101844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FEF38@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1010FEF70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x64496572616873;
  if (v1 != 3)
  {
    v4 = 0x656B636150766C74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972636544636F6CLL;
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

uint64_t sub_1010FF018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101100658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1010FF040(uint64_t a1)
{
  v2 = sub_101100CD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FF07C(uint64_t a1)
{
  v2 = sub_101100CD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FF0D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for KeyDropFetchResponse.RawLocationPayload(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001F280(a1, v20);
  sub_1010FE7C8(v20, v8);
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v10 = v8[2];
  v11 = v8[3];
  a2[2] = v10;
  a2[3] = v11;
  v12 = *(v5 + 28);
  v13 = type metadata accessor for KeyDropFetchResponse.LocationPayload(0);
  sub_100015794(v8 + v12, a2 + *(v13 + 28));
  v14 = v8[4];
  v15 = *(v8 + *(v5 + 32));
  sub_100017D5C(v10, v11);
  v16 = sub_100B9C7B8(v14, v15);
  sub_100007BAC(a1);
  a2[4] = v16;
  v17 = v8[1];
  if (v17 >> 60 == 15)
  {
    v18 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v18 = *v8;
    sub_100017D5C(*v8, v8[1]);
  }

  result = sub_101100C78(v8, type metadata accessor for KeyDropFetchResponse.RawLocationPayload);
  *a2 = v18;
  a2[1] = v17;
  return result;
}

uint64_t sub_1010FF254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000101349FC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61636F4C6E736361 && a2 == 0xED0000736E6F6974)
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

uint64_t sub_1010FF344(uint64_t a1)
{
  v2 = sub_101100A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FF380(uint64_t a1)
{
  v2 = sub_101100A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FF3BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101100814(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1010FF3EC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEA00000000007354;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v3 = 0xEA00000000007354;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int sub_1010FF480()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1010FF4F4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1010FF554()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1010FF5D0(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0xEA00000000007354;
  }

  *a1 = 0x6E6F697461636F6CLL;
  a1[1] = v2;
}

uint64_t sub_1010FF60C@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1010FF66C(uint64_t a1)
{
  v2 = sub_101100BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FF6A8(uint64_t a1)
{
  v2 = sub_101100BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010FF6E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for Date();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C8228, &qword_101406470);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  v12 = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100BBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v24 = v15;
  v17 = v26;
  LOBYTE(v30) = 1;
  sub_101100C10(&qword_101697F40, &type metadata accessor for Date);
  v18 = v29;
  v19 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23[1] = v12;
  v20 = *(v12 + 20);
  v21 = v24;
  (*(v17 + 32))(v24 + v20, v6, v18);
  v31 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v11, v19);
  *v21 = v30;
  sub_101100D2C(v21, v25, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
  sub_100007BAC(a1);
  return sub_101100C78(v21, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
}

uint64_t sub_1010FFA64(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C8238, &qword_101406478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100BBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_100017D5C(v15, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0) + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for Date();
    sub_101100C10(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010FFC40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C8210, &qword_101406468);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  Response = type metadata accessor for KeyDropImportedLocationFetchResponse(0);
  v12 = *(*(Response - 8) + 64);
  __chkstk_darwin(Response - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100B00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v19;
    sub_101100C10(&qword_1016C8220, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    sub_101100B54(v17, v14, type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo);
    sub_101100B54(v14, v16, type metadata accessor for KeyDropImportedLocationFetchResponse);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_1010FFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_1010FFF90(uint64_t a1)
{
  v2 = sub_101100B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010FFFCC(uint64_t a1)
{
  v2 = sub_101100B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101100020(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C8388, &qword_101406B38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1011016C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_101101718();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_1000BC4D4(&qword_1016C83A0, &qword_101406B40);
  v10[15] = 1;
  sub_10110176C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v8;
}

void *sub_10110020C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C8440, &qword_101406F60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_101101D74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8450, &qword_101406F68);
    v15 = 1;
    sub_101101DC8(&qword_1016C8458, &qword_1016C8460);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v13;
    v11 = v14;
    sub_100017D5C(v13, v14);

    sub_100007BAC(a1);
    sub_100016590(v9, v11);
  }

  return v9;
}

uint64_t sub_10110046C(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C83B8, &qword_101406B48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101101844();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_101101718();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_1000BC4D4(&qword_1016C83C8, &qword_101406B50);
  v10[15] = 1;
  sub_101101898();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v8;
}

uint64_t sub_101100658(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972636544636F6CLL && a2 == 0xED000079654B7470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656B636150766C74 && a2 == 0xEA00000000007374)
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

uint64_t sub_101100814(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C81F0, &qword_101406460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101100A04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  sub_101100A58();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v12;
  v11 = 1;
  sub_101100AAC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_101100A04()
{
  result = qword_1016C81F8;
  if (!qword_1016C81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C81F8);
  }

  return result;
}

unint64_t sub_101100A58()
{
  result = qword_1016C8200;
  if (!qword_1016C8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8200);
  }

  return result;
}

unint64_t sub_101100AAC()
{
  result = qword_1016C8208;
  if (!qword_1016C8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8208);
  }

  return result;
}

unint64_t sub_101100B00()
{
  result = qword_1016C8218;
  if (!qword_1016C8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8218);
  }

  return result;
}

uint64_t sub_101100B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_101100BBC()
{
  result = qword_1016C8230;
  if (!qword_1016C8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8230);
  }

  return result;
}

uint64_t sub_101100C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101100C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_101100CD8()
{
  result = qword_1016C8248;
  if (!qword_1016C8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8248);
  }

  return result;
}

uint64_t sub_101100D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_101100D94()
{
  result = qword_1016C8258;
  if (!qword_1016C8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8258);
  }

  return result;
}

uint64_t sub_101100E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_101100EEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_101100F9C()
{
  sub_101101098(319, &qword_10169A330, &type metadata for Data, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_101101098(319, &unk_10169F500, &type metadata for Data, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100395648();
      if (v2 <= 0x3F)
      {
        sub_1011010E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_101101098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1011010E8()
{
  if (!qword_1016C82D0)
  {
    sub_1000BC580(&qword_1016B6918, &qword_101406490);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C82D0);
    }
  }
}

unint64_t sub_1011011A0()
{
  result = qword_1016C8310;
  if (!qword_1016C8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8310);
  }

  return result;
}

unint64_t sub_1011011F8()
{
  result = qword_1016C8318;
  if (!qword_1016C8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8318);
  }

  return result;
}

unint64_t sub_101101250()
{
  result = qword_1016C8320;
  if (!qword_1016C8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8320);
  }

  return result;
}

unint64_t sub_1011012A8()
{
  result = qword_1016C8328;
  if (!qword_1016C8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8328);
  }

  return result;
}

unint64_t sub_101101300()
{
  result = qword_1016C8330;
  if (!qword_1016C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8330);
  }

  return result;
}

unint64_t sub_101101358()
{
  result = qword_1016C8338;
  if (!qword_1016C8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8338);
  }

  return result;
}

unint64_t sub_1011013B0()
{
  result = qword_1016C8340;
  if (!qword_1016C8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8340);
  }

  return result;
}

unint64_t sub_101101408()
{
  result = qword_1016C8348;
  if (!qword_1016C8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8348);
  }

  return result;
}

unint64_t sub_101101460()
{
  result = qword_1016C8350;
  if (!qword_1016C8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8350);
  }

  return result;
}

unint64_t sub_1011014B8()
{
  result = qword_1016C8358;
  if (!qword_1016C8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8358);
  }

  return result;
}

unint64_t sub_101101510()
{
  result = qword_1016C8360;
  if (!qword_1016C8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8360);
  }

  return result;
}

unint64_t sub_101101568()
{
  result = qword_1016C8368;
  if (!qword_1016C8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8368);
  }

  return result;
}

unint64_t sub_1011015C0()
{
  result = qword_1016C8370;
  if (!qword_1016C8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8370);
  }

  return result;
}

unint64_t sub_101101618()
{
  result = qword_1016C8378;
  if (!qword_1016C8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8378);
  }

  return result;
}

unint64_t sub_101101670()
{
  result = qword_1016C8380;
  if (!qword_1016C8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8380);
  }

  return result;
}

unint64_t sub_1011016C4()
{
  result = qword_1016C8390;
  if (!qword_1016C8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8390);
  }

  return result;
}

unint64_t sub_101101718()
{
  result = qword_1016C8398;
  if (!qword_1016C8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8398);
  }

  return result;
}

unint64_t sub_10110176C()
{
  result = qword_1016C83A8;
  if (!qword_1016C83A8)
  {
    sub_1000BC580(&qword_1016C83A0, &qword_101406B40);
    sub_1011017F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83A8);
  }

  return result;
}

unint64_t sub_1011017F0()
{
  result = qword_1016C83B0;
  if (!qword_1016C83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83B0);
  }

  return result;
}

unint64_t sub_101101844()
{
  result = qword_1016C83C0;
  if (!qword_1016C83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83C0);
  }

  return result;
}

unint64_t sub_101101898()
{
  result = qword_1016C83D0;
  if (!qword_1016C83D0)
  {
    sub_1000BC580(&qword_1016C83C8, &qword_101406B50);
    sub_101100C10(&qword_1016C83D8, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83D0);
  }

  return result;
}

unint64_t sub_10110194C()
{
  result = qword_1016C83E8;
  if (!qword_1016C83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83E8);
  }

  return result;
}

unint64_t sub_1011019A0()
{
  result = qword_1016C83F0;
  if (!qword_1016C83F0)
  {
    sub_1000BC580(&qword_1016C83A0, &qword_101406B40);
    sub_101101A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83F0);
  }

  return result;
}

unint64_t sub_101101A24()
{
  result = qword_1016C83F8;
  if (!qword_1016C83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C83F8);
  }

  return result;
}

unint64_t sub_101101ABC()
{
  result = qword_1016C8400;
  if (!qword_1016C8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8400);
  }

  return result;
}

unint64_t sub_101101B14()
{
  result = qword_1016C8408;
  if (!qword_1016C8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8408);
  }

  return result;
}

unint64_t sub_101101B6C()
{
  result = qword_1016C8410;
  if (!qword_1016C8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8410);
  }

  return result;
}

unint64_t sub_101101BC4()
{
  result = qword_1016C8418;
  if (!qword_1016C8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8418);
  }

  return result;
}

unint64_t sub_101101C1C()
{
  result = qword_1016C8420;
  if (!qword_1016C8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8420);
  }

  return result;
}

unint64_t sub_101101C74()
{
  result = qword_1016C8428;
  if (!qword_1016C8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8428);
  }

  return result;
}

unint64_t sub_101101CCC()
{
  result = qword_1016C8430;
  if (!qword_1016C8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8430);
  }

  return result;
}

unint64_t sub_101101D20()
{
  result = qword_1016C8438;
  if (!qword_1016C8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8438);
  }

  return result;
}

unint64_t sub_101101D74()
{
  result = qword_1016C8448;
  if (!qword_1016C8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8448);
  }

  return result;
}

uint64_t sub_101101DC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C8450, &qword_101406F68);
    sub_101100C10(a2, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101101E78()
{
  result = qword_1016C8480;
  if (!qword_1016C8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8480);
  }

  return result;
}

unint64_t sub_101101ED0()
{
  result = qword_1016C8488;
  if (!qword_1016C8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8488);
  }

  return result;
}

unint64_t sub_101101F28()
{
  result = qword_1016C8490;
  if (!qword_1016C8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8490);
  }

  return result;
}

uint64_t sub_101101F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_101101FB0, 0, 0);
}

uint64_t sub_101101FB0()
{
  v1 = v0[4];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  sub_10110338C();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[6] = v5;
  v0[7] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[5];
  v10 = v0[3];

  v11 = swift_task_alloc();
  v0[8] = v11;
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v7;
  v11[5] = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_101102178;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD00000000000001CLL, 0x800000010137B570, sub_101103488, v11, &type metadata for () + 8);
}

uint64_t sub_101102178()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1007788DC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_101102294;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101102294()
{
  sub_100016590(v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

void sub_1011022F8(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_100E76834;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_1016674D8;
  v13 = _Block_copy(aBlock);

  [a2 setWithUserIdentifier:isa beaconsData:v10 completion:v13];
  _Block_release(v13);
}

void sub_1011024E4(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016C84B8, &qword_101407108);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10110322C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101667488;
  v11 = _Block_copy(aBlock);

  [a2 beaconInfoWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_101102694(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v7 = type metadata accessor for PropertyListDecoder();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
      sub_1011032F4(&qword_1016C84C0, &qword_1016C84B0, &qword_101407100);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016C84B8, &qword_101407108);
      CheckedContinuation.resume(returning:)();
      return sub_100006654(a1, a2);
    }

    sub_100991400();
    swift_allocError();
    *v3 = 1;
  }

  sub_1000BC4D4(&qword_1016C84B8, &qword_101407108);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_101102874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_101102898, 0, 0);
}

uint64_t sub_101102898()
{
  v1 = v0[3];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier();
  sub_101103440(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v0[5] = v5;
  v0[6] = v6;

  v8 = v0[4];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  *v11 = v0;
  v11[1] = sub_100777B50;
  v13 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD00000000000001DLL, 0x800000010137B550, sub_101103118, v9, v12);
}

void sub_101102A7C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016C8498, &qword_1014070F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_101103124;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101667438;
  v12 = _Block_copy(aBlock);

  [a2 beaconInfoWithBeaconIdentifierData:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_101102C4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (a3)
  {
    v20 = a3;
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v16 = type metadata accessor for PropertyListDecoder();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1011032F4(&qword_1016C84A0, &qword_10169E368, &qword_1013D6690);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_10110314C(v12, v10);
      sub_1000BC4D4(&qword_1016C8498, &qword_1014070F8);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
      return sub_1011031BC(v12);
    }

    sub_100991400();
    v13 = swift_allocError();
    *v14 = 1;
    v20 = v13;
  }

  sub_1000BC4D4(&qword_1016C8498, &qword_1014070F8);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_101102E94(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_101101F8C(a1, a2, v6);
}

uint64_t sub_101102F64()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  *v4 = v0;
  v4[1] = sub_10077ECC8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6E496E6F63616562, 0xEC00000029286F66, sub_101103224, v2, v5);
}

uint64_t sub_101103068(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_101102874(a1, a2, v6);
}

void sub_101103118(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_101102A7C(a1, *(v1 + 16));
}

uint64_t sub_10110314C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011031BC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101103254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1000BC4D4(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_1011032F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    sub_101103440(&qword_1016C84A8, type metadata accessor for KeyGenerationBeaconInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10110338C()
{
  result = qword_1016C84C8;
  if (!qword_1016C84C8)
  {
    sub_1000BC580(&qword_1016C84B0, &qword_101407100);
    sub_101103440(&qword_1016C84D0, type metadata accessor for KeyGenerationBeaconInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C84C8);
  }

  return result;
}

uint64_t sub_101103440(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_101103488(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1011022F8(a1, *(v1 + 16));
}

uint64_t sub_1011034B4(uint64_t a1)
{
  v2 = type metadata accessor for CharacteristicUUID(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*a1 + 40) UUID];
  sub_100B699C8(v5);

  LOBYTE(v6) = static UUID.== infix(_:_:)();
  sub_100A297E0(v5, type metadata accessor for CharacteristicUUID);
  return v6 & 1;
}

uint64_t sub_10110358C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CharacteristicUUID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  v11 = [*(*a1 + 40) UUID];
  sub_100B699C8(v10);

  v12 = a2[3];
  v13 = a2[4];
  sub_1000035D0(a2, v12);
  (*(v13 + 8))(v12, v13);
  LOBYTE(v11) = static UUID.== infix(_:_:)();
  sub_100A297E0(v8, type metadata accessor for CharacteristicUUID);
  sub_100A297E0(v10, type metadata accessor for CharacteristicUUID);
  return v11 & 1;
}

void sub_1011036D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CharacteristicUUID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a3 + 24);
  v26 = a3;
  v27 = a1;
  v28 = a2;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = *&Strong[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

  v15 = *(a4 + 16);
  if (v15)
  {
    v32 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = objc_opt_self();
    v17 = a4 + 32;
    do
    {
      sub_10001F280(v17, v29);
      v18 = v30;
      v19 = v31;
      sub_1000035D0(v29, v30);
      (*(v19 + 8))(v18, v19);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 8))(v11, v21);
      v22 = [v16 UUIDWithNSUUID:isa];

      sub_100007BAC(v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = v32[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += 40;
      --v15;
    }

    while (v15);
  }

  sub_101103DC0();
  v24 = Array._bridgeToObjectiveC()().super.isa;

  [v14 discoverCharacteristics:v24 forService:*(a3 + 32)];
}

uint64_t sub_101103930(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  if (*(a1 + 48))
  {
    v5[0] = a1;
    v6 = 260;

    a2(v5);
    return sub_101103E0C(v5);
  }

  else
  {
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
  }
}

uint64_t sub_1011039A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 40);
}

uint64_t sub_101103A04()
{
  swift_unknownObjectUnownedDestroy();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  sub_1000BB27C(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Service()
{
  return objc_opt_self();
}

{
  return type metadata accessor for Service();
}

Swift::Int sub_101103A80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 32);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_101103AF0()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 32);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101103B5C()
{
  v1 = type metadata accessor for ServiceUUID(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  v5._countAndFlagsBits = 60;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v14 = v0;
  type metadata accessor for Service();
  sub_101103D60(&unk_1016C8610);
  v6._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = [*(v0 + 32) UUID];
  sub_100B699C8(v4);

  _print_unlocked<A, B>(_:_:)();
  sub_100A297E0(v4, type metadata accessor for ServiceUUID);
  v11._countAndFlagsBits = 15913;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  return v15;
}

uint64_t sub_101103D60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Service();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101103DC0()
{
  result = qword_1016A9120;
  if (!qword_1016A9120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016A9120);
  }

  return result;
}

uint64_t sub_101103E0C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_101103E74(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v66 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v81 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  v18 = CKRecord.recordType.getter();
  v82 = v8;
  if (v18 == 0xD000000000000014 && 0x80000001014072B0 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      sub_10110596C();
      swift_allocError();
      *v48 = 0;
      goto LABEL_16;
    }
  }

  v79 = a2;
  v83 = v17;
  v21 = [a1 recordID];
  v22 = [v21 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v23 = v12[6];
  if (v23(v10, 1, v11) == 1)
  {
    sub_1002EA198(v10);
    sub_10110596C();
    swift_allocError();
    *v24 = 1;
LABEL_16:
    swift_willThrow();

    return;
  }

  v78 = v12;
  v76 = v12[4];
  v76(v83, v10, v11);
  v25 = [a1 encryptedValues];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKeyedSubscript:v26];

  if (!v27 || (v77 = v25, v86 = v27, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_10110596C();
    swift_allocError();
    *v49 = 4;
    swift_willThrow();
LABEL_19:
    swift_unknownObjectRelease();

LABEL_20:
    (v78[1])(v83, v11);
    return;
  }

  v74 = v84;
  v28 = v85;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v77 objectForKeyedSubscript:v29];

  if (!v30 || (v75 = v28, v86 = v30, (swift_dynamicCast() & 1) == 0))
  {

    sub_10110596C();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();
    goto LABEL_19;
  }

  v72 = v84;
  v73 = v85;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v77 objectForKeyedSubscript:v31];

  if (!v32 || (v86 = v32, (swift_dynamicCast() & 1) == 0))
  {

    sub_10110596C();
    swift_allocError();
    *v51 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v72, v73);
    goto LABEL_20;
  }

  v70 = v84;
  v71 = v85;
  v33 = objc_autoreleasePoolPush();
  v34 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v34];
  [v34 finishEncoding];
  v35 = [v34 encodedData];
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v37;

  objc_autoreleasePoolPop(v33);
  v38 = v79;
  v39 = v69;
  *v79 = v36;
  *(v38 + 8) = v39;
  v40 = type metadata accessor for OwnedDeviceKeyRecord();
  v41 = v78;
  v42 = v78[2];
  v68 = *(v40 + 20);
  v69 = v40;
  v67 = v42;
  v42(v38 + v68, v83, v11);
  v43 = v82;
  UUID.init(uuidString:)();

  v44 = v23(v43, 1, v11);
  if (v44 == 1)
  {
    sub_1002EA198(v43);
    sub_10110596C();
    swift_allocError();
    *v45 = 5;
    swift_willThrow();
    sub_100016590(v70, v71);
    swift_unknownObjectRelease();

    sub_100016590(v72, v73);
    v46 = v41[1];
    v46(v83, v11);
    v47 = v69;
  }

  else
  {
    v52 = v81;
    v76(v81, v43, v11);
    v47 = v69;
    v67(v79 + v69[6], v52, v11);
    v54 = v72;
    v53 = v73;
    sub_100017D5C(v72, v73);
    v55 = v80;
    v56 = sub_10049C0AC(v54, v53);
    if (!v55)
    {
      LODWORD(v82) = v44;
      v58 = (v79 + v47[7]);
      *v58 = v56;
      v58[1] = v57;
      v59 = sub_10049BD68(v70, v71);
      v60 = v78;
      v63 = v62;
      swift_unknownObjectRelease();

      sub_100016590(v54, v53);
      v64 = v60[1];
      v64(v81, v11);
      v64(v83, v11);
      v65 = (v79 + v47[8]);
      *v65 = v59;
      v65[1] = v63;
      return;
    }

    sub_100016590(v70, v71);
    swift_unknownObjectRelease();

    sub_100016590(v54, v53);
    v46 = v78[1];
    v46(v52, v11);
    v46(v83, v11);
  }

  v61 = v79;
  sub_100016590(*v79, *(v79 + 8));
  v46((v61 + v68), v11);
  if (v44 != 1)
  {
    v46((v79 + v47[6]), v11);
  }
}

unint64_t sub_101104768()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x4B65746176697270;
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

uint64_t sub_101104814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101105EA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10110483C(uint64_t a1)
{
  v2 = sub_101105B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101104878(uint64_t a1)
{
  v2 = sub_101105B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011048B8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C680);
  sub_1000076D4(v0, qword_10177C680);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_101104A14(id *a1)
{
  v2 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = v2;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  CKRecordKeyValueSetting.subscript.getter();
  v9 = type metadata accessor for OwnedDeviceKeyRecord();
  v10 = v9[6];
  v11 = UUID.uuidString.getter();
  if (!v25)
  {

LABEL_9:
    v24 = UUID.uuidString.getter();
    v25 = v14;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_10;
  }

  if (v24 == v11 && v25 == v12)
  {

    goto LABEL_10;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  CKRecordKeyValueSetting.subscript.getter();
  v15 = v1 + v9[8];
  v16 = *v15;
  v17 = *(v15 + 8);
  if (v25 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      sub_100017D5C(*v15, *(v15 + 8));
      sub_100006654(v24, v25);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v17 >> 60 == 15)
  {
LABEL_14:
    sub_100017D5C(*v15, *(v15 + 8));
    sub_100006654(v24, v25);
    sub_100006654(v16, v17);
LABEL_15:
    v24 = *v15;
    v25 = *(v15 + 8);
    sub_100017D5C(*v15, v25);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_16;
  }

  sub_100017D5C(*v15, *(v15 + 8));
  sub_100017D5C(v16, v17);
  sub_10002E98C(v24, v25);
  v23 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v24, v25, v16, v17);
  sub_100016590(v16, v17);
  sub_100006654(v24, v25);
  sub_100006654(v16, v17);
  sub_100006654(v24, v25);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  CKRecordKeyValueSetting.subscript.getter();
  v18 = v1 + v9[7];
  v20 = *v18;
  v19 = *(v18 + 8);
  if (v25 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      sub_100017D5C(*v18, *(v18 + 8));
      swift_unknownObjectRelease();
      return sub_100006654(v24, v25);
    }
  }

  else if (v19 >> 60 != 15)
  {
    sub_100017D5C(*v18, *(v18 + 8));
    sub_100017D5C(v20, v19);
    sub_10002E98C(v24, v25);
    v22 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v24, v25, v20, v19);
    sub_100016590(v20, v19);
    sub_100006654(v24, v25);
    sub_100006654(v20, v19);
    sub_100006654(v24, v25);
    if (v22)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_21;
  }

  sub_100017D5C(*v18, *(v18 + 8));
  sub_100006654(v24, v25);
  sub_100006654(v20, v19);
LABEL_21:
  sub_100017D5C(*v18, *(v18 + 8));
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}