uint64_t sub_10102FEA4()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "SharesRemovalManager: 0. check shares cleanup after scheduler fire", v4, 2u);
  }

  v5 = *(v0 + 24);

  v6 = *(v5 + 216);
  v7 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v12 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v8 = v0;
  v8[1] = sub_10103004C;
  v10 = *(v0 + 24);

  return v12(v0 + 104, &unk_1013F8AC0, v10, v9);
}

uint64_t sub_10103004C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_1010326C4;
  }

  else
  {

    v6 = sub_101030194;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101030194()
{
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10102FCDC;
  v3 = v0[9];
  v4 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v4);
}

uint64_t sub_10103023C()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177A560);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "SharesRemovalManager: 0. check shares cleanup after me device change", v3, 2u);
  }

  type metadata accessor for Transaction();
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1010303D8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_101030490, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_101030490()
{
  v1 = *(*(v0 + 48) + 216);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v7 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v3 = v0;
  v3[1] = sub_10103057C;
  v5 = *(v0 + 48);

  return v7(v0 + 64, &unk_1013F8AB8, v5, v4);
}

uint64_t sub_10103057C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_1008347FC;
  }

  else
  {

    v6 = sub_1004D4490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010306E4()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "SharesRemovalManager: 0. check shares cleanup after apps list changed", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10103085C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10103085C()
{
  v1 = *(*(v0 + 48) + 216);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v7 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v3 = v0;
  v3[1] = sub_101030948;
  v5 = *(v0 + 48);

  return v7(v0 + 64, &unk_1013F8A70, v5, v4);
}

uint64_t sub_101030948()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {
  }

  return _swift_task_switch(sub_1008347FC, v5, 0);
}

uint64_t sub_101030A90()
{
  v1 = v0;
  v2 = type metadata accessor for PrefixedDefaults();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C3AB0, &qword_1013F8A48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v25 = 0x7365547265646E75;
  v26 = 0xE900000000000074;
  v12 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v27 != 1)
  {
    v20 = sub_1000BC4D4(&qword_101698E40, &unk_101390D30);
    (*(v3 + 16))(v6, v0 + *(v20 + 40), v2);
    v21 = *v0;
    v22 = v1[1];

    ManagedDefault.init(prefixedDefaults:key:)();
    ManagedDefault.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v19 = v25;
    if (v25 != 2)
    {
      return v19 & 1;
    }

LABEL_9:
    v19 = *(v1 + 16);
    return v19 & 1;
  }

  if (qword_101695160 != -1)
  {
    v12 = swift_once();
  }

  v13 = *v0;
  v14 = v0[1];
  v15 = *(qword_10177C4C8 + 24);
  __chkstk_darwin(v12);
  *(&v24 - 4) = v16;
  *(&v24 - 3) = v17;
  *(&v24 - 2) = v18;
  sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v19 = v27;
  return v19 & 1;
}

uint64_t sub_101030DDC()
{
  v1 = v0;
  v2 = type metadata accessor for PrefixedDefaults();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C3AA8, &qword_1013F8A40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v25 = 0x7365547265646E75;
  v26 = 0xE900000000000074;
  v12 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (LOBYTE(v24[0]) == 1)
  {
    if (qword_101695160 != -1)
    {
      v12 = swift_once();
    }

    v13 = *v0;
    v14 = v0[1];
    v15 = *(qword_10177C4C8 + 24);
    __chkstk_darwin(v12);
    v24[-4] = v16;
    v24[-3] = v17;
    v24[-2] = v18;
    sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    if (swift_dynamicCast())
    {
      return v24[0];
    }
  }

  else
  {
    v20 = sub_1000BC4D4(&qword_101698E48, &qword_1013F8A00);
    (*(v3 + 16))(v6, v0 + *(v20 + 40), v2);
    v21 = *v0;
    v22 = v1[1];

    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10102F808();
    ManagedDefault.init(prefixedDefaults:key:)();
    ManagedDefault.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    result = v25;
    if (v25)
    {
      return result;
    }
  }

  v23 = v1[2];
}

uint64_t sub_101031148(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PrefixedDefaults();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016C3AA8, &qword_1013F8A40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25[-1] - v12;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v25[0] = 0x7365547265646E75;
  v25[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v27 == 1)
  {
    if (qword_101695160 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C4C8;
    v26 = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    v25[0] = a1;
    v15 = *v2;
    v16 = v2[1];
    v17 = *(v14 + 24);
    __chkstk_darwin(v26);
    *(&v24 - 4) = v14;
    *(&v24 - 3) = v18;
    *(&v24 - 2) = v19;
    *(&v24 - 1) = v25;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    return sub_10000B3A8(v25, &unk_1016A0B10, &qword_10139BF40);
  }

  else
  {
    v21 = sub_1000BC4D4(&qword_101698E48, &qword_1013F8A00);
    (*(v5 + 16))(v8, v1 + *(v21 + 40), v4);
    v22 = *v1;
    v23 = v2[1];

    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10102F808();
    ManagedDefault.init(prefixedDefaults:key:)();
    v27 = a1;
    swift_beginAccess();
    ManagedDefault.wrappedValue.setter();
    swift_endAccess();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1010314B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PrefixedDefaults();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016C3AB0, &qword_1013F8A48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26[-1] - v12;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v26[0] = 0x7365547265646E75;
  v26[1] = 0xE900000000000074;
  v14 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v27 == 1)
  {
    if (qword_101695160 != -1)
    {
      v14 = swift_once();
    }

    v26[3] = &type metadata for Bool;
    LOBYTE(v26[0]) = a1 & 1;
    v15 = *v1;
    v16 = v1[1];
    v17 = *(qword_10177C4C8 + 24);
    __chkstk_darwin(v14);
    *(&v25 - 4) = v18;
    *(&v25 - 3) = v19;
    *(&v25 - 2) = v20;
    *(&v25 - 1) = v26;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    return sub_10000B3A8(v26, &unk_1016A0B10, &qword_10139BF40);
  }

  else
  {
    v22 = sub_1000BC4D4(&qword_101698E40, &unk_101390D30);
    (*(v5 + 16))(v8, v1 + *(v22 + 40), v4);
    v24 = *v1;
    v23 = v2[1];

    ManagedDefault.init(prefixedDefaults:key:)();
    v27 = a1 & 1;
    swift_beginAccess();
    ManagedDefault.wrappedValue.setter();
    swift_endAccess();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1010317FC()
{
  type metadata accessor for MockUserDefaults();
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_10177C4C8 = v0;
  return result;
}

double sub_101031868@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_100771D58(a2, a3);
    if (v10)
    {
      sub_100013894(*(v8 + 56) + 32 * v9, a4);

      return result;
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t sub_101031918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000D2A70(a4, v7, &unk_1016A0B10, &qword_10139BF40);
  swift_beginAccess();

  sub_1001DDD30(v7, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1010319B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_101031A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for PrefixedDefaults();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_101031AAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for PrefixedDefaults();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 16) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_101031D54(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for PrefixedDefaults();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v24 = (a1 + v12 + 16) & ~v12;
    if (v9 == v16)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v9, v7);
    }

    else
    {
      v26 = *(v11 + 56);
      v27 = (v24 + v13 + v14) & ~v14;

      v26(v27, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t sub_101032090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10102F884(a1, v4, v5, v6);
}

uint64_t sub_101032144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010321C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10103222C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010322CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1010306C4(v0);
}

uint64_t sub_10103235C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_10059C1AC(a1, v4, v5, v6);
}

uint64_t sub_101032410(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10102D494(a1, v1);
}

uint64_t sub_1010324AC(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_10102EA6C(a1, v1);
}

uint64_t sub_101032574(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_101032604()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1010303B8(v0);
}

uint64_t type metadata accessor for ConfigurationEndpoint()
{
  result = qword_1016C3B28;
  if (!qword_1016C3B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10103273C()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x6769666E6F632FLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t sub_101032844@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for OfflineFindingInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  v14 = sub_101034790();
  v16 = v14;
  if (v17)
  {
    *a1 = v14;
    sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  }

  else
  {
    v19 = v15;
    v20 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v52[0] = 0;
    v22 = [v20 propertyListWithData:isa options:0 format:0 error:v52];

    if (v22)
    {
      v23 = v52[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
      if (swift_dynamicCast())
      {

        sub_100B994B4(v24, v5);
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

          sub_101034CD0(v16, v19, 0);
          sub_101034CDC(v5);
        }

        else
        {
          sub_100B9AF08(v5, v13);
          if (qword_101695168 != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          v27 = sub_1000076D4(v26, qword_10177C4D0);

          v51 = v27;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();

          LODWORD(v50) = v29;
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v48 = v30;
            v49 = swift_slowAlloc();
            v52[0] = v49;
            *v30 = 136315138;
            v31 = Dictionary.description.getter();
            v32 = v28;
            v34 = v33;

            v35 = sub_1000136BC(v31, v34, v52);

            v36 = v48;
            *(v48 + 1) = v35;
            _os_log_impl(&_mh_execute_header, v32, v50, "plist: %s", v36, 0xCu);
            sub_100007BAC(v49);
          }

          else
          {
          }

          sub_101034D44(v13, v11);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v52[0] = v50;
            *v39 = 141558275;
            *(v39 + 4) = 1752392040;
            *(v39 + 12) = 2081;
            LODWORD(v49) = v38;
            v40 = sub_100B9A2E4();
            v42 = v41;
            sub_101034DA8(v11);
            v43 = sub_1000136BC(v40, v42, v52);

            *(v39 + 14) = v43;
            _os_log_impl(&_mh_execute_header, v37, v49, "Successfully decoded plist %{private,mask.hash}s", v39, 0x16u);
            sub_100007BAC(v50);
          }

          else
          {

            sub_101034DA8(v11);
          }

          if (*&v13[*(v6 + 24)])
          {
            sub_101034CD0(v16, v19, 0);
            sub_100B9AF08(v13, a1);
            sub_1000BC4D4(&unk_1016B2720, "r\a\a");
            return swift_storeEnumTagMultiPayload();
          }

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "OfflineFindingInfo record from NVRAM was invalid (index == 0)", v46, 2u);
          }

          sub_101034CD0(v16, v19, 0);
          sub_101034DA8(v13);
        }
      }

      else
      {
        sub_101034CD0(v16, v19, 0);
      }
    }

    else
    {
      v25 = v52[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_101034CD0(v16, v19, 0);
    }

    *a1 = 2;
    sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_101032F08()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v21 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v26)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = [objc_opt_self() sharedInstance];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v24 = sub_101034E10;
    v25 = v10;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10077732C;
    v23 = &unk_101660BD0;
    v11 = _Block_copy(&aBlock);
    v12 = v8;

    [v9 clearOfflineFindingInfoWithCompletion:v11];
    _Block_release(v11);

    static DispatchTime.now()();
    if (qword_101695170 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for DispatchTimeInterval();
    sub_1000076D4(v13, qword_1016C3B60);
    + infix(_:_:)();
    v14 = *(v1 + 8);
    v14(v5, v0);
    OS_dispatch_group.wait(timeout:)();
    v14(v7, v0);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_101695168 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177C4D0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Timed out clearing NVRAM", v18, 2u);
      }
    }
  }
}

uint64_t sub_101033300(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v58 - v10;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v64 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v69)
  {
    goto LABEL_52;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    LODWORD(v13) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v13 = v13;
LABEL_10:
      if (v13 > 256)
      {
        if (qword_101695168 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_49;
      }

LABEL_17:
      v24 = swift_allocObject();
      v62 = v24;
      *(v24 + 16) = 0;
      v25 = v24 + 16;
      v59 = dispatch_group_create();
      dispatch_group_enter(v59);
      if (qword_101695168 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      v18 = sub_1000076D4(v26, qword_10177C4D0);
      sub_100017D5C(a1, a2);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        sub_100016590(a1, a2);
LABEL_33:
        v58[2] = v25;

        sub_100017D5C(a1, a2);
        v58[1] = v18;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        sub_100016590(a1, a2);
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v58[0] = v11;
          v38 = v37;
          aBlock = v37;
          *v36 = 136315138;
          v39 = Data.hexString.getter();
          v41 = sub_1000136BC(v39, v40, &aBlock);

          *(v36 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v34, v35, "Writing NVRAM data: %s", v36, 0xCu);
          sub_100007BAC(v38);
          v11 = v58[0];
        }

        v42 = [objc_opt_self() sharedInstance];
        isa = Data._bridgeToObjectiveC()().super.isa;
        v44 = swift_allocObject();
        v45 = v59;
        v46 = v62;
        v44[2] = v59;
        v44[3] = v46;
        v44[4] = a1;
        v44[5] = a2;
        v67 = sub_101034E18;
        v68 = v44;
        aBlock = _NSConcreteStackBlock;
        v64 = 1107296256;
        v65 = sub_10077732C;
        v66 = &unk_101660C20;
        v47 = _Block_copy(&aBlock);
        sub_100017D5C(a1, a2);
        v48 = v45;

        [v42 storeOfflineFindingInfo:isa completion:v47];
        _Block_release(v47);

        static DispatchTime.now()();
        if (qword_101695170 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for DispatchTimeInterval();
        sub_1000076D4(v49, qword_1016C3B60);
        + infix(_:_:)();
        v50 = v60;
        v51 = *(v61 + 8);
        v51(v9, v60);
        OS_dispatch_group.wait(timeout:)();
        v51(v11, v50);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Timed out writing to NVRAM", v54, 2u);
          }
        }

        swift_beginAccess();
        v55 = *(v62 + 16);

        return v55;
      }

      v29 = swift_slowAlloc();
      v30 = v29;
      *v29 = 134217984;
      if (v12 <= 1)
      {
        if (!v12)
        {
          v31 = BYTE6(a2);
LABEL_32:
          *(v29 + 4) = v31;
          sub_100016590(a1, a2);
          _os_log_impl(&_mh_execute_header, v27, v28, "Writing %ld bytes to NVRAM.", v30, 0xCu);

          goto LABEL_33;
        }

        LODWORD(v31) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v31 = v31;
          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_51;
      }

      if (v12 != 2)
      {
        v31 = 0;
        goto LABEL_32;
      }

      v33 = *(a1 + 16);
      v32 = *(a1 + 24);
      v16 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (!v16)
      {
        goto LABEL_32;
      }

      __break(1u);
LABEL_28:
      sub_100016590(a1, a2);
LABEL_45:

      return 0;
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_12:
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C4D0);
  sub_100017D5C(a1, a2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_28;
  }

  v20 = swift_slowAlloc();
  *v20 = 134217984;
  if (v12 == 2)
  {
    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v16 = __OFSUB__(v21, v22);
    v23 = v21 - v22;
    if (!v16)
    {
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_17;
  }

  LODWORD(v23) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v23 = v23;
LABEL_44:
    *(v20 + 4) = v23;
    v56 = v20;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v18, v19, "%ld > 256 byte NVRAM storage limit!", v56, 0xCu);

    goto LABEL_45;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_101033AC0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C4D0);
  sub_1000076D4(v0, qword_10177C4D0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_101033B38()
{
  result = qword_1016C3B80;
  if (!qword_1016C3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3B80);
  }

  return result;
}

uint64_t sub_101033B9C()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100044B3C(v0, qword_1016C3B60);
  *sub_1000076D4(v0, qword_1016C3B60) = 30;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_101033C2C()
{
  v0 = sub_101034790();
  if (v2)
  {
    v3 = sub_1000BC4D4(&qword_1016C3B88, &unk_1013F8C00);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    result = CurrentValueSubject.init(_:)();
    v7 = result;
  }

  else
  {
    v8 = v0;
    v9 = v1;
    v10 = sub_1000BC4D4(&qword_1016C3B88, &unk_1013F8C00);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_100017D5C(v8, v9);
    v7 = CurrentValueSubject.init(_:)();
    result = sub_101034CD0(v8, v9, 0);
  }

  qword_1016C3B78 = v7;
  return result;
}

uint64_t sub_101033D08()
{
  if (qword_101695178 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016C3B88, &unk_1013F8C00);
  sub_101034E24();
  v0 = Publisher.eraseToAnyPublisher()();

  qword_10177C4E8 = v0;
  return result;
}

void sub_101033DB8(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101695168 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C4D0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_1000136BC(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "NVRAM clear error: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    else
    {
    }
  }

  else
  {
    if (qword_101695168 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C4D0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "NVRAM cleared.", v14, 2u);
    }

    if (qword_101695178 != -1)
    {
      swift_once();
    }

    v15 = xmmword_10138BBF0;
    CurrentValueSubject.send(_:)();
  }

  dispatch_group_leave(a2);
}

void sub_101034058(uint64_t a1, unint64_t a2, uint64_t a3, dispatch_group_t group, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_101695168 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C4D0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_1000136BC(v12, v13, &v45);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "fetchOfflineFindingInfo error: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {
    }

    goto LABEL_37;
  }

  if (a2 >> 60 != 15)
  {
    v15 = a2 >> 62;
    v16 = a2;
    v17 = a1;
    if ((a2 >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_18:
        v18 = a6;
        sub_100006654(a1, a2);
        a6 = v18;
        goto LABEL_20;
      }

      if (*(a1 + 16) == *(a1 + 24))
      {
LABEL_20:
        v19 = a6;
        swift_beginAccess();
        *(v19 + 16) = 1;
LABEL_37:
        dispatch_group_leave(group);
        return;
      }
    }

    else
    {
      if (!v15)
      {
        if ((a2 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:
        v21 = a1;
        v22 = a2;
        v23 = a5;
        swift_beginAccess();
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        sub_100017D5C(v21, v22);
        sub_100006654(v24, v25);
        if (qword_101695168 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000076D4(v26, qword_10177C4D0);
        sub_100017D5C(v17, v16);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v27, v28))
        {
          sub_100006654(v17, v16);
          goto LABEL_34;
        }

        v29 = swift_slowAlloc();
        *v29 = 134217984;
        if (v15 == 2)
        {
          v34 = *(v17 + 16);
          v33 = *(v17 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (!v35)
          {
            v31 = v17;
            v30 = v16;
            goto LABEL_33;
          }
        }

        else
        {
          v30 = v16;
          v31 = v17;
          if (v15 != 1)
          {
            v32 = BYTE6(v16);
            goto LABEL_33;
          }

          LODWORD(v32) = HIDWORD(v17) - v17;
          if (!__OFSUB__(HIDWORD(v17), v17))
          {
            v32 = v32;
LABEL_33:
            *(v29 + 4) = v32;
            v36 = v29;
            sub_100006654(v31, v30);
            _os_log_impl(&_mh_execute_header, v27, v28, "Read %ld bytes from NVRAM.", v36, 0xCu);

LABEL_34:

            sub_100017D5C(v17, v16);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.debug.getter();
            sub_100006654(v17, v16);
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v44 = v40;
              *v39 = 136315138;
              v41 = Data.hexString.getter();
              v43 = sub_1000136BC(v41, v42, &v44);

              *(v39 + 4) = v43;
              _os_log_impl(&_mh_execute_header, v37, v38, "Read NVRAM data: %s", v39, 0xCu);
              sub_100007BAC(v40);

              sub_100006654(v17, v16);
            }

            else
            {

              sub_100006654(v17, v16);
            }

            goto LABEL_37;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

      if (a1 == a1 >> 32)
      {
        goto LABEL_20;
      }
    }

    v20 = a5;
    sub_10002E98C(a1, a2);
    a5 = v20;
    a1 = v17;
    a2 = v16;
    goto LABEL_22;
  }

  dispatch_group_leave(group);
}

void sub_101034554(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    swift_errorRetain();
    if (qword_101695168 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C4D0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_1000136BC(v12, v13, v17);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "storeOfflineFindingInfo error: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (qword_101695178 != -1)
    {
      swift_once();
    }

    v17[0] = a4;
    v17[1] = a5;
    sub_100017D5C(a4, a5);
    CurrentValueSubject.send(_:)();
    sub_100006654(a4, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_101034790()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v28 - v6;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v32 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v30)
  {
    return 1;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBF0;
  v28[2] = v9 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  v29 = (v10 + 16);
  v11 = dispatch_group_create();
  if (qword_101695168 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v28[1] = sub_1000076D4(v12, qword_10177C4D0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Reading NVRAM data.", v15, 2u);
  }

  dispatch_group_enter(v11);
  v16 = [objc_opt_self() sharedInstance];
  v17 = swift_allocObject();
  v17[2] = v11;
  v17[3] = v9;
  v17[4] = v10;
  v35 = sub_101034E04;
  v36 = v17;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100777894;
  v34 = &unk_101660B80;
  v18 = _Block_copy(&aBlock);
  v19 = v11;

  [v16 fetchOfflineFindingInfoWithCompletion:v18];
  _Block_release(v18);

  static DispatchTime.now()();
  if (qword_101695170 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for DispatchTimeInterval();
  sub_1000076D4(v20, qword_1016C3B60);
  + infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v5, v0);
  OS_dispatch_group.wait(timeout:)();
  v21(v7, v0);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Timed out reading NVRAM", v24, 2u);
    }

    v25 = v29;
    swift_beginAccess();
    *v25 = 0;
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v9 + 24) >> 60 == 15)
  {
    swift_beginAccess();
    v26 = *(v10 + 16);

    if (v26 == 3)
    {
      return 1;
    }

    else
    {
      return v26;
    }
  }

  else
  {
    v27 = *(v9 + 16);
    sub_100017D5C(v27, *(v9 + 24));

    return v27;
  }
}

uint64_t sub_101034CD0(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_100016590(a1, a2);
  }

  return a1;
}

uint64_t sub_101034CDC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101034D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFindingInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101034DA8(uint64_t a1)
{
  v2 = type metadata accessor for OfflineFindingInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_101034E24()
{
  result = qword_1016C3B90;
  if (!qword_1016C3B90)
  {
    sub_1000BC580(&qword_1016C3B88, &unk_1013F8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3B90);
  }

  return result;
}

uint64_t sub_101034EB4(uint64_t a1)
{
  v1[3] = sub_100646BE0(a1);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = qword_10177B348;
  v1[4] = qword_10177B348;
  v3 = async function pointer to unsafeBlocking<A>(_:)[1];

  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_101034FBC;

  return unsafeBlocking<A>(_:)(v1 + 2, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_101034FBC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1010350D4, 0, 0);
}

uint64_t sub_1010350D4()
{
  v1 = sub_101074BDC(v0[2]);

  v2 = v0[3];
  if ((v1 & 1) == 0)
  {
    v3 = v0[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(0xD000000000000018, 0x8000000101378620, 0x2D746E65746E6F63, 0xEC00000065707974, isUniquelyReferenced_nonNull_native);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(0x4554414C464544, 0xE700000000000000, 0xD000000000000010, 0x8000000101347EB0, v5);
    v2 = v3;
  }

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_10103520C()
{
  v0[3] = sub_100646BE0();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  v0[4] = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_101035314;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_101035314()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10103DAD4, 0, 0);
}

uint64_t sub_10103542C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_1010354BC, 0, 0);
}

uint64_t sub_1010354BC()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 48) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1010355F0;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_1010355F0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_101035734, 0, 0);
}

uint64_t sub_101035734()
{
  v1 = sub_101074BDC(*(v0 + 16));

  if (v1)
  {
    sub_100017D5C(*(v0 + 32), *(v0 + 40));
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
LABEL_5:
    v12 = *(v0 + 8);

    return v12(v2, v3);
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 24) = 0;
  v7 = [(objc_class *)isa compressedDataUsingAlgorithm:3 error:v0 + 24];

  v8 = *(v0 + 24);
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v2 = v9;
    v3 = v11;
    goto LABEL_5;
  }

  v14 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1010358B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_101035944, 0, 0);
}

uint64_t sub_101035944()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 48) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_101035A78;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_101035A78()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10103D9EC, 0, 0);
}

uint64_t sub_101035BBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_101035C4C, 0, 0);
}

uint64_t sub_101035C4C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 48) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_101035D80;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_101035D80()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_101035EC4, 0, 0);
}

uint64_t sub_101035EC4()
{
  v1 = sub_101074BDC(*(v0 + 16));

  if (v1)
  {
    sub_100017D5C(*(v0 + 32), *(v0 + 40));
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
LABEL_5:
    v12 = *(v0 + 8);

    return v12(v2, v3);
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 24) = 0;
  v7 = [(objc_class *)isa decompressedDataUsingAlgorithm:3 error:v0 + 24];

  v8 = *(v0 + 24);
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v2 = v9;
    v3 = v11;
    goto LABEL_5;
  }

  v14 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_101036044(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_1010360D4, 0, 0);
}

uint64_t sub_1010360D4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 48) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_101036208;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_101036208()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10103DA60, 0, 0);
}

uint64_t sub_10103634C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10103636C, 0, 0);
}

uint64_t sub_10103636C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 40) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10103646C;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_10103646C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_101036584, 0, 0);
}

uint64_t sub_101036584()
{
  v1 = sub_101074BDC(v0[2]);

  if (v1)
  {
    v2 = sub_100646BE8(v0[3], v0[4]);
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10103666C;
    v7 = v0[3];
    v6 = v0[4];

    return sub_101035BBC(v7, v6);
  }
}

uint64_t sub_10103666C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_10103682C;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v9 = sub_1010367A0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1010367A0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_100646BE8(v2, v1);
  v5 = v4;
  sub_100016590(v2, v1);
  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_10103682C()
{
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't get description for request body.", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7(0, 0);
}

uint64_t sub_101036954(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_101036974, 0, 0);
}

uint64_t sub_101036974()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 40) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_101036A74;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_101036A74()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_101036B8C, 0, 0);
}

uint64_t sub_101036B8C()
{
  v1 = sub_101074BDC(v0[2]);

  if (v1)
  {
    v2 = sub_100646BE8(v0[3], v0[4]);
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_101036C74;
    v7 = v0[3];
    v6 = v0[4];

    return sub_101036044(v7, v6);
  }
}

uint64_t sub_101036C74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_10103DAD8;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v9 = sub_1010367A0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_101036DA8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C3D20, &qword_1013F8F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10103D0D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_10103CC7C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    Content = type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent(0);
    v12 = Content[5];
    LOBYTE(v14) = 1;
    type metadata accessor for Date();
    sub_10103CC7C(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + Content[6]);
    v15 = 2;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + Content[7]);
    v15 = 3;
    sub_1000BC4D4(&qword_1016C3D30, &unk_1013F8F28);
    sub_10103D218(&qword_1016C3D38, &qword_1016C3D40);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + Content[8]);
    v15 = 4;
    sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
    sub_10103D128(&qword_10169CDB8, &qword_10169CDC0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101037110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v29 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1000BC4D4(&qword_1016C3D60, &qword_1013F8F48);
  v28 = *(v31 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v31);
  v11 = &v24 - v10;
  Content = type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent(0);
  v13 = *(*(Content - 8) + 64);
  __chkstk_darwin(Content);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10103D0D4();
  v30 = v11;
  v17 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v18 = v5;
  v19 = Content;
  v20 = v26;
  v21 = v27;
  LOBYTE(v33) = 0;
  sub_10103CC7C(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *(v20 + 32);
  v32 = v6;
  v22(v15, v29);
  LOBYTE(v33) = 1;
  sub_10103CC7C(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 32))(&v15[v19[5]], v18, v21);
  v34 = 2;
  sub_10064666C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = a1;
  v15[v19[6]] = v33;
  sub_1000BC4D4(&qword_1016C3D30, &unk_1013F8F28);
  v34 = 3;
  sub_10103D218(&qword_1016C3D68, &qword_1016C3D70);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v15[v19[7]] = v33;
  sub_1000BC4D4(&qword_10169CDB0, &qword_10139A080);
  v34 = 4;
  sub_10103D128(&qword_1016B9BE0, &qword_1016B9BE8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v30, v31);
  *&v15[v19[8]] = v33;
  sub_10103D2B4(v15, v24, type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent);
  sub_100007BAC(v29);
  return sub_10103CCC4(v15, type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent);
}

uint64_t sub_101037740(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C3D88, &qword_1013F8F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10103D31C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  type metadata accessor for UUID();
  sub_10103CC7C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
    v12 = *(v3 + v11[5]);
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    v20 = *v13;
    v21 = v14;
    v19 = 2;
    sub_100017D5C(v20, v14);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v20, v21);
    v15 = (v3 + v11[7]);
    v16 = v15[1];
    v20 = *v15;
    v21 = v16;
    v19 = 3;
    sub_100017D5C(v20, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v20, v21);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010379A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016C3D78, &qword_1013F8F50);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10103D31C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v20;
  LOBYTE(v24) = 0;
  sub_10103CC7C(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v14, v23, v4);
  LOBYTE(v24) = 1;
  v14[v11[5]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v25 = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v14[v11[6]] = v24;
  v25 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v10, v22);
  *&v14[v11[7]] = v24;
  sub_10103D2B4(v14, v19, type metadata accessor for KeyDropCreateRequest.Member);
  sub_100007BAC(a1);
  return sub_10103CCC4(v14, type metadata accessor for KeyDropCreateRequest.Member);
}

uint64_t sub_101037DF4()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 1701869940;
  v4 = 0x737265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x616B63615079656BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617269707865;
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

uint64_t sub_101037E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10103D6B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101037EBC(uint64_t a1)
{
  v2 = sub_10103D0D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101037EF8(uint64_t a1)
{
  v2 = sub_10103D0D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101037F64()
{
  v1 = 0x64497265626D656DLL;
  v2 = 0x654B63696C627570;
  if (*v0 != 2)
  {
    v2 = 0x6574707972636E65;
  }

  if (*v0)
  {
    v1 = 0x72656E776FLL;
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

uint64_t sub_101037FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10103D874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101038014(uint64_t a1)
{
  v2 = sub_10103D31C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101038050(uint64_t a1)
{
  v2 = sub_10103D31C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010380BC(uint64_t a1)
{
  v2 = sub_10103D1C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010380F8(uint64_t a1)
{
  v2 = sub_10103D1C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101038134@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C3D48, &qword_1013F8F38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10103D1C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_101038298(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C3D58, &qword_1013F8F40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10103D1C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1010383D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a4;
  *(v6 + 416) = a3;
  *(v6 + 80) = a1;
  Content = type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent(0);
  *(v6 + 120) = Content;
  v8 = *(*(Content - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 136) = v9;
  v10 = *(v9 - 8);
  *(v6 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v12 = *(type metadata accessor for KeyDropCreateRequest.Member(0) - 8);
  *(v6 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v14 = type metadata accessor for Date();
  *(v6 + 176) = v14;
  v15 = *(v14 - 8);
  *(v6 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v6 + 208) = v17;
  v18 = *(v17 - 8);
  *(v6 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_101038600, v5, 0);
}

uint64_t sub_101038600()
{
  v85 = v0;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v81 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 96);
  loga = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v9, qword_10177CDD0);
  v10 = *(v3 + 16);
  *(v0 + 256) = v10;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v82 = v10;
  v10(v1, v8, v2);
  v11 = *(v5 + 16);
  *(v0 + 272) = v11;
  *(v0 + 280) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v80 = v11;
  v11(v81, v7, v4);
  swift_bridgeObjectRetain_n();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 240);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 104);
  if (v14)
  {
    v77 = v13;
    log = v12;
    v72 = *(v0 + 96);
    v74 = *(v0 + 200);
    v22 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v22 = 141559299;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_10103CC7C(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v76 = *(v16 + 8);
    v76(v15, v17);
    v26 = sub_1000136BC(v23, v25, &v83);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2082;
    sub_10103CC7C(&qword_1016969A0, &type metadata accessor for Date);
    v27 = v74;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v75 = *(v19 + 8);
    v75(v27, v20);
    v31 = sub_1000136BC(v28, v30, &v83);

    *(v22 + 24) = v31;
    *(v22 + 32) = 2048;
    v32 = *(v21 + 16);

    *(v22 + 34) = v32;

    *(v22 + 42) = 2080;
    v33 = *(v72 + 16);
    if (v33)
    {
      v73 = v22;
      v34 = *(v0 + 216);
      v35 = *(v0 + 160);
      v36 = *(v0 + 96);
      v84 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v33, 0);
      v37 = v84;
      v38 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v39 = *(v35 + 72);
      do
      {
        v40 = *(v0 + 232);
        v41 = *(v0 + 208);
        v42 = *(v0 + 168);
        sub_10103D2B4(v38, v42, type metadata accessor for KeyDropCreateRequest.Member);
        v82(v40, v42, v41);
        sub_10103CCC4(v42, type metadata accessor for KeyDropCreateRequest.Member);
        v84 = v37;
        v44 = v37[2];
        v43 = v37[3];
        if (v44 >= v43 >> 1)
        {
          sub_101123D4C(v43 > 1, v44 + 1, 1);
          v37 = v84;
        }

        v45 = *(v0 + 232);
        v46 = *(v0 + 208);
        v37[2] = v44 + 1;
        (*(v34 + 32))(v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v44, v45, v46);
        v38 += v39;
        --v33;
      }

      while (v33);
      v22 = v73;
    }

    v50 = *(v0 + 208);
    v51 = *(v0 + 416);
    v52 = Array.description.getter();
    v54 = v53;

    v55 = sub_1000136BC(v52, v54, &v83);

    v56 = 0xE400000000000000;
    v57 = 1835365481;
    *(v22 + 44) = v55;
    v58 = 0xEF736E6F69746163;
    *(v22 + 52) = 2082;
    v59 = 0x6F4C657275636573;
    v60 = 0xE300000000000000;
    v61 = 6448503;
    if (v51 != 4)
    {
      v61 = 0x646574726F706D69;
      v60 = 0xE800000000000000;
    }

    if (v51 != 3)
    {
      v59 = v61;
      v58 = v60;
    }

    v62 = 0xE400000000000000;
    v63 = 1936094325;
    if (v51 != 1)
    {
      v63 = 0x63616542666C6573;
      v62 = 0xEA00000000006E6FLL;
    }

    if (v51)
    {
      v57 = v63;
      v56 = v62;
    }

    if (v51 <= 2)
    {
      v64 = v57;
    }

    else
    {
      v64 = v59;
    }

    if (v51 <= 2)
    {
      v65 = v56;
    }

    else
    {
      v65 = v58;
    }

    v66 = sub_1000136BC(v64, v65, &v83);

    *(v22 + 54) = v66;
    _os_log_impl(&_mh_execute_header, log, v77, "Creating share for id: %{private,mask.hash}s, expiration: %{public}s,\nkeyPackage count: %ld, members: %s, type: %{public}s.", v22, 0x3Eu);
    swift_arrayDestroy();

    v48 = v75;
    v49 = v76;
  }

  else
  {
    v47 = *(v0 + 104);
    swift_bridgeObjectRelease_n();

    v48 = *(v19 + 8);
    v48(v18, v20);
    v49 = *(v16 + 8);
    v49(v15, v17);
  }

  *(v0 + 288) = v49;
  *(v0 + 296) = v48;
  v67 = *(v0 + 192);
  v68 = *(v0 + 176);
  v69 = *(v0 + 88);
  v82(*(v0 + 224), *(v0 + 80), *(v0 + 208));
  v80(v67, v69, v68);
  v70 = swift_task_alloc();
  *(v0 + 304) = v70;
  *v70 = v0;
  v70[1] = sub_101038CB0;

  return sub_101034E98();
}

uint64_t sub_101038CB0(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_101038DB0, 0, 0);
}

uint64_t sub_101038DB0()
{
  v24 = *(v0 + 272);
  v25 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);
  v18 = *(v0 + 224);
  v1 = *(v0 + 208);
  v22 = *(v0 + 176);
  v23 = *(v0 + 192);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v19 = *(v0 + 416);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 320) = JSONEncoder.init()();
  *v2 = sub_100281AE0;
  v2[1] = 0;
  (*(v3 + 104))(v2, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v5);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v20(v4, v18, v1);
  v24(v4 + v6[5], v23, v22);
  *(v4 + v6[6]) = v19;
  *(v4 + v6[7]) = v7;
  *(v4 + v6[8]) = v8;
  sub_10103CC7C(&qword_1016C3B98, type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent);

  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 328) = v12;
  *(v0 + 336) = v13;
  v14 = v12;
  v15 = v13;
  v16 = swift_task_alloc();
  *(v0 + 344) = v16;
  *v16 = v0;
  v16[1] = sub_101039098;

  return sub_10103542C(v14, v15);
}

uint64_t sub_101039098(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 344);
  v8 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v6 = sub_101039650;
  }

  else
  {
    v6 = sub_1010391B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1010391B0()
{
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v18 = v0[36];
  v19 = v0[45];
  v6 = v0[27];
  v17 = v0[28];
  v15 = v0[37];
  v16 = v0[26];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];
  v10 = v0[16];

  sub_100016590(v3, v2);
  sub_10103CCC4(v10, type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent);
  v15(v8, v9);
  v18(v17, v16);

  sub_100017D5C(v1, v19);

  sub_100016590(v1, v19);
  v11 = swift_task_alloc();
  v0[47] = v11;
  *v11 = v0;
  v11[1] = sub_101039320;
  v13 = v0[44];
  v12 = v0[45];

  return sub_10103634C(v13, v12);
}

uint64_t sub_101039320(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[47];
  v6 = v3[14];
  v8 = *v2;
  v4[48] = a2;

  return _swift_task_switch(sub_10103943C, v6, 0);
}

uint64_t sub_10103943C()
{
  v19 = v0;
  v1 = v0[31];
  if (v0[48])
  {
    v2 = v0[48];
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[48];
  if (v5)
  {
    v7 = v0[8];
    if (v6)
    {
      v8 = v0[8];
    }

    else
    {
      v6 = 0xE300000000000000;
      v8 = 7104878;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1000136BC(v8, v6, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "KeyDropCreateRequest: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {
  }

  v12 = v0[44];
  v13 = v0[45];
  v14 = v0[39];
  v0[5] = &type metadata for KeyDropCreateRequest;
  v0[6] = sub_10103CC28();
  v0[2] = v14;
  v0[3] = v12;
  v0[4] = v13;

  sub_100017D5C(v12, v13);
  v15 = swift_task_alloc();
  v0[50] = v15;
  *v15 = v0;
  v15[1] = sub_101039830;
  v16 = v0[14];

  return sub_101039B54((v0 + 2), 0);
}

uint64_t sub_101039650()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];

  sub_100016590(v1, v2);
  v0[49] = v0[46];
  v14 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v12 = v0[14];
  sub_10103CCC4(v0[16], type metadata accessor for KeyDropCreateRequest.KeyDropCreateContent);
  v4(v10, v11);
  v5(v6, v8);

  return _swift_task_switch(sub_101039764, v12, 0);
}

uint64_t sub_101039764()
{
  v1 = v0[49];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[16];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_101039830(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v7 = *(v4 + 112);
    v8 = sub_101039A68;
  }

  else
  {
    v9 = *(v4 + 112);
    *(v4 + 417) = a1 & 1;
    sub_100007BAC((v4 + 16));
    v8 = sub_101039974;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_101039974()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 312);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 152);
  v14 = *(v0 + 128);

  sub_100016590(v1, v2);

  v11 = *(v0 + 8);
  v12 = *(v0 + 417);

  return v11(v12);
}

uint64_t sub_101039A68()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[39];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[51];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v11 = v0[19];
  v12 = v0[16];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_101039B54(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_101039C24, v2, 0);
}

uint64_t sub_101039C24()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 104) = v4;
    v5 = *(v0 + 56);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_101039DC0;
    v11 = *(v0 + 96);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_10103A2FC;
    v14 = *(v0 + 64);
    v15 = *(v0 + 145);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_101039DC0()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v8 = *v1;
  (*v1)[15] = v0;

  v4 = v2[13];
  if (v0)
  {
    v5 = v2[8];

    v6 = sub_10103A27C;
  }

  else
  {
    v5 = v2[8];

    sub_100007BAC(v2 + 2);
    v6 = sub_101039EF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_101039EF4()
{
  v40 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  sub_101259EC4();
  if (v1)
  {
    v3 = *(v0 + 104);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));

    v31 = *(v0 + 88);
    v30 = *(v0 + 96);

    v32 = *(v0 + 8);
    v33 = 0;
  }

  else
  {
    if (qword_1016954C8 != -1)
    {
      swift_once();
    }

    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CDD0);
    (*(v6 + 16))(v5, v4, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v16 = v39;
      *v15 = 136315138;
      sub_10103CC7C(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = v14;
      v21 = *(v12 + 8);
      v21(v13, v20);
      v22 = sub_1000136BC(v17, v19, &v39);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Response value is %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      v23 = v14;
      v21 = *(v12 + 8);
      v21(v13, v23);
    }

    v24 = *(v0 + 96);
    v25 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v27 = v26;
    sub_10103CD24();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 72);

    sub_100016590(v25, v27);
    v21(v29, v37);
    v38 = *(v0 + 144);

    v32 = *(v0 + 8);
    v33 = v38;
  }

  return v32(v33);
}

uint64_t sub_10103A27C()
{
  v1 = v0[13];

  sub_100007BAC(v0 + 2);
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_10103A2FC(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10103A414, v3, 0);
}

uint64_t sub_10103A414()
{
  v0[13] = v0[17];
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_101039DC0;
  v7 = v0[12];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_10103A520(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 152) = a3;
  *(v4 + 56) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10103A5F4, v3, 0);
}

uint64_t sub_10103A5F4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 112) = v4;
    v5 = *(v0 + 64);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_10103A790;
    v11 = *(v0 + 104);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_10103AC80;
    v14 = *(v0 + 72);
    v15 = *(v0 + 152);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_10103A790()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v8 = *v1;
  (*v1)[16] = v0;

  v4 = v2[14];
  if (v0)
  {
    v5 = v2[9];

    v6 = sub_10103D9E4;
  }

  else
  {
    v5 = v2[9];

    sub_100007BAC(v2 + 2);
    v6 = sub_10103A8C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103A8C4()
{
  v39 = v0;
  v1 = v0[16];
  v2 = v0[13];
  sub_101259EC4();
  if (v1)
  {
    v3 = v0[14];
    (*(v0[11] + 8))(v0[13], v0[10]);

    v31 = v0[12];
    v30 = v0[13];

    v32 = v0[1];
  }

  else
  {
    if (qword_1016954C8 != -1)
    {
      swift_once();
    }

    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CDD0);
    (*(v6 + 16))(v5, v4, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[10];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v15 = 136315138;
      sub_10103CC7C(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = v14;
      v20 = *(v12 + 8);
      v20(v13, v19);
      v21 = sub_1000136BC(v16, v18, &v38);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Response value is %s", v15, 0xCu);
      sub_100007BAC(v37);
    }

    else
    {

      v22 = v14;
      v20 = *(v12 + 8);
      v20(v13, v22);
    }

    v23 = v0[13];
    v24 = v0[7];
    type metadata accessor for KeyDropShareMetaDataResponse(0);
    v25 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v27 = v26;
    sub_10103CC7C(&qword_1016C3BB0, type metadata accessor for KeyDropShareMetaDataResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = v0[13];
    v28 = v0[14];
    v35 = v0[11];
    v34 = v0[12];
    v36 = v0[10];

    sub_100016590(v25, v27);
    v20(v29, v36);

    v32 = v0[1];
  }

  return v32();
}

uint64_t sub_10103AC80(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10103AD98, v3, 0);
}

uint64_t sub_10103AD98()
{
  v0[14] = v0[18];
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_10103A790;
  v7 = v0[13];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_10103AEA4(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10103AF74, v2, 0);
}

uint64_t sub_10103AF74()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 104) = v4;
    v5 = *(v0 + 56);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_10103B110;
    v11 = *(v0 + 96);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_10103B678;
    v14 = *(v0 + 64);
    v15 = *(v0 + 145);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_10103B110()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v8 = *v1;
  (*v1)[15] = v0;

  v4 = v2[13];
  if (v0)
  {
    v5 = v2[8];

    v6 = sub_10103B5FC;
  }

  else
  {
    v5 = v2[8];

    sub_100007BAC(v2 + 2);
    v6 = sub_10103B244;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103B244()
{
  v40 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  sub_101259EC4();
  if (v1)
  {
    v3 = *(v0 + 104);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));

    v31 = *(v0 + 88);
    v30 = *(v0 + 96);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    if (qword_1016954C8 != -1)
    {
      swift_once();
    }

    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CDD0);
    (*(v6 + 16))(v5, v4, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v16 = v39;
      *v15 = 136315138;
      sub_10103CC7C(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = v14;
      v21 = *(v12 + 8);
      v21(v13, v20);
      v22 = sub_1000136BC(v17, v19, &v39);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Response value is %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      v23 = v14;
      v21 = *(v12 + 8);
      v21(v13, v23);
    }

    v24 = *(v0 + 96);
    v25 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v27 = v26;
    sub_10103CD78();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v36 = *(v0 + 72);

    sub_100016590(v25, v27);
    v21(v29, v36);
    v37 = *(v0 + 144);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_10103B5FC()
{
  v1 = v0[13];

  sub_100007BAC(v0 + 2);
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10103B678(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10103B790, v3, 0);
}

uint64_t sub_10103B790()
{
  v0[13] = v0[17];
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_10103B110;
  v7 = v0[12];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_10103B89C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 152) = a3;
  *(v4 + 56) = a1;
  v5 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10103B970, v3, 0);
}

uint64_t sub_10103B970()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 112) = v4;
    v5 = *(v0 + 64);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_10103BB0C;
    v11 = *(v0 + 104);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_10103C078;
    v14 = *(v0 + 72);
    v15 = *(v0 + 152);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_10103BB0C()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v8 = *v1;
  (*v1)[16] = v0;

  v4 = v2[14];
  if (v0)
  {
    v5 = v2[9];

    v6 = sub_10103BFFC;
  }

  else
  {
    v5 = v2[9];

    sub_100007BAC(v2 + 2);
    v6 = sub_10103BC40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103BC40()
{
  v39 = v0;
  v1 = v0[16];
  v2 = v0[13];
  sub_101259EC4();
  if (v1)
  {
    v3 = v0[14];
    (*(v0[11] + 8))(v0[13], v0[10]);

    v31 = v0[12];
    v30 = v0[13];

    v32 = v0[1];
  }

  else
  {
    if (qword_1016954C8 != -1)
    {
      swift_once();
    }

    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CDD0);
    (*(v6 + 16))(v5, v4, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[10];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v15 = 136315138;
      sub_10103CC7C(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = v14;
      v20 = *(v12 + 8);
      v20(v13, v19);
      v21 = sub_1000136BC(v16, v18, &v38);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Response value is %s", v15, 0xCu);
      sub_100007BAC(v37);
    }

    else
    {

      v22 = v14;
      v20 = *(v12 + 8);
      v20(v13, v22);
    }

    v23 = v0[13];
    v24 = v0[7];
    type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
    v25 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v27 = v26;
    sub_10103CC7C(&qword_1016C3BC0, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = v0[13];
    v28 = v0[14];
    v35 = v0[11];
    v34 = v0[12];
    v36 = v0[10];

    sub_100016590(v25, v27);
    v20(v29, v36);

    v32 = v0[1];
  }

  return v32();
}

uint64_t sub_10103BFFC()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 2);
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10103C078(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10103C190, v3, 0);
}

uint64_t sub_10103C190()
{
  v0[14] = v0[18];
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_10103BB0C;
  v7 = v0[13];

  return sub_1004E682C(v7, (v0 + 2));
}

uint64_t sub_10103C29C(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10103C36C, v2, 0);
}

uint64_t sub_10103C36C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 112);
  if (v2 && (v3 = *(v1 + 120), (v4 = v2()) != 0))
  {
    *(v0 + 104) = v4;
    v5 = *(v0 + 56);
    v6 = v5[3];
    v7 = v5[4];
    v8 = sub_1000035D0(v5, v6);
    *(v0 + 40) = v6;
    *(v0 + 48) = *(v7 + 8);
    v9 = sub_1000280DC((v0 + 16));
    (*(*(v6 - 8) + 16))(v9, v8, v6);

    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_10103C508;
    v11 = *(v0 + 96);

    return sub_1004E682C(v11, v0 + 16);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_10103C9C4;
    v14 = *(v0 + 64);
    v15 = *(v0 + 145);

    return sub_1012588A0(v15);
  }
}

uint64_t sub_10103C508()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v8 = *v1;
  (*v1)[15] = v0;

  v4 = v2[13];
  if (v0)
  {
    v5 = v2[8];

    v6 = sub_10103D9E8;
  }

  else
  {
    v5 = v2[8];

    sub_100007BAC(v2 + 2);
    v6 = sub_10103C63C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103C63C()
{
  v40 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  sub_101259EC4();
  if (v1)
  {
    v3 = *(v0 + 104);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));

    v31 = *(v0 + 88);
    v30 = *(v0 + 96);

    v32 = *(v0 + 8);
    v33 = 0;
  }

  else
  {
    if (qword_1016954C8 != -1)
    {
      swift_once();
    }

    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177CDD0);
    (*(v6 + 16))(v5, v4, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v16 = v39;
      *v15 = 136315138;
      sub_10103CC7C(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = v14;
      v21 = *(v12 + 8);
      v21(v13, v20);
      v22 = sub_1000136BC(v17, v19, &v39);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Response value is %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      v23 = v14;
      v21 = *(v12 + 8);
      v21(v13, v23);
    }

    v24 = *(v0 + 96);
    v25 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v27 = v26;
    sub_10103CDCC();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 72);

    sub_100016590(v25, v27);
    v21(v29, v37);
    v38 = *(v0 + 144);

    v32 = *(v0 + 8);
    v33 = v38;
  }

  return v32(v33);
}

uint64_t sub_10103C9C4(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10103CADC, v3, 0);
}

uint64_t sub_10103CADC()
{
  v0[13] = v0[17];
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  v4 = sub_1000035D0(v1, v2);
  v0[5] = v2;
  v0[6] = *(v3 + 8);
  v5 = sub_1000280DC(v0 + 2);
  (*(*(v2 - 8) + 16))(v5, v4, v2);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_10103C508;
  v7 = v0[12];

  return sub_1004E682C(v7, (v0 + 2));
}

unint64_t sub_10103CC28()
{
  result = qword_1016C3BA0;
  if (!qword_1016C3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3BA0);
  }

  return result;
}

uint64_t sub_10103CC7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10103CCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10103CD24()
{
  result = qword_1016C3BA8;
  if (!qword_1016C3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3BA8);
  }

  return result;
}

unint64_t sub_10103CD78()
{
  result = qword_1016C3BB8;
  if (!qword_1016C3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3BB8);
  }

  return result;
}

unint64_t sub_10103CDCC()
{
  result = qword_1016C3BC8;
  if (!qword_1016C3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3BC8);
  }

  return result;
}

void sub_10103CE58()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10103CF4C(319, &qword_1016C3C38, type metadata accessor for KeyDropCreateRequest.Member);
      if (v2 <= 0x3F)
      {
        sub_10103CF4C(319, &unk_1016C3C40, type metadata accessor for KeyDropInterface.KeyPackage);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10103CF4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10103CFD8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10103D058(uint64_t a1)
{
  result = sub_10103D080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10103D080()
{
  result = qword_1016C3D18;
  if (!qword_1016C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D18);
  }

  return result;
}

unint64_t sub_10103D0D4()
{
  result = qword_1016C3D28;
  if (!qword_1016C3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D28);
  }

  return result;
}

uint64_t sub_10103D128(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169CDB0, &qword_10139A080);
    sub_10103CC7C(a2, type metadata accessor for KeyDropInterface.KeyPackage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10103D1C4()
{
  result = qword_1016C3D50;
  if (!qword_1016C3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D50);
  }

  return result;
}

uint64_t sub_10103D218(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016C3D30, &unk_1013F8F28);
    sub_10103CC7C(a2, type metadata accessor for KeyDropCreateRequest.Member);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10103D2B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10103D31C()
{
  result = qword_1016C3D80;
  if (!qword_1016C3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D80);
  }

  return result;
}

unint64_t sub_10103D3A4()
{
  result = qword_1016C3D90;
  if (!qword_1016C3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D90);
  }

  return result;
}

unint64_t sub_10103D3FC()
{
  result = qword_1016C3D98;
  if (!qword_1016C3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3D98);
  }

  return result;
}

unint64_t sub_10103D454()
{
  result = qword_1016C3DA0;
  if (!qword_1016C3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DA0);
  }

  return result;
}

unint64_t sub_10103D4AC()
{
  result = qword_1016C3DA8;
  if (!qword_1016C3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DA8);
  }

  return result;
}

unint64_t sub_10103D504()
{
  result = qword_1016C3DB0;
  if (!qword_1016C3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DB0);
  }

  return result;
}

unint64_t sub_10103D55C()
{
  result = qword_1016C3DB8;
  if (!qword_1016C3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DB8);
  }

  return result;
}

unint64_t sub_10103D5B4()
{
  result = qword_1016C3DC0;
  if (!qword_1016C3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DC0);
  }

  return result;
}

unint64_t sub_10103D60C()
{
  result = qword_1016C3DC8;
  if (!qword_1016C3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DC8);
  }

  return result;
}

unint64_t sub_10103D664()
{
  result = qword_1016C3DD0;
  if (!qword_1016C3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3DD0);
  }

  return result;
}

uint64_t sub_10103D6B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xEB00000000736567)
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

uint64_t sub_10103D874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xEE00646C65694664)
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

uint64_t sub_10103D9EC()
{

  return sub_101035734();
}

uint64_t sub_10103DA60()
{

  return sub_101035EC4();
}

uint64_t sub_10103DADC(uint64_t a1, char a2)
{
  *(v3 + 256) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 128) = v4;
  v5 = *(v4 - 8);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 + 64);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v3 + 168) = v7;
  *v7 = v3;
  v7[1] = sub_10103DBE4;

  return daemon.getter();
}

uint64_t sub_10103DBE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000394F4(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000394F4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10103DDC8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10103DDC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v7 = v4[15];
    v8 = sub_10103E6F4;
  }

  else
  {
    v9 = v4[22];

    v8 = sub_10103DF00;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10103DF00()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[14];
  v6 = *(v3 + 16);
  v0[26] = v6;
  v0[27] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[28] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[29] = v10;
  v11 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v10 = v0;
  v10[1] = sub_10103E088;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v8, v11);
}

uint64_t sub_10103E088()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_10103E1B4, v3, 0);
}

uint64_t sub_10103E1B4()
{
  v29 = v0;
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 240) = v1;
    *v1 = v0;
    v1[1] = sub_10103E548;
    v2 = *(v0 + 120);
    v3 = *(v0 + 256);

    return sub_100032054(v0 + 16, v3);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177A548);
    v6(v7, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v16 + 8))(v14, v15);
      v22 = sub_1000136BC(v19, v21, &v28);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "updateBatteryLevelAndNotify: No beacon record for %{private,mask.hash}s.", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v23 = *(v0 + 192);
    type metadata accessor for UpdateBatteryLevelError(0);
    *(v0 + 104) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = *(v0 + 96);
    swift_willThrow();

    v26 = *(v0 + 152);
    v25 = *(v0 + 160);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10103E548()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_10103E768;
  }

  else
  {
    v6 = sub_10103E674;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103E674()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];

  sub_100007BAC(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10103E6F4()
{
  v1 = v0[22];

  v2 = v0[25];
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10103E768()
{
  v1 = v0[24];

  sub_100007BAC(v0 + 2);
  v2 = v0[31];
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10103E7E4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_10103E90C;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = sub_1004A9788;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10103E90C()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10103E978(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a2;
  v21 = a1;
  v9 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v25 = a3;
  sub_10001F280(a5, v24);
  v14 = *(v10 + 16);
  v14(v13, a1, v9);
  v15 = *(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  sub_100031694(v24, v16 + 24);
  v17 = *(v10 + 32);
  v17(v16 + ((v15 + 64) & ~v15), v13, v9);
  v14(v13, v21, v9);
  v18 = swift_allocObject();
  v17(v18 + ((v15 + 16) & ~v15), v13, v9);

  dispatch thunk of HysteresisFilter.processInput(newValue:outputBlock:ignoreBlock:)();
}

uint64_t sub_10103EB7C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v7 = *a2;
  v8 = *a1;
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_10103EC38;

  return sub_10103EF74(a4, v8, v7);
}

uint64_t sub_10103EC38()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10103EDC4;
  }

  else
  {
    v3 = sub_10103ED4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10103ED4C()
{
  v1 = *(v0 + 24);
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10103EDC4()
{
  v1 = v0[3];
  v0[2] = v0[5];
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10103EE6C()
{
  v1 = v0[4];
  type metadata accessor for UpdateBatteryLevelError(0);
  v0[3] = 4;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v0[3] = v0[2];
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10103EF74(uint64_t a1, char a2, char a3)
{
  *(v4 + 665) = a3;
  *(v4 + 664) = a2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v3;
  v5 = type metadata accessor for BeaconNamingRecord();
  *(v4 + 368) = v5;
  v6 = *(v5 - 8);
  *(v4 + 376) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  *(v4 + 392) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v4 + 416) = v10;
  v11 = *(v10 - 8);
  *(v4 + 424) = v11;
  *(v4 + 432) = *(v11 + 64);
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v4 + 472) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v4 + 480) = swift_task_alloc();
  v14 = type metadata accessor for BeaconProductInfoRecord();
  *(v4 + 488) = v14;
  v15 = *(v14 - 8);
  *(v4 + 496) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_10103F1A4, v3, 0);
}

uint64_t sub_10103F1A4()
{
  v30 = v0;
  if (sub_10111BC4C(*(v0 + 352), *(v0 + 664), *(v0 + 665)))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 512) = v2;
    *v2 = v0;
    v2[1] = sub_10103F4F8;

    return daemon.getter();
  }

  else
  {
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 352);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A548);
    sub_10001F280(v3, v0 + 88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 464);
      v8 = *(v0 + 416);
      v9 = *(v0 + 424);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v13 = *(v0 + 112);
      v12 = *(v0 + 120);
      sub_1000035D0((v0 + 88), v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v9 + 8))(v7, v8);
      sub_100007BAC((v0 + 88));
      v17 = sub_1000136BC(v14, v16, &v29);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Not posting low battery notification for %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100007BAC((v0 + 88));
    }

    v18 = *(v0 + 504);
    v19 = *(v0 + 480);
    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v26 = *(v0 + 384);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10103F4F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v12 = *v1;
  *(v3 + 520) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 528) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000394F4(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000394F4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10103F6DC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10103F6DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v10 = *v2;
  v3[67] = a1;
  v3[68] = v1;

  if (v1)
  {
    v5 = v3[45];
    v6 = sub_101041934;
  }

  else
  {
    v7 = v3[65];
    v8 = v3[45];

    v6 = sub_10103F808;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10103F808()
{
  v1 = v0[44];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = (*(v3 + 112))(v2, v3);
  v5 = v0[67];
  if (v4)
  {
    v6 = v0[58];
    v8 = v1[3];
    v7 = v1[4];
    sub_1000035D0(v0[44], v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    v9 = sub_10103F94C;
  }

  else
  {
    v0[74] = v5;
    v0[73] = 0x800000010134A8C0;
    v10 = v0[58];
    v11 = v0[44];
    v12 = v11[3];
    v13 = v11[4];
    sub_1000035D0(v11, v12);
    (*(*(*(v13 + 8) + 8) + 32))(v12);
    v9 = sub_101040574;
  }

  return _swift_task_switch(v9, v5, 0);
}

uint64_t sub_10103F94C()
{
  v1 = v0[67];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[52];
  (*(v3 + 16))(v2, v0[58], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[69] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[70] = v8;
  *v8 = v0;
  v8[1] = sub_10103FAAC;
  v10 = v0[59];
  v9 = v0[60];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_101042178, v6, v10);
}

uint64_t sub_10103FAAC()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 464);
  v5 = *(*v0 + 424);
  v6 = *(*v0 + 416);
  v7 = *(*v0 + 360);
  v10 = *v0;

  v8 = *(v5 + 8);
  *(v1 + 568) = v8;
  *(v1 + 576) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);

  return _swift_task_switch(sub_10103FC4C, v7, 0);
}

uint64_t sub_10103FC4C()
{
  v85 = v0;
  v1 = v0[61];
  v2 = v0[60];
  if ((*(v0[62] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8C0, &unk_1013A07A0);
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v3 = v0[44];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A548);
    sub_10001F280(v3, (v0 + 26));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[71];
      v79 = v0[72];
      v82 = v0[67];
      v8 = v0[58];
      v9 = v0[52];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v84 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v13 = v0[29];
      v12 = v0[30];
      sub_1000035D0(v0 + 26, v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v7(v8, v9);
      sub_100007BAC(v0 + 26);
      v17 = sub_1000136BC(v14, v16, &v84);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Not posting low battery notification for %{private,mask.hash}s.\nAccessory beacon but missing product info!", v10, 0x16u);
      sub_100007BAC(v11);

LABEL_35:
      v66 = v0[63];
      v67 = v0[60];
      v69 = v0[57];
      v68 = v0[58];
      v71 = v0[55];
      v70 = v0[56];
      v73 = v0[50];
      v72 = v0[51];
      v74 = v0[48];

      v75 = v0[1];

      return v75();
    }

    v34 = v0[67];

    v35 = v0 + 26;
LABEL_34:
    sub_100007BAC(v35);
    goto LABEL_35;
  }

  v18 = v0[63];
  sub_100038F44(v2, v18, type metadata accessor for BeaconProductInfoRecord);
  if (*(v18 + *(v1 + 36)))
  {
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v19 = v0[44];
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177A548);
    sub_10001F280(v19, (v0 + 36));
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      v57 = v0[67];
      v58 = v0[63];

      sub_10002FFA8(v58, type metadata accessor for BeaconProductInfoRecord);
      v35 = v0 + 36;
      goto LABEL_34;
    }

    v23 = v0[71];
    v77 = v0[72];
    v80 = v0[67];
    v83 = v0[63];
    v24 = v0[58];
    v25 = v0[52];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v84 = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v29 = v0[39];
    v28 = v0[40];
    sub_1000035D0(v0 + 36, v29);
    (*(*(*(v28 + 8) + 8) + 32))(v29);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v23(v24, v25);
    sub_100007BAC(v0 + 36);
    v33 = sub_1000136BC(v30, v32, &v84);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "Not posting low battery notification for hidden beacon %{private,mask.hash}s.", v26, 0x16u);
    sub_100007BAC(v27);

LABEL_28:

    sub_10002FFA8(v83, type metadata accessor for BeaconProductInfoRecord);
    goto LABEL_35;
  }

  v36 = v0[63];
  v37 = *(v36 + *(v0[61] + 28));
  if (v37 != 1)
  {
    if (v37 == 4)
    {
      v38 = 3;
    }

    else
    {
      v38 = *(v36 + *(v0[61] + 28));
    }

    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v39 = v0[44];
    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177A548);
    sub_10001F280(v39, (v0 + 31));
    v21 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v41))
    {
      v64 = v0[67];
      v65 = v0[63];

      sub_10002FFA8(v65, type metadata accessor for BeaconProductInfoRecord);
      v35 = v0 + 31;
      goto LABEL_34;
    }

    v42 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v42 = 136446723;
    v43 = 0xEB00000000656C62;
    v44 = 0x6167726168636572;
    if (v38 != 2)
    {
      v44 = 0x6E776F6E6B6E75;
      v43 = 0xE700000000000000;
    }

    if (v38)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x64657265776F70;
    }

    if (v38)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    v47 = v0[71];
    v78 = v0[72];
    v81 = v0[67];
    v83 = v0[63];
    v48 = v0[58];
    v49 = v0[52];
    v50 = sub_1000136BC(v45, v46, &v84);

    *(v42 + 4) = v50;
    *(v42 + 12) = 2160;
    *(v42 + 14) = 1752392040;
    *(v42 + 22) = 2081;
    v52 = v0[34];
    v51 = v0[35];
    sub_1000035D0(v0 + 31, v52);
    (*(*(*(v51 + 8) + 8) + 32))(v52);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v47(v48, v49);
    sub_100007BAC(v0 + 31);
    v56 = sub_1000136BC(v53, v55, &v84);

    *(v42 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v21, v41, "Not posting low battery notification for unsupported battery type: %{public}s. Beacon %{private,mask.hash}s.", v42, 0x20u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  sub_10002FFA8(v36, type metadata accessor for BeaconProductInfoRecord);
  v59 = v0[67];
  v0[74] = v59;
  v0[73] = 0x800000010134A8C0;
  v60 = v0[58];
  v61 = v0[44];
  v62 = v61[3];
  v63 = v61[4];
  sub_1000035D0(v61, v62);
  (*(*(*(v63 + 8) + 8) + 32))(v62);

  return _swift_task_switch(sub_101040574, v59, 0);
}

uint64_t sub_101040574()
{
  v1 = v0[67];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[52];
  (*(v3 + 16))(v2, v0[58], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[75] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[76] = v8;
  *v8 = v0;
  v8[1] = sub_1010406C4;
  v9 = v0[73];
  v10 = v0[51];
  v11 = v0[49];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, v9, sub_1010420F0, v6, v11);
}

uint64_t sub_1010406C4()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);
  v4 = *(*v0 + 464);
  v5 = *(*v0 + 424);
  v6 = *(*v0 + 416);
  v10 = *v0;

  v7 = *(v5 + 8);
  v1[77] = v7;
  v1[78] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v8 = v1[74];

  return _swift_task_switch(sub_101040868, v8, 0);
}

uint64_t sub_101040868()
{
  v1 = v0[67];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[79] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10104093C;
  v5 = v0[73];
  v6 = v0[67];

  return unsafeBlocking<A>(context:_:)(v0 + 41, 0xD000000000000010, v5, sub_1000D27E4, v6, v4);
}

uint64_t sub_10104093C()
{
  v1 = *v0;
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 536);
  v6 = *v0;

  v4 = *(v1 + 592);

  return _swift_task_switch(sub_101040A70, v4, 0);
}

uint64_t sub_101040A70()
{
  v1 = v0[45];
  v0[80] = v0[41];
  return _swift_task_switch(sub_101040A94, v1, 0);
}

uint64_t sub_101040A94()
{
  v47 = v0;
  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = type metadata accessor for Logger();
  *(v0 + 648) = sub_1000076D4(v2, qword_10177A548);
  sub_10001F280(v1, v0 + 128);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v45 = *(v0 + 624);
    v5 = *(v0 + 616);
    v6 = *(v0 + 464);
    v7 = *(v0 + 416);
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 134218499;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    sub_1000035D0((v0 + 128), v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v5(v6, v7);
    sub_100007BAC((v0 + 128));
    v16 = sub_1000136BC(v13, v15, &v46);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "updateBatteryLevelAndNotify %ld for %{private,mask.hash}s.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC((v0 + 128));
  }

  v17 = *(v0 + 400);
  v18 = *(v0 + 368);
  v19 = *(v0 + 376);
  sub_101042108(*(v0 + 408), v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = *(v0 + 440);
    v21 = *(v0 + 448);
    v22 = *(v0 + 352);
    sub_10000B3A8(*(v0 + 400), &unk_1016B29E0, &unk_1013B70E0);
    v23 = v22[3];
    v24 = v22[4];
    sub_1000035D0(v22, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);
    v25 = getuid();
    sub_1000294F0(v25);

    return _swift_task_switch(sub_101040F20, 0, 0);
  }

  else
  {
    v26 = *(v0 + 384);
    v27 = *(v0 + 368);
    sub_100038F44(*(v0 + 400), v26, type metadata accessor for BeaconNamingRecord);
    v28 = (v26 + *(v27 + 32));
    v29 = *v28;
    v30 = v28[1];

    sub_10002FFA8(v26, type metadata accessor for BeaconNamingRecord);
    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 640);
    v32 = *(v0 + 536);
    v33 = *(v0 + 408);
    sub_10111C318(*(v0 + 352), *(v0 + 664), v29, v30);

    sub_10000B3A8(v33, &unk_1016B29E0, &unk_1013B70E0);
    v34 = *(v0 + 504);
    v35 = *(v0 + 480);
    v37 = *(v0 + 456);
    v36 = *(v0 + 464);
    v39 = *(v0 + 440);
    v38 = *(v0 + 448);
    v41 = *(v0 + 400);
    v40 = *(v0 + 408);
    v42 = *(v0 + 384);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_101040F20()
{
  v1 = *(v0[80] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[82] = v2;
  *v2 = v0;
  v2[1] = sub_101040FCC;
  v4 = v0[55];
  v3 = v0[56];

  return sub_100687A6C((v0 + 2), v3, v4);
}

uint64_t sub_101040FCC()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v13 = *v1;

  if (v0)
  {

    v4 = sub_10104156C;
    v5 = 0;
  }

  else
  {
    v6 = v2[78];
    v7 = v2[77];
    v8 = v2[55];
    v9 = v2[56];
    v10 = v2[52];
    v11 = v2[45];
    v7(v8, v10);
    v7(v9, v10);
    v4 = sub_101041124;
    v5 = v11;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_101041124()
{
  v47 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);

    sub_10000B3A8(v0 + 16, &unk_1016AF910, &unk_10138C4C0);
    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 640);
    v5 = *(v0 + 536);
    v6 = *(v0 + 408);
    sub_10111C318(*(v0 + 352), *(v0 + 664), v2, v1);

    sub_10000B3A8(v6, &unk_1016B29E0, &unk_1013B70E0);
    v7 = *(v0 + 504);
    v8 = *(v0 + 480);
    v10 = *(v0 + 456);
    v9 = *(v0 + 464);
    v12 = *(v0 + 440);
    v11 = *(v0 + 448);
    v14 = *(v0 + 400);
    v13 = *(v0 + 408);
    v15 = *(v0 + 384);

    v16 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 648);
    sub_10001F280(*(v0 + 352), v0 + 168);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v45 = *(v0 + 624);
      v20 = *(v0 + 616);
      v21 = *(v0 + 464);
      v22 = *(v0 + 416);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v26 = *(v0 + 192);
      v25 = *(v0 + 200);
      sub_1000035D0((v0 + 168), v26);
      (*(*(*(v25 + 8) + 8) + 32))(v26);
      sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v20(v21, v22);
      sub_100007BAC((v0 + 168));
      v30 = sub_1000136BC(v27, v29, &v46);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "updateBatteryLevelAndNotify: no name record found for %{private,mask.hash}s.", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100007BAC((v0 + 168));
    }

    v31 = *(v0 + 640);
    v32 = *(v0 + 536);
    v33 = *(v0 + 408);
    type metadata accessor for UpdateBatteryLevelError(0);
    *(v0 + 344) = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = *(v0 + 336);
    swift_willThrow();

    sub_10000B3A8(v33, &unk_1016B29E0, &unk_1013B70E0);
    v35 = *(v0 + 504);
    v36 = *(v0 + 480);
    v38 = *(v0 + 456);
    v37 = *(v0 + 464);
    v40 = *(v0 + 440);
    v39 = *(v0 + 448);
    v42 = *(v0 + 400);
    v41 = *(v0 + 408);
    v43 = *(v0 + 384);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_10104156C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[56];
  v4 = v0[52];
  v5 = v0[45];
  v2(v0[55], v4);
  v2(v3, v4);

  return _swift_task_switch(sub_101041604, v5, 0);
}

uint64_t sub_101041604()
{
  v32 = v0;
  v1 = v0[81];
  sub_10001F280(v0[44], (v0 + 21));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v30 = v0[78];
    v4 = v0[77];
    v5 = v0[58];
    v6 = v0[52];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = v0[24];
    v9 = v0[25];
    sub_1000035D0(v0 + 21, v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    sub_1000394F4(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v4(v5, v6);
    sub_100007BAC(v0 + 21);
    v14 = sub_1000136BC(v11, v13, &v31);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateBatteryLevelAndNotify: no name record found for %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    sub_100007BAC(v0 + 21);
  }

  v15 = v0[80];
  v16 = v0[67];
  v17 = v0[51];
  type metadata accessor for UpdateBatteryLevelError(0);
  v0[43] = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1000394F4(&qword_101696288, 255, type metadata accessor for UpdateBatteryLevelError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v18 = v0[42];
  swift_willThrow();

  sub_10000B3A8(v17, &unk_1016B29E0, &unk_1013B70E0);
  v19 = v0[63];
  v20 = v0[60];
  v22 = v0[57];
  v21 = v0[58];
  v24 = v0[55];
  v23 = v0[56];
  v26 = v0[50];
  v25 = v0[51];
  v27 = v0[48];

  v28 = v0[1];

  return v28();
}

uint64_t sub_101041934()
{
  v1 = v0[65];

  v2 = v0[68];
  v3 = v0[63];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v10 = v0[50];
  v9 = v0[51];
  v11 = v0[48];

  v12 = v0[1];

  return v12();
}

uint64_t sub_101041A14(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v14 = a1[3];
  v13 = a1[4];
  sub_1000035D0(a1, v14);
  v15 = *(*(v13 + 8) + 8);
  v16 = *(v15 + 32);
  v16(v14, v15);
  swift_beginAccess();
  v17 = *(v3 + 128);
  if (!*(v17 + 16))
  {
    goto LABEL_5;
  }

  v18 = *(v3 + 128);

  v19 = sub_1000210EC(v12);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    v28 = v16;
    v29 = *(v29 + 8);
    v23 = v12;
    v24 = v30;
    (v29)(v23, v30);
    sub_1000BC4D4(&qword_1016C3ED0, &qword_1013F93A8);
    v32 = a2;
    v21 = HysteresisFilter.__allocating_init(currentValue:threshold:)();
    v28(v14, v15);
    swift_beginAccess();

    v25 = *(v3 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v3 + 128);
    *(v3 + 128) = 0x8000000000000000;
    sub_100FFDECC(v21, v10, isUniquelyReferenced_nonNull_native);
    (v29)(v10, v24);
    *(v3 + 128) = v31;
    swift_endAccess();
    return v21;
  }

  v21 = *(*(v17 + 56) + 8 * v19);
  v22 = *(v29 + 8);

  v22(v12, v30);

  return v21;
}

uint64_t sub_101041C94(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BatteryLevelService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_101041D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for BatteryLevelService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_101041E00(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BatteryLevelService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_101041EA8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BatteryLevelService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_101041F50(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BatteryLevelService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_101041FF8()
{
  v1 = *v0;
  type metadata accessor for BatteryLevelService();
  sub_1000394F4(&qword_1016A24B8, v2, type metadata accessor for BatteryLevelService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_101042108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101042190(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_101042228(char *a1, char *a2)
{
  v6 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_10103EB7C(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_101042328()
{
  v2 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10103EE4C(v0 + v3);
}

uint64_t sub_101042400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = *(a1 + 32);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a1;
  *(a1 + 32) = v6;
  static os_log_type_t.error.getter();
  if (qword_101695228 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  v8 = *(v3 + 32);
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v8;
  *(v7 + 96) = &type metadata for Bool;
  *(v7 + 104) = &protocol witness table for Bool;
  *(v7 + 72) = v6 > 2;
  os_log(_:dso:log:_:_:)();

  *a3 = v6 > 2;
  return result;
}

uint64_t sub_101042538(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  static SystemInfo.lockState.getter();
  (*(v5 + 104))(v9, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_101042A24();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v14 = (v13)(v11, v4);
  if (v12)
  {
    static os_log_type_t.default.getter();
    if (qword_101695228 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v22[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v20 = *(v2 + 24);
    __chkstk_darwin(v14);
    v22[-2] = v2;
    v22[-1] = 1;

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    if (LOBYTE(v22[0]) == 1)
    {
      v21 = *(v2 + 16);
      v22[0] = 1;
      return KeyedThrottle.throttle(key:block:)();
    }
  }

  return result;
}

uint64_t sub_101042838(uint64_t a1)
{
  v2 = *(a1 + 24);

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v4 = *(a1 + 48);
  (*(a1 + 40))(v3);
  return 1;
}

uint64_t sub_1010428C0(uint64_t a1)
{
  static os_log_type_t.error.getter();
  if (qword_101695228 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = *(a1 + 32);
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v3;
  os_log(_:dso:log:_:_:)();

  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1010429B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

unint64_t sub_101042A24()
{
  result = qword_10169F338;
  if (!qword_10169F338)
  {
    type metadata accessor for SystemInfo.DeviceLockState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F338);
  }

  return result;
}

uint64_t sub_101042ACC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101042B7C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_101042AF8(uint64_t a1)
{
  *(a1 + 8) = sub_101042B28();
  result = sub_10064D5C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_101042B28()
{
  result = qword_1016C3FD8;
  if (!qword_1016C3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C3FD8);
  }

  return result;
}

uint64_t sub_101042B7C(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v12, v12[3]);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v6 = result;
  if (v1)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v5);
      goto LABEL_11;
    }

LABEL_9:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = v8;
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    goto LABEL_14;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v8 == 28)
  {
LABEL_12:
    sub_100007BAC(v12);
    sub_100007BAC(a1);
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

Swift::Int sub_101042C7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_101042CF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_101042D44@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C230, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1010430AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10001F280(v3 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v12);
  v7 = v13;
  v8 = v14;
  sub_1000035D0(v12, v13);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v8 + 24);

  v10(sub_101044DEC, v9, v7, v8);

  return sub_100007BAC(v12);
}

uint64_t sub_101043390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001F280(v3 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation, v10);
  v7 = v11;
  v8 = v12;
  sub_1000035D0(v10, v11);
  (*(v8 + 32))(((a1 + 1) > 2) | (6u >> ((a1 + 1) & 7)) & 1, a2, a3, v7, v8);
  return sub_100007BAC(v10);
}

id sub_101043508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinderStateTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_101043574()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v10[3] = type metadata accessor for FinderStateManagerService();
    v10[4] = &off_1016610A0;
    v10[0] = v0;
    v3 = type metadata accessor for FinderStateTrampoline();
    v4 = objc_allocWithZone(v3);
    sub_10001F280(v10, v4 + OBJC_IVAR____TtC12searchpartydP33_A237235B9060AAA443FA0E26E38E988121FinderStateTrampoline_implementation);
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    sub_100007BAC(v10);
    v6 = *(v0 + 48);
    *(v0 + 48) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void *sub_10104363C(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0xD000000000000019;
  v1[3] = 0x80000001013F9550;
  v11 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v16[0] = "state manager callback";
  v16[1] = v11;
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000197C8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = type metadata accessor for XPCSessionManager();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v1[5] = XPCSessionManager.init(name:)();
  v1[6] = 0;
  PressuredExitTransactionManager.init()();
  v1[7] = v17;
  return v1;
}

uint64_t sub_10104390C()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = PressuredExitTransactionManager.begin(_:)();
  v14 = v0[4];
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v10;
  v11[4] = v1;
  aBlock[4] = sub_101044D54;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101661170;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000197C8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_101043C2C(uint64_t a1)
{
  v2 = type metadata accessor for MachServiceName();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for XPCServiceDescription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MachServiceName.init(_:)();
  sub_101043574();
  if (qword_101695188 != -1)
  {
    swift_once();
  }

  v9 = qword_1016C3FE0;

  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v10 = *(a1 + 40);
  XPCSessionManager.register(service:)();
  Transaction.end()();
  return (*(v5 + 8))(v8, v4);
}

void sub_101043E04()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPFinderStateXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016C3FE0 = v2;
}

uint64_t sub_101043E6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = OBJC_IVAR____TtC12searchpartyd25FinderStateManagerService_transactionManager;
  v5 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinderStateManagerService()
{
  result = qword_1016C40A8;
  if (!qword_1016C40A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101043F84()
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

uint64_t sub_10104406C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v11 = *(v3 + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_1002EDD88(sub_101044C74, v12);

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_10025EDD4(0, 0, v9, &unk_1013F95F0, v14);
}

uint64_t sub_10104421C()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1010442AC;

  return daemon.getter();
}

uint64_t sub_1010442AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v12 = *v1;
  *(v3 + 24) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000197C8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000197C8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_101044488;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101044488(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 40) = a1;

  v6 = *(v3 + 24);
  if (v1)
  {

    v7 = sub_101044A50;
  }

  else
  {

    v7 = sub_1010445D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1010445D8()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_101044674;
  v3 = *(v0 + 40);

  return sub_1010CCD2C();
}

uint64_t sub_101044674()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1010448B0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_101044790;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101044790()
{
  v1 = *(v0 + 40);
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A5C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleared anonymous observations due to Finder turn off.", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1010448B0()
{
  v1 = v0[5];

  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A5C0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to clear observations due to Finder turn off, error: %@.", v8, 0xCu);
    sub_100288C6C(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_101044A50()
{
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A5C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleared anonymous observations due to Finder turn off.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_101044B64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v7 = *(v5 + 56);
  return sub_1002EDAE4(a1, a2);
}

uint64_t sub_101044C74(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_101044CA8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_10104421C();
}

uint64_t sub_101044D54()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_101043C2C(v0[2]);
}

unint64_t sub_101044D98()
{
  result = qword_1016C4180;
  if (!qword_1016C4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4180);
  }

  return result;
}

uint64_t sub_101044DEC(void *a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    v6 = 0;
  }

  else
  {
    v6 = [a1 state];
    v5 = 0;
  }

  return v3(v6, v5);
}

unint64_t sub_101044E48()
{
  result = qword_1016C4188;
  if (!qword_1016C4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C4188);
  }

  return result;
}

unint64_t sub_101044EA0()
{
  result = qword_1016C4190[0];
  if (!qword_1016C4190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016C4190);
  }

  return result;
}

uint64_t sub_101044F9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[32];
  if (v16)
  {
    v38 = v13;
    v39 = v9;
    v40 = result;
    v41 = v6;
    v17 = qword_101695190;
    v37 = v2[33];

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C4F0);
    swift_retain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v5;
      v22 = v21;
      v42 = swift_slowAlloc();
      aBlock[0] = v4;
      *v22 = 136315394;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = sub_1000136BC(v23, v24, &v42);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v26 = sub_10048F5C4();
      v28 = v27;

      v29 = sub_1000136BC(v26, v28, &v42);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: invalidated %{public}s", v22, 0x16u);
      swift_arrayDestroy();

      v5 = v36;
    }

    else
    {
    }

    v30 = v2[6];
    v31 = swift_allocObject();
    v32 = v37;
    v31[2] = v16;
    v31[3] = v32;
    v31[4] = a1;
    aBlock[4] = sub_100B24A48;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016614F8;
    v33 = _Block_copy(aBlock);
    sub_100012908(v16);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_10104B624(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v34 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    sub_1000BB27C(v16);
    (*(v41 + 8))(v34, v5);
    (*(v38 + 8))(v15, v40);
  }

  return result;
}

void *sub_101045440()
{
  v1 = *(v0 + 64);
  v2 = String._bridgeToObjectiveC()();
  v8 = 0;
  v3 = [v1 datagramConnectionForSessionDestination:v2 error:&v8];

  v4 = v8;
  if (v3)
  {
    type metadata accessor for MessagingDatagramConnection();
    swift_allocObject();
    v5 = v4;
    return sub_100F0E880(v3);
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

Swift::Int sub_101045534(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B31F80(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10104A440(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1010455D0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100044B3C(v3, a2);
  sub_1000076D4(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101045650()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_10177C520 = result;
  return result;
}

uint64_t sub_1010456A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1016951A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_10177C528;
  if (*(qword_10177C528 + 16) && (v5 = sub_1007725DC(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  return swift_endAccess();
}

uint64_t sub_10104576C()
{
  if (qword_1016951A0 != -1)
  {
    swift_once();
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);
  sub_1000BB27C(*(v0 + 144));
  v10 = *(v0 + 168);
  sub_1000BB27C(*(v0 + 160));
  v11 = *(v0 + 184);
  sub_1000BB27C(*(v0 + 176));
  v12 = *(v0 + 200);
  sub_1000BB27C(*(v0 + 192));
  v13 = *(v0 + 216);
  sub_1000BB27C(*(v0 + 208));
  v14 = *(v0 + 232);
  sub_1000BB27C(*(v0 + 224));
  v15 = *(v0 + 248);
  sub_1000BB27C(*(v0 + 240));
  v16 = *(v0 + 264);
  sub_1000BB27C(*(v0 + 256));
  return v0;
}

uint64_t sub_10104589C(uint64_t a1)
{
  if (qword_1016951A8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 64);
  swift_beginAccess();
  sub_1001DF40C(0, 0, v1);
  return swift_endAccess();
}

uint64_t sub_101045948()
{
  sub_10104576C();

  return swift_deallocClassInstance();
}

uint64_t sub_1010459A4()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 16) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v118 = *(v0 + 16);

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (v11 << 10) | (16 * v12);
      v14 = *(v118 + 48) + v13;
      v15 = *(v14 + 8);
      v16 = (*(v118 + 56) + v13);
      v17 = *v16;
      v120 = v16[1];
      v121 = *v14;
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v18;
      v19._countAndFlagsBits = 118;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21 = v125;
      v22 = v133;
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v23;
      v24._countAndFlagsBits = 23328;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0x5D736574796220;
      v26._object = 0xE700000000000000;
      String.append(_:)(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(v126, v134, v21, v22, isUniquelyReferenced_nonNull_native);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v28 = v110[3];
  v31 = *(v28 + 64);
  v30 = v28 + 64;
  v29 = v31;
  v32 = 1 << *(v110[3] + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v29;
  v35 = (v32 + 63) >> 6;
  v115 = v110[3];

  for (i = 0; v34; result = )
  {
    v37 = i;
LABEL_19:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = (v37 << 10) | (16 * v38);
    v40 = *(v115 + 48) + v39;
    v41 = *(v40 + 8);
    v42 = (*(v115 + 56) + v39);
    v44 = *v42;
    v43 = v42[1];
    v122 = *v40;
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = v45;
    v46._countAndFlagsBits = 118;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48 = v135;
    v119 = v127;
    v128 = dispatch thunk of CustomStringConvertible.description.getter();
    v136 = v49;
    v50._countAndFlagsBits = 23328;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 0x5D736574796220;
    v52._object = 0xE700000000000000;
    String.append(_:)(v52);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(v128, v136, v119, v48, v53);
  }

  while (1)
  {
    v37 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      v54 = v110[4];
      v57 = *(v54 + 64);
      v56 = v54 + 64;
      v55 = v57;
      v58 = 1 << *(v110[4] + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & v55;
      v61 = (v58 + 63) >> 6;
      v113 = v110[4];

      for (j = 0; v60; result = )
      {
        v63 = j;
LABEL_29:
        v64 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v65 = (v63 << 10) | (16 * v64);
        v66 = *(v113 + 48) + v65;
        v67 = *(v66 + 8);
        v68 = (*(v113 + 56) + v65);
        v69 = *v68;
        v116 = v68[1];
        v123 = *v66;
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v70;
        v71._countAndFlagsBits = 118;
        v71._object = 0xE100000000000000;
        String.append(_:)(v71);
        v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v72);

        v73 = v129;
        v74 = v137;
        v130 = dispatch thunk of CustomStringConvertible.description.getter();
        v138 = v75;
        v76._countAndFlagsBits = 23328;
        v76._object = 0xE200000000000000;
        String.append(_:)(v76);
        v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v77);

        v78._countAndFlagsBits = 0x5D736574796220;
        v78._object = 0xE700000000000000;
        String.append(_:)(v78);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        sub_100FFACA0(v130, v138, v73, v74, v79);
      }

      while (1)
      {
        v63 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_44;
        }

        if (v63 >= v61)
        {

          v80 = v110[5];
          v83 = *(v80 + 64);
          v82 = v80 + 64;
          v81 = v83;
          v84 = 1 << *(v110[5] + 32);
          v85 = -1;
          if (v84 < 64)
          {
            v85 = ~(-1 << v84);
          }

          v86 = v85 & v81;
          v87 = (v84 + 63) >> 6;
          v111 = v110[5];

          v88 = 0;
          for (k = _swiftEmptyDictionarySingleton; v86; k = v117)
          {
            v117 = k;
            v90 = v88;
LABEL_39:
            v91 = __clz(__rbit64(v86));
            v86 &= v86 - 1;
            v92 = (v90 << 10) | (16 * v91);
            v93 = *(v111 + 48) + v92;
            v94 = *(v93 + 8);
            v95 = (*(v111 + 56) + v92);
            v96 = *v95;
            v112 = v95[1];
            v124 = *v93;
            v131 = dispatch thunk of CustomStringConvertible.description.getter();
            v139 = v97;
            v98._countAndFlagsBits = 118;
            v98._object = 0xE100000000000000;
            String.append(_:)(v98);
            v99._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v99);

            v100 = v139;
            v114 = v131;
            v132 = dispatch thunk of CustomStringConvertible.description.getter();
            v140 = v101;
            v102._countAndFlagsBits = 23328;
            v102._object = 0xE200000000000000;
            String.append(_:)(v102);
            v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v103);

            v104._countAndFlagsBits = 0x5D736574796220;
            v104._object = 0xE700000000000000;
            String.append(_:)(v104);
            v105 = swift_isUniquelyReferenced_nonNull_native();
            sub_100FFACA0(v132, v140, v114, v100, v105);
          }

          while (1)
          {
            v90 = v88 + 1;
            if (__OFADD__(v88, 1))
            {
              goto LABEL_45;
            }

            if (v90 >= v87)
            {

              sub_1000BC4D4(&qword_1016C4220, &qword_1013F98E0);
              v106 = swift_allocObject();
              *(v106 + 16) = xmmword_10138C0D0;
              *(v106 + 32) = 0x4E65636976726573;
              *(v106 + 40) = 0xEB00000000656D61;
              v107 = *v110;
              v108 = v110[1];
              *(v106 + 56) = &type metadata for String;
              *(v106 + 64) = v107;
              *(v106 + 72) = v108;
              *(v106 + 120) = &type metadata for String;
              *(v106 + 88) = &type metadata for String;
              *(v106 + 96) = 1953391987;
              *(v106 + 104) = 0xE400000000000000;
              v109 = sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
              *(v106 + 128) = _swiftEmptyDictionarySingleton;
              *(v106 + 152) = v109;
              strcpy((v106 + 160), "sentResource");
              *(v106 + 173) = 0;
              *(v106 + 174) = -5120;
              *(v106 + 184) = &type metadata for String;
              *(v106 + 192) = _swiftEmptyDictionarySingleton;
              *(v106 + 216) = v109;
              *(v106 + 224) = 0x6465766965636572;
              *(v106 + 232) = 0xE800000000000000;
              *(v106 + 248) = &type metadata for String;
              *(v106 + 256) = _swiftEmptyDictionarySingleton;
              *(v106 + 280) = v109;
              *(v106 + 288) = 0xD000000000000010;
              *(v106 + 296) = 0x8000000101378C00;
              *(v106 + 344) = v109;
              *(v106 + 312) = &type metadata for String;
              *(v106 + 320) = k;
              sub_10104ADD4();

              return NSDictionary.init(dictionaryLiteral:)();
            }

            v86 = *(v82 + 8 * v90);
            ++v88;
            if (v86)
            {
              v117 = k;
              v88 = v90;
              goto LABEL_39;
            }
          }
        }

        v60 = *(v56 + 8 * v63);
        ++j;
        if (v60)
        {
          j = v63;
          goto LABEL_29;
        }
      }
    }

    v34 = *(v30 + 8 * v37);
    ++i;
    if (v34)
    {
      i = v37;
      goto LABEL_19;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1010462CC()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  swift_getWitnessTable();
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

unint64_t sub_101046408(Swift::UInt32 a1, Swift::UInt a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (!*(*(v3 + 16) + 16) || (sub_100771C94(a1, a2), v9 = *(v3 + 16), (v10 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v5 + 16);
    sub_101002440(0, 0, a1, v7, isUniquelyReferenced_nonNull_native);
    *(v5 + 16) = v33;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  v34 = v13;
  result = sub_100771C94(a1, v7);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v15;
  if (*(v13 + 24) >= v19)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  sub_100FF8010(v19, v12);
  result = sub_100771C94(a1, v7);
  if ((v4 & 1) == (v20 & 1))
  {
LABEL_9:
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_16:
  if (v12)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = result;
  sub_10100E980();
  result = v7;
  if (v4)
  {
LABEL_18:
    v28 = *(v34 + 56) + 16 * result;
    v30 = *(v28 + 8);
    v29 = (v28 + 8);
    v31 = v30 + a3;
    if (!__CFADD__(v30, a3))
    {
      *v29 = v31;
      *(v5 + 16) = v34;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_25:
      v32 = result;
      sub_10100E980();
      result = v32;
      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_10:
      v21 = (*(v34 + 56) + 16 * result);
      if (__OFADD__(*v21, 1))
      {
        break;
      }

      ++*v21;
      *(v5 + 16) = v34;
      if (a3 < 0)
      {
        goto LABEL_22;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v5 + 16);
      v34 = v22;
      result = sub_100771C94(a1, v7);
      v24 = *(v22 + 16);
      v25 = (v23 & 1) == 0;
      v18 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (!v18)
      {
        v4 = v23;
        if (*(v22 + 24) >= v26)
        {
          goto LABEL_16;
        }

        sub_100FF8010(v26, v12);
        result = sub_100771C94(a1, v7);
        if ((v4 & 1) == (v27 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_10104663C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v16 = *v8;
  dispatch_assert_queue_V2(*(v8 + 48));
  v17 = *(v8 + 144);
  if (v17)
  {
    v30 = v16;
    v18 = *(v8 + 152);
    v19 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
    if (v19 || (v28 = *(v8 + 24), v29 = *(v8 + 16), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v17(a3, a4, a5, a6 & 1, a7);

      sub_1000BB27C(v17);
    }

    else
    {
      v20 = qword_101695190;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v22))
      {
        v23 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        v31[1] = v30;
        *v23 = 136315650;
        swift_getMetatypeMetadata();
        v24 = String.init<A>(describing:)();
        v26 = sub_1000136BC(v24, v25, v31);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1000136BC(v29, v28, v31);
        *(v23 + 22) = 2080;
        *(v23 + 24) = sub_1000136BC(a1, a2, v31);
        _os_log_impl(&_mh_execute_header, oslog, v22, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v23, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v17);
      }

      else
      {
        sub_1000BB27C(v17);
      }
    }
  }
}

void sub_101046944(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = *v9;
  dispatch_assert_queue_V2(*(v9 + 48));
  if (*(v9 + 160))
  {
    v32 = v18;
    v34 = *(v9 + 160);
    v19 = *(v9 + 168);
    v20 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
    if (v20 || (v21 = a1, v22 = *(v9 + 16), v33 = *(v9 + 24), v30 = v21, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v34(a3, a4, a5, a6, a7, a8);

      sub_1000BB27C(v34);
    }

    else
    {
      v23 = qword_101695190;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v25))
      {
        v26 = swift_slowAlloc();
        v35[0] = swift_slowAlloc();
        *v26 = 136315650;
        v35[1] = v32;
        swift_getMetatypeMetadata();
        v27 = String.init<A>(describing:)();
        v29 = sub_1000136BC(v27, v28, v35);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1000136BC(v22, v33, v35);
        *(v26 + 22) = 2080;
        *(v26 + 24) = sub_1000136BC(v30, a2, v35);
        _os_log_impl(&_mh_execute_header, oslog, v25, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v26, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v34);
      }

      else
      {
        sub_1000BB27C(v34);
      }
    }
  }
}

void sub_101046C6C(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(_BYTE *, os_log_t, uint64_t), void (*a5)(void, void), void (*a6)(void, void, void), int a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v11 = v10;
  v155 = a8;
  LODWORD(v147) = a7;
  v165 = a5;
  v166 = a6;
  v146 = a4;
  v145 = a3;
  v159 = a9;
  v160 = a10;
  v14 = *v10;
  isa = v14[12].isa;
  v152 = v14[10].isa;
  v153 = isa;
  v16 = type metadata accessor for Message();
  type metadata accessor for MessagingMessageContext();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  v148 = TupleTypeMetadata2;
  v154 = type metadata accessor for Result();
  v150 = *(v154 - 8);
  v18 = *(v150 + 64);
  __chkstk_darwin(v154);
  v149 = &v142[-v19];
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v142[-v22];
  v161 = type metadata accessor for UUID();
  v163 = *(v161 - 8);
  v24 = *(v163 + 64);
  v25 = __chkstk_darwin(v161);
  v144 = &v142[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v157 = &v142[-v28];
  v29 = __chkstk_darwin(v27);
  v158 = &v142[-v30];
  v162 = *(v16 - 8);
  v31 = *(v162 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v142[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v32);
  v151 = &v142[-v36];
  v37 = __chkstk_darwin(v35);
  v39 = &v142[-v38];
  __chkstk_darwin(v37);
  v167 = &v142[-v40];
  dispatch_assert_queue_V2(v11[6]);
  v41 = v11[2];
  v42 = v11[3];
  v164 = a1;
  v43 = v41 == a1;
  v44 = a2;
  if (v43 && v42 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v156 = v14;
    v45 = type metadata accessor for PropertyListDecoder();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    swift_getWitnessTable();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_100015794(v160, v23);
    v48 = v163;
    v49 = v161;
    if ((*(v163 + 48))(v23, 1, v161) == 1)
    {
      sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
      v50 = v162;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177C4F0);
      v163 = *(v50 + 16);
      (v163)(v34, v167, v16);

      v52 = v159;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v169[0] = v161;
        *v55 = 136315906;
        v168 = v156;
        swift_getMetatypeMetadata();
        v56 = String.init<A>(describing:)();
        v158 = v53;
        v58 = sub_1000136BC(v56, v57, v169);
        LODWORD(v157) = v54;
        v59 = v58;

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_1000136BC(v164, v44, v169);
        *(v55 + 22) = 2080;
        v60 = v155;
        *(v55 + 24) = sub_1000136BC(v155, v52, v169);
        *(v55 + 32) = 2080;
        v61 = v151;
        (v163)(v151, v34, v16);
        v62 = *(v162 + 8);
        v62(v34, v16);
        Message.description.getter(v16);
        v64 = v63;
        v66 = v65;
        v62(v61, v16);
        v67 = sub_1000136BC(v64, v66, v169);

        *(v55 + 34) = v67;
        v68 = v158;
        _os_log_impl(&_mh_execute_header, v158, v157, "%s: Received message on %s from %s: %s", v55, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        v62 = *(v50 + 8);
        v62(v34, v16);

        v60 = v155;
      }

      v111 = v11[15];
      __chkstk_darwin(v69);
      v113 = *(v112 + 88);
      v114 = v153;
      *&v142[-64] = v152;
      *&v142[-56] = v113;
      v115 = *(v112 + 104);
      *&v142[-48] = v114;
      *&v142[-40] = v115;
      v116 = v167;
      v118 = v165;
      v117 = v166;
      *&v142[-32] = v167;
      *&v142[-24] = v118;
      *&v142[-16] = v117;
      os_unfair_lock_lock(v111 + 16);
      sub_10104B588(&v111[4]);
      os_unfair_lock_unlock(v111 + 16);
      v119 = v11[22];
      if (v119)
      {
        v120 = v11[23];
        sub_100012908(v11[22]);
        v121 = sub_100908F24(_swiftEmptyArrayStorage);
        (v119)(v145, v146, v147, v60, v159, v116, v121, v160);

        sub_1000BB27C(v119);
      }

      v62(v116, v16);
    }

    else
    {
      v77 = v158;
      (*(v48 + 32))(v158, v23, v49);
      v78 = v162;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      v80 = sub_1000076D4(v79, qword_10177C4F0);
      v81 = (v78 + 16);
      v166 = *(v78 + 16);
      v166(v39, v167, v16);
      v82 = *(v163 + 16);
      v147 = v163 + 16;
      v146 = v82;
      v82(v157, v77, v49);

      v83 = v78;
      v84 = v159;

      v152 = v80;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      v87 = os_log_type_enabled(v85, v86);
      v153 = v81;
      if (v87)
      {
        v88 = v84;
        v89 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v169[0] = v145;
        *v89 = 136316162;
        v168 = v156;
        swift_getMetatypeMetadata();
        v90 = String.init<A>(describing:)();
        v156 = v85;
        v92 = sub_1000136BC(v90, v91, v169);
        v143 = v86;
        v93 = v92;

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        *(v89 + 14) = sub_1000136BC(v164, v44, v169);
        *(v89 + 22) = 2080;
        *(v89 + 24) = sub_1000136BC(v155, v88, v169);
        *(v89 + 32) = 2080;
        v94 = v151;
        v166(v151, v39, v16);
        v95 = *(v162 + 8);
        v95(v39, v16);
        Message.description.getter(v16);
        v97 = v96;
        v99 = v98;
        v165 = v95;
        v95(v94, v16);
        v100 = sub_1000136BC(v97, v99, v169);

        *(v89 + 34) = v100;
        *(v89 + 42) = 2080;
        sub_10104B624(&qword_101696930, &type metadata accessor for UUID);
        v101 = v157;
        v102 = v161;
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        v106 = *(v163 + 8);
        v106(v101, v102);
        v107 = sub_1000136BC(v103, v105, v169);

        *(v89 + 44) = v107;
        v108 = v156;
        _os_log_impl(&_mh_execute_header, v156, v143, "%s: Received message on %s from %s: %s in response to %s", v89, 0x34u);
        swift_arrayDestroy();
      }

      else
      {
        v165 = *(v83 + 8);
        v165(v39, v16);

        v106 = *(v163 + 8);
        v109 = (v106)(v157, v161);
      }

      v122 = v154;
      v123 = v11[4];
      __chkstk_darwin(v109);
      v124 = v158;
      *&v142[-16] = v11;
      *&v142[-8] = v124;
      swift_getFunctionTypeMetadata1();
      type metadata accessor for Optional();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v125 = v168;
      if (v168)
      {
        v126 = *(v148 + 48);
        v127 = v149;
        v128 = v167;
        v166(v149, v167, v16);
        sub_100D2577C(v160, &v127[v126]);
        swift_storeEnumTagMultiPayload();

        v125(v127);
        sub_1000BB27C(v125);
        sub_1000BB27C(v125);
        (*(v150 + 8))(v127, v122);
        v129 = v161;
      }

      else
      {
        v130 = v144;
        v131 = v124;
        v132 = v161;
        v146(v144, v131, v161);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v168 = v136;
          *v135 = 136315138;
          sub_10104B624(&qword_101696930, &type metadata accessor for UUID);
          v137 = dispatch thunk of CustomStringConvertible.description.getter();
          v138 = v130;
          v140 = v139;
          v106(v138, v132);
          v141 = sub_1000136BC(v137, v140, &v168);

          *(v135 + 4) = v141;
          _os_log_impl(&_mh_execute_header, v133, v134, "Could not find promise for %s", v135, 0xCu);
          sub_100007BAC(v136);
        }

        else
        {

          v106(v130, v132);
        }

        v128 = v167;
        v129 = v132;
        v124 = v158;
      }

      v106(v124, v129);
      v165(v128, v16);
    }
  }

  else
  {
    v70 = v14;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000076D4(v71, qword_10177C4F0);

    v167 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v167, v72))
    {
      v73 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v73 = 136315650;
      v168 = v70;
      swift_getMetatypeMetadata();
      v74 = String.init<A>(describing:)();
      v76 = sub_1000136BC(v74, v75, v169);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_1000136BC(v41, v42, v169);
      *(v73 + 22) = 2080;
      *(v73 + 24) = sub_1000136BC(v164, a2, v169);
      _os_log_impl(&_mh_execute_header, v167, v72, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v73, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v110 = v167;
    }
  }
}

uint64_t sub_101047E68@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[10];
  type metadata accessor for UUID();
  v6 = *(v4 + 80);
  v7 = *(v4 + 96);
  type metadata accessor for Message();
  type metadata accessor for MessagingMessageContext();
  swift_getTupleTypeMetadata2();
  sub_1000BC580(&qword_101696960, &unk_10138B220);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  sub_10104B624(&qword_1016967B0, &type metadata accessor for UUID);
  Dictionary.subscript.getter();
  *a2 = v9;
  return swift_endAccess();
}

unint64_t sub_101047FE0(Swift::UInt32 a1, Swift::UInt a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (!*(*(v3 + 32) + 16) || (sub_100771C94(a1, a2), v9 = *(v3 + 32), (v10 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v5 + 32);
    sub_101002440(0, 0, a1, v7, isUniquelyReferenced_nonNull_native);
    *(v5 + 32) = v33;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 32);
  v34 = v13;
  result = sub_100771C94(a1, v7);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v15;
  if (*(v13 + 24) >= v19)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  sub_100FF8010(v19, v12);
  result = sub_100771C94(a1, v7);
  if ((v4 & 1) == (v20 & 1))
  {
LABEL_9:
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_16:
  if (v12)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = result;
  sub_10100E980();
  result = v7;
  if (v4)
  {
LABEL_18:
    v28 = *(v34 + 56) + 16 * result;
    v30 = *(v28 + 8);
    v29 = (v28 + 8);
    v31 = v30 + a3;
    if (!__CFADD__(v30, a3))
    {
      *v29 = v31;
      *(v5 + 32) = v34;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_25:
      v32 = result;
      sub_10100E980();
      result = v32;
      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_10:
      v21 = (*(v34 + 56) + 16 * result);
      if (__OFADD__(*v21, 1))
      {
        break;
      }

      ++*v21;
      *(v5 + 32) = v34;
      if (a3 < 0)
      {
        goto LABEL_22;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v5 + 32);
      v34 = v22;
      result = sub_100771C94(a1, v7);
      v24 = *(v22 + 16);
      v25 = (v23 & 1) == 0;
      v18 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (!v18)
      {
        v4 = v23;
        if (*(v22 + 24) >= v26)
        {
          goto LABEL_16;
        }

        sub_100FF8010(v26, v12);
        result = sub_100771C94(a1, v7);
        if ((v4 & 1) == (v27 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_101048214(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, NSObject *a9, uint64_t a10)
{
  v84 = a8;
  v83 = a7;
  v80 = a3;
  v81 = a4;
  v82 = a10;
  v86 = a9;
  v14 = *v10;
  v15 = *(*v10 + 96);
  v78 = *(*v10 + 80);
  v79 = v15;
  v16 = type metadata accessor for Message();
  v85 = *(v16 - 8);
  v17 = v85[8];
  v18 = __chkstk_darwin(v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v69 - v22;
  __chkstk_darwin(v21);
  v25 = (&v69 - v24);
  dispatch_assert_queue_V2(v10[6]);
  v26 = v10[22];
  if (v26)
  {
    v76 = a6;
    v77 = v14;
    v87 = v26;
    v88 = v10[23];
    v27 = v10[2];
    v28 = v10[3];
    if (v27 == a1 && v28 == a2 || (v29 = v10[2], v30 = v10[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v31 = Data.init(contentsOf:options:)();
      v33 = v32;
      v75 = v10;
      v34 = type metadata accessor for PropertyListDecoder();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      swift_getWitnessTable();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v73 = v31;
      v74 = v33;
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177C4F0);
      v46 = v85;
      v71 = v85[2];
      v71(v23, v25, v16);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      v72 = v48;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v89 = v70;
        *v49 = 136315650;
        v90 = v77;
        swift_getMetatypeMetadata();
        v50 = String.init<A>(describing:)();
        v69 = v47;
        v52 = sub_1000136BC(v50, v51, &v89);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_1000136BC(v84, v86, &v89);
        *(v49 + 22) = 2080;
        v71(v20, v23, v16);
        v53 = v85[1];
        v53(v23, v16);
        Message.description.getter(v16);
        v55 = v54;
        v57 = v56;
        v53(v20, v16);
        v58 = sub_1000136BC(v55, v57, &v89);

        *(v49 + 24) = v58;
        v59 = v69;
        _os_log_impl(&_mh_execute_header, v69, v72, "%s: Received resource from %s: %s", v49, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v53 = v46[1];
        v53(v23, v16);
      }

      v61 = v75[15];
      __chkstk_darwin(v60);
      v63 = *(v62 + 88);
      v64 = v79;
      *(&v69 - 8) = v78;
      *(&v69 - 7) = v63;
      v65 = *(v62 + 104);
      *(&v69 - 6) = v64;
      *(&v69 - 5) = v65;
      v67 = v73;
      v66 = v74;
      *(&v69 - 4) = v25;
      *(&v69 - 3) = v67;
      *(&v69 - 2) = v66;
      os_unfair_lock_lock(v61 + 16);
      sub_10104B55C(&v61[4]);
      os_unfair_lock_unlock(v61 + 16);
      v68 = v87;
      v87(v80, v81, v83, v84, v86, v25, v76, v82);
      sub_100016590(v67, v66);
      sub_1000BB27C(v68);
      v53(v25, v16);
    }

    else
    {
      v37 = qword_101695190;

      if (v37 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177C4F0);

      v86 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v39))
      {
        v40 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v40 = 136315650;
        v90 = v77;
        swift_getMetatypeMetadata();
        v41 = String.init<A>(describing:)();
        v43 = sub_1000136BC(v41, v42, &v89);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_1000136BC(v27, v28, &v89);
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_1000136BC(a1, a2, &v89);
        _os_log_impl(&_mh_execute_header, v86, v39, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v40, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v87);
      }

      else
      {
        sub_1000BB27C(v87);
        v44 = v86;
      }
    }
  }
}

uint64_t sub_101048B2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, uint64_t, uint64_t))
{
  v12 = *(a7 + 24);
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = type metadata accessor for Message();
  v14 = *(a2 + *(result + 36));
  v15 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      return a9(v19, v14, v16);
    }

    v18 = *(a3 + 16);
    v17 = *(a3 + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      return a9(v19, v14, v16);
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(a4);
    return a9(v19, v14, v16);
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v16 = HIDWORD(a3) - a3;
    return a9(v19, v14, v16);
  }

  __break(1u);
  return result;
}

unint64_t sub_101048C14(Swift::UInt32 a1, Swift::UInt a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (!*(*(v3 + 40) + 16) || (sub_100771C94(a1, a2), v9 = *(v3 + 40), (v10 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v5 + 40);
    sub_101002440(0, 0, a1, v7, isUniquelyReferenced_nonNull_native);
    *(v5 + 40) = v33;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 40);
  v34 = v13;
  result = sub_100771C94(a1, v7);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v15;
  if (*(v13 + 24) >= v19)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  sub_100FF8010(v19, v12);
  result = sub_100771C94(a1, v7);
  if ((v4 & 1) == (v20 & 1))
  {
LABEL_9:
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_16:
  if (v12)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = result;
  sub_10100E980();
  result = v7;
  if (v4)
  {
LABEL_18:
    v28 = *(v34 + 56) + 16 * result;
    v30 = *(v28 + 8);
    v29 = (v28 + 8);
    v31 = v30 + a3;
    if (!__CFADD__(v30, a3))
    {
      *v29 = v31;
      *(v5 + 40) = v34;
      return result;
    }

    while (1)
    {
      __break(1u);
LABEL_25:
      v32 = result;
      sub_10100E980();
      result = v32;
      if ((v4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_10:
      v21 = (*(v34 + 56) + 16 * result);
      if (__OFADD__(*v21, 1))
      {
        break;
      }

      ++*v21;
      *(v5 + 40) = v34;
      if (a3 < 0)
      {
        goto LABEL_22;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v5 + 40);
      v34 = v22;
      result = sub_100771C94(a1, v7);
      v24 = *(v22 + 16);
      v25 = (v23 & 1) == 0;
      v18 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (!v18)
      {
        v4 = v23;
        if (*(v22 + 24) >= v26)
        {
          goto LABEL_16;
        }

        sub_100FF8010(v26, v12);
        result = sub_100771C94(a1, v7);
        if ((v4 & 1) == (v27 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_101048E48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(*(v4 + 48));
  v9 = *(v4 + 192);
  if (v9)
  {
    v10 = *(v4 + 200);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (v14 = *(v4 + 16), v15 = *(v4 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v9(a3);

      sub_1000BB27C(v9);
    }

    else
    {
      v16 = qword_101695190;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        v24[1] = v8;
        *v19 = 136315650;
        swift_getMetatypeMetadata();
        v20 = String.init<A>(describing:)();
        v22 = sub_1000136BC(v20, v21, v24);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000136BC(v11, v12, v24);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1000136BC(a1, a2, v24);
        _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v19, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9);
      }

      else
      {
        sub_1000BB27C(v9);
      }
    }
  }
}

void sub_10104912C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(*(v4 + 48));
  v9 = *(v4 + 208);
  if (v9)
  {
    v10 = *(v4 + 216);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (v14 = *(v4 + 16), v15 = *(v4 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v9(a3);

      sub_1000BB27C(v9);
    }

    else
    {
      v16 = qword_101695190;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        v24[1] = v8;
        *v19 = 136315650;
        swift_getMetatypeMetadata();
        v20 = String.init<A>(describing:)();
        v22 = sub_1000136BC(v20, v21, v24);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000136BC(v11, v12, v24);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1000136BC(a1, a2, v24);
        _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v19, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9);
      }

      else
      {
        sub_1000BB27C(v9);
      }
    }
  }
}

void sub_101049410(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  dispatch_assert_queue_V2(*(v4 + 48));
  v9 = *(v4 + 224);
  if (v9)
  {
    v10 = *(v4 + 232);
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = v11 == a1 && v12 == a2;
    if (v13 || (v14 = *(v4 + 16), v15 = *(v4 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v9(a3);

      sub_1000BB27C(v9);
    }

    else
    {
      v16 = qword_101695190;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C4F0);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        v24[1] = v8;
        *v19 = 136315650;
        swift_getMetatypeMetadata();
        v20 = String.init<A>(describing:)();
        v22 = sub_1000136BC(v20, v21, v24);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1000136BC(v11, v12, v24);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1000136BC(a1, a2, v24);
        _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Ignoring delegate callback from wrong IDS service! Expected %s, received: %s", v19, 0x20u);
        swift_arrayDestroy();

        sub_1000BB27C(v9);
      }

      else
      {
        sub_1000BB27C(v9);
      }
    }
  }
}

BOOL sub_10104973C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_101049764(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) >= *(a1 + 8);
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_10104978C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) >= *(a2 + 8);
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_1010497B4(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) < *(a1 + 8);
  }

  else
  {
    return *a2 < *a1;
  }
}

Swift::Int sub_1010497DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10104983C()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10104987C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1010498D8()
{
  v1 = *(v0 + 1);
  v5 = *v0;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v2._countAndFlagsBits = 118;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return v6;
}

unint64_t sub_101049994()
{
  p_countAndFlagsBits = &v0->_countAndFlagsBits;
  _StringGuts.grow(_:)(38);

  v89._countAndFlagsBits = 0xD000000000000022;
  v89._object = 0x8000000101378BB0;
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 2570;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v90 = 0xD000000000000022;
  v91 = 0x8000000101378BB0;
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  v84 = v0;
  if (!*(countAndFlagsBits + 16))
  {
    goto LABEL_13;
  }

  v4._countAndFlagsBits = 0xA3A646E6553;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v5 = *(countAndFlagsBits + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_1003A85E8(*(countAndFlagsBits + 16), 0);
  v7 = sub_1003A8EB8(&v89, (v6 + 4), v5, countAndFlagsBits);

  sub_1000128F8();
  if (v7 != v5)
  {
    __break(1u);
LABEL_5:
    v6 = _swiftEmptyArrayStorage;
  }

  v89._countAndFlagsBits = v6;
  sub_101045534(&v89);
  v8 = *(v89._countAndFlagsBits + 16);
  if (v8)
  {
    v9 = (v89._countAndFlagsBits + 40);
    do
    {
      if (*(countAndFlagsBits + 16))
      {
        v10 = sub_100771C94(*(v9 - 2), *v9);
        if (v11)
        {
          v12 = (*(countAndFlagsBits + 56) + 16 * v10);
          v14 = *v12;
          v13 = v12[1];
          v89._countAndFlagsBits = 0;
          v89._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v89._countAndFlagsBits = 8224;
          v89._object = 0xE200000000000000;
          v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v85._object = v15;
          v16._countAndFlagsBits = 118;
          v16._object = 0xE100000000000000;
          String.append(_:)(v16);
          v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v17);

          String.append(_:)(v85);

          v18._countAndFlagsBits = 8250;
          v18._object = 0xE200000000000000;
          String.append(_:)(v18);
          v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v19);

          v20._countAndFlagsBits = 23328;
          v20._object = 0xE200000000000000;
          String.append(_:)(v20);
          v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v21);

          v22._countAndFlagsBits = 0xA5D736574796220;
          v22._object = 0xE800000000000000;
          String.append(_:)(v22);
          String.append(_:)(v89);
        }
      }

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  p_countAndFlagsBits = &v84->_countAndFlagsBits;
LABEL_13:
  v23 = p_countAndFlagsBits[3];
  if (!*(v23 + 16))
  {
    goto LABEL_26;
  }

  v24._countAndFlagsBits = 0x73655220646E6553;
  v24._object = 0xEF0A3A656372756FLL;
  String.append(_:)(v24);
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = sub_1003A85E8(*(v23 + 16), 0);
    v27 = sub_1003A8EB8(&v89, (v26 + 4), v25, v23);
    p_countAndFlagsBits = v89._countAndFlagsBits;

    sub_1000128F8();
    if (v27 != v25)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v89._countAndFlagsBits = v26;
  sub_101045534(&v89);
  v28 = *(v89._countAndFlagsBits + 16);
  if (v28)
  {
    v29 = (v89._countAndFlagsBits + 40);
    do
    {
      if (*(v23 + 16))
      {
        v30 = sub_100771C94(*(v29 - 2), *v29);
        if (v31)
        {
          v32 = (*(v23 + 56) + 16 * v30);
          v34 = *v32;
          v33 = v32[1];
          v89._countAndFlagsBits = 0;
          v89._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v89._countAndFlagsBits = 8224;
          v89._object = 0xE200000000000000;
          v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v86._object = v35;
          v36._countAndFlagsBits = 118;
          v36._object = 0xE100000000000000;
          String.append(_:)(v36);
          v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v37);

          String.append(_:)(v86);

          v38._countAndFlagsBits = 8250;
          v38._object = 0xE200000000000000;
          String.append(_:)(v38);
          v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v39);

          v40._countAndFlagsBits = 23328;
          v40._object = 0xE200000000000000;
          String.append(_:)(v40);
          v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v41);

          v42._countAndFlagsBits = 0xA5D736574796220;
          v42._object = 0xE800000000000000;
          String.append(_:)(v42);
          String.append(_:)(v89);
        }
      }

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  p_countAndFlagsBits = &v84->_countAndFlagsBits;
LABEL_26:
  v43 = p_countAndFlagsBits[4];
  if (!*(v43 + 16))
  {
    goto LABEL_38;
  }

  v44._countAndFlagsBits = 0x3A65766965636552;
  v44._object = 0xE90000000000000ALL;
  String.append(_:)(v44);
  v45 = *(v43 + 16);
  if (!v45)
  {
    goto LABEL_30;
  }

  v46 = sub_1003A85E8(*(v43 + 16), 0);
  v47 = sub_1003A8EB8(&v89, (v46 + 4), v45, v43);

  sub_1000128F8();
  if (v47 != v45)
  {
    __break(1u);
LABEL_30:
    v46 = _swiftEmptyArrayStorage;
  }

  v89._countAndFlagsBits = v46;
  sub_101045534(&v89);
  v48 = *(v89._countAndFlagsBits + 16);
  if (v48)
  {
    v49 = (v89._countAndFlagsBits + 40);
    do
    {
      if (*(v43 + 16))
      {
        v50 = sub_100771C94(*(v49 - 2), *v49);
        if (v51)
        {
          v52 = (*(v43 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          v89._countAndFlagsBits = 0;
          v89._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v89._countAndFlagsBits = 8224;
          v89._object = 0xE200000000000000;
          v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v87._object = v55;
          v56._countAndFlagsBits = 118;
          v56._object = 0xE100000000000000;
          String.append(_:)(v56);
          v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v57);

          String.append(_:)(v87);

          v58._countAndFlagsBits = 8250;
          v58._object = 0xE200000000000000;
          String.append(_:)(v58);
          v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v59);

          v60._countAndFlagsBits = 23328;
          v60._object = 0xE200000000000000;
          String.append(_:)(v60);
          v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v61);

          v62._countAndFlagsBits = 0xA5D736574796220;
          v62._object = 0xE800000000000000;
          String.append(_:)(v62);
          String.append(_:)(v89);
        }
      }

      v49 += 2;
      --v48;
    }

    while (v48);
  }

  p_countAndFlagsBits = &v84->_countAndFlagsBits;
LABEL_38:
  v63 = p_countAndFlagsBits[5];
  if (!*(v63 + 16))
  {
    return v90;
  }

  v64._object = 0x8000000101378BE0;
  v64._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v64);
  v65 = *(v63 + 16);
  if (!v65)
  {
    goto LABEL_42;
  }

  v66 = sub_1003A85E8(*(v63 + 16), 0);
  v67 = sub_1003A8EB8(&v89, (v66 + 4), v65, v63);

  sub_1000128F8();
  if (v67 != v65)
  {
    __break(1u);
LABEL_42:
    v66 = _swiftEmptyArrayStorage;
  }

  v89._countAndFlagsBits = v66;
  sub_101045534(&v89);
  v68 = *(v89._countAndFlagsBits + 16);
  if (v68)
  {
    v69 = (v89._countAndFlagsBits + 40);
    do
    {
      if (*(v63 + 16))
      {
        v70 = sub_100771C94(*(v69 - 2), *v69);
        if (v71)
        {
          v72 = (*(v63 + 56) + 16 * v70);
          v74 = *v72;
          v73 = v72[1];
          v89._countAndFlagsBits = 0;
          v89._object = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v89._countAndFlagsBits = 8224;
          v89._object = 0xE200000000000000;
          v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v88._object = v75;
          v76._countAndFlagsBits = 118;
          v76._object = 0xE100000000000000;
          String.append(_:)(v76);
          v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v77);

          String.append(_:)(v88);

          v78._countAndFlagsBits = 8250;
          v78._object = 0xE200000000000000;
          String.append(_:)(v78);
          v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v79);

          v80._countAndFlagsBits = 23328;
          v80._object = 0xE200000000000000;
          String.append(_:)(v80);
          v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v81);

          v82._countAndFlagsBits = 0xA5D736574796220;
          v82._object = 0xE800000000000000;
          String.append(_:)(v82);
          String.append(_:)(v89);
        }
      }

      v69 += 2;
      --v68;
    }

    while (v68);
  }

  return v90;
}

Swift::Int sub_10104A440(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10104A5CC(v7, v8, a1, v4);
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
    return sub_10104A538(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10104A538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = v8 < *v11;
      if (v8 == *v11)
      {
        v12 = v9 < *(v11 + 8);
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10104A5CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_100B31E68(v10);
      v10 = result;
    }

    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_10104AB98((*a3 + 16 * v91), (*a3 + 16 * *&v10[16 * v90 + 16]), (*a3 + 16 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v93 = &v10[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        result = sub_100B31DDC(v90 - 1);
        v90 = *(v10 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = v13 < *v16;
      if (v13 == *v16)
      {
        v17 = v14 < *(v16 + 8);
      }

      v18 = v11 + 2;
      v19 = (v16 + 40);
      while (v7 != v18)
      {
        v20 = *(v19 - 2);
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v23 = v22 >= v14;
        v24 = v20 == v13;
        v25 = v20 >= v13;
        if (v24)
        {
          v26 = v23;
        }

        else
        {
          v26 = v25;
        }

        ++v18;
        v14 = v21;
        v13 = v20;
        if (v17 == v26)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v9 < v11)
      {
        goto LABEL_124;
      }

      if (v11 < v9)
      {
        v27 = 0;
        v28 = 16 * v9;
        v29 = v11;
        do
        {
          if (v29 != v9 + v27 - 1)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v30 = (v34 + v15);
            v31 = v34 + v28;
            v32 = *v30;
            v33 = *(v30 + 1);
            *v30 = *(v31 - 16);
            *(v31 - 16) = v32;
            *(v31 - 8) = v33;
          }

          ++v29;
          --v27;
          v28 -= 16;
          v15 += 16;
        }

        while (v29 < v9 + v27);
        v7 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_123;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_125;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v45 = *(v10 + 3);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v46;
    v47 = &v10[16 * v5];
    *(v47 + 4) = v11;
    *(v47 + 5) = v9;
    v48 = *v95;
    if (!*v95)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_64:
          if (v53)
          {
            goto LABEL_111;
          }

          v66 = &v10[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_118;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v76 = &v10[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_78:
        if (v71)
        {
          goto LABEL_113;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_116;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_85:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v88 = *&v10[16 * v87 + 32];
        v5 = *&v10[16 * v49 + 40];
        sub_10104AB98((*a3 + 16 * v88), (*a3 + 16 * *&v10[16 * v49 + 32]), (*a3 + 16 * v5), v48);
        if (v4)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B31E68(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v10[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        result = sub_100B31DDC(v49);
        v46 = *(v10 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_109;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_110;
      }

      v61 = &v10[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_112;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_115;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_95;
    }
  }

  v35 = *a3;
  v36 = *a3 + 16 * v9 - 16;
  v37 = v11 - v9;
LABEL_35:
  v38 = (v35 + 16 * v9);
  v39 = *v38;
  v40 = *(v38 + 1);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 < *v42;
    if (v39 == *v42)
    {
      v43 = v40 < *(v42 + 8);
    }

    if (!v43)
    {
LABEL_34:
      ++v9;
      v36 += 16;
      --v37;
      if (v9 != v7)
      {
        goto LABEL_35;
      }

      v9 = v7;
      goto LABEL_44;
    }

    if (!v35)
    {
      break;
    }

    *(v42 + 16) = *v42;
    *v42 = v39;
    *(v42 + 8) = v40;
    v42 -= 16;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}