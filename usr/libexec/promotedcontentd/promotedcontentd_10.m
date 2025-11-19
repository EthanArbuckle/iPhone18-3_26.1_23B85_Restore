uint64_t sub_1001F5558(uint64_t a1, int a2)
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

uint64_t sub_1001F55A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1001F55F0()
{
  v0 = sub_1003982F8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_100398F28();
  v6 = [v4 initWithSuiteName:v5];

  if (!v6)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_1001F5818(&v13);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_100398F28();
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    sub_100399648();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {

    return v11;
  }

LABEL_10:
  (*(v1 + 104))(v3, enum case for IDManagerErrorType.noAccountToken(_:), v0);
  sub_100398278();
  (*(v1 + 8))(v3, v0);

  return 12589;
}

uint64_t sub_1001F5818(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D5D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F5880()
{
  result = sub_1001F58A4();
  qword_1004D4C40 = result;
  *algn_1004D4C48 = v1;
  return result;
}

uint64_t sub_1001F58A4()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D4CF0);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 xpcTimerGracePeriod];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 longLongValue];
    }

    else
    {
      v6 = 360;
    }

    v7 = [v3 xpcTimerPriority];
    if (v7)
    {
      v8 = v7;
      v9 = sub_100398F58();
      v11 = v10;

      v12 = v9 == 0x616E65746E69616DLL && v11 == 0xEB0000000065636ELL;
      if (v12 || (sub_1003999B8() & 1) != 0)
      {
        swift_unknownObjectRelease();

        return v6;
      }

      if (v9 == 0x7974696C697475 && v11 == 0xE700000000000000)
      {
      }

      else
      {
        sub_1003999B8();
      }
    }

    swift_unknownObjectRelease();
    return v6;
  }

  swift_unknownObjectRelease();
  return 360;
}

uint64_t sub_1001F5A90(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = qword_1004D3EF8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D4C40;
  v5 = *algn_1004D4C48;
  result = sub_1003976C8();
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    [v4 setDelay:v8];
    [v4 setRequiresNetworkConnectivity:0];
    [v4 setIsRepeating:0];
    [v4 setIsCPUIntensive:0];
    [v4 setRequireBuddyComplete:1];
    [v4 setAllowBattery:1];
    [v4 setRequireSleep:0];
    [v4 setGracePeriod:v6];
    [v4 setPriority:v5];
    [v4 setRequireClassCData:1];
    [v4 setIsDiskIntensive:0];
    sub_1003976E8();
    [v4 setScheduledTime:?];

    v9 = sub_100397748();
    (*(*(v9 - 8) + 8))(a1, v9);
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*sub_1001F5C90(uint64_t *a1))(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16promotedcontentd29ObservabilityXPCTimerActivity_apXpcActivityDelegate);
  v4 = OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v3 + v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  *a1 = Strong;
  a1[1] = v7;
  return sub_1001F5CF8;
}

uint64_t sub_1001F5CF8(void *a1)
{
  *(a1[2] + a1[3] + 8) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1001F5EF4(uint64_t a1, uint64_t a2)
{
  *(*(*v2 + OBJC_IVAR____TtC16promotedcontentd29ObservabilityXPCTimerActivity_apXpcActivityDelegate) + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void (*sub_1001F5F50(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001F5C90(v2);
  return sub_1001F5FC4;
}

void sub_1001F5FC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_1001F600C(uint64_t a1)
{
  v3 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = *(*v1 + OBJC_IVAR____TtC16promotedcontentd29ObservabilityXPCTimerActivity_apXpcActivityDelegate);
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, a1, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_currentScheduledTime;
  swift_beginAccess();
  sub_1001E2910(v5, v7 + v10);
  swift_endAccess();
  return [*(v6 + OBJC_IVAR____TtC16promotedcontentd29ObservabilityXPCTimerActivity_apXpcActivity) schedule];
}

uint64_t sub_1001F6250()
{
  v1 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_currentScheduledTime;
  swift_beginAccess();
  sub_1001E2838(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1001E28A8(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_100004218(0, &qword_1004D4CE8);
    (*(v5 + 16))(v8, v10, v4);
    v13 = sub_1001F5A90(v8);
    (*(v5 + 8))(v10, v4);
    return v13;
  }
}

uint64_t sub_1001F6454(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v5;
    v8 = *(v4 + 8);
    v9 = a1;

    v8(sub_1001F6CD4, v7, ObjectType, v4);

    swift_unknownObjectRelease();
    swift_beginAccess();
    v10 = *(v5 + 16);

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1001F6828(uint64_t a1)
{
  v3 = sub_1001E27A8(&qword_1004D4CE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_100397748();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  if (a1)
  {
    v11 = AP_XPC_ACTIVITY_SCHEDULED_TIME;
    v12 = swift_unknownObjectRetain();
    v13 = xpc_dictionary_get_double(v12, v11);
    v14 = (~*&v13 & 0x7FF0000000000000) != 0 || (*&v13 & 0xFFFFFFFFFFFFFLL) == 0;
    if (v14 && v13 > 0.0)
    {
      sub_1003976D8();
      swift_unknownObjectRelease();
      sub_1001E28A8(v8);
      v10(v6, 0, 1, v9);
      sub_100008BA8(v6, v8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v15 = v1 + OBJC_IVAR____TtC16promotedcontentd37ObservabilityXPCTimerActivityDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(v8, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  sub_1001E28A8(v8);
  return 0;
}

id sub_1001F6B44(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ObservabilityXPCTimerActivityDelegate()
{
  result = qword_1004D4CC8;
  if (!qword_1004D4CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F6C30()
{
  sub_1001E2664();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001F6CD4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) finished];
  result = swift_beginAccess();
  *(v1 + 16) = 1;
  return result;
}

uint64_t sub_1001F6D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1001F74FC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1001EC1DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1001F7678();
        v14 = v16;
      }

      result = sub_1001F734C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1001F6E88(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_1001EC1DC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (swift_weakLoadStrong())
      {
        v10 = *(v9 + 16);
        v11 = *(v9 + 24);

        v12._countAndFlagsBits = v10;
        v12._object = v11;
        LOBYTE(v10) = sub_100397F08(v12);

        if (v10)
        {
          type metadata accessor for PeriodicFetchBackgroundTask();
          sub_1001F704C();
          sub_100397F28();
        }
      }

      swift_beginAccess();

      sub_1001F6D90(0, a1, a2);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001F6FE8()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1001F704C()
{
  result = qword_1004D4810;
  if (!qword_1004D4810)
  {
    type metadata accessor for PeriodicFetchBackgroundTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4810);
  }

  return result;
}

uint64_t sub_1001F70A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&qword_1004D4910);
  v34 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1001F734C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100399678() + 1) & ~v5;
    do
    {
      sub_100399B58();

      sub_100399018();
      v9 = sub_100399B88();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001F74FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001EC1DC(a2, a3);
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
      sub_1001F70A4(v16, a4 & 1);
      v11 = sub_1001EC1DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100399A98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1001F7678();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_1001F7678()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004D4910);
  v2 = *v0;
  v3 = sub_100399808();
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

uint64_t sub_1001F77E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

double sub_1001F782C()
{
  qword_1004D4E20 = 0;
  result = 0.0;
  xmmword_1004D4E00 = 0u;
  unk_1004D4E10 = 0u;
  return result;
}

uint64_t sub_1001F7844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1003981C8())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1001F789C(uint64_t a1)
{
  sub_1003981E8();
  sub_1003997C8();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_100399068(v6);
  if (*(v1 + *(a1 + 20)))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 20)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_100399068(v3);

  return 0;
}

uint64_t sub_1001F7970()
{
  v0 = type metadata accessor for FeatureFlagsProcessRestarter.RetryParameters(0);
  __chkstk_darwin(v0);
  v2 = &v32[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004D3F00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (!qword_1004D4E18)
  {
    v33 = xmmword_1004D4E00;
    v34 = unk_1004D4E10;
    v35 = qword_1004D4E20;
    return result;
  }

  result = sub_100003554(&xmmword_1004D4E00, &v33);
  if (*(&v34 + 1))
  {
    sub_100004A64(&v33, v36);
    v4 = qword_1004D4DF8;
    if (qword_1004D4DF8)
    {

      v5 = sub_1003981D8();
      __chkstk_darwin(v5);
      *&v32[-16] = v36;
      v6 = sub_1001E5D38(sub_1001F87FC, &v32[-32], v5);

      LOBYTE(v5) = sub_1001F881C(v6, v4);

      if ((v5 & 1) == 0)
      {
        if (qword_1004D3EC8 != -1)
        {
          swift_once();
        }

        v7 = sub_100398CA8();
        sub_10000351C(v7, qword_1004DDA10);
        v8 = sub_100398C88();
        v9 = sub_1003993F8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "Received new feature flags", v10, 2u);
        }

        v11 = objc_opt_self();
        sub_100004218(0, &qword_1004D4E50);
        v12 = [v11 configurationForClass:swift_getObjCClassFromMetadata() usingCache:0];
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v15 = [v13 restartEnabled];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 BOOLValue];

            if (v17)
            {
              v18 = [v14 retryTimeout];
              v19 = 5.0;
              if (v18 && (v20 = v18, [v18 doubleValue], v22 = v21, v20, (v23 = objc_msgSend(v14, "delay")) != 0))
              {
                v24 = v23;
                [v23 doubleValue];
                v19 = v25;
              }

              else
              {
                v22 = 0x4072C00000000000;
              }

              sub_100397718();
              *v2 = v19;
              *(v2 + 1) = v22;
              v29 = sub_100398C88();
              v30 = sub_1003993F8();
              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                *v31 = 0;
                _os_log_impl(&_mh_execute_header, v29, v30, "Restart initiated", v31, 2u);
              }

              sub_1001F7EEC(v2, 1);
              swift_unknownObjectRelease();
              sub_1001F8C60(v2, type metadata accessor for FeatureFlagsProcessRestarter.RetryParameters);
              return sub_100003894(v36);
            }
          }

          v26 = sub_100398C88();
          v27 = sub_1003993F8();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "Restart is not enabled.", v28, 2u);
          }
        }

        swift_unknownObjectRelease();
      }
    }

    return sub_100003894(v36);
  }

  return result;
}

uint64_t sub_1001F7E34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1003981E8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1000035B8(a2, a2[3]);
  LOBYTE(a2) = sub_100398248();
  result = type metadata accessor for FeatureFlagsProcessRestarter.FeatureState(0);
  *(a3 + *(result + 20)) = a2 & 1;
  return result;
}

uint64_t sub_1001F7EEC(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_100398DA8();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v59 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_100398DD8();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for FeatureFlagsProcessRestarter.RetryParameters(0);
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = v9;
  v53 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100398DF8();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v54 = &v49[-v14];
  v15 = sub_100398DB8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100397748();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100397718();
  sub_100397668();
  v24 = v23;
  (*(v20 + 8))(v22, v19);
  v25 = *(a1 + 8);
  flags[0] = 0;
  v26 = getpid();
  proc_get_dirty(v26, flags);
  if ((flags[0] & 4) == 0)
  {
    if (v25 >= v24)
    {
      if (qword_1004D3EC8 != -1)
      {
        swift_once();
      }

      v47 = sub_100398CA8();
      sub_10000351C(v47, qword_1004DDA10);
      v44 = sub_100398C88();
      v45 = sub_1003993F8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = "The daemon is idle, exiting...";
        goto LABEL_19;
      }

LABEL_20:

      exit(0);
    }

LABEL_11:
    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v43 = sub_100398CA8();
    sub_10000351C(v43, qword_1004DDA10);
    v44 = sub_100398C88();
    v45 = sub_1003993F8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = "The daemon is dirty but timed out, exiting...";
LABEL_19:
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, v46, v48, 2u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v25 < v24)
  {
    goto LABEL_11;
  }

  if (v50)
  {
    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v27 = sub_100398CA8();
    sub_10000351C(v27, qword_1004DDA10);
    v28 = sub_100398C88();
    v29 = sub_1003993F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "The daemon is dirty, waiting...", v30, 2u);
    }
  }

  sub_100004218(0, &qword_1004D40C0);
  (*(v16 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v31 = sub_100399498();
  (*(v16 + 8))(v18, v15);
  sub_100398DE8();
  v32 = v54;
  sub_100398E38();
  v33 = v56;
  v55 = *(v55 + 8);
  (v55)(v13, v56);
  v34 = v53;
  sub_1001F8BF8(a1, v53, type metadata accessor for FeatureFlagsProcessRestarter.RetryParameters);
  v35 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v36 = (v52 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_1001F8A28(v34, v37 + v35);
  *(v37 + v36) = v3;
  v68 = sub_1001F8A8C;
  v69 = v37;
  *flags = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_1001F77E8;
  v67 = &unk_100464B18;
  v38 = _Block_copy(flags);
  v39 = v57;
  sub_100398DC8();
  v63 = _swiftEmptyArrayStorage;
  sub_1001F8B1C();
  sub_1001E27A8(&unk_1004DC400);
  sub_1001F8B74();
  v40 = v59;
  v41 = v62;
  sub_100399658();
  sub_100399448();
  _Block_release(v38);

  (*(v61 + 8))(v40, v41);
  (*(v58 + 8))(v39, v60);
  (v55)(v32, v33);
}

id sub_1001F8780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureFlagsProcessRestarter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F881C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureFlagsProcessRestarter.FeatureState(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1001F8BF8(v13, v10, type metadata accessor for FeatureFlagsProcessRestarter.FeatureState);
      sub_1001F8BF8(v14, v7, type metadata accessor for FeatureFlagsProcessRestarter.FeatureState);
      if ((sub_1003981C8() & 1) == 0)
      {
        break;
      }

      v16 = v10[*(v4 + 20)];
      sub_1001F8C60(v10, type metadata accessor for FeatureFlagsProcessRestarter.FeatureState);
      v17 = v7[*(v4 + 20)];
      sub_1001F8C60(v7, type metadata accessor for FeatureFlagsProcessRestarter.FeatureState);
      if (((v16 ^ v17) & 1) == 0)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      v18 = v16 ^ v17 ^ 1;
      return v18 & 1;
    }

    sub_1001F8C60(v7, type metadata accessor for FeatureFlagsProcessRestarter.FeatureState);
    sub_1001F8C60(v10, type metadata accessor for FeatureFlagsProcessRestarter.FeatureState);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1001F8A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureFlagsProcessRestarter.RetryParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F8B1C()
{
  result = qword_1004D40A0;
  if (!qword_1004D40A0)
  {
    sub_100398DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D40A0);
  }

  return result;
}

unint64_t sub_1001F8B74()
{
  result = qword_1004D40B0;
  if (!qword_1004D40B0)
  {
    sub_1001E27F0(&unk_1004DC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D40B0);
  }

  return result;
}

uint64_t sub_1001F8BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F8C60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F8CE8()
{
  result = sub_1003981E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001F8D84()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001F8E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1003984F8();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v4 = sub_100398D88();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003984E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v24 - v11;
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_1001F9C38(&qword_1004D5030, &type metadata accessor for Configuration);
  sub_100398D78();
  v28 = *(v7 + 32);
  v25 = v14;
  v28(v14, v12, v6);
  v29 = *(v32 + 40);
  (*(v7 + 16))(v30, v14, v6);
  v15 = v26;
  v16 = *(v26 + 16);
  v24 = a1;
  v17 = v27;
  v16(v31, a1, v27);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v15 + 80) + v19 + 8) & ~*(v15 + 80);
  v21 = swift_allocObject();
  v28((v21 + v18), v30, v6);
  v22 = v31;
  *(v21 + v19) = v32;
  (*(v15 + 32))(v21 + v20, v22, v17);

  sub_100398D58();

  return (*(v7 + 8))(v25, v6);
}

uint64_t sub_1001F925C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v4 = sub_1003984F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100398548();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100398568();
  *(&v22 + 1) = v12;
  v23 = &protocol witness table for ConfigurationDirectoryURLBuilder;
  v13 = sub_1001E6B7C(&v21);
  (*(*(v12 - 8) + 104))(v13, enum case for ConfigurationDirectoryURLBuilder.serverDownloaded(_:), v12);
  sub_100398528();
  v14 = sub_1003984E8();
  *(&v22 + 1) = v14;
  v23 = sub_1001F9C38(&qword_1004D4298, &type metadata accessor for Configuration);
  v15 = sub_1001E6B7C(&v21);
  (*(*(v14 - 8) + 16))(v15, a1, v14);
  v16 = sub_100398538();
  v18 = v17;
  sub_100003894(&v21);
  if (v18 >> 60 == 15)
  {
    sub_100398CC8();
    (*(v5 + 104))(v7, enum case for ConfigurationError.noConfigurationFound(_:), v4);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_100398558();
    sub_1001ED244(&v21, &qword_1004D4230);
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    *&v21 = v16;
    *(&v21 + 1) = v18;
    sub_1001F9BE4();
    sub_100398D68();
    (*(v9 + 8))(v11, v8);
    return sub_1001DDE50(v16, v18);
  }
}

uint64_t sub_1001F95B4()
{

  return swift_deallocClassInstance();
}

void *sub_1001F9648(uint64_t a1)
{
  v9[0] = sub_100399468();
  v3 = *(v9[0] - 8);
  __chkstk_darwin(v9[0]);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100399438();
  __chkstk_darwin(v6);
  v7 = sub_100398DD8();
  __chkstk_darwin(v7 - 8);
  v1[2] = 0xD000000000000033;
  v1[3] = 0x8000000100429A00;
  v1[4] = a1;
  sub_100004218(0, &qword_1004D40C0);

  sub_100398DC8();
  v9[1] = _swiftEmptyArrayStorage;
  sub_1001F9C38(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_1001E54D4();
  sub_100399658();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9[0]);
  v1[5] = sub_100399488();
  return v1;
}

void sub_1001F98B4(uint64_t a1)
{
  v2 = sub_100398D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003993C8();
  sub_100004218(0, &qword_1004D5D30);
  v7 = sub_1003995C8();
  v8 = *(v3 + 16);
  v8(v5, a1, v2);
  if (os_log_type_enabled(v7, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_1001F9C38(&qword_1004D43A8, &type metadata accessor for XPCRichError);
    swift_allocError();
    v8(v11, v5, v2);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v6, "[ClientConfigurationXPCReceiver] Client cancelled connection. Reason: %@", v9, 0xCu);
    sub_1001ED244(v10, &qword_1004D8610);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1001F9B08()
{
  v1 = *(sub_1003984E8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_100398D88() - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_1001F925C(v0 + v2, v5, v6);
}

unint64_t sub_1001F9BE4()
{
  result = qword_1004D5038;
  if (!qword_1004D5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D5038);
  }

  return result;
}

uint64_t sub_1001F9C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F9C80(void *a1)
{
  v2 = sub_100397418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003974E8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (qword_1004D3EC0 != -1)
  {
    swift_once();
  }

  v13 = sub_100398CA8();
  sub_10000351C(v13, qword_1004DD9E0);
  v14 = sub_100398C88();
  v15 = sub_1003993C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = v6;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "[PCPF] Caching SLP ads to PersistentContent from backgrounded fetch", v16, 2u);
    v6 = v21;
  }

  sub_100397D58();
  v22 = 0xD000000000000011;
  v23 = 0x8000000100429A40;
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_1001E4D94();
  sub_1003974D8();
  (*(v3 + 8))(v5, v2);
  v17 = *(v7 + 8);
  v17(v10, v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_1001E27A8(&qword_1004D5040);
  swift_allocObject();
  sub_1003982C8();
  v24._countAndFlagsBits = 5262419;
  v24._object = 0xE300000000000000;
  v18._rawValue = a1;
  sub_1003982B8(v24, v18);

  return (v17)(v12, v6);
}

id DaemonInstanceWrapper.migrationContext.getter()
{
  v1 = OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext;
  v2 = *(v0 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext);
  }

  else
  {
    v4 = v0;
    sub_1001E6B30();
    v5 = sub_100399418();
    v6 = [objc_opt_self() processInfo];
    [v6 operatingSystemVersion];
    v7 = v15;
    v8 = v16;
    v9 = v17;

    v10 = objc_allocWithZone(type metadata accessor for MigrationContext());
    v11 = sub_1001E4C54(v5, v7, v8, v9);

    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void (*DaemonInstanceWrapper.migrationContext.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DaemonInstanceWrapper.migrationContext.getter();
  return sub_1001FA1A4;
}

void sub_1001FA1A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext);
  *(v1 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext) = v2;
}

id DaemonInstanceWrapper.configurationStorage.getter()
{
  v1 = OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage;
  v2 = *(v0 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage);
  }

  else
  {
    v4 = [objc_allocWithZone(APConfigurationStorage) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*DaemonInstanceWrapper.configurationStorage.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DaemonInstanceWrapper.configurationStorage.getter();
  return sub_1001FA318;
}

void sub_1001FA318(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage);
  *(v1 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage) = v2;
}

id DaemonInstanceWrapper.configSystemRequestTask.getter()
{
  v1 = OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask;
  v2 = *(v0 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask);
  }

  else
  {
    v4 = DaemonInstanceWrapper.configurationStorage.getter();
    v5 = [objc_allocWithZone(APConfigSystemBackgroundTask) initWithConfigurationStorage:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*DaemonInstanceWrapper.configSystemRequestTask.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DaemonInstanceWrapper.configSystemRequestTask.getter();
  return sub_1001FA4A8;
}

void sub_1001FA4A8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask);
  *(v1 + OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask) = v2;
}

id DaemonInstanceWrapper.init()()
{
  *&v0[OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___migrationContext] = 0;
  *&v0[OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configurationStorage] = 0;
  *&v0[OBJC_IVAR___APDaemonInstanceWrapper____lazy_storage___configSystemRequestTask] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonInstanceWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id DaemonInstanceWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonInstanceWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1001FA678()
{
  sub_1001E27A8(&qword_1004D41E0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1003C9930;
  *(v0 + 32) = 7;
  qword_1004DDA80 = v0;
  return result;
}

uint64_t sub_1001FA804()
{
  v0 = sub_1001FB3AC(&off_1004642B0);
  result = swift_arrayDestroy();
  qword_1004D5088 = v0;
  return result;
}

uint64_t sub_1001FA9BC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001FAA64;

  return sub_1001FB514();
}

uint64_t sub_1001FAA64(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001FAB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100399B58();
  sub_100399018();
  v6 = sub_100399B88();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1003999B8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1001FAD9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SponsorshipAdFetchActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001FADF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1001F3474;

  return v6();
}

uint64_t sub_1001FAEE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100005C50;

  return v7();
}

uint64_t sub_1001FAFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1001F2B74(a3, v23 - v10);
  v12 = sub_100399268();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1001ED244(v11, &qword_1004D70F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100399258();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100399228();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100398FD8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1001ED244(a3, &qword_1004D70F0);

    return v21;
  }

LABEL_8:
  sub_1001ED244(a3, &qword_1004D70F0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_1001FB2B4()
{
  v0 = [objc_allocWithZone(APClientInfo) init];
  [v0 setOrientation:0];
  [v0 setInterfaceIdiom:0];
  [v0 setScreenWidth:430];
  [v0 setScreenHeight:932];
  sub_100004218(0, &qword_1004D43F0);
  isa = sub_100399558(3).super.super.isa;
  [v0 setScale:isa];

  v2 = sub_100399178().super.isa;
  [v0 setKeyboards:v2];

  return v0;
}

Swift::Int sub_1001FB3AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&qword_1004D50C0);
    v3 = sub_1003996D8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100399B58();

      sub_100399018();
      result = sub_100399B88();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1003999B8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001FB530()
{
  v1 = objc_opt_self();
  sub_100004218(0, &qword_1004D50C8);
  v2 = [v1 configurationForClass:swift_getObjCClassFromMetadata() usingCache:1];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 isPeriodicFetchFromDaemonEnabled];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 BOOLValue];

      swift_unknownObjectRelease();
      v7 = v6;
      goto LABEL_11;
    }

    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v8 = sub_100398CA8();
    sub_10000351C(v8, qword_1004DDA10);
    v9 = sub_100398C88();
    v10 = sub_1003993E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve APSponsorshipPlacementConfig.isPeriodicFetchFromDaemonEnabled.", v11, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v7 = 1;
LABEL_11:
  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_1001FB708()
{
  v0 = sub_1001E27A8(&qword_1004D50B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = [objc_msgSend(objc_opt_self() "privateUserAccount")];
  swift_unknownObjectRelease();
  if (!v3)
  {
    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v15 = sub_100398CA8();
    sub_10000351C(v15, qword_1004DDA10);
    v16 = sub_100398C88();
    v17 = sub_1003993E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get current storefront.", v18, 2u);
    }

    goto LABEL_17;
  }

  v4 = sub_100398F58();
  v6 = v5;

  sub_100398218();
  v7 = sub_100398208();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1001ED244(v2, &qword_1004D50B8);
    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v9 = sub_100398CA8();
    sub_10000351C(v9, qword_1004DDA10);

    v10 = sub_100398C88();
    v11 = sub_1003993E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      v14 = sub_100005700(v4, v6, &v25);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to read storefront identifier from string: %s.", v12, 0xCu);
      sub_100003894(v13);
    }

    else
    {
    }

LABEL_17:
    v22 = 0;
    return v22 & 1;
  }

  v19 = sub_1003981F8();
  v21 = v20;
  (*(v8 + 8))(v2, v7);
  if (qword_1004D3F10 != -1)
  {
    swift_once();
  }

  v22 = sub_1001FAB8C(v19, v21, qword_1004D5088);

  return v22 & 1;
}

void sub_1001FBAD4(unint64_t a1, void *a2)
{
  v79 = a1;
  v76 = sub_100397798();
  v3 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:APDefaultsBundleID];
  if (v68)
  {
    v5 = objc_allocWithZone(sub_1003983E8());

    v6 = a2;
    v7 = sub_1003983D8();
    v8 = objc_opt_self();
    v80 = 0;
    v9 = [v8 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v80];
    v10 = v80;
    if (!v9)
    {
      v62 = v10;
      v63 = sub_1003973E8();

      v69 = v63;
      swift_willThrow();

      return;
    }

    v67 = v7;
    v11 = sub_100397558();
    v13 = v12;

    v65 = v11;
    v66 = v13;
    isa = sub_100397538().super.isa;
    v15 = sub_100398F28();
    [v68 setValue:isa forKey:v15];

    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v16 = sub_100398CA8();
    v17 = sub_10000351C(v16, qword_1004DDA10);
    v18 = v6;
    v19 = sub_100398C88();
    v20 = sub_1003993C8();

    v21 = os_log_type_enabled(v19, v20);
    v74 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 67109378;
      *(v22 + 4) = 36;
      *(v22 + 8) = 2080;
      v24 = [v18 identifier];
      v25 = v75;
      sub_100397778();

      v26 = sub_100397758();
      v28 = v27;
      v29 = v25;
      v18 = v74;
      (*(v3 + 8))(v29, v76);
      v30 = sub_100005700(v26, v28, &v80);

      *(v22 + 10) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Context ID: %-*s Daemon successfully saved sponsorship ads.", v22, 0x12u);
      sub_100003894(v23);
    }

    v32 = v67;
    if (v79 >> 62)
    {
      v33 = sub_1003997F8();
      if (v33)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v33 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_9:
        v73 = v33;
        if (v33 < 1)
        {
          __break(1u);
        }

        v34 = 0;
        v78 = v79 & 0xC000000000000001;
        v71 = (v3 + 8);
        *&v31 = 67109890;
        v70 = v31;
        v35 = v73;
        v72 = v17;
        do
        {
          if (v78)
          {
            v48 = sub_100399708();
          }

          else
          {
            v48 = *(v79 + 8 * v34 + 32);
          }

          v49 = v48;
          v50 = v18;
          v51 = v49;
          v52 = sub_100398C88();
          v53 = sub_1003993C8();

          if (os_log_type_enabled(v52, v53))
          {
            v36 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v80 = v77;
            *v36 = v70;
            *(v36 + 4) = 36;
            *(v36 + 8) = 2080;
            v37 = [v50 identifier];
            v38 = v75;
            sub_100397778();

            v39 = sub_100397758();
            v41 = v40;
            (*v71)(v38, v76);
            v42 = sub_100005700(v39, v41, &v80);

            *(v36 + 10) = v42;
            *(v36 + 18) = 1024;
            *(v36 + 20) = 36;
            *(v36 + 24) = 2080;
            v43 = [v51 identifier];
            v44 = sub_100398F58();
            v46 = v45;

            v47 = sub_100005700(v44, v46, &v80);
            v35 = v73;

            *(v36 + 26) = v47;
            _os_log_impl(&_mh_execute_header, v52, v53, "Context ID: %-*s Content ID: %-*s Daemon successfully saved content data.", v36, 0x22u);
            swift_arrayDestroy();

            v18 = v74;
          }

          else
          {
          }

          ++v34;
        }

        while (v35 != v34);
        sub_1001EFA90(v65, v66);

        goto LABEL_27;
      }
    }

    sub_1001EFA90(v65, v66);

LABEL_27:
    return;
  }

  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v54 = sub_100398CA8();
  sub_10000351C(v54, qword_1004DDA10);
  v55 = sub_100398C88();
  v56 = sub_1003993E8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v80 = v58;
    *v57 = 136315138;
    v59 = sub_100398F58();
    v61 = sub_100005700(v59, v60, &v80);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to find user defaults with suite name %s.", v57, 0xCu);
    sub_100003894(v58);
  }
}

uint64_t sub_1001FC250()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C50;

  return sub_1001FA9BC(v2);
}

uint64_t sub_1001FC2FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001F3474;

  return sub_1001FADF8(v2, v3, v4);
}

uint64_t sub_1001FC3BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001FC3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F3474;

  return sub_1001FAEE0(a1, v4, v5, v6);
}

uint64_t sub_1001FC4C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F3474;

  return sub_1001F2BE4(a1, v4);
}

uint64_t sub_1001FC580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C50;

  return sub_1001F2BE4(a1, v4);
}

void sub_1002021C0(uint64_t a1)
{
  v18 = +[NSDate date];
  v2 = [[APReportDate alloc] initWithDate:v18];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v19 = *v23;
    do
    {
      v6 = 0;
      v20 = v4;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        v8 = [objc_opt_class() reportFrequency];
        v9 = [v7 reportType];
        v10 = [*(a1 + 40) deliveryReportsWithType:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 lastObject];
          if (v12 && v8 == 1901)
          {
            v13 = 7;
            do
            {
              v14 = [(APReportDate *)v2 reportDayMinus:v13];
              v15 = *(a1 + 40);
              v16 = [NSNumber numberWithInteger:v14];
              v17 = [v15 deliveryReportWithType:v9 dayOfYear:v16];

              if (!v17)
              {
                break;
              }

              --v13;
            }

            while (v13);
            v5 = v19;
            v4 = v20;
          }
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
}

_OWORD *sub_100204F90(void *a1)
{
  result = [a1 experimentId];
  if (result)
  {
    v3 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = &_swiftEmptyDictionarySingleton;
    sub_10020E500(v3, 0x656D697265707865, 0xED000064695F746ELL, isUniquelyReferenced_nonNull_native, &v14);
    v5 = v14;
    result = [a1 treatmentId];
    if (result)
    {
      v6 = result;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v14 = v5;
      sub_10020E500(v6, 0x6E656D7461657274, 0xEC00000064695F74, v7, &v14);
      v8 = v14;
      v9 = [a1 rowid];
      v10 = [v9 integerValue];

      sub_100205154(v10);
      sub_1001E27A8(&qword_1004D5E00);
      isa = sub_100399178().super.isa;

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      sub_10020E500(isa, 0x7374726F706572, 0xE700000000000000, v12, &v14);
      v13 = v14;
      sub_1001E27A8(&unk_1004D5730);
      result = swift_allocObject();
      result[1] = xmmword_1003C9930;
      *(result + 4) = v13;
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

uint64_t sub_100205154(uint64_t a1)
{
  v3 = sub_1000035B8(v1, v1[3])[1];
  v35 = *(v3 + 16);
  if (v35)
  {
    v34 = v3 + 32;

    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v33 = v3;
    while (v5 < *(v3 + 16))
    {
      v7 = (v34 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v8 + 16);
      if (v10)
      {
        v36 = v5;
        swift_bridgeObjectRetain_n();
        v11 = 32;
        do
        {
          v12 = *(v8 + v11);
          if (sub_1002056C0(a1, v9, v12, 0))
          {
            v13 = sub_100398F28();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v37 = &_swiftEmptyDictionarySingleton;
            sub_10020E500(v13, 0x6E656D6563616C70, 0xE900000000000074, isUniquelyReferenced_nonNull_native, &v37);
            v15 = v37;
            if ((v12 - 7147) >= 3)
            {
              v16 = -1;
            }

            else
            {
              v16 = v12 - 7146;
            }

            v17 = [objc_allocWithZone(NSNumber) initWithInteger:v16];
            v18 = swift_isUniquelyReferenced_nonNull_native();
            v37 = v15;
            sub_10020E500(v17, 1953459315, 0xE400000000000000, v18, &v37);
            v19 = v37;
            sub_1002059B4(a1, v9, v12, 0);
            sub_1001E27A8(&unk_1004D5850);
            isa = sub_100398E48().super.isa;

            v21 = swift_isUniquelyReferenced_nonNull_native();
            v37 = v19;
            sub_10020E500(isa, 0x7461676572676761, 0xEA00000000007365, v21, &v37);
            v22 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_100213F2C(0, v6[2] + 1, 1, v6);
            }

            v24 = v6[2];
            v23 = v6[3];
            if (v24 >= v23 >> 1)
            {
              v6 = sub_100213F2C((v23 > 1), v24 + 1, 1, v6);
            }

            v6[2] = v24 + 1;
            v6[v24 + 4] = v22;
          }

          v11 += 8;
          --v10;
        }

        while (v10);
        result = swift_bridgeObjectRelease_n();
        v3 = v33;
        v5 = v36;
      }

      else
      {

        if (sub_1002056C0(a1, v9, 0, 1))
        {
          v25 = sub_100398F28();

          v26 = swift_isUniquelyReferenced_nonNull_native();
          v37 = &_swiftEmptyDictionarySingleton;
          sub_10020E500(v25, 0x6E656D6563616C70, 0xE900000000000074, v26, &v37);
          v27 = v37;
          sub_1002059B4(a1, v9, 0, 1);
          sub_1001E27A8(&unk_1004D5850);
          v28 = sub_100398E48().super.isa;

          v29 = swift_isUniquelyReferenced_nonNull_native();
          v37 = v27;
          sub_10020E500(v28, 0x7461676572676761, 0xEA00000000007365, v29, &v37);

          v30 = v37;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100213F2C(0, v6[2] + 1, 1, v6);
            v6 = result;
          }

          v32 = v6[2];
          v31 = v6[3];
          if (v32 >= v31 >> 1)
          {
            result = sub_100213F2C((v31 > 1), v32 + 1, 1, v6);
            v6 = result;
          }

          v6[2] = v32 + 1;
          v6[v32 + 4] = v30;
        }

        else
        {
        }
      }

      if (++v5 == v35)
      {

        return v6;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

BOOL sub_1002056C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1000035B8(v5, v5[3]);
  v11 = *(*v10 + 16);
  if (v11)
  {
    v12 = *(*v10 + 16 + 16 * v11 + 8);
    v13 = *(v12 + 16);
    if (v13)
    {
      v24 = a1;

      sub_100399798();
      v14 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithInteger:*(v12 + v14)];
        sub_100399778();
        sub_1003997A8();
        sub_1003997B8();
        sub_100399788();
        v14 += 8;
        --v13;
      }

      while (v13);

      a1 = v24;
    }

    if (a4)
    {
      v15 = 0;
    }

    else
    {
      v15 = [objc_allocWithZone(NSNumber) initWithInteger:a3];
    }

    v16 = v5[5];
    v17 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_100004218(0, &qword_1004D43F0);
    isa = sub_100399178().super.isa;

    v19 = [objc_allocWithZone(NSNumber) initWithInteger:{sub_1000035B8(v5, v5[3])[2]}];
    v20 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v21 = [v16 sumAllMetricsForTriggerRowId:v17 days:isa source:v19 adFormatType:v20 slot:v15];

    if (v21)
    {
      v22 = [v21 integerValue];

      return v22 > 0;
    }

    [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:14 description:0];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v15 = sub_1003995A8();
    sub_100398B98();
  }

  return 0;
}

void *sub_1002059B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = &_swiftEmptyDictionarySingleton;
  v31 = &_swiftEmptyDictionarySingleton;
  if (sub_100206154(0, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    isa = sub_100398E48().super.isa;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(isa, 0x5349565F544F4C53, 0xEF44415F454C4249, isUniquelyReferenced_nonNull_native, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(1u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v11 = sub_100398E48().super.isa;

    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v11, 0xD000000000000012, 0x800000010042B040, v12, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(3u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v13 = sub_100398E48().super.isa;

    swift_beginAccess();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v13, 0x4B43494C43, 0xE500000000000000, v14, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(2u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v15 = sub_100398E48().super.isa;

    swift_beginAccess();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v15, 0x4953534552504D49, 0xEA00000000004E4FLL, v16, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(4u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v17 = sub_100398E48().super.isa;

    swift_beginAccess();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v17, 0x44414F4C4E574F44, 0xE800000000000000, v18, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(5u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v19 = sub_100398E48().super.isa;

    swift_beginAccess();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v19, 0x4F4C4E574F444552, 0xEA00000000004441, v20, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(6u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v21 = sub_100398E48().super.isa;

    swift_beginAccess();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v21, 0xD000000000000010, 0x800000010042B060, v22, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(7u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v23 = sub_100398E48().super.isa;

    swift_beginAccess();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v23, 0x574F445F57454956, 0xED000044414F4C4ELL, v24, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(8u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v25 = sub_100398E48().super.isa;

    swift_beginAccess();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v25, 0x4445525F57454956, 0xEF44414F4C4E574FLL, v26, &v30);
    v8 = v30;
    v31 = v30;
    swift_endAccess();
  }

  if (sub_100206154(9u, a1, a2, a3, a4 & 1))
  {
    sub_1001E27A8(&unk_1004D5850);
    v27 = sub_100398E48().super.isa;

    swift_beginAccess();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v31;
    sub_10020E500(v27, 0xD000000000000015, 0x800000010042B080, v28, &v30);
    v8 = v30;
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_100206154(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a5)
  {
    v32 = 0;
  }

  else
  {
    v32 = [objc_allocWithZone(NSNumber) initWithInteger:a4];
  }

  v8 = *sub_1000035B8(v6, v6[3]);
  v29 = *(v8 + 16);
  if (v29)
  {
    v28 = v6[5];
    v27 = v8 + 32;

    v24 = 0;
    v10 = 0;
    v26 = a1;
    v23 = &_swiftEmptyDictionarySingleton;
    v25 = result;
    do
    {
      if (v10 >= *(result + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v11 = *(v27 + 16 * v10 + 8);
      v12 = *(v11 + 16);
      if (v12)
      {
        v33 = _swiftEmptyArrayStorage;

        sub_100399798();
        v13 = (v11 + 32);
        do
        {
          v14 = *v13++;
          [objc_allocWithZone(NSNumber) initWithInteger:v14];
          sub_100399778();
          sub_1003997A8();
          sub_1003997B8();
          sub_100399788();
          --v12;
        }

        while (v12);
      }

      else
      {
      }

      v15 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
      sub_100004218(0, &qword_1004D43F0);
      isa = sub_100399178().super.isa;

      v17 = [objc_allocWithZone(NSNumber) initWithInteger:{sub_1000035B8(v6, v6[3])[2]}];
      v18 = [objc_allocWithZone(NSNumber) initWithInteger:a3];
      v19 = [v28 sumAggregatesForType:v26 + 250 triggerRowId:v15 days:isa source:v17 adFormatType:v18 slot:v32];

      if (v19)
      {
        if ([v19 integerValue] < 1)
        {
        }

        else
        {
          result = [v19 integerValue];
          if (__OFADD__(v24, result))
          {
            goto LABEL_25;
          }

          v24 += result;
          v33 = 0x5F776F646E6977;
          v34 = 0xE700000000000000;
          v35._countAndFlagsBits = sub_100399998();
          sub_100399068(v35);

          v20 = v33;
          v21 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v23;
          sub_10020E500(v19, v20, v21, isUniquelyReferenced_nonNull_native, &v33);

          v23 = v33;
        }
      }

      else
      {

        _s7Reports20ExperimentationErrorC015experimentationC09errorType11descriptionyAA0bcF0O_SSSgtFZ_0(14, 0, 0);
      }

      ++v10;
      result = v25;
    }

    while (v10 != v29);

    if (v24 > 0)
    {
      return v23;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10020650C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020652C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1004D5740)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1004D5740);
    }
  }
}

uint64_t sub_1002065A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1002065EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1002066D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_100397798();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() metricClass];
  sub_100397788();
  sub_100397758();
  (*(v6 + 8))(v8, v5);
  v9 = sub_100398F28();

  sub_1001E27A8(&unk_1004D5850);
  v10.super.isa = sub_100398E48().super.isa;
  if (a2)
  {
    v11 = 0xFFFFFFFF80000000;
  }

  else
  {
    v11 = 0;
  }

  swift_getObjCClassMetadata();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPurpose:8503 metric:1800 contentIdentifier:0 contextIdentifier:0 handle:v9 secondaryHandle:0 branch:0 properties:v10.super.isa internalProperties:0 relayData:0 environment:0 order:0 options:v11];

  if (v12)
  {
    v24[1] = &OBJC_PROTOCOL___APMetricDaemonExtension;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_100398F28();
      [v14 updateClientBundleID:v15];

      swift_unknownObjectRelease();
    }

    sub_1003993D8();
    sub_100206B54();
    v16 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1003C9930;
    isa = sub_100398E48().super.isa;
    v19 = [(objc_class *)isa jsonStringWithOptions:1];

    v20 = sub_100398F58();
    v22 = v21;

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100206BA0();
    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    sub_100398B98();

    [*(v3 + OBJC_IVAR___APPExperimentationReportDelivery_metricReceiving) receivedMetric:v12];
  }

  else
  {
    [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:15 description:0];
  }

  return swift_unknownObjectRelease();
}

id sub_100206AA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationReportDelivery();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100206B54()
{
  result = qword_1004D5D30;
  if (!qword_1004D5D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D5D30);
  }

  return result;
}

unint64_t sub_100206BA0()
{
  result = qword_1004D5AE0;
  if (!qword_1004D5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D5AE0);
  }

  return result;
}

uint64_t sub_100206C1C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_100397748();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100397908();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100397918();
  v27 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001E27A8(&qword_1004D5D50);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v15, v8);
  v16 = v28;
  (*(v5 + 104))(v7, enum case for Calendar.Component.day(_:), v28);
  v17 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
  swift_beginAccess();
  v18 = v1 + v17;
  v19 = v29;
  (*(v2 + 16))(v4, v18, v29);
  sub_100397878();
  (*(v2 + 8))(v4, v19);
  (*(v5 + 8))(v7, v16);
  (*(v9 + 8))(v11, v27);
  v20 = sub_100397118();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_1001ED244(v14, &qword_1004D5D50);
    sub_1003993E8();
    sub_100206B54();
    v22 = sub_1003995A8();
    sub_100398B98();

    v23 = 1;
    v24 = v30;
  }

  else
  {
    v25 = v30;
    (*(v21 + 32))(v30, v14, v20);
    v23 = 0;
    v24 = v25;
  }

  return (*(v21 + 56))(v24, v23, 1, v20);
}

void sub_10020705C()
{
  v1 = sub_100397748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter);
  v6 = sub_100398F28();
  [v5 setDateFormat:v6];

  v7 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v7, v1);
  isa = sub_100397688().super.isa;
  (*(v2 + 8))(v4, v1);
  v9 = [v5 stringFromDate:isa];

  v10 = sub_100398F58();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((v12 & 0x1000000000000000) != 0)
    {
      v45 = 0;
      sub_1002089E4(v10, v12, 10);
      v41 = v43;
LABEL_63:

      if ((v41 & 1) == 0)
      {
        return;
      }

      goto LABEL_64;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      v44[0] = v10;
      v44[1] = v12 & 0xFFFFFFFFFFFFFFLL;
      if (v10 == 43)
      {
        if (v13)
        {
          if (--v13)
          {
            v30 = 0;
            v31 = v44 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return;
      }

      if (v10 != 45)
      {
        if (v13)
        {
          v37 = 0;
          v38 = v44;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v13)
      {
        if (--v13)
        {
          v22 = 0;
          v23 = v44 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v16 = sub_100399768();
      }

      v17 = *v16;
      if (v17 == 43)
      {
        if (v14 >= 1)
        {
          v13 = v14 - 1;
          if (v14 != 1)
          {
            v26 = 0;
            if (v16)
            {
              v27 = v16 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_61;
                }

                v29 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_61;
                }

                v26 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_61;
                }

                ++v27;
                if (!--v13)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v17 != 45)
      {
        if (v14)
        {
          v34 = 0;
          if (v16)
          {
            while (1)
            {
              v35 = *v16 - 48;
              if (v35 > 9)
              {
                goto LABEL_61;
              }

              v36 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_61;
              }

              v34 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LOBYTE(v13) = 1;
        goto LABEL_62;
      }

      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v18 = 0;
          if (v16)
          {
            v19 = v16 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_61;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                goto LABEL_61;
              }

              ++v19;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v13) = 0;
LABEL_62:
          v45 = v13;
          v41 = v13;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_64:
  sub_1003993E8();
  sub_100206B54();
  v42 = sub_1003995A8();
  sub_100398B98();
}

uint64_t sub_100207528(uint64_t a1)
{
  v51 = a1;
  v1 = sub_100397838();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v48 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001E27A8(&qword_1004D59A0);
  __chkstk_darwin(v3 - 8);
  v46 = &v41 - v4;
  v44 = sub_100397848();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100397918();
  v47 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4B98);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_100397968();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  sub_100397938();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1001ED244(v12, &qword_1004D4B98);
    result = sub_1003997E8();
    __break(1u);
  }

  else
  {
    v52 = v14;
    v20 = *(v14 + 32);
    v42 = v19;
    v43 = v13;
    v20(v19, v12, v13);
    v21 = v44;
    (*(v5 + 104))(v7, enum case for Calendar.Identifier.gregorian(_:), v44);
    sub_100397858();
    (*(v5 + 8))(v7, v21);
    v22 = v47;
    v23 = v45;
    (*(v47 + 32))(v45 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar, v9, v53);
    v24 = v46;
    sub_1003977A8();
    v26 = v49;
    v25 = v50;
    (*(v49 + 56))(v24, 0, 1, v50);
    swift_beginAccess();
    sub_1003978E8();
    v27 = v42;
    (*(v52 + 16))(v17, v42, v13);
    sub_1003978F8();
    swift_endAccess();
    v28 = [objc_allocWithZone(NSDateFormatter) init];
    *(v23 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter) = v28;
    v29 = v28;
    v30 = v48;
    sub_1003977A8();
    isa = sub_1003977D8().super.isa;
    (*(v26 + 8))(v30, v25);
    [v29 setLocale:isa];

    v32 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter;
    v33 = *(v23 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter);
    v34 = sub_100397958().super.isa;
    [v33 setTimeZone:v34];

    v35 = *(v23 + v32);
    v36 = v53;
    (*(v22 + 16))(v9, v23 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar, v53);
    v37 = sub_100397898().super.isa;
    (*(v22 + 8))(v9, v36);
    [v35 setCalendar:v37];

    (*(v52 + 8))(v27, v43);
    v38 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
    v39 = sub_100397748();
    (*(*(v39 - 8) + 32))(v23 + v38, v51, v39);
    return v23;
  }

  return result;
}

void sub_100207BB0(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  v82 = a1;
  v81 = sub_100397908();
  v3 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100397918();
  v5 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v61 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter);
  v18 = sub_100398F28();
  v66 = v17;
  [v17 setDateFormat:v18];

  v19 = 1 - v82;
  if (__OFSUB__(1, v82))
  {
    goto LABEL_85;
  }

  if (v19 <= 0)
  {
    v65 = v16;
    v20 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
    v76 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar;
    swift_beginAccess();
    v75 = v20;
    swift_beginAccess();
    v74 = *(v5 + 16);
    v73 = enum case for Calendar.Component.day(_:);
    v71 = (v11 + 16);
    v72 = (v3 + 104);
    v82 = (v11 + 8);
    v70 = (v3 + 8);
    v77 = v5 + 16;
    v69 = (v5 + 8);
    v68 = (v11 + 48);
    v64 = (v11 + 32);
    v62 = v83 + 1;
    v67 = _swiftEmptyArrayStorage;
    v63 = v2;
    while (1)
    {
      while (1)
      {
        v21 = v19;
        v22 = v78;
        v23 = v80;
        v74(v78, v2 + v76, v80);
        v24 = v79;
        v25 = v81;
        (*v72)(v79, v73, v81);
        (*v71)(v14, v2 + v75, v10);
        sub_1003978D8();
        v26 = *v82;
        (*v82)(v14, v10);
        (*v70)(v24, v25);
        (*v69)(v22, v23);
        if ((*v68)(v9, 1, v10) != 1)
        {
          break;
        }

        sub_1001ED244(v9, &qword_1004D4CE0);
        v19 = v21 + 1;
        if (!v21)
        {
          return;
        }
      }

      v27 = v65;
      (*v64)(v65, v9, v10);
      isa = sub_100397688().super.isa;
      v29 = [v66 stringFromDate:isa];

      v30 = sub_100398F58();
      v32 = v31;

      v33 = HIBYTE(v32) & 0xF;
      v34 = v30 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v35 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {

        goto LABEL_69;
      }

      if ((v32 & 0x1000000000000000) == 0)
      {
        break;
      }

      v84 = 0;
      v38 = sub_1002089E4(v30, v32, 10);
      v56 = v60;
LABEL_68:

      if ((v56 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1001E3A58(0, *(v67 + 2) + 1, 1, v67);
        }

        v58 = *(v67 + 2);
        v57 = *(v67 + 3);
        if (v58 >= v57 >> 1)
        {
          v67 = sub_1001E3A58((v57 > 1), v58 + 1, 1, v67);
        }

        v26(v27, v10);
        v59 = v67;
        *(v67 + 2) = v58 + 1;
        *&v59[8 * v58 + 32] = v38;
        goto LABEL_75;
      }

LABEL_69:
      v26(v27, v10);
LABEL_75:
      v2 = v63;
      v19 = v21 + 1;
      if (!v21)
      {
        return;
      }
    }

    if ((v32 & 0x2000000000000000) != 0)
    {
      v83[0] = v30;
      v83[1] = v32 & 0xFFFFFFFFFFFFFFLL;
      if (v30 == 43)
      {
        if (!v33)
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
          goto LABEL_86;
        }

        if (--v33)
        {
          v38 = 0;
          v48 = v62;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              break;
            }

            ++v48;
            if (!--v33)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else if (v30 == 45)
      {
        if (!v33)
        {
          goto LABEL_83;
        }

        if (--v33)
        {
          v38 = 0;
          v42 = v62;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              break;
            }

            v38 = v44 - v43;
            if (__OFSUB__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v33)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else if (v33)
      {
        v38 = 0;
        v53 = v83;
        while (1)
        {
          v54 = *v53 - 48;
          if (v54 > 9)
          {
            break;
          }

          v55 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            break;
          }

          v38 = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            break;
          }

          ++v53;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if ((v30 & 0x1000000000000000) != 0)
    {
      v36 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = sub_100399768();
    }

    v37 = *v36;
    if (v37 == 43)
    {
      if (v34 < 1)
      {
        goto LABEL_84;
      }

      v33 = v34 - 1;
      if (v34 == 1)
      {
        goto LABEL_66;
      }

      v38 = 0;
      if (v36)
      {
        v45 = v36 + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            goto LABEL_66;
          }

          v47 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            goto LABEL_66;
          }

          v38 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            goto LABEL_66;
          }

          ++v45;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v37 == 45)
    {
      if (v34 < 1)
      {
        goto LABEL_82;
      }

      v33 = v34 - 1;
      if (v34 == 1)
      {
        goto LABEL_66;
      }

      v38 = 0;
      if (v36)
      {
        v39 = v36 + 1;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            goto LABEL_66;
          }

          v41 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            goto LABEL_66;
          }

          v38 = v41 - v40;
          if (__OFSUB__(v41, v40))
          {
            goto LABEL_66;
          }

          ++v39;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else
    {
      if (!v34)
      {
LABEL_66:
        v38 = 0;
        LOBYTE(v33) = 1;
        goto LABEL_67;
      }

      v38 = 0;
      if (v36)
      {
        do
        {
          v51 = *v36 - 48;
          if (v51 > 9)
          {
            goto LABEL_66;
          }

          v52 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            goto LABEL_66;
          }

          v38 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            goto LABEL_66;
          }

          ++v36;
        }

        while (--v34);
      }
    }

    LOBYTE(v33) = 0;
LABEL_67:
    v84 = v33;
    v56 = v33;
    goto LABEL_68;
  }

LABEL_86:
  __break(1u);
}

uint64_t sub_100208458@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v23 = a2;
  v3 = sub_100397908();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100397918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar;
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v14, v7);
  (*(v4 + 104))(v6, enum case for Calendar.Component.day(_:), v3);
  sub_1003978D8();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v15 = sub_100397748();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1001ED244(v13, &qword_1004D4CE0);
    sub_1003993E8();
    sub_100206B54();
    v17 = sub_1003995A8();
    sub_100398B98();

    v18 = 1;
    v19 = v23;
  }

  else
  {
    v20 = v23;
    (*(v16 + 32))(v23, v13, v15);
    v18 = 0;
    v19 = v20;
  }

  return (*(v16 + 56))(v19, v18, 1, v15);
}

uint64_t sub_1002087CC()
{
  v1 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
  v2 = sub_100397748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar;
  v4 = sub_100397918();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExperimentationDateHelper()
{
  result = qword_1004D58A8;
  if (!qword_1004D58A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020890C()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    result = sub_100397918();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_1002089E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1003990F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001E40F4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100399768();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void ExperimentationDataRemoval.removeExperimentationDataBefore(_:)(uint64_t a1)
{
  v3 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_100397748();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v35 - v11;
  v13 = *(v1 + OBJC_IVAR___APExperimentationDataRemoval_database);
  sub_100004218(0, &unk_1004D5AF0);
  if ([v13 getTableForClass:swift_getObjCClassFromMetadata()])
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v44 = v14;
      sub_100004218(0, &qword_1004D59B0);
      v15 = [v13 getTableForClass:swift_getObjCClassFromMetadata()];
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v43 = v17;
          sub_100004218(0, &unk_1004D5B00);
          v18 = [v13 getTableForClass:swift_getObjCClassFromMetadata()];
          if (v18)
          {
            v42 = v7;
            v19 = v18;
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (v20)
            {
              v40 = v20;
              v41 = v19;
              sub_100004218(0, &qword_1004D59B8);
              v21 = [v13 getTableForClass:swift_getObjCClassFromMetadata()];
              if (v21)
              {
                v22 = v21;
                objc_opt_self();
                v23 = swift_dynamicCastObjCClass();
                if (v23)
                {
                  v36 = v23;
                  v38 = v22;
                  v24 = v42;
                  (*(v42 + 16))(v12, a1, v6);
                  type metadata accessor for ExperimentationDateHelper();
                  swift_allocObject();
                  v25 = sub_100207528(v12);
                  v39 = sub_1002099C4();
                  v37 = v25;
                  sub_100207BB0(v39);
                  v27 = v26;
                  v28 = *(v26 + 16);
                  if (v28)
                  {
                    v35[0] = a1;
                    v35[1] = v16;
                    v45 = _swiftEmptyArrayStorage;
                    sub_100399798();
                    v29 = 32;
                    do
                    {
                      [objc_allocWithZone(NSNumber) initWithInteger:*(v27 + v29)];
                      sub_100399778();
                      sub_1003997A8();
                      sub_1003997B8();
                      sub_100399788();
                      v29 += 8;
                      --v28;
                    }

                    while (v28);

                    v24 = v42;
                    a1 = v35[0];
                  }

                  else
                  {
                  }

                  sub_100004218(0, &qword_1004D43F0);
                  isa = sub_100399178().super.isa;

                  [v40 removeReportsThatAreNotInDays:isa];

                  if (__OFSUB__(0, v39))
                  {
                    __break(1u);
                  }

                  else
                  {
                    sub_100208458(a1, v5);
                    if ((*(v24 + 48))(v5, 1, v6) == 1)
                    {
                      sub_1001E28A8(v5);
                      sub_1003993E8();
                      sub_100004218(0, &qword_1004D5D30);
                      v32 = sub_1003995A8();
                      sub_100398B98();

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      (*(v24 + 32))(v10, v5, v6);
                      v33 = sub_100397688().super.isa;
                      [v43 removeDataOlderThan:v33];

                      v34 = sub_100397688().super.isa;
                      [v36 deleteReportsOlderThan:v34];

                      [v44 removeTriggersThatHaveNoData];

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      (*(v24 + 8))(v10, v6);
                    }
                  }

                  return;
                }

                swift_unknownObjectRelease();
              }
            }

            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30);
  v44 = sub_1003995A8();
  sub_100398B98();
  v30 = v44;
}

id ExperimentationDataRemoval.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationDataRemoval();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100209870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExperimentationNodeFetcher();
  v16[3] = v4;
  v16[4] = &off_100478DA8;
  v16[0] = a2;
  v5 = type metadata accessor for ExperimentationDataRemoval();
  v6 = objc_allocWithZone(v5);
  v7 = sub_1001F54B4(v16, v4);
  __chkstk_darwin(v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v15[3] = v4;
  v15[4] = &off_100478DA8;
  v15[0] = v11;
  *&v6[OBJC_IVAR___APExperimentationDataRemoval_database] = a1;
  sub_100003554(v15, &v6[OBJC_IVAR___APExperimentationDataRemoval_nodeFetcher]);
  v14.receiver = v6;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_100003894(v15);
  sub_100003894(v16);
  return v12;
}

uint64_t sub_1002099C4()
{
  sub_100004218(0, &qword_1004D59F0);
  v0 = objc_opt_self();
  if (![v0 configurationForClass:swift_getObjCClassFromMetadata()])
  {
    return 90;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && (v2 = [v1 reportingWindows], v3 = sub_100399198(), v2, v4 = sub_10020F2F8(v3), , v4))
  {
    v5 = v4[2];
    if (v5)
    {
      v6 = v4[v5 + 3];
    }

    else
    {
      v6 = 90;
    }
  }

  else
  {
    v6 = 90;
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t ExperimentationErrorType.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0xD000000000000031;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 15:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 11:
      result = 0xD00000000000003CLL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD00000000000003DLL;
      break;
    case 12:
      result = 0xD000000000000029;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = sub_100399A68();
      __break(1u);
      break;
  }

  return result;
}

Swift::Int sub_100209CF0()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B68(v1);
  return sub_100399B88();
}

Swift::Int sub_100209D64()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B68(v1);
  return sub_100399B88();
}

uint64_t sub_100209DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10020A398(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ExperimentationError.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationError();
  return objc_msgSendSuper2(&v2, "init");
}

id ExperimentationError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationError();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s7Reports20ExperimentationErrorC015experimentationC09errorType11descriptionyAA0bcF0O_SSSgtFZ_0(uint64_t a1, uint64_t a2, void *isa)
{
  v6 = sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30);
  v7 = sub_1003995A8();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = ExperimentationErrorType.description.getter(a1);
    v11 = sub_100005700(v9, v10, &v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    if (isa)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0;
    }

    if (isa)
    {
      v13 = isa;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_100005700(v12, v13, &v24);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v6, "Error: %s, Description: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = [objc_opt_self() processInfo];
  v16 = [v15 isRunningTests];

  if ((v16 & 1) == 0)
  {
    if (isa)
    {
      sub_1001E27A8(&unk_1004D5A30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      *(inited + 32) = 0x7470697263736544;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEB000000006E6F69;
      *(inited + 48) = a2;
      *(inited + 56) = isa;

      isa = sub_1002142A8(inited);
      swift_setDeallocating();
      sub_1001ED244(inited + 32, &unk_1004D5DD0);
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1003996F8(25);

    v24 = 0xD000000000000017;
    v25 = 0x800000010042B790;
    v26._countAndFlagsBits = sub_100399998();
    sub_100399068(v26);

    v18 = sub_100398F28();

    if (isa)
    {
      sub_10021324C(isa);

      isa = sub_100398E48().super.isa;
    }

    v19 = sub_100398F28();
    CreateDiagnosticReport();

    v20 = objc_opt_self();
    v21 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1003C9930;
    *(v22 + 32) = 0x707954726F727245;
    *(v22 + 40) = 0xE900000000000065;
    *(v22 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_1002143B8(v22);
    swift_setDeallocating();
    sub_1001ED244(v22 + 32, &qword_1004D5A28);
    sub_100004218(0, &qword_1004D5DC0);
    v23 = sub_100398E48().super.isa;

    [v20 sendEvent:v21 customPayload:v23];
  }
}

uint64_t sub_10020A398(uint64_t result)
{
  if ((result - 18) < 0xFFFFFFFFFFFFFFEFLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10020A3D4()
{
  result = qword_1004D59F8;
  if (!qword_1004D59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D59F8);
  }

  return result;
}

id sub_10020A51C(void *a1)
{
  v2 = [objc_opt_self() storage];
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ExperimentationNodeFetcher();
  v5 = swift_allocObject();
  v6 = type metadata accessor for ExperimentationReportTelemetryDelivery();
  v7 = [objc_allocWithZone(v6) init];
  v16[3] = v4;
  v16[4] = &off_100478DA8;
  v16[0] = v5;
  v8 = objc_allocWithZone(type metadata accessor for ExperimentationReportBuilder());
  v9 = sub_1001F54B4(v16, v4);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10020DAF8(a1, v2, *v11, v7, v8, ObjectType, v6);
  sub_100003894(v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

void sub_10020A6F0(uint64_t a1)
{
  v2 = sub_100397748();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v35[-v7];
  v9 = sub_1003993F8();
  v10 = sub_100004218(0, &qword_1004D5D30);
  v38 = "";
  v41 = v10;
  v11 = sub_1003995A8();
  v12 = *(v3 + 16);
  v12(v8, a1, v2);
  v13 = os_log_type_enabled(v11, v9);
  v43 = v3;
  v39 = v12;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37 = v6;
    v17 = v16;
    v44 = v16;
    *v15 = 136315138;
    sub_10020DA44();
    v18 = sub_100399998();
    v36 = v9;
    v20 = v19;
    v40 = *(v3 + 8);
    v40(v8, v42);
    v21 = sub_100005700(v18, v20, &v44);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v36, "[ExperimentationReportBuilder] Start preparing reports date: %s.", v15, 0xCu);
    sub_100003894(v17);
    v6 = v37;

    v2 = v42;
  }

  else
  {

    v40 = *(v3 + 8);
    v40(v8, v2);
  }

  sub_10020AC24(a1);
  v22 = sub_10020E1FC();
  v23 = *(v22 + 2);
  if (v23)
  {
    v24 = (v22 + 32);
    do
    {
      v25 = *v24++;
      sub_10020B6AC(v25, a1);
      --v23;
    }

    while (v23);
  }

  v26 = sub_1003993F8();
  v27 = sub_1003995A8();
  v39(v6, a1, v2);
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315138;
    sub_10020DA44();
    v30 = sub_100399998();
    v31 = v6;
    v33 = v32;
    v40(v31, v2);
    v34 = sub_100005700(v30, v33, &v44);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v26, "[ExperimentationReportBuilder] Reports process complete: %s..", v28, 0xCu);
    sub_100003894(v29);
  }

  else
  {

    v40(v6, v2);
  }

  sub_10020C944(a1);
}

void sub_10020AC24(uint64_t a1)
{
  v77 = a1;
  v75 = sub_100397908();
  v2 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100397918();
  v62 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001E27A8(&qword_1004D4CE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = sub_100397748();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v70 = &v54 - v17;
  v18 = __chkstk_darwin(v16);
  v69 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  v22 = *(v1 + OBJC_IVAR___APExperimentationReportBuilder_lock);
  os_unfair_lock_lock(v22 + 4);
  v76 = OBJC_IVAR___APExperimentationReportBuilder_isCanceled;
  v23 = *(v1 + OBJC_IVAR___APExperimentationReportBuilder_isCanceled);
  os_unfair_lock_unlock(v22 + 4);
  if ((v23 & 1) == 0)
  {
    v63 = v2;
    v24 = *(v1 + OBJC_IVAR___APExperimentationReportBuilder_dateHelper);
    v25 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
    swift_beginAccess();
    (*(v12 + 24))(v24 + v25, v77, v11);
    swift_endAccess();
    v68 = v1;
    v26 = *(v1 + OBJC_IVAR___APExperimentationReportBuilder_deliveredReportTable);
    v27 = sub_100398F28();
    v28 = [v26 lastDeliveryReportWithType:v27];

    if (v28)
    {
      v71 = v24;
      v29 = objc_allocWithZone(APReportDate);
      isa = sub_100397688().super.isa;
      v31 = [v29 initWithDate:isa];

      v32 = [v28 reportDate];
      sub_100397708();

      v33 = sub_100397688().super.isa;
      v34 = *(v12 + 8);
      v60 = v12 + 8;
      v59 = v34;
      v34(v21, v11);
      v35 = [v31 numberOfDaysSinceDate:v33];

      v36 = 1 - v35;
      if (!__OFSUB__(1, v35))
      {
        if (v36 > 0)
        {

          return;
        }

        v55 = v31;
        v56 = v28;
        v37 = v71;
        v67 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar;
        swift_beginAccess();
        v38 = v68;
        if (!v36)
        {
LABEL_16:

          return;
        }

        v66 = (v62 + 2);
        v65 = enum case for Calendar.Component.day(_:);
        v39 = v63++;
        v64 = (v39 + 13);
        v61 = (v12 + 48);
        ++v62;
        v58 = (v12 + 32);
        v57 = "";
        v40 = v36;
        v41 = v75;
        while (v40 >= v36)
        {
          if ((*(v38 + v76) & 1) == 0)
          {
            v45 = v40 + 1;
            v46 = v11;
            v48 = v72;
            v47 = v73;
            (*v66)(v72, v37 + v67, v73);
            v49 = v10;
            v50 = v74;
            (*v64)(v74, v65, v41);
            sub_1003978D8();
            v51 = v50;
            v10 = v49;
            (*v63)(v51, v41);
            v52 = v48;
            v11 = v46;
            (*v62)(v52, v47);
            if ((*v61)(v49, 1, v46) == 1)
            {
              sub_1001E28A8(v49);
              sub_1003993E8();
              sub_100004218(0, &qword_1004D5D30);
              v53 = sub_1003995A8();
              v38 = v68;
              sub_100398B98();
            }

            else
            {
              v42 = *v58;
              v43 = v70;
              (*v58)(v70, v10, v46);
              v44 = v69;
              v42(v69, v43, v46);
              sub_10020B3B4(v44);
              v59(v44, v46);
            }

            v40 = v45;
            v37 = v71;
            if (v45)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      sub_100208458(v77, v8);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        sub_1001E28A8(v8);
      }

      else
      {
        (*(v12 + 32))(v15, v8, v11);
        sub_10020B3B4(v15);
        (*(v12 + 8))(v15, v11);
      }
    }
  }
}

void sub_10020B3B4(uint64_t a1)
{
  v2 = v1;
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v4 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003C9930;
  v6 = sub_1003975F8();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100206BA0();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_100398B98();

  v9 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_dateHelper);
  v10 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
  swift_beginAccess();
  v11 = sub_100397748();
  (*(*(v11 - 8) + 24))(v9 + v10, a1, v11);
  swift_endAccess();
  sub_10020705C();
  if (v13)
  {
    sub_1003993E8();
    v14 = sub_1003995A8();
    sub_100398B98();
  }

  else
  {
    v15 = v12;
    sub_10020F6A0(a1);
    v16 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_deliveredReportTable);
    v17 = sub_100398F28();
    v18 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
    v19 = [objc_allocWithZone(NSNumber) initWithInteger:1901];
    isa = sub_100397688().super.isa;
    v14 = [v16 storeDeliveryReportType:v17 dayOfYear:v18 frequency:v19 reportDate:isa];

    if (!v14)
    {
      [*(v2 + OBJC_IVAR___APExperimentationReportBuilder_telemetryDelivery) logExperimentationErrorWithErrorType:6 description:0];
      return;
    }
  }
}

void sub_10020B6AC(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v105 = sub_100397908();
  v4 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100397918();
  v89 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v82 - v11;
  v13 = sub_100397748();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v98 = &v82 - v19;
  v20 = __chkstk_darwin(v18);
  v97 = &v82 - v21;
  __chkstk_darwin(v20);
  v94 = &v82 - v22;
  v23 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_lock);
  os_unfair_lock_lock(v23 + 4);
  v106 = OBJC_IVAR___APExperimentationReportBuilder_isCanceled;
  v24 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_isCanceled);
  os_unfair_lock_unlock(v23 + 4);
  if ((v24 & 1) == 0)
  {
    v100 = v17;
    v90 = v4;
    v107 = v12;
    v93 = v14;
    v99 = a1;
    v25 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_triggerTable);
    v102 = v13;
    v26 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_metricReceiving);
    v27 = v2;
    v28 = type metadata accessor for ExperimentationReportDelivery();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR___APPExperimentationReportDelivery_triggerTable] = v25;
    v30 = v102;
    swift_unknownObjectUnownedInit();
    *&v29[OBJC_IVAR___APPExperimentationReportDelivery_metricReceiving] = v26;
    v112.receiver = v29;
    v112.super_class = v28;
    v31 = v108;
    v32 = v25;
    v33 = v99;
    swift_unknownObjectRetain();
    v96 = objc_msgSendSuper2(&v112, "init");
    v34 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_dateHelper);
    v35 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
    swift_beginAccess();
    (*(v14 + 24))(&v34[v35], v31, v30);
    swift_endAccess();
    v95 = v27;
    v36 = *(v27 + OBJC_IVAR___APExperimentationReportBuilder_deliveredReportTable);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1003996F8(24);

    v110 = 0xD000000000000016;
    v111 = 0x800000010042B950;
    v109 = v33;
    v113._countAndFlagsBits = sub_100399998();
    sub_100399068(v113);

    v37 = sub_100398F28();

    v38 = [v36 lastDeliveryReportWithType:v37];

    if (v38)
    {
      v39 = v30;
      v85 = v38;
      v100 = v34;
      v40 = v14;
      v41 = sub_1003993D8();
      v42 = sub_100004218(0, &qword_1004D5D30);
      v87 = "";
      v88 = v42;
      v43 = sub_1003995A8();
      if (os_log_type_enabled(v43, v41))
      {
        v44 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v110 = v92;
        *v44 = 136315138;
        v45 = v85;
        v46 = [v85 reportDate];
        LODWORD(v91) = v41;
        v47 = v94;
        sub_100397708();

        sub_10020DA44();
        v48 = sub_100399998();
        v50 = v49;
        (*(v40 + 8))(v47, v39);
        v51 = sub_100005700(v48, v50, &v110);

        *(v44 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v43, v91, "[ExperimentationReportBuilder] Last report was sent on: %s.", v44, 0xCu);
        sub_100003894(v92);

        v52 = v95;
        v53 = v93;
      }

      else
      {

        v47 = v94;
        v52 = v95;
        v53 = v93;
        v45 = v85;
      }

      v54 = objc_allocWithZone(APReportDate);
      isa = sub_100397688().super.isa;
      v56 = [v54 initWithDate:isa];

      v57 = [v45 reportDate];
      sub_100397708();

      v58 = sub_100397688().super.isa;
      v60 = *(v40 + 8);
      v59 = v40 + 8;
      v86 = v60;
      v60(v47, v39);
      v61 = [v56 numberOfDaysSinceDate:v58];

      v62 = 8;
      if (v61 < 8)
      {
        v62 = v61;
      }

      v63 = 1 - v62;
      if (!__OFSUB__(1, v62))
      {
        if (v63 > 0)
        {

          return;
        }

        v83 = v56;
        v84 = v59;
        v64 = v100;
        v94 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_gregorianCalendar;
        swift_beginAccess();
        if (!v63)
        {
LABEL_21:

          return;
        }

        v93 = (v89 + 2);
        LODWORD(v92) = enum case for Calendar.Component.day(_:);
        v91 = (v90 + 13);
        ++v90;
        v65 = (v89 + 1);
        v66 = (v53 + 6);
        v89 = (v53 + 4);
        v67 = v63;
        while (v67 >= v63)
        {
          if ((*(v52 + v106) & 1) == 0)
          {
            v71 = v67 + 1;
            v72 = v101;
            v73 = v103;
            (*v93)(v101, &v94[v64], v103);
            v75 = v104;
            v74 = v105;
            (*v91)(v104, v92, v105);
            sub_1003978D8();
            v76 = v75;
            v77 = v107;
            (*v90)(v76, v74);
            (*v65)(v72, v73);
            v78 = v102;
            if ((*v66)(v77, 1, v102) == 1)
            {
              sub_1001E28A8(v77);
              sub_1003993E8();
              v79 = sub_1003995A8();
              v52 = v95;
              sub_100398B98();
            }

            else
            {
              v68 = *v89;
              v69 = v98;
              (*v89)(v98, v77, v78);
              v70 = v97;
              v68(v97, v69, v78);
              sub_10020C15C(v70, v99, v96);
              v86(v70, v78);
            }

            v67 = v71;
            v64 = v100;
            if (v71)
            {
              continue;
            }
          }

          goto LABEL_21;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      sub_100208458(v31, v10);
      if ((*(v14 + 48))(v10, 1, v30) == 1)
      {

        sub_1001E28A8(v10);
      }

      else
      {
        v80 = v100;
        (*(v14 + 32))(v100, v10, v30);
        v81 = v96;
        sub_10020C15C(v80, v33, v96);

        (*(v14 + 8))(v80, v30);
      }
    }
  }
}

void sub_10020C15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v72 - v13;
  v15 = *(v3 + OBJC_IVAR___APExperimentationReportBuilder_dateHelper);
  v16 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
  swift_beginAccess();
  v17 = v9[3];
  v86 = v16;
  v17(v15 + v16, a1, v8);
  swift_endAccess();
  sub_10020705C();
  if (v19)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v20 = sub_1003995A8();
    sub_100398B98();
  }

  else
  {
    v82 = v12;
    v83 = a3;
    v84 = v18;
    sub_100003554(v4 + OBJC_IVAR___APExperimentationReportBuilder_nodeFetcher, v90);
    v21 = sub_1001F54B4(v90, v91);
    __chkstk_darwin(v21);
    (*(v23 + 16))(v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));

    v85 = a2;
    v25 = sub_10020D17C(v24, a2);
    v27 = v26;
    v81 = v28;
    v30 = v29;
    sub_100003894(v90);
    if (v25)
    {
      v77 = v30;
      v78 = v27;
      v79 = v25;
      v73 = v4;
      v31 = sub_1003993D8();
      v32 = sub_100004218(0, &qword_1004D5D30);
      v72[2] = "";
      v72[1] = v32;
      v33 = sub_1003995A8();
      v34 = a1;
      v35 = v33;
      v36 = v9[2];
      v80 = v34;
      v76 = v9 + 2;
      v75 = v36;
      (v36)(v14);
      if (os_log_type_enabled(v35, v31))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v90[0] = v38;
        *v37 = 136315138;
        sub_10020DA44();
        v39 = sub_100399998();
        v41 = v40;
        v42 = v9[1];
        v74 = (v9 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v43 = v14;
        v44 = v42;
        v42(v43, v8);
        v45 = sub_100005700(v39, v41, v90);

        *(v37 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v35, v31, "[ExperimentationReportBuilder] Deliver report for date: %s.", v37, 0xCu);
        sub_100003894(v38);
      }

      else
      {

        v46 = v9[1];
        v74 = (v9 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v47 = v14;
        v44 = v46;
        v46(v47, v8);
      }

      v48 = v73;
      v91 = &type metadata for ExperimentationConfigurationProvider;
      v92 = &off_100478F40;
      v49 = swift_allocObject();
      v50 = v78;
      v49[2] = v79;
      v49[3] = v50;
      v51 = v77;
      v49[4] = v81;
      v49[5] = v51;
      v52 = *(v48 + OBJC_IVAR___APExperimentationReportBuilder_reportTable);
      v90[0] = v49;
      v93 = v52;
      swift_unknownObjectUnownedInit();
      v53 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter;
      v54 = *(v15 + OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_dateFormatter);

      v55 = v52;
      v56 = sub_100398F28();
      [v54 setDateFormat:v56];

      v57 = *(v15 + v53);
      v58 = v82;
      v75(v82, v15 + v86, v8);
      isa = sub_100397688().super.isa;
      v44(v58, v8);
      v60 = [v57 stringFromDate:isa];

      v61 = sub_100398F58();
      v63 = v62;

      v65 = v84;
      v64 = v85;
      sub_10020D464(v90, v84, v61, v63, v85, v51, v83);

      v66 = *(v48 + OBJC_IVAR___APExperimentationReportBuilder_deliveredReportTable);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1003996F8(24);

      v88 = 0xD000000000000016;
      v89 = 0x800000010042B950;
      v87 = v64;
      v94._countAndFlagsBits = sub_100399998();
      sub_100399068(v94);

      v67 = sub_100398F28();

      v68 = [objc_allocWithZone(NSNumber) initWithInteger:v65];
      v69 = [objc_allocWithZone(NSNumber) initWithInteger:1901];
      v70 = sub_100397688().super.isa;
      v71 = [v66 storeDeliveryReportType:v67 dayOfYear:v68 frequency:v69 reportDate:v70];

      if (!v71)
      {
        sub_1003993E8();
        v71 = sub_1003995A8();
        sub_100398B98();
      }

      sub_10020D9F0(v90);
    }

    else
    {
      [*(v4 + OBJC_IVAR___APExperimentationReportBuilder_telemetryDelivery) logExperimentationErrorWithErrorType:13 description:0];
    }
  }
}

void sub_10020C944(uint64_t a1)
{
  v2 = v1;
  v19[1] = a1;
  v3 = sub_100397748();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_deliveredReportTable);
  v8 = sub_100398F28();
  v9 = [v7 lastDeliveryReportWithType:v8];

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR___APExperimentationReportBuilder_telemetryDelivery);
    v11 = [v9 reportDate];
    sub_100397708();

    isa = sub_100397688().super.isa;
    (*(v4 + 8))(v6, v3);
    v13 = sub_100397688().super.isa;
    [v10 logReportCadenceWithLastReportDate:isa newReportDate:v13];
  }

  [*(v2 + OBJC_IVAR___APExperimentationReportBuilder_telemetryDelivery) logReportSuccededIfNeeded];
  v14 = sub_100398F28();
  v15 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v16 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v17 = sub_100397688().super.isa;
  v18 = [v7 storeDeliveryReportType:v14 dayOfYear:v15 frequency:v16 reportDate:v17];

  if (!v18)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v18 = sub_1003995A8();
    sub_100398B98();
  }
}

id sub_10020CC50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationReportBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10020CD64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&unk_1004D5AD0);
  v34 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_10020D00C()
{
  v1 = v0;
  sub_1001E27A8(&unk_1004D5AD0);
  v2 = *v0;
  v3 = sub_100399808();
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

char *sub_10020D17C(uint64_t a1, uint64_t a2)
{

  sub_100004218(0, &qword_1004D59F0);
  v3 = objc_opt_self();
  if (![v3 configurationForClass:swift_getObjCClassFromMetadata()])
  {
LABEL_10:
    if (qword_1004D56C0 != -1)
    {
      swift_once();
    }

    v17 = qword_1004D5B10;
    if (sub_10020E970(qword_1004D5B10, a2))
    {
      v18 = sub_10020EE58(&off_100478BC0);
      if (!v18)
      {

        return 0;
      }

      v13 = v18;
      sub_10020EF94(v17, a2);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        return v13;
      }

      goto LABEL_15;
    }

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || (v5 = v4, v6 = [v4 reportingWindows], v7 = sub_100399198(), v6, v8 = sub_10020F2F8(v7), , !v8))
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v9 = [v5 reportSources];
  v10 = sub_100399198();

  v11 = sub_10020F578(v10);

  if (!v11)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  if (!sub_10020E970(v11, a2))
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v12 = sub_10020EE58(v8);

  if (!v12)
  {
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v13 = v12;
  sub_10020EF94(v11, a2);
  v15 = v14;

  swift_unknownObjectRelease();
  if ((v15 & 1) == 0)
  {
    return v13;
  }

LABEL_15:

LABEL_16:

  return 0;
}

void sub_10020D464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = &type metadata for ExperimentationJSONBuilder;
  v50 = &off_100478D00;
  v48[0] = swift_allocObject();
  sub_10020DA9C(a1, v48[0] + 16);
  v9 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v10 = sub_1003995A8();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a2;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a5;
    _os_log_impl(&_mh_execute_header, v10, v9, "[ExperimentationReportDelivery] Preparing delivery for day %ld, supplySource %ld.", v11, 0x16u);
  }

  v12 = 0;
  v38 = a6;
  v39 = *(a7 + OBJC_IVAR___APPExperimentationReportDelivery_triggerTable);
  while (1)
  {
    v13 = [objc_allocWithZone(NSNumber) initWithInteger:a5];
    v14 = [v39 getTriggersWithReportsForDay:a2 supplySource:v13 limit:a6 offset:v12];

    if (v14)
    {
      sub_100004218(0, &qword_1004D5AC8);
      v15 = sub_100399198();
    }

    else
    {
      sub_1003993E8();
      v14 = sub_1003995A8();
      v15 = _swiftEmptyArrayStorage;
      sub_100398B98();
    }

    v46 = v15 >> 62;
    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_23:
    if (v46)
    {
      v36 = sub_1003997F8();

      if (v36 < 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = __CFADD__(v12, v36);
    v12 += v36;
    if (v37)
    {
      goto LABEL_33;
    }

    a6 = v38;
    if (v36 != v38)
    {
      sub_100003894(v48);
      return;
    }
  }

  v16 = sub_1003997F8();
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_9:
  v17 = 0;
  v45 = v16;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_100399708();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v21 = sub_1000035B8(v48, v49);
    v22 = [objc_allocWithZone(NSNumber) initWithInteger:{sub_1000035B8(v21, v21[3])[2]}];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = &_swiftEmptyDictionarySingleton;
    sub_10020E080(v22, 0x6F53796C70707573, 0xEC00000065637275, isUniquelyReferenced_nonNull_native, &v47);
    v24 = v47;
    sub_100204F90(v19);
    sub_1001E27A8(&qword_1004D5E00);
    isa = sub_100399178().super.isa;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v24;
    sub_10020E080(isa, 0x6E656D7461657274, 0xEA00000000007374, v26, &v47);
    v27 = v47;
    v28 = [objc_allocWithZone(NSNumber) initWithInteger:2];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v27;
    sub_10020E080(v28, 0x6E6F6973726576, 0xE700000000000000, v29, &v47);

    sub_1001E27A8(&unk_1004D5850);
    v30 = sub_100398E48().super.isa;

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v47 = &_swiftEmptyDictionarySingleton;
    sub_10020E080(v30, a3, a4, v31, &v47);

    v32 = v47;
    if (v46)
    {
      v35 = sub_1003997F8();
      v34 = v35 - 1;
      if (__OFSUB__(v35, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v33 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_31;
      }
    }

    sub_1002066D4(v32, v17 == v34);

    ++v17;
    if (v20 == v45)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

unint64_t sub_10020DA44()
{
  result = qword_1004D5AC0;
  if (!qword_1004D5AC0)
  {
    sub_100397748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D5AC0);
  }

  return result;
}

id sub_10020DAF8(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_100397748();
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = type metadata accessor for ExperimentationNodeFetcher();
  v50[4] = &off_100478DA8;
  v50[0] = a3;
  v16 = OBJC_IVAR___APExperimentationReportBuilder_lock;
  sub_1001E27A8(&qword_1004D5AE8);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&a5[v16] = v17;
  a5[OBJC_IVAR___APExperimentationReportBuilder_isCanceled] = 0;
  sub_100397738();
  type metadata accessor for ExperimentationDateHelper();
  swift_allocObject();
  v18 = sub_100207528(v15);
  v19 = OBJC_IVAR___APExperimentationReportBuilder_dateHelper;
  *&a5[OBJC_IVAR___APExperimentationReportBuilder_dateHelper] = v18;
  sub_100004218(0, &unk_1004D5AF0);
  if (![a1 getTableForClass:swift_getObjCClassFromMetadata()])
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20 || (v44 = v20, sub_100004218(0, &qword_1004D59B8), ![a1 getTableForClass:swift_getObjCClassFromMetadata()]))
  {
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    v35 = sub_100398F28();
    [a4 logExperimentationErrorWithErrorType:2 description:v35];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100003894(v50);
    goto LABEL_15;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21 || (v43 = v21, sub_100004218(0, &unk_1004D5B00), (v22 = [a1 getTableForClass:swift_getObjCClassFromMetadata()]) == 0))
  {
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v23 = v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v36 = v23;
  v37 = v24;
  v42 = *&a5[v19];
  v48 = &type metadata for ExperimentationEventValidator;
  v49 = &off_100479060;
  swift_unknownObjectUnownedInit();
  v46[3] = &type metadata for ExperimentationEventProcessor;
  v46[4] = &off_100479008;
  v46[0] = swift_allocObject();
  sub_10020E450(v47, v46[0] + 16);
  type metadata accessor for ExperimentationAggregator();
  v39 = swift_allocObject();
  v25 = sub_1001F54B4(v46, &type metadata for ExperimentationEventProcessor);
  v40 = &v36;
  __chkstk_darwin(v25);
  v38 = a7;
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = a1;
  v30 = v42;

  swift_unknownObjectRetain();
  v41 = v29;
  v31 = sub_10021211C(v29, v30, a4, v27, v39);
  sub_100003894(v46);
  sub_10020E4AC(v47);
  if (v31)
  {
    *&a5[OBJC_IVAR___APExperimentationReportBuilder_deliveredReportTable] = v43;
    *&a5[OBJC_IVAR___APExperimentationReportBuilder_triggerTable] = v44;
    *&a5[OBJC_IVAR___APExperimentationReportBuilder_reportTable] = v37;
    *&a5[OBJC_IVAR___APExperimentationReportBuilder_aggregator] = v31;
    *&a5[OBJC_IVAR___APExperimentationReportBuilder_metricReceiving] = a2;
    sub_100003554(v50, &a5[OBJC_IVAR___APExperimentationReportBuilder_nodeFetcher]);
    *&a5[OBJC_IVAR___APExperimentationReportBuilder_telemetryDelivery] = a4;
    v32 = type metadata accessor for ExperimentationReportBuilder();
    v45.receiver = a5;
    v45.super_class = v32;
    v33 = objc_msgSendSuper2(&v45, "init");

    sub_100003894(v50);
    return v33;
  }

  sub_100003894(v50);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_15:

  type metadata accessor for ExperimentationReportBuilder();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10020E080(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1001EC1DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10020CD64(v16, a4 & 1);
      v11 = sub_1001EC1DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100399A98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10020D00C();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

char *sub_10020E1FC()
{
  sub_100004218(0, &qword_1004D59F0);
  v0 = objc_opt_self();
  if (![v0 configurationForClass:swift_getObjCClassFromMetadata()])
  {
    return &off_100478B68;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || (v2 = [v1 reportSources], v3 = sub_100399198(), v2, v4 = sub_10020F578(v3), , !v4))
  {
    swift_unknownObjectRelease();
    return &off_100478B68;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = _swiftEmptyArrayStorage;
    v7 = 4;
    do
    {
      v8 = v4[v7];
      if (*(v8 + 16))
      {

        v9 = sub_1001EC1DC(0x656372756F73, 0xE600000000000000);
        if (v10)
        {
          sub_1000038F4(*(v8 + 56) + 32 * v9, v15);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1001E3A58(0, *(v6 + 2) + 1, 1, v6);
            }

            v12 = *(v6 + 2);
            v11 = *(v6 + 3);
            if (v12 >= v11 >> 1)
            {
              v6 = sub_1001E3A58((v11 > 1), v12 + 1, 1, v6);
            }

            *(v6 + 2) = v12 + 1;
            *&v6[8 * v12 + 32] = v14;
          }
        }

        else
        {
        }
      }

      ++v7;
      --v5;
    }

    while (v5);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

uint64_t sub_10020E504(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10020E914(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020E54C()
{
  sub_1001E27A8(&unk_1004D5D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003C9930;
  sub_1001E27A8(&unk_1004D5A30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656372756F73;
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 978;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x6E656D6563616C70;
  *(inited + 88) = 0xEA00000000007374;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1003EB200;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1003EB210;
  *(v2 + 32) = 0x6E656D6563616C70;
  *(v2 + 40) = 0xE900000000000074;
  *(v2 + 48) = 7036;
  *(v2 + 72) = &type metadata for Int;
  *(v2 + 80) = 0x73746F6C73;
  *(v2 + 88) = 0xE500000000000000;
  v3 = sub_1001E27A8(&qword_1004D5BE8);
  *(v2 + 120) = v3;
  *(v2 + 96) = _swiftEmptyArrayStorage;
  v4 = sub_1002142A8(v2);
  swift_setDeallocating();
  sub_1001E27A8(&unk_1004D5DD0);
  swift_arrayDestroy();
  *(v1 + 32) = v4;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1003EB210;
  *(v5 + 32) = 0x6E656D6563616C70;
  *(v5 + 40) = 0xE900000000000074;
  *(v5 + 48) = 7038;
  *(v5 + 72) = &type metadata for Int;
  *(v5 + 80) = 0x73746F6C73;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE500000000000000;
  *(v5 + 96) = _swiftEmptyArrayStorage;
  v6 = sub_1002142A8(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 40) = v6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1003EB210;
  *(v7 + 32) = 0x6E656D6563616C70;
  *(v7 + 40) = 0xE900000000000074;
  *(v7 + 48) = 7039;
  *(v7 + 72) = &type metadata for Int;
  *(v7 + 80) = 0x73746F6C73;
  *(v7 + 88) = 0xE500000000000000;
  *(v7 + 120) = sub_1001E27A8(&qword_1004D5BD0);
  *(v7 + 96) = &off_100478B90;
  v8 = sub_1002142A8(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 48) = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1003EB210;
  *(v9 + 32) = 0x6E656D6563616C70;
  *(v9 + 40) = 0xE900000000000074;
  *(v9 + 48) = 7040;
  *(v9 + 72) = &type metadata for Int;
  *(v9 + 80) = 0x73746F6C73;
  *(v9 + 120) = v3;
  *(v9 + 88) = 0xE500000000000000;
  *(v9 + 96) = _swiftEmptyArrayStorage;
  v10 = sub_1002142A8(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 56) = v10;
  v11 = sub_1001E27A8(&qword_1004D5BC8);
  *(inited + 96) = v1;
  *(inited + 120) = v11;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 168) = &type metadata for Int;
  *(inited + 136) = 0x800000010042BB50;
  *(inited + 144) = 100;
  v12 = sub_1002142A8(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *(v14 + 32) = v12;
  qword_1004D5B10 = v14;
  return result;
}

uint64_t sub_10020E914(uint64_t result, uint64_t a2)
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

char *sub_10020E970(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_27:
    sub_1003993E8();
    sub_100206B54();
    v22 = sub_1003995A8();
LABEL_28:
    sub_100398B98();

    return 0;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v5 = *v4;
    if (!*(*v4 + 16))
    {
      goto LABEL_4;
    }

    v6 = sub_1001EC1DC(0x656372756F73, 0xE600000000000000);
    if (v7)
    {
      sub_1000038F4(*(v5 + 56) + 32 * v6, v25);
      if ((swift_dynamicCast() & 1) != 0 && v24 == a2)
      {
        break;
      }
    }

LABEL_4:
    ++v4;
    if (!--v2)
    {
      goto LABEL_27;
    }
  }

  if (!*(v5 + 16) || (v8 = sub_1001EC1DC(0x6E656D6563616C70, 0xEA00000000007374), (v9 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_1000038F4(*(v5 + 56) + 32 * v8, v25);

  sub_1001E27A8(&qword_1004D5BC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = *(v24 + 16);
  if (!v10)
  {
    result = _swiftEmptyArrayStorage;
LABEL_33:
    v23 = result;

    v25[0] = v23;
    sub_1001E27A8(&qword_1004D5BD8);
    sub_10020F1E0(&qword_1004D5BE0, &qword_1004D5BD8);
    if (sub_100399398())
    {
      return v23;
    }

    return 0;
  }

  v11 = 0;
  result = _swiftEmptyArrayStorage;
  while (v11 < *(v24 + 16))
  {
    v13 = result;
    v14 = *(v24 + 8 * v11 + 32);
    if (!*(v14 + 16))
    {
      goto LABEL_39;
    }

    v15 = sub_1001EC1DC(0x6E656D6563616C70, 0xE900000000000074);
    if ((v16 & 1) == 0)
    {
LABEL_35:

      goto LABEL_39;
    }

    sub_1000038F4(*(v14 + 56) + 32 * v15, v25);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_39:

      sub_1003993E8();
      sub_100206B54();
      v22 = sub_1003995A8();
      goto LABEL_28;
    }

    if (!*(v14 + 16))
    {
      goto LABEL_35;
    }

    v17 = sub_1001EC1DC(0x73746F6C73, 0xE500000000000000);
    if ((v18 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1000038F4(*(v14 + 56) + 32 * v17, v25);

    sub_1001E27A8(&qword_1004D5BD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100214060(0, *(v13 + 2) + 1, 1, v13);
    }

    result = v13;
    v19 = *(v13 + 2);
    v20 = *(result + 3);
    if (v19 >= v20 >> 1)
    {
      result = sub_100214060((v20 > 1), v19 + 1, 1, result);
    }

    ++v11;
    *(result + 2) = v19 + 1;
    v21 = &result[16 * v19];
    *(v21 + 4) = v24;
    *(v21 + 5) = v24;
    if (v10 == v11)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10020EE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2++;
      v4 = v5;
      sub_100207BB0(v5);
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10021407C(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_10021407C((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v4;
      *(v10 + 5) = v7;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_1001E27A8(&qword_1004D5BB8);
  sub_10020F1E0(&qword_1004D5BC0, &qword_1004D5BB8);
  if ((sub_100399398() & 1) == 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_10020EF94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v5 = *v4;
    if (!*(*v4 + 16))
    {
      goto LABEL_4;
    }

    v6 = sub_1001EC1DC(0x656372756F73, 0xE600000000000000);
    if (v7)
    {
      sub_1000038F4(*(v5 + 56) + 32 * v6, v13);
      if ((swift_dynamicCast() & 1) != 0 && v12 == a2)
      {
        break;
      }
    }

LABEL_4:
    ++v4;
    if (!--v2)
    {
      goto LABEL_14;
    }
  }

  if (!*(v5 + 16) || (v8 = sub_1001EC1DC(0xD000000000000012, 0x800000010042BB50), (v9 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_1000038F4(*(v5 + 56) + 32 * v8, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_1003993E8();
    sub_100206B54();
    v11 = sub_1003995A8();
    sub_100398B98();

    return 0;
  }

  result = v12;
  if (v12 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10020F1E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020F254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10020F29C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_10020F2F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_100211EA4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000038F4(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100211EA4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10020F404(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_1003997F8();
    sub_100399798();
    v2 = sub_1003997F8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100399798();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_100399708();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_100399778();
        sub_1003997A8();
        sub_1003997B8();
        sub_100399788();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10020F578(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_100211EC4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000038F4(i, v9);
      sub_1001E27A8(&qword_1004D5D38);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100211EC4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10020F6A0(uint64_t a1)
{
  v3 = sub_1001E27A8(&qword_1004D5D50);
  v4 = __chkstk_darwin(v3 - 8);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v61 - v6;
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v72 = &v61 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v61 - v15;
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v71 = v1;
  v19 = *(v1 + 96);
  v20 = OBJC_IVAR____TtC7Reports25ExperimentationDateHelper_date;
  swift_beginAccess();
  v73 = v9;
  (*(v9 + 24))(v19 + v20, a1, v8);
  swift_endAccess();
  sub_100206C1C(v7);
  v21 = sub_100397118();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v7, 1, v21) == 1)
  {
    v24 = v7;
    return sub_1001ED244(v24, &qword_1004D5D50);
  }

  sub_100397108();
  v67 = *(v22 + 8);
  v67(v7, v21);
  v66 = *(v73 + 32);
  v66(v18, v16, v8);
  v25 = v70;
  sub_100206C1C(v70);
  if (v23(v25, 1, v21) == 1)
  {
    (*(v73 + 8))(v18, v8);
    v24 = v25;
    return sub_1001ED244(v24, &qword_1004D5D50);
  }

  v68 = v18;
  v27 = v69;
  sub_1003970F8();
  v67(v25, v21);
  v28 = v72;
  v66(v72, v27, v8);
  sub_10020705C();
  v67 = v29;
  if (v30)
  {
    v31 = *(v73 + 8);
    v31(v28, v8);
    return (v31)(v68, v8);
  }

  else
  {
    v32 = v71;
    v33 = [*(v71 + 16) selectAll];
    v34 = v73;
    if (v33 && (v35 = v33, sub_1001E27A8(&qword_1004D5D58), v36 = sub_100399198(), v35, v37 = sub_10020F404(v36), , v37))
    {
      v38 = v37 & 0xFFFFFFFFFFFFFF8;
      v62 = v8;
      if (v37 >> 62)
      {
        goto LABEL_26;
      }

      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v68; v39; i = v68)
      {
        v41 = 0;
        v65 = "";
        v66 = (v37 & 0xC000000000000001);
        v63 = xmmword_1003EB210;
        v64 = v38;
        while (1)
        {
          if (v66)
          {
            v42 = sub_100399708();
          }

          else
          {
            if (v41 >= *(v38 + 16))
            {
              goto LABEL_25;
            }

            v42 = *(v37 + 8 * v41 + 32);
          }

          v43 = v42;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (*(v32 + 112))
          {

            sub_1003993C8();
            sub_100004218(0, &qword_1004D5D30);
            v58 = sub_1003995A8();
            sub_100398B98();

            goto LABEL_28;
          }

          v70 = v41 + 1;
          LODWORD(v69) = sub_1003993D8();
          sub_100004218(0, &qword_1004D5D30);
          v44 = sub_1003995A8();
          sub_1001E27A8(&qword_1004D5860);
          v45 = swift_allocObject();
          *(v45 + 16) = v63;
          v46 = v37;
          v47 = [v43 experimentId];
          v48 = sub_100398F58();
          v50 = v49;

          *(v45 + 56) = &type metadata for String;
          v51 = sub_100206BA0();
          *(v45 + 64) = v51;
          *(v45 + 32) = v48;
          *(v45 + 40) = v50;
          v52 = [v43 treatmentId];
          v53 = sub_100398F58();
          v55 = v54;

          *(v45 + 96) = &type metadata for String;
          *(v45 + 104) = v51;
          v37 = v46;
          v32 = v71;
          v28 = v72;
          *(v45 + 72) = v53;
          *(v45 + 80) = v55;
          sub_100398B98();

          i = v68;

          v56 = [v43 rowid];
          sub_10020FE18(v56, i, v28, v67);

          v38 = v64;
          ++v41;
          if (v70 == v39)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v39 = sub_1003997F8();
      }

LABEL_27:

LABEL_28:
      v59 = *(v73 + 8);
      v60 = v62;
      v59(v28, v62);
      return (v59)(i, v60);
    }

    else
    {
      [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:7 description:0];
      swift_unknownObjectRelease();
      v57 = *(v34 + 8);
      v57(v28, v8);
      return (v57)(v68, v8);
    }
  }
}

void sub_10020FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a1;
  v8 = 0;
  v30 = *(v4 + 24);
  v9 = &selRef_lastDeliveryReportWithType_;
  while (1)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v30 signalTracksForTriggerRowId:v7 limit:50 offset:v8];
    if (!v11)
    {
      [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:8 description:0];
      swift_unknownObjectRelease();
      v28 = 0;
LABEL_19:
      objc_autoreleasePoolPop(v10);
      goto LABEL_21;
    }

    v12 = v11;
    sub_100004218(0, &qword_1004D5D48);
    v13 = sub_100399198();

    v31 = v13 >> 62;
    v32 = v10;
    v33 = v8;
    if (v13 >> 62)
    {
      v14 = sub_1003997F8();
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    if (v14 < 1)
    {
      goto LABEL_26;
    }

    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v37 = v14;
    v38 = v13;
    v36 = v13 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v18 = sub_100399708();
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v17 = v18;
      if (sub_100210190(v7, v6, v18))
      {
        sub_1002105F4(v17);
        sub_1003993D8();
        sub_100004218(0, &qword_1004D5D30);
        v19 = sub_1003995A8();
        sub_1001E27A8(&qword_1004D5860);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1003C9930;
        v21 = [v17 impressionId];
        v22 = v9;
        v23 = sub_100398F58();
        v25 = v24;

        *(v20 + 56) = &type metadata for String;
        *(v20 + 64) = sub_100206BA0();
        *(v20 + 32) = v23;
        *(v20 + 40) = v25;
        v9 = v22;
        sub_100398B98();

        [v17 v22[501]];
        v26 = *(v5 + 88);
        if (v26)
        {
          v27 = v26;
          [v27 v22[501]];
        }

        v17 = *(v5 + 88);
        *(v5 + 88) = 0;
        v6 = a4;
        v7 = a1;
        v14 = v37;
        v13 = v38;
        v16 = v36;
      }

      ++v15;
    }

    while (v14 != v15);
LABEL_17:
    if (!v31)
    {
      v28 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v10 = v32;
      v8 = v33;
      goto LABEL_19;
    }

    v28 = sub_1003997F8();

    objc_autoreleasePoolPop(v32);
    v8 = v33;
    if (v28 < 0)
    {
      break;
    }

LABEL_21:
    v29 = __CFADD__(v8, v28);
    v8 += v28;
    if (v29)
    {
      goto LABEL_25;
    }

    if (v28 != 50)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100210190(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v8 = v3[4];
  v9 = [a3 impressionId];
  if (!v9)
  {
    sub_100398F58();
    v9 = sub_100398F28();
  }

  v10 = [v8 placedEventsForImpressionId:v9];

  if (!v10)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v33 = sub_100398F28();
    [Strong logExperimentationErrorWithErrorType:17 description:v33];
    swift_unknownObjectRelease();

    return 0;
  }

  sub_100004218(0, &qword_1004D5D28);
  v11 = sub_100399198();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  result = sub_1003997F8();
  if (!result)
  {
LABEL_20:

    return 0;
  }

LABEL_6:
  v34 = a2;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = sub_100399708();
LABEL_9:
    v14 = v13;

    sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v15 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1003EB210;
    v17 = [a3 impressionId];
    v18 = sub_100398F58();
    v20 = v19;

    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100206BA0();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v21 = [v14 event];
    v22 = [v21 integerValue];

    *(v16 + 96) = &type metadata for Int;
    *(v16 + 104) = &protocol witness table for Int;
    *(v16 + 72) = v22;
    sub_100398B98();

    sub_1000035B8(v4 + 6, v4[9]);
    if (sub_1002124A8(v14, a3))
    {
      v23 = [a3 source];
      v24 = [a3 adFormatType];
      v25 = [a3 slot];
      if (v24 && v23)
      {
        v26 = v4[5];
        v27 = v23;
        v28 = v24;
        v29 = [v26 getOrInsertReportForTriggerRowId:a1 day:v34 source:v27 adFormatType:v28 slot:v25];
        if (v29)
        {
          v30 = v29;

          v31 = v4[11];
          v4[11] = v30;

          return 1;
        }

        [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:12 description:0];
      }

      else
      {
        [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:11 description:0];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 0;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1002105F4(void *a1)
{
  v150 = sub_100397748();
  v3 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_100398FA8();
  v5 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 88);
  if (v7)
  {
    v8 = *(v1 + 32);
    v159 = v7;
    v9 = [a1 impressionId];
    if (!v9)
    {
      sub_100398F58();
      v9 = sub_100398F28();
    }

    isa = sub_100397688().super.isa;
    v11 = sub_100397688().super.isa;
    v12 = [v8 experimentationEventsForImpressionId:v9 startDate:isa endDate:v11];

    if (v12)
    {
      sub_100004218(0, &qword_1004D5D28);
      v13 = sub_100399198();

      v14 = v13;
      if (v13 >> 62)
      {
        v15 = sub_1003997F8();
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_7:
          v158 = sub_100004218(0, &qword_1004D5D30);
          if (v15 < 1)
          {
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
          }

          v16 = 0;
          v17 = v14;
          v156 = v14 & 0xC000000000000001;
          v157 = "";
          v148 = (v5 + 8);
          v147 = (v3 + 8);
          v155 = xmmword_1003EB210;
          v153 = v15;
          v154 = v14;
          while (1)
          {
            if (v156)
            {
              v20 = sub_100399708();
            }

            else
            {
              v20 = *(v17 + 8 * v16 + 32);
            }

            v21 = v20;
            sub_1003993D8();
            v22 = sub_1003995A8();
            sub_1001E27A8(&qword_1004D5860);
            v23 = swift_allocObject();
            *(v23 + 16) = v155;
            v24 = [a1 impressionId];
            v25 = sub_100398F58();
            v27 = v26;

            *(v23 + 56) = &type metadata for String;
            *(v23 + 64) = sub_100206BA0();
            *(v23 + 32) = v25;
            *(v23 + 40) = v27;
            v28 = [v21 event];
            v29 = [v28 integerValue];

            *(v23 + 96) = &type metadata for Int;
            *(v23 + 104) = &protocol witness table for Int;
            *(v23 + 72) = v29;
            sub_100398B98();

            v30 = [v21 event];
            v31 = [v30 integerValue];

            if (v31 <= 1405)
            {
              if (v31 == 1403)
              {
                v92 = [v21 event];
                v93 = [v92 integerValue];

                if (v93 != 1403)
                {
                  goto LABEL_14;
                }

                v94 = [v21 propertiesJSON];
                if (!v94)
                {
                  goto LABEL_14;
                }

                v95 = v94;
                sub_100398F58();

                v96 = v151;
                sub_100398F98();
                v75 = sub_100398F68();
                v77 = v97;

                (*v148)(v96, v152);
                if (v77 >> 60 == 15)
                {
                  goto LABEL_14;
                }

                v98 = objc_opt_self();
                v99 = sub_100397538().super.isa;
                v160 = 0;
                v100 = [v98 JSONObjectWithData:v99 options:0 error:&v160];

                v81 = v160;
                if (!v100)
                {
                  goto LABEL_12;
                }

                sub_100399648();
                sub_1001DDE50(v75, v77);
                swift_unknownObjectRelease();
                sub_10021243C(v161, v162);
                sub_10021243C(v162, v161);
                sub_1001E27A8(&qword_1004D5D38);
                if (swift_dynamicCast())
                {
                  v101 = v160;
                  if (*(v160 + 2) && (v102 = sub_1001EC1DC(0x6E6F73616572, 0xE600000000000000), (v103 & 1) != 0))
                  {
                    sub_1000038F4(v101[7] + 32 * v102, v162);

                    sub_1001ED244(v162, &qword_1004D5D40);
                    v104 = [a1 slotVisibleNoAd];
                    v105 = [v104 BOOLValue];

                    if (!v105)
                    {
                      v106 = [objc_allocWithZone(NSNumber) initWithBool:1];
                      [a1 setSlotVisibleNoAd:v106];

                      v107 = v149;
                      sub_100397738();
                      v108 = sub_100397688().super.isa;
                      (*v147)(v107, v150);
                      [a1 setUpdateTimestamp:v108];

                      v109 = [v159 slotVisibleNoAdCount];
                      v110 = [v109 integerValue];

                      if (__OFADD__(v110, 1))
                      {
                        goto LABEL_100;
                      }

                      v62 = [objc_allocWithZone(NSNumber) initWithInteger:v110 + 1];
                      [v159 setSlotVisibleNoAdCount:v62];
                      goto LABEL_68;
                    }
                  }

                  else
                  {

                    memset(v162, 0, sizeof(v162));
                    sub_1001ED244(v162, &qword_1004D5D40);
                  }
                }
              }

              else
              {
                if (v31 != 1405)
                {
LABEL_67:
                  sub_1003993E8();
                  v62 = sub_1003995A8();
                  sub_100398B98();
LABEL_68:

                  goto LABEL_15;
                }

                v53 = [v21 event];
                v54 = [v53 integerValue];

                if (v54 == 1405)
                {
                  v55 = [a1 slotVisibleAd];
                  v56 = [v55 BOOLValue];

                  if ((v56 & 1) == 0)
                  {
                    v57 = [objc_allocWithZone(NSNumber) initWithBool:1];
                    [a1 setSlotVisibleAd:v57];

                    v58 = v149;
                    sub_100397738();
                    v59 = sub_100397688().super.isa;
                    (*v147)(v58, v150);
                    [a1 setUpdateTimestamp:v59];

                    v60 = [v159 slotVisibleAdCount];
                    v61 = [v60 integerValue];

                    if (__OFADD__(v61, 1))
                    {
                      goto LABEL_98;
                    }

                    v62 = [objc_allocWithZone(NSNumber) initWithInteger:v61 + 1];
                    [v159 setSlotVisibleAdCount:v62];
                    goto LABEL_68;
                  }
                }
              }
            }

            else
            {
              switch(v31)
              {
                case 1406:
                  if (sub_100212D10(v21))
                  {
                    v63 = [a1 impression];
                    v64 = [v63 BOOLValue];

                    if ((v64 & 1) == 0)
                    {
                      v65 = [objc_allocWithZone(NSNumber) initWithBool:1];
                      [a1 setImpression:v65];

                      v66 = v149;
                      sub_100397738();
                      v67 = sub_100397688().super.isa;
                      (*v147)(v66, v150);
                      [a1 setUpdateTimestamp:v67];

                      v68 = [v159 impressionCount];
                      v69 = [v68 integerValue];

                      if (__OFADD__(v69, 1))
                      {
                        __break(1u);
LABEL_98:
                        __break(1u);
                        goto LABEL_99;
                      }

                      v62 = [objc_allocWithZone(NSNumber) initWithInteger:v69 + 1];
                      [v159 setImpressionCount:v62];
                      goto LABEL_68;
                    }
                  }

                  break;
                case 1408:
                  v70 = [v21 event];
                  v71 = [v70 integerValue];

                  if (v71 != 1408)
                  {
                    break;
                  }

                  v72 = [v21 propertiesJSON];
                  if (!v72)
                  {
                    break;
                  }

                  v73 = v72;
                  sub_100398F58();

                  v74 = v151;
                  sub_100398F98();
                  v75 = sub_100398F68();
                  v77 = v76;

                  (*v148)(v74, v152);
                  if (v77 >> 60 == 15)
                  {
                    break;
                  }

                  v78 = objc_opt_self();
                  v79 = sub_100397538().super.isa;
                  v160 = 0;
                  v80 = [v78 JSONObjectWithData:v79 options:0 error:&v160];

                  v81 = v160;
                  if (!v80)
                  {
LABEL_12:
                    v19 = v81;
                    sub_1003973E8();

                    swift_willThrow();
                    sub_1001DDE50(v75, v77);
LABEL_13:

                    break;
                  }

                  sub_100399648();
                  sub_1001DDE50(v75, v77);
                  swift_unknownObjectRelease();
                  sub_10021243C(v161, v162);
                  sub_10021243C(v162, v161);
                  sub_1001E27A8(&qword_1004D5D38);
                  if (swift_dynamicCast())
                  {
                    v82 = v160;
                    if (!*(v160 + 2) || (v83 = sub_1001EC1DC(1701869940, 0xE400000000000000), (v84 & 1) == 0))
                    {

                      goto LABEL_15;
                    }

                    sub_1000038F4(v82[7] + 32 * v83, v162);

                    if (swift_dynamicCast())
                    {
                      if (*&v161[0] != 7302)
                      {
                        v85 = [a1 click];
                        v86 = [v85 BOOLValue];

                        if ((v86 & 1) == 0)
                        {
                          v87 = [objc_allocWithZone(NSNumber) initWithBool:1];
                          [a1 setClick:v87];

                          v88 = v149;
                          sub_100397738();
                          v89 = sub_100397688().super.isa;
                          (*v147)(v88, v150);
                          [a1 setUpdateTimestamp:v89];

                          v90 = [v159 clickCount];
                          v91 = [v90 integerValue];

                          if (__OFADD__(v91, 1))
                          {
                            goto LABEL_107;
                          }

                          v62 = [objc_allocWithZone(NSNumber) initWithInteger:v91 + 1];
                          [v159 setClickCount:v62];
                          goto LABEL_68;
                        }
                      }
                    }
                  }

                  break;
                case 8000:
                  v32 = [v21 event];
                  v33 = [v32 integerValue];

                  if (v33 == 8000)
                  {
                    v34 = [v21 propertiesJSON];
                    if (v34)
                    {
                      v35 = v34;
                      sub_100398F58();

                      v36 = v151;
                      sub_100398F98();
                      v37 = sub_100398F68();
                      v39 = v38;

                      (*v148)(v36, v152);
                      if (v39 >> 60 != 15)
                      {
                        v40 = objc_opt_self();
                        v41 = sub_100397538().super.isa;
                        v160 = 0;
                        v42 = [v40 JSONObjectWithData:v41 options:0 error:&v160];

                        v43 = v160;
                        if (!v42)
                        {
                          v111 = v43;
                          sub_1003973E8();

                          swift_willThrow();
                          sub_1001DDE50(v37, v39);
                          goto LABEL_13;
                        }

                        sub_100399648();
                        sub_1001DDE50(v37, v39);
                        swift_unknownObjectRelease();
                        sub_10021243C(v161, v162);
                        sub_10021243C(v162, v161);
                        sub_1001E27A8(&qword_1004D5D38);
                        if (swift_dynamicCast())
                        {
                          v44 = sub_100212E80(v160);
                          if (v44 <= 2)
                          {
                            if (v44)
                            {
                              if (v44 == 1)
                              {
                                v112 = [a1 redownload];
                                v113 = [v112 BOOLValue];

                                if (!v113)
                                {
                                  v114 = [objc_allocWithZone(NSNumber) initWithBool:1];
                                  [a1 setRedownload:v114];

                                  v115 = v149;
                                  sub_100397738();
                                  v116 = sub_100397688().super.isa;
                                  (*v147)(v115, v150);
                                  [a1 setUpdateTimestamp:v116];

                                  v117 = [v159 redownloadCount];
                                  v118 = [v117 integerValue];

                                  if (__OFADD__(v118, 1))
                                  {
                                    goto LABEL_106;
                                  }

                                  v52 = [objc_allocWithZone(NSNumber) initWithInteger:v118 + 1];
                                  [v159 setRedownloadCount:v52];
                                  goto LABEL_90;
                                }
                              }

                              else
                              {
                                v133 = [a1 preOrderPlaced];
                                v134 = [v133 BOOLValue];

                                if (!v134)
                                {
                                  v135 = [objc_allocWithZone(NSNumber) initWithBool:1];
                                  [a1 setPreOrderPlaced:v135];

                                  v136 = v149;
                                  sub_100397738();
                                  v137 = sub_100397688().super.isa;
                                  (*v147)(v136, v150);
                                  [a1 setUpdateTimestamp:v137];

                                  v138 = [v159 preOrderPlacedCount];
                                  v139 = [v138 integerValue];

                                  if (__OFADD__(v139, 1))
                                  {
                                    goto LABEL_105;
                                  }

                                  v52 = [objc_allocWithZone(NSNumber) initWithInteger:v139 + 1];
                                  [v159 setPreOrderPlacedCount:v52];
                                  goto LABEL_90;
                                }
                              }
                            }

                            else
                            {
                              v126 = [a1 download];
                              v127 = [v126 BOOLValue];

                              if (!v127)
                              {
                                v128 = [objc_allocWithZone(NSNumber) initWithBool:1];
                                [a1 setDownload:v128];

                                v129 = v149;
                                sub_100397738();
                                v130 = sub_100397688().super.isa;
                                (*v147)(v129, v150);
                                [a1 setUpdateTimestamp:v130];

                                v131 = [v159 downloadCount];
                                v132 = [v131 integerValue];

                                if (__OFADD__(v132, 1))
                                {
                                  goto LABEL_101;
                                }

                                v52 = [objc_allocWithZone(NSNumber) initWithInteger:v132 + 1];
                                [v159 setDownloadCount:v52];
                                goto LABEL_90;
                              }
                            }
                          }

                          else
                          {
                            if (v44 > 4)
                            {
                              if (v44 != 5)
                              {
                                break;
                              }

                              v119 = [a1 viewPreorderPlaced];
                              v120 = [v119 BOOLValue];

                              if (v120)
                              {
                                break;
                              }

                              v121 = [objc_allocWithZone(NSNumber) initWithBool:1];
                              [a1 setViewPreorderPlaced:v121];

                              v122 = v149;
                              sub_100397738();
                              v123 = sub_100397688().super.isa;
                              (*v147)(v122, v150);
                              [a1 setUpdateTimestamp:v123];

                              v124 = [v159 viewPreorderPlacedCount];
                              v125 = [v124 integerValue];

                              if (__OFADD__(v125, 1))
                              {
                                goto LABEL_102;
                              }

                              v52 = [objc_allocWithZone(NSNumber) initWithInteger:v125 + 1];
                              [v159 setViewPreorderPlacedCount:v52];
                              goto LABEL_90;
                            }

                            if (v44 == 3)
                            {
                              v45 = [a1 viewDownload];
                              v46 = [v45 BOOLValue];

                              if (!v46)
                              {
                                v47 = [objc_allocWithZone(NSNumber) initWithBool:1];
                                [a1 setViewDownload:v47];

                                v48 = v149;
                                sub_100397738();
                                v49 = sub_100397688().super.isa;
                                (*v147)(v48, v150);
                                [a1 setUpdateTimestamp:v49];

                                v50 = [v159 viewDownloadCount];
                                v51 = [v50 integerValue];

                                if (__OFADD__(v51, 1))
                                {
                                  goto LABEL_104;
                                }

                                v52 = [objc_allocWithZone(NSNumber) initWithInteger:v51 + 1];
                                [v159 setViewDownloadCount:v52];
LABEL_90:
                              }
                            }

                            else
                            {
                              v140 = [a1 viewRedownload];
                              v141 = [v140 BOOLValue];

                              if (!v141)
                              {
                                v142 = [objc_allocWithZone(NSNumber) initWithBool:1];
                                [a1 setViewRedownload:v142];

                                v143 = v149;
                                sub_100397738();
                                v144 = sub_100397688().super.isa;
                                (*v147)(v143, v150);
                                [a1 setUpdateTimestamp:v144];

                                v145 = [v159 viewRedownloadCount];
                                v146 = [v145 integerValue];

                                if (__OFADD__(v146, 1))
                                {
                                  goto LABEL_103;
                                }

                                v52 = [objc_allocWithZone(NSNumber) initWithInteger:v146 + 1];
                                [v159 setViewRedownloadCount:v52];
                                goto LABEL_90;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  break;
                default:
                  goto LABEL_67;
              }
            }

LABEL_14:

LABEL_15:
            ++v16;
            v17 = v154;
            if (v153 == v16)
            {

              return;
            }
          }
        }
      }
    }

    else
    {
      _s7Reports20ExperimentationErrorC015experimentationC09errorType11descriptionyAA0bcF0O_SSSgtFZ_0(9, 0, 0);
      v18 = v159;
    }
  }
}

id *sub_100211DF4()
{
  sub_100003894((v0 + 6));

  sub_100206BF4((v0 + 13));
  return v0;
}

uint64_t sub_100211E4C()
{
  sub_100211DF4();

  return swift_deallocClassInstance();
}

char *sub_100211EA4(char *a1, int64_t a2, char a3)
{
  result = sub_100211EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100211EC4(void *a1, int64_t a2, char a3)
{
  result = sub_100211FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100211EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&qword_1004D41E0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100211FE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001E27A8(&unk_1004D5D60);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_1001E27A8(&qword_1004D5D38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10021211C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = &type metadata for ExperimentationEventProcessor;
  v22 = &off_100479008;
  *&v20 = swift_allocObject();
  sub_10021244C(a4, v20 + 16);
  *(a5 + 88) = 0;
  *(a5 + 112) = 0;
  sub_100004218(0, &unk_1004D5AF0);
  if (![a1 getTableForClass:swift_getObjCClassFromMetadata()])
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v19 = v10, sub_100004218(0, &qword_1004D59B0), ![a1 getTableForClass:swift_getObjCClassFromMetadata()]))
  {
LABEL_17:
    swift_unknownObjectRelease();
LABEL_18:
    v16 = sub_100398F28();
    [a3 logExperimentationErrorWithErrorType:2 description:v16];
    swift_unknownObjectRelease();

    sub_100003894(&v20);

    type metadata accessor for ExperimentationAggregator();
    swift_deallocPartialClassInstance();
    return 0;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11 || (v18 = v11, sub_100004218(0, &unk_1004D5D70), ![a1 getTableForClass:swift_getObjCClassFromMetadata()]))
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12 || (v13 = v12, sub_100004218(0, &unk_1004D5B00), ![a1 getTableForClass:swift_getObjCClassFromMetadata()]))
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v15 = v14;

  *(a5 + 16) = v19;
  *(a5 + 24) = v18;
  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
  sub_100004A68(&v20, a5 + 48);
  *(a5 + 96) = a2;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return a5;
}

_OWORD *sub_10021243C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1002124A8(void *a1, void *a2)
{
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100398FA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 adFormatType];
  if (v12)
  {

    return 1;
  }

  v37 = v5;
  v38 = a2;
  v14 = [a1 propertiesJSON];
  if (v14)
  {
    v15 = v14;
    sub_100398F58();

    sub_100398F98();
    v16 = sub_100398F68();
    v18 = v17;

    (*(v9 + 8))(v11, v8);
    if (v18 >> 60 != 15)
    {
      v19 = objc_opt_self();
      isa = sub_100397538().super.isa;
      v40[0] = 0;
      v21 = [v19 JSONObjectWithData:isa options:0 error:v40];

      if (!v21)
      {
        v33 = v40[0];
        sub_1003973E8();

        swift_willThrow();
        sub_1001DDE50(v16, v18);

        goto LABEL_20;
      }

      v22 = v40[0];
      sub_100399648();
      swift_unknownObjectRelease();
      sub_1001E27A8(&qword_1004D5D38);
      if (swift_dynamicCast())
      {
        v23 = v39;
        v24 = [a1 source];
        if (v24)
        {
          v25 = v24;
          if (v23[2] && (v26 = sub_1001EC1DC(1701869940, 0xE400000000000000), (v27 & 1) != 0))
          {
            sub_1000038F4(v23[7] + 32 * v26, v40);
            sub_1002129BC();
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              [v38 setSource:v25];
              v36 = v29;
              [v28 setAdFormatType:v29];
              if (v23[2] && (v30 = sub_1001EC1DC(0x74616D726F66, 0xE600000000000000), (v31 & 1) != 0))
              {
                sub_1000038F4(v23[7] + 32 * v30, v40);

                if (swift_dynamicCast())
                {
                  v32 = v39;
                  [v38 setSlot:v39];
                }
              }

              else
              {
              }

              sub_100397738();
              v34 = sub_100397688().super.isa;
              (*(v37 + 8))(v7, v4);
              v35 = v38;
              [v38 setUpdateTimestamp:v34];

              [v35 save];
              sub_1001DDE50(v16, v18);

              return 1;
            }

            sub_1001DDE50(v16, v18);
          }

          else
          {
            sub_1001DDE50(v16, v18);
          }

          goto LABEL_20;
        }
      }

      sub_1001DDE50(v16, v18);
    }
  }

LABEL_20:
  [swift_unknownObjectUnownedLoadStrong() logExperimentationErrorWithErrorType:10 description:0];
  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_1002129BC()
{
  result = qword_1004D43F0;
  if (!qword_1004D43F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D43F0);
  }

  return result;
}

uint64_t sub_100212A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100212A50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_100212AAC(void *a1)
{
  v2 = sub_100398FA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 propertiesJSON];
  if (result)
  {
    v7 = result;
    sub_100398F58();

    sub_100398F98();
    v8 = sub_100398F68();
    v10 = v9;

    (*(v3 + 8))(v5, v2);
    if (v10 >> 60 != 15)
    {
      v11 = objc_opt_self();
      isa = sub_100397538().super.isa;
      v17 = 0;
      v13 = [v11 JSONObjectWithData:isa options:0 error:&v17];

      v14 = v17;
      if (v13)
      {
        sub_100399648();
        sub_1001DDE50(v8, v10);
        swift_unknownObjectRelease();
        sub_10021243C(v18, v19);
        sub_10021243C(v19, v18);
        sub_1001E27A8(&qword_1004D5D38);
        if (swift_dynamicCast())
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }

      v15 = v14;
      sub_1003973E8();

      swift_willThrow();
      sub_1001DDE50(v8, v10);
    }

    return 0;
  }

  return result;
}

void *sub_100212D10(void *a1)
{
  v2 = [a1 event];
  v3 = [v2 integerValue];

  if (v3 == 1406)
  {
    result = sub_100212AAC(a1);
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (result[2] && (v6 = sub_1001EC1DC(0x746E6563726570, 0xE700000000000000), (v7 & 1) != 0) && (sub_1000038F4(v5[7] + 32 * v6, v11), (swift_dynamicCast() & 1) != 0) && v5[2] && (v8 = sub_1001EC1DC(0x6E6F697461727564, 0xE800000000000000), (v9 & 1) != 0))
    {
      sub_1000038F4(v5[7] + 32 * v8, v11);

      if ((swift_dynamicCast() & 1) != 0 && *&v10 >= 50)
      {
        return (v10 >= 1000.0);
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100212E80(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v2 = sub_1001EC1DC(0x69737265766E6F63, 0xEA00000000006E6FLL);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1000038F4(*(a1 + 56) + 32 * v2, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!*(a1 + 16) || (v4 = sub_1001EC1DC(0x656D656761676E65, 0xEA0000000000746ELL), (v5 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_1000038F4(*(a1 + 56) + 32 * v4, v12);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v10 == 0x6B63696C43 && v11 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
  {

    if (v10 == 0xD000000000000011 && 0x800000010042BE60 == v11 || (sub_1003999B8() & 1) != 0)
    {

      return 0;
    }

    else if (v10 == 0xD000000000000013 && 0x800000010042BE80 == v11 || (sub_1003999B8() & 1) != 0)
    {

      return 1;
    }

    else if (v10 == 0x726564726F657250 && v11 == 0xEE00646563616C50)
    {

      return 2;
    }

    else
    {
      v8 = sub_1003999B8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 6;
      }
    }
  }

  if (v10 == 0x6973736572706D49 && v11 == 0xEA00000000006E6FLL)
  {

    goto LABEL_26;
  }

  v7 = sub_1003999B8();

  if ((v7 & 1) == 0)
  {
LABEL_14:

    return 6;
  }

LABEL_26:
  if (v10 == 0xD000000000000011 && 0x800000010042BE60 == v11 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (v10 == 0xD000000000000013 && 0x800000010042BE80 == v11 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (v10 == 0x726564726F657250 && v11 == 0xEE00646563616C50)
  {

    return 5;
  }

  else
  {
    v9 = sub_1003999B8();

    if (v9)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10021324C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001E27A8(&unk_1004D7E80);
    v2 = sub_100399828();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000038F4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10021243C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10021243C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10021243C(v31, v32);
    result = sub_100399688(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10021243C(v32, (v2[7] + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

void sub_100213514(uint64_t a1, uint64_t a2, void *isa)
{
  v4 = v3;
  v8 = sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30);
  v9 = sub_1003995A8();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = ExperimentationErrorType.description.getter(a1);
    v13 = sub_100005700(v11, v12, &v31);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    if (isa)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0;
    }

    if (isa)
    {
      v15 = isa;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_100005700(v14, v15, &v31);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v8, "Error: %s, Description: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR___APExperimentationReportTelemetryDelivery_reportErrors;
  swift_beginAccess();
  v18 = *(v4 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v17) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1002141A4(0, *(v18 + 2) + 1, 1, v18);
    *(v4 + v17) = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1002141A4((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  *&v18[8 * v21 + 32] = a1;
  *(v4 + v17) = v18;
  swift_endAccess();
  v22 = [objc_opt_self() processInfo];
  v23 = [v22 isRunningTests];

  if ((v23 & 1) == 0)
  {
    if (isa)
    {
      sub_1001E27A8(&unk_1004D5A30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      *(inited + 32) = 0x7470697263736544;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEB000000006E6F69;
      *(inited + 48) = a2;
      *(inited + 56) = isa;

      isa = sub_1002142A8(inited);
      swift_setDeallocating();
      sub_1001ED244(inited + 32, &unk_1004D5DD0);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1003996F8(25);

    v31 = 0xD000000000000017;
    v32 = 0x800000010042B790;
    v33._countAndFlagsBits = sub_100399998();
    sub_100399068(v33);

    v25 = sub_100398F28();

    if (isa)
    {
      sub_10021324C(isa);

      isa = sub_100398E48().super.isa;
    }

    v26 = sub_100398F28();
    CreateDiagnosticReport();

    v27 = objc_opt_self();
    v28 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1003C9930;
    *(v29 + 32) = 0x707954726F727245;
    *(v29 + 40) = 0xE900000000000065;
    *(v29 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_1002143B8(v29);
    swift_setDeallocating();
    sub_1001ED244(v29 + 32, &qword_1004D5A28);
    sub_100004218(0, &qword_1004D5DC0);
    v30 = sub_100398E48().super.isa;

    [v27 sendEvent:v28 customPayload:v30];
  }
}

uint64_t sub_100213C00()
{
  v1 = OBJC_IVAR___APExperimentationReportTelemetryDelivery_reportErrors;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 isRunningTests];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = sub_100398F28();
      sub_1001E27A8(&unk_1004D5DB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      *(inited + 32) = 0x707954726F727245;
      *(inited + 40) = 0xE900000000000065;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:16];
      sub_1002143B8(inited);
      swift_setDeallocating();
      sub_1001ED244(inited + 32, &qword_1004D5A28);
      sub_100004218(0, &qword_1004D5DC0);
      isa = sub_100398E48().super.isa;

      [v4 sendEvent:v5 customPayload:isa];
    }
  }

  *(v0 + v1) = _swiftEmptyArrayStorage;
}

id ExperimentationReportTelemetryDelivery.init()()
{
  *&v0[OBJC_IVAR___APExperimentationReportTelemetryDelivery_reportErrors] = _swiftEmptyArrayStorage;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationReportTelemetryDelivery();
  return objc_msgSendSuper2(&v2, "init");
}

id ExperimentationReportTelemetryDelivery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationReportTelemetryDelivery();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100213F2C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001E27A8(&unk_1004D5730);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_1001E27A8(&qword_1004D5E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100214098(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001E27A8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1002141A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&unk_1004D5DF0);
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
    v10 = _swiftEmptyArrayStorage;
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